-- convert html/xml inline to typst commands
--
-- <br/> -> line break
-- <brj/> -> line break + justified
--
-- <pbr/> -> page break (weak)
-- <pbe/> -> page break (weak, to even)
-- <pbo/> -> page break (weak, to odd)
-- <np/> -> page break (hard)
--
-- <cbr/> -> column break (weak)
-- <nc/> -> column break (hard)
--
-- <lc> ... </lc> -> lower case
-- <uc> ... </uc> -> upper case
-- <sc> ... </sc> -> small caps
--
-- <f:font/fnt/f ...>... </fnt> -> wraps the typst /text/ function
--
-- <page ...> ... </page> -> wraps the typst /page/ function
-- <place ...> ... </place> -> wraps the typst /place/ function
-- <block ...> ... </block> -> wraps the typst /block/ function
--
-- <box ...> ... </box> -> wraps the typst /box/ function
-- <align ...> ... </align> -> wraps the typst /align/ function
-- <scale ...> ... </scale> -> wraps the typst /scale/ function
-- <par ...> ... </par> -> wraps the typst /par/ function
--
-- <toc .../> or <outline .../> -> wraps the typst /outline/ function
--
-- <t:tbl ...> ... </tbl> -> wraps the typst /table/ function
-- <t:head ...> ... </thead> -> wraps the typst /table.header/ function
-- <t:cell ...> ... </tcell> -> wraps the typst /table.cell/ function
-- <t:hl .../> -> wraps the typst /table.hline/ function
-- <t:vl .../> -> wraps the typst /table.vline/ function
--
-- <g:grid ...> ... </grid> -> wraps the typst /grid/ function
-- <g:cell ...> ... </cell> -> wraps the typst /grid.cell/ function
-- <g:hl .../> -> wraps the typst /grid.hline/ function
-- <g:vl .../> -> wraps the typst /grid.vline/ function

