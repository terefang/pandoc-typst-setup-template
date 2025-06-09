--[[
   lua filter to merge fenced div attributes into the contents table if any
   for typst processing.

   Copyright (C) 2024 – Alfred Reibenschuh
]]

local function process(div)
    if FORMAT:match 'typst' then
        if div.classes[1] == 'credits' then
            local cmargin = "50pt"
            if div.attributes['margin'] ~= nil then
                cmargin = div.attributes['margin']
            end

            return {
                pandoc.RawBlock('typst',
                    "\n#page(columns:1,margin:" ..
                    cmargin ..
                    ",header:none,grid(align:bottom+left,columns:(1fr),rows:(1fr),[#set heading(outlined: false, bookmarked: false)"),
                div,
                pandoc.RawBlock('typst', "\n]))\n")
            }
        end

        if div.attributes['full-width'] == 'true' then
            div.attributes['typst:width'] = '100%'
        end

        -- must wrap a table
        if (div.content[1].t == "Table") and (div.classes[1] ~= nil) then
            -- old code
            -- -- set kind to first class, template will take care of the rest
            -- div.content[1].attributes['typst:figure:kind'] = '"'..div.classes[1]..'"'
            -- return div.content
            table.insert(div.content[1].classes, 'typst:no-figure')
            local ret = {}

            if (div.classes[1] == 'float') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(bottom+left,float:true,[\n"))
            else
                table.insert(ret, pandoc.RawBlock('typst', "#figure(align(left)[\n"))
            end

            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end

            if (div.classes[1] == 'float') then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            else
                table.insert(ret, pandoc.RawBlock('typst', '],kind:"' .. div.classes[1] .. '")\n'))
            end

            return ret
        end
    end

    -- return { pandoc.RawBlock('typst', "//#hello2\n"), div, pandoc.RawBlock('typst', "//#hello2\n") }
    return nil
end

return { { Div = process } }
