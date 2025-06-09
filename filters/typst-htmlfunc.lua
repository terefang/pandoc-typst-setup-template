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
-- <font ...> ... </font> or <fnt ...> ... </fnt> -> wraps the typst /text/ function
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
-- <tbl ...> ... </tbl> -> wraps the typst /table/ function
-- <thead ...> ... </thead> -> wraps the typst /table.header/ function
-- <tcell ...> ... </tcell> -> wraps the typst /table.cell/ function
-- <thline .../> -> wraps the typst /table.hline/ function
-- <tvline .../> -> wraps the typst /table.vline/ function
--
-- <grid ...> ... </grid> -> wraps the typst /grid/ function
-- <cell ...> ... </cell> -> wraps the typst /grid.cell/ function
-- <hline .../> -> wraps the typst /grid.hline/ function
-- <vline .../> -> wraps the typst /grid.vline/ function

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

local HTML_SPANS = pandoc.List({'/font','/fnt', '/smallcaps', '/sc', '/uc', '/lc', '/page', '/place', '/block', '/box', '/align', '/scale', '/par'})

local VERBATIM_ATTR = pandoc.List({'block','box','scale','par'})

local PAGE_ATTR = {'width','height','flipped','margin','binding','columns','fill','numbering','supplement','number-align','header','header-ascent','footer','footer-descent','background','foreground'}

local TEXT_ATTR = {'fallback','weight','stretch','size','fill','stroke','tracking','spacing','cjk-latin-spacing','baseline','overhang','top-edge','bottom-edge','lang','region','script','dir','hyphenate','costs','kerning','alternates','stylistic-set','ligatures','discretionary-ligatures','historical-ligatures','number-type','number-width','slashed-zero','fractions','features'}

local PLACE_ATTR = {'scope','float','clearance','dx','dy'}



function RawInline(elem)
    local i,j,cap1,cap2,n,v
    if( elem.format == 'html') then
        -- discard html comments
        if(startswith(elem.text,'<!--')) then
            return pandoc.RawInline('typst', '')
        end
        i,j,cap1 = string.find(elem.text, '^<([%-%w]+)/?>$')
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
            -- cell/head
            if(cap1 == 'cell') then
                return pandoc.RawInline('typst', 'grid.cell([')
            end
            if(cap1 == 'tcell') then
                return pandoc.RawInline('typst', 'table.cell([')
            end
            if(cap1 == 'thead') then
                return pandoc.RawInline('typst', 'table.header([')
            end
            -- table/grid hline/vline
            if (cap1 == 'hline' or cap1 == 'vline') then
                return pandoc.RawInline('typst', 'grid.'..cap1..'(),')
            end
            if (cap1 == 'thline' or cap1 == 'tvline') then
                return pandoc.RawInline('typst', 'table.'..string.sub(cap1,2)..'(),')
            end
        end
        i,j,cap1 = string.find(elem.text, '^<(/[%-%w]+)>$')
        if (i ~= nil) then
            -- table/grid/cell ends
            if ( cap1 == '/head' or cap1 == '/cell' ) then
                return pandoc.RawInline('typst', ']) /* '..cap1..' */ ,')
            end
            if ( cap1 == '/thead' or cap1 == '/tcell' ) then
                return pandoc.RawInline('typst', ']) /* '..cap1..' */ ,')
            end
            if ( cap1 == '/tbl' or cap1 == '/grid' ) then
                return pandoc.RawInline('typst', ') /* '..cap1..' */')
            end
            -- html spanner ends
            if HTML_SPANS:includes(cap1) then
                return pandoc.RawInline('typst', ']) /* '..cap1..' */')
            end
        end
        i,j,cap1,cap2 = string.find(elem.text, '^<(%??[%/%-%w]+)%s+(%w+.*)%s*/?>$')
        if (i ~= nil) then
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
                    return pandoc.RawInline('typst', '#box(width: 1fr, repeat("'..(v)..'"))')
                else
                    return pandoc.RawInline('typst', '#box(width: '..(attr['size'])..', repeat("'..(attr['text'])..'"))')
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
            -- font set begin
            if(cap1 == 'font' or cap1 == 'fnt') then
                local opts = ""
                if(attr['name'] ~= nil) then
                    opts = opts .. 'font:"' .. attr['name'] .. '",'
                end
                 if(attr['style'] ~= nil) then
                    opts = opts .. 'style:"' .. attr['style'] .. '",'
                end
                for _, v in ipairs(TEXT_ATTR) do
                    if(attr[v] ~= nil) then
                        opts = opts .. v..':' .. attr[v] .. ','
                    end
                end
                return pandoc.RawInline('typst', '/* '..cap1..' */ #text('.. opts..'[')
            end
            -- table/grid hline/vline
            if (cap1 == 'hline' or cap1 == 'vline') then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', 'grid.'..cap1..'('.. opts..'),')
            end
            if (cap1 == 'thline' or cap1 == 'tvline') then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', 'table.'..string.sub(cap1,2)..'('.. opts..'),')
            end
            -- cell/head begin
            if ( cap1 == 'cell' ) then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', '/* '..cap1..' */ grid.cell('.. opts..'[')
            end
            if ( cap1 == 'tcell' ) then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', '/* '..cap1..' */ table.cell('.. opts..'[')
            end
            if ( cap1 == 'thead' ) then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', '/* '..cap1..' */ table.header('.. opts..'[')
            end
            -- table/grid begin
            if ( cap1 == 'grid' ) then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', '/* '..cap1..' */ #'..cap1..'('.. opts..' ')
            end
            if ( cap1 == 'tbl' ) then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
                return pandoc.RawInline('typst', '/* '..cap1..' */ #table('.. opts..' ')
            end
            -- tag with verbatim attr begin
            if VERBATIM_ATTR:includes(cap1) then
                local opts = ""
                for k, v in pairs(attr) do
                    opts = opts .. k..':' .. v .. ','
                end
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
        print('WARN: discarding unmatched',elem.text)
        return pandoc.RawInline('typst', '')
    end
    return nil
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