local function startswith(text, start)
    if(text == nil) then
        return false
    end
    if(start == nil) then
        return false
    end
    return string.sub(text,1, #start) == start
end

local function firstpair(tbl)
    local it = pairs(tbl)
    return it(tbl)
end

local function e2u(s)
    s = string.gsub(s, "&gt;", ">")
    s = string.gsub(s, "&lt;", "<")
    s = string.gsub(s, "&quot;", '"')
    s = string.gsub(s, "&apos;", "'")
    s = string.gsub(s, "&amp;", "&")
    return s
end

local HTML_SPANS = pandoc.List({'/smallcaps', '/sc', '/uc', '/lc', '/page', '/place', '/block', '/box', '/align', '/scale', '/par'})

local VERBATIM_ATTR = pandoc.List({'block','box','scale','par'})

local PAGE_ATTR = {'width','height','flipped','margin','binding','columns','fill','numbering','supplement','number-align','header','header-ascent','footer','footer-descent','background','foreground'}

local TEXT_ATTR = {'fallback','weight','stretch','size','fill','stroke','tracking','spacing','cjk-latin-spacing','baseline','overhang','top-edge','bottom-edge','lang','region','script','dir','hyphenate','costs','kerning','alternates','stylistic-set','ligatures','discretionary-ligatures','historical-ligatures','number-type','number-width','slashed-zero','fractions','features'}

local PLACE_ATTR = {'scope','float','clearance','dx','dy'}

function extractAttributes(cap2)
    -- extract the attributes
    local attr = {}
    local anum = 0
    for n, v in string.gmatch(cap2, "%s*([%-%w]+)=\"([^\"]+)\"") do
        attr[n] = e2u(v)
        anum = anum + 1
    end

    for n, v in string.gmatch(cap2, "%s*([%-%w]+)='([^']+)'") do
        attr[n] = e2u(v)
        anum = anum + 1
    end

    return attr, anum
end

function concatenateAttributes(attr)
    local opts = ""
    for k, v in pairs(attr) do
        opts = opts .. k..':' .. v .. ','
    end
    return opts
end

function concatenateAttributePairs(_pv, _pq, _pva, _pqa, attr)
    local opts = ""
    for _, v in ipairs(_pq) do
        if(attr[v] ~= nil) then
            opts = opts .. v..':"' .. attr[v] .. '",'
        end
    end
    for _, v in pairs(_pv) do
        if(attr[v] ~= nil) then
            opts = opts .. v..':' .. attr[v] .. ','
        end
    end
    for k, v in pairs(_pqa) do
        if(attr[k] ~= nil) then
            opts = opts .. v..':"' .. attr[k] .. '",'
        end
    end
    for k, v in pairs(_pva) do
        if(attr[k] ~= nil) then
            opts = opts .. v..':' .. attr[k] .. ','
        end
    end
    return opts
end

function processGridElements(elem)
    local i,j,cap1,cap2,n,v

    i,j,cap1 = string.find(elem.text, '^<g%:([%-%w]+)/?>$')
    if (i ~= nil) then
        -- cell/head
        if(cap1 == 'cell' or cap1 == 'c') then
            return pandoc.RawInline('typst', 'grid.cell([')
        end
        -- grid hline/vline
        if (cap1 == 'hline' or cap1 == 'hl') then
            return pandoc.RawInline('typst', 'grid.hline(),')
        end
        if (cap1 == 'vline' or cap1 == 'vl') then
            return pandoc.RawInline('typst', 'grid.vline(),')
        end
        -- grid
        if (cap1 == 'grid' or cap1 == 'g' or cap1 == 'begin') then
            return pandoc.RawInline('typst', '#grid(')
        end
    end

    i,j,cap1 = string.find(elem.text, '^</g%:([%-%w]+)>$')
    if (i ~= nil) then
        -- grid/cell ends
        if ( cap1 == 'cell' or cap1 == 'c' ) then
            return pandoc.RawInline('typst', ']),')
        end
        if ( cap1 == 'grid' or cap1 == 'g'  or cap1 == 'end' ) then
            return pandoc.RawInline('typst', ')')
        end
    end

    i,j,cap1,cap2 = string.find(elem.text, '^<g%:([%-%w]+)%s+(%w+.*)%s*/?>$')
    if (i ~= nil) then
        -- extract the attributes
        local attr, anum = extractAttributes(cap2)

        -- grid hline/vline
        if (cap1 == 'hline' or cap1 == 'hl') then
            return pandoc.RawInline('typst', 'grid.hline('.. concatenateAttributes(attr)..'),')
        end
        if (cap1 == 'vline' or cap1 == 'vl') then
            return pandoc.RawInline('typst', 'grid.vline('.. concatenateAttributes(attr)..'),')
        end
        -- cell/head begin
        if ( cap1 == 'cell' or cap1 == 'c' ) then
            return pandoc.RawInline('typst', 'grid.cell('.. concatenateAttributes(attr)..'[')
        end
        -- grid begin
        if ( cap1 == 'grid' or cap1 == 'g'  or cap1 == 'begin' ) then
            return pandoc.RawInline('typst', '#grid('.. concatenateAttributes(attr)..' ')
        end

    end
    print('(G) WARN: discarding unmatched',elem.text)
    return pandoc.RawInline('typst', '')
end

function processTableElements(elem)
    local i,j,cap1,cap2,n,v

    i,j,cap1 = string.find(elem.text, '^<t%:([%-%w]+)/?>$')
    if (i ~= nil) then
        -- cell/head
        if(cap1 == 'hc' or cap1 == 'fc') then
            return pandoc.RawInline('typst', '[')
        end
        if(cap1 == 'data' or cap1 == 'd') then
            return pandoc.RawInline('typst', '[')
        end
        if(cap1 == 'cell' or cap1 == 'c') then
            return pandoc.RawInline('typst', 'table.cell([')
        end
        if(cap1 == 'head' or cap1 == 'h') then
            return pandoc.RawInline('typst', 'table.header(')
        end
        if(cap1 == 'foot' or cap1 == 'f') then
            return pandoc.RawInline('typst', 'table.footer(')
        end
        -- table hline/vline
        if (cap1 == 'hline' or cap1 == 'hl') then
            return pandoc.RawInline('typst', 'table.hline(),')
        end
        if (cap1 == 'vline' or cap1 == 'vl') then
            return pandoc.RawInline('typst', 'table.vline(),')
        end
        -- table begin
        if ( cap1 == 'table' or cap1 == 'tbl' or cap1 == 't' or cap1 == 'begin') then
            return pandoc.RawInline('typst', '#table(')
        end
        if ( cap1 == 'end' ) then
            return pandoc.RawInline('typst', ')')
        end
    end

    i,j,cap1 = string.find(elem.text, '^</t%:([%-%w]+)>$')
    if (i ~= nil) then
        -- table/grid/cell ends
        if ( cap1 == 'hc' or cap1 == 'fc' ) then
            return pandoc.RawInline('typst', '],')
        end
        if ( cap1 == 'data' or cap1 == 'd' ) then
            return pandoc.RawInline('typst', '],')
        end
        if ( cap1 == 'head' or cap1 == 'h' or cap1 == 'foot' or cap1 == 'f' ) then
            return pandoc.RawInline('typst', '),')
        end
        if ( cap1 == 'cell' or cap1 == 'c' ) then
            return pandoc.RawInline('typst', ']),')
        end
        if ( cap1 == 'table' or cap1 == 'tbl' or cap1 == 't'  or cap1 == 'end' ) then
            return pandoc.RawInline('typst', ')')
        end
    end

    i,j,cap1,cap2 = string.find(elem.text, '^<t%:([%-%w]+)%s+(%w+.*)%s*/?>$')
    if (i ~= nil) then
        -- extract the attributes
        local attr, anum = extractAttributes(cap2)

        -- hline/vline
        if (cap1 == 'hline' or cap1 == 'hl') then
            return pandoc.RawInline('typst', 'table.hline('.. concatenateAttributes(attr)..'),')
        end
        if (cap1 == 'vline' or cap1 == 'vl') then
            return pandoc.RawInline('typst', 'table.vline('.. concatenateAttributes(attr)..'),')
        end
        -- cell/head begin
        if ( cap1 == 'cell' or cap1 == 'c' ) then
            return pandoc.RawInline('typst', '/* '..cap1..' */ table.cell('.. concatenateAttributes(attr)..'[')
        end
        if ( cap1 == 'head' or cap1 == 'h'  ) then
            return pandoc.RawInline('typst', '/* '..cap1..' */ table.header('.. concatenateAttributes(attr)..'')
        end
        if ( cap1 == 'foot' or cap1 == 'f'  ) then
            return pandoc.RawInline('typst', '/* '..cap1..' */ table.footer('.. concatenateAttributes(attr)..'')
        end
        -- table begin
        if ( cap1 == 'table' or cap1 == 'tbl' or cap1 == 't' or cap1 == 'begin') then
            return pandoc.RawInline('typst', '/* '..cap1..' */ #table('.. concatenateAttributes(attr)..' ')
        end
    end

    print('(T) WARN: discarding unmatched',elem.text)
    return pandoc.RawInline('typst', '')
end

function processFontElements(elem)
    local i,j,cap1,cap2,n,v

    i,j,cap1 = string.find(elem.text, '^</f%:([%-%w]+)>$')
    if (i ~= nil) then
        if ( cap1 == 'font' or cap1 == 'fnt'  or cap1 == 'f' ) then
            return pandoc.RawInline('typst', ']) ')
        end
    end

    i,j,cap1,cap2 = string.find(elem.text, '^<f%:([%-%w]+)%s+(%w+.*)%s*/?>$')
    if (i ~= nil) then
        -- extract the attributes
        local attr, anum = extractAttributes(cap2)
        -- font set begin
        if(cap1 == 'font' or cap1 == 'fnt' or cap1 == 'f') then
            local opts = concatenateAttributePairs(TEXT_ATTR, { "style" }, {}, { name="font" }, attr)
            return pandoc.RawInline('typst', '#text('.. opts..'[')
        end
    end

    print('(F) WARN: discarding unmatched',elem.text)
    return pandoc.RawInline('typst', '')
end

function processRawHtml(elem)
    local i,j,cap1,cap2,n,v
    -- discard html comments
    if(startswith(elem.text,'<!--')) then
        return pandoc.RawInline('typst', '')
    end

    i,j,cap1 = string.find(elem.text, '^</?([%w]+)%:')
    if(cap1 == 'f') then
        return processFontElements(elem)
    end
    if(cap1 == 't') then
        return processTableElements(elem)
    end
    if(cap1 == 'g') then
        return processGridElements(elem)
    end

    i,j,cap1 = string.find(elem.text, '^<([%:%-%w]+)/?>$')
    if (i ~= nil) then
        -- typst linebreaks
        if( cap1 == 'br' ) then
            return pandoc.RawInline('typst', '#linebreak()')
        end
        if( cap1 == 'brj' ) then
            return pandoc.RawInline('typst', '#linebreak(justify:true)')
        end
        -- typst pagebreaks
        if( cap1 == 'pbr' or cap1 == 'page-break' ) then
            -- soft
            return pandoc.RawInline('typst', '#pagebreak(weak:true)\n\n')
        end
        if( cap1 == 'np' or cap1 == 'new-page' ) then
            -- hard
            return pandoc.RawInline('typst', '#pagebreak(weak:false)\n\n')
        end
        if( cap1 == 'pbe' or cap1 == 'page-break-even' ) then
            -- to even
            return pandoc.RawInline('typst', "#pagebreak(weak:true,to:'even')\n\n")
        end
        if( cap1 == 'pbo' or cap1 == 'page-break-odd' ) then
            -- to odd
            return pandoc.RawInline('typst', "#pagebreak(weak:true,to:'odd')\n\n")
        end
        -- typst colbreaks
        if( cap1 == 'cbr' or cap1 == 'col-break' ) then
            -- soft
            return pandoc.RawInline('typst', '#colbreak(weak:true)\n\n')
        end
        if( cap1 == 'nc' or cap1 == 'new-column' ) then
            -- hard
            return pandoc.RawInline('typst', '#colbreak(weak:false)\n\n')
        end
        -- lower case
        if(cap1 == 'lc') then
            return pandoc.RawInline('typst', '#lower([')
        end
        -- upper case
        if(cap1 == 'uc') then
            return pandoc.RawInline('typst', '#upper([')
        end
        -- small caps
        if(cap1 == 'smallcaps' or cap1 == 'sc') then
            return pandoc.RawInline('typst', '#smallcaps([')
        end
        -- toc/outline
        if(cap1 == 'outline' or cap1 == 'toc') then
            return pandoc.RawInline('typst', '#outline()')
        end
        -- horizontal filler, first attr is fill string
        if(cap1 == 'fill' or cap1 == 'f') then
            return pandoc.RawInline('typst', '#box(width: 1fr) ')
        end
    end
    i,j,cap1 = string.find(elem.text, '^<(/[%-%w]+)>$')
    if (i ~= nil) then
        -- html spanner ends
        if HTML_SPANS:includes(cap1) then
            return pandoc.RawInline('typst', ']) /* '..cap1..' */')
        end
    end
    i,j,cap1,cap2 = string.find(elem.text, '^<(%??[%:%-%w]+)%s+(%w+.*)%s*/?>$')
    if (i ~= nil) then
        -- extract the attributes
        local attr, anum = extractAttributes(cap2)

        -- lorem ipsum
        if(cap1 == 'lorem') then
            _, v = firstpair(attr)
            return pandoc.RawInline('typst', '#lorem('..(v)..')')
        end
        -- align
        if(cap1 == 'align') then
            _, v = firstpair(attr)
            return pandoc.RawInline('typst', '#align('..(v)..',[')
        end
        -- horizontal filler, first attr is fill string
        if(cap1 == 'fill' or cap1 == 'f') then
            if(anum == 1) then
                _, v = firstpair(attr)
                return pandoc.RawInline('typst', '#box(width: 1fr, repeat("'..(v)..'")) ')
            else
                return pandoc.RawInline('typst', '#box(width: '..(attr['size'])..', repeat("'..(attr['text'])..'")) ')
            end
        end
        -- icons
        if(cap1 == 'icon' or cap1 == 'i') then
            if(anum == 1) then
                _, v = firstpair(attr)
                return pandoc.RawInline('typst', '#{'..v..'-g}')
            else
                return pandoc.RawInline('typst', '#text(size: '..(attr['size'])..', [#{'..(attr['name'])..'-g}])')
            end
        end
        -- toc/outline
        if(cap1 == 'outline' or cap1 == 'toc') then
            local opts = ""
            for k, v in pairs(attr) do
                opts = opts .. k..':' .. v .. ','
            end
            return pandoc.RawInline('typst', '#outline('..opts..')')
        end
        -- page span begin
        if(cap1 == 'page') then
            local opts = ""
            if(attr['paper'] ~= nil) then
                opts = opts .. 'paper:"' .. attr['paper'] .. '",'
            end
            for _, v in ipairs(PAGE_ATTR) do
                if(attr[v] ~= nil) then
                    opts = opts .. v..':' .. attr[v] .. ','
                end
            end
            if(attr['background-image'] ~= nil) then
                opts = opts .. 'background: image("' .. attr['background-image'] .. '", width: 100%, height: 100%, fit:"stretch"),'
            end
            return pandoc.RawInline('typst', '/* page */ #page('.. opts..'[')
        end
        -- h/v spacer
        if(cap1 == 'h' or cap1 == 'v') then
            if(anum == 1) then
                _, v = firstpair(attr)
                return pandoc.RawInline('typst', '#'..cap1..'('..v..')')
            else
                return pandoc.RawInline('typst', '#'..cap1..'('..(attr['size'])..', weak:'..(attr['weak'])..')')
            end
        end
        -- place begin
        if(cap1 == 'place') then
            local opts = ""
            if(attr['pos'] ~= nil) then
                opts = opts .. attr['pos'] .. ','
            end
            for _, v in ipairs(PLACE_ATTR) do
                if(attr[v] ~= nil) then
                    opts = opts .. v..':' .. attr[v] .. ','
                end
            end
            return pandoc.RawInline('typst', '/* '..cap1..' */ #place('.. opts..'[')
        end
        -- tag with verbatim attr begin
        if VERBATIM_ATTR:includes(cap1) then
            local opts = concatenateAttributes(attr)
            return pandoc.RawInline('typst', '/* '..cap1..' */ #'..cap1..'('.. opts..'[')
        end
        -- generic set
        if(cap1 == 'set' and anum == 2) then
            return pandoc.RawInline('typst', '#set '..(attr['cmd'])..'( '..(attr['arg'])..' )\n')
        end
        -- generic command
        if(string.sub(cap1,1,1) == '?' and attr['arg'] ~= nil and anum == 1) then
            return pandoc.RawInline('typst', '#'..(string.sub(cap1,2))..'( '..(attr['arg'])..' )')
        end
    end

    print('(MAIN) WARN: discarding unmatched',elem.text)
    return pandoc.RawInline('typst', '')
end


-- #show heading: it => [
--     #if it.level == 1 [
--         #pagebreak(weak:true,to:"odd")
--         #place(
--           top + center,
--           scope: "parent",
--           float: true,
--           text(font: "Montserrat", weight: "bold",size:24pt)[\~ #upper(it.body) \~],
--         )
--     ] else { text(font: "Montserrat", weight: "bold",size:20pt-(2pt * it.level),upper(it)) }
-- ]
-- 
-- #set page(columns: 2, paper: "us-letter", margin: 50pt)
-- 
-- #set par(justify:true)
--
-- #set table(
--   inset: 3.5pt,
--   fill: (_, y) => if calc.even(y) { rgb("EAF2F5") },
--   stroke: none, //stroke: rgb("21222C"),
-- )

