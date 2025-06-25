--[[
   lua filter to merge fenced div attributes into the contents table if any
   for typst processing.

   Copyright (C) 2024 – Alfred Reibenschuh
]]

local function findval( arr, val, init ) --> v, i
    init = init or 1
    for i = init, #arr do
        local v = arr[ i ]
        if ( val == v ) then return true end
    end
    return false
end

local GRIDATTR = {"gutter", "column-gutter", "row-gutter", "fill", "stroke", "inset",}


-- alignment
--individual cell alignment (Alignment).
--contents
--cell contents (Blocks).
--col_span
--number of columns spanned by the cell; the width of the cell in columns (integer).
--row_span


local function convert_to_cell( typ, ret, cell)
    table.insert(ret, pandoc.RawBlock('typst', typ..".cell("))
    if(cell.row_span > 1) then
        table.insert(ret, pandoc.RawBlock('typst', "rowspan:"..cell.row_span..","))
    end
    if(cell.col_span > 1) then
        table.insert(ret, pandoc.RawBlock('typst', "colspan:"..cell.col_span..","))
    end
    table.insert(ret, pandoc.RawBlock('typst', "["))
    print(cell)
    for _, cnt in ipairs(cell.content) do
        table.insert(ret, cnt)
    end
    table.insert(ret, pandoc.RawBlock('typst', "]),"))
end

local function convert_to( typ, ret, div, tab )
    table.insert(ret, pandoc.RawBlock('typst', "#"..typ.."(\n"))
    local attrspec = "columns:"
    if div.attributes['columns'] ~= nil then
        attrspec = attrspec..div.attributes['columns']
    else
        attrspec = attrspec.."("
        local wdiv = 0
        for _, colspec in ipairs(tab.colspecs) do
            wdiv = wdiv + colspec[2]
        end
        wdiv = 100/wdiv
        local cwit = {}
        local cw = 100
        for _, colspec in ipairs(tab.colspecs) do
            local w = math.floor(colspec[2]*wdiv)
            cw = cw - w
            table.insert(cwit, w)
        end
        cwit[1] = cwit[1] + cw
        for _, c in ipairs(cwit) do
            attrspec = attrspec..(c).."%,"
        end
        attrspec = attrspec..")"
    end
    attrspec = attrspec..","
    attrspec = attrspec.."align:("
    for _, colspec in ipairs(tab.colspecs) do
        if(colspec[1] == 'AlignRight') then
            attrspec = attrspec.."right,"
        elseif (colspec[1] == 'AlignCenter') then
            attrspec = attrspec.."center,"
        else
            attrspec = attrspec.."left,"
        end
    end
    attrspec = attrspec.."),"

    for _, at in ipairs(GRIDATTR) do
        if div.attributes[at] ~= nil then
            attrspec = attrspec..at..":"..(div.attributes[at])..","
        end
    end

    table.insert(ret, pandoc.RawBlock('typst', attrspec.."\n"))

    for _, row in ipairs(tab.head.rows) do
        for _, cell in ipairs(row.cells) do
            convert_to_cell( typ, ret, cell)
        end
    end

    for _, body in ipairs(tab.bodies) do
        for _, bodybody in ipairs(body.body) do
            for _, cell in ipairs(bodybody.cells) do
                convert_to_cell( typ, ret, cell)
            end
        end
    end

    for _, row in ipairs(tab.foot.rows) do
        for _, cell in ipairs(row.cells) do
            convert_to_cell( typ, ret, cell)
        end
    end

    table.insert(ret, pandoc.RawBlock('typst', ")\n"))
end

local function process(div)
    if FORMAT:match 'typst' then

        if div.attributes['full-width'] == 'true' then
            div.attributes['typst:width'] = '100%'
        end
        -- must wrap a table
        if (#div.content == 1) and (div.content[1] ~= nil) and (div.content[1].t == "Table") and (div.classes[1] ~= nil) then
            -- old code
            -- -- set kind to first class, template will take care of the rest
            -- div.content[1].attributes['typst:figure:kind'] = '"'..div.classes[1]..'"'
            -- return div.content
            table.insert(div.content[1].classes, 'typst:no-figure')
            local ret = {}

            if findval(div.classes,'float') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(bottom+left,float:true,[\n"))
            end

            local close_font = false
            if(div.attributes['font']~=nil) or (div.attributes['font-size']~=nil) or (div.attributes['font-weight']~=nil) then
                local attropts = "#text("
                if(div.attributes['font']~=nil) then
                    attropts = attropts..'font:"'..div.attributes['font']..'",'
                end
                if(div.attributes['font-size']~=nil) then
                    attropts = attropts..'size:'..div.attributes['font-size']..','
                end
                if(div.attributes['font-weight']~=nil) then
                    attropts = attropts..'weight:'..div.attributes['font-weight']..','
                end
                attropts = attropts..'['
                table.insert(ret, pandoc.RawBlock('typst', attropts))
                close_font = true
            end

            if findval(div.classes,'grid') then
                convert_to('grid', ret, div, div.content[1])
            elseif findval(div.classes,'table') then
                convert_to('table', ret, div, div.content[1])
            else
                for _, v in ipairs(div.content) do
                    table.insert(ret, v)
                end
            end

            if close_font then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            end

            if findval(div.classes,'float') then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            end

            return ret
        end
    end

    -- return { pandoc.RawBlock('typst', "//#hello2\n"), div, pandoc.RawBlock('typst', "//#hello2\n") }
    return nil
end

return { { Div = process } }