function RawInline(elem)
    if( elem.format == 'html') then
        return processRawHtml(elem)
    end
    return nil
end

-- // TODO ----------------------------------------------------
-- // // First "design" a oneline layout that we think looks ok
-- // #let fromtext = block(width: 16cm)[
-- //   #set text(size: 48pt)
-- //   #set text(tracking: -0.0625em)
-- //   When will the journey end#linebreak(justify:true)
-- // ]
-- // #fromtext
-- // // then scale it
-- // #let scale-to-width(x, y, body) = context {
-- //   let sz = measure(body)
-- //   let x-scale = x.to-absolute()/sz.width
-- //   let y-scale = y.to-absolute()/sz.height
-- //   scale(x: x-scale * 100%, y: y-scale * 100%, body, reflow: true)
-- // }
-- // #scale-to-width(15cm, 3cm, fromtext)
-- //
-- // TODO ----------------------------------------------------
-- // #let stretchy(text, max: 100%) = layout(container => {
-- //   let x-scale = container.width / measure(text).width * 100%
-- //   if max != none { x-scale = calc.min(max, x-scale) }
-- //   box(scale(x: x-scale, origin: start, reflow: true, text))
-- // })
-- //
-- // #block(width: 4cm, stack(spacing: 1em,
-- //   stretchy(max: none)[hello],
-- //   stretchy[wow so very nice!!! this is so very nice!!!! so incredibly cool],
-- //   stretchy[hello]
-- // ))
-- //
-- // TODO ----------------------------------------------------
-- // #set par(justify: true)
-- // #set linebreak(justify: true)
-- // #set align(center)
-- //
-- // #let shrinking-box(body, iterations: 10) = context layout(size => {
-- // let width = size.width;
-- // let candidate_width = size.width / 2;
-- //
-- // let initial-height = measure(width: size.width, body).height;
-- // for _ in range(0, iterations) {
-- // // does the tested height surpass the initial height?
-- // if measure(width: candidate_width, body).height > initial-height {
-- // // the candidate_width is too small. Try a value closer to the initial width
-- // candidate_width = (candidate_width+width)/2
-- // } else {
-- // // the candidate width works. save our result and keep on searching for smaller candidates.
-- // width = candidate_width;
-- // candidate_width = candidate_width/2;
-- // }
-- // }
-- //
-- // box(width: width, body)
-- // })
-- //
-- // #block(width: 20em, lorem(16))
-- // #block(width: 20em, lorem(16)+linebreak())
-- // #block(width: 20em, shrinking-box(lorem(16)))
-- //