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

        if div.classes[1] == 'clue' then
            local type = 'clue'
            if div.attributes['type'] ~= nil then
                type = div.attributes['type']
            end

            if div.attributes['title'] ~= nil then
                type = type .. "(title:\"" .. div.attributes['title'] .. "\")"
            end

            return { pandoc.RawBlock('typst', "\n#" .. type .. "["), div, pandoc.RawBlock('typst', "\n]\n") }
        end

        if div.classes[1] == 'colorbox' then
            local type = 'colorbox'
            if div.attributes['type'] == 'outline' then
                type = 'outline-colorbox'
            end

            type = type .. "("

            if div.attributes['title'] ~= nil then
                type = type .. "title:\"" .. div.attributes['title'] .. "\","
            end

            if div.attributes['color'] ~= nil then
                type = type .. "color:\"" .. div.attributes['color'] .. "\","
            end

            if div.attributes['width'] ~= nil then
                type = type .. "width:" .. div.attributes['width'] .. ","
            end

            if div.attributes['radius'] ~= nil then
                type = type .. "radius:" .. div.attributes['radius'] .. ","
            end

            if div.attributes['stroke'] ~= nil then
                type = type .. "stroke:" .. div.attributes['stroke'] .. ","
            end

            if div.attributes['inset'] ~= nil then
                type = type .. "inset:" .. div.attributes['inset'] .. ","
            end

            if div.attributes['centering'] ~= nil then
                type = type .. "centering:" .. div.attributes['centering'] .. ","
            end

            type = type .. ")"

            return { pandoc.RawBlock('typst', "\n#" .. type .. "["), div, pandoc.RawBlock('typst', "\n]\n") }
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
            table.insert(ret, pandoc.RawBlock('typst', "#figure(align(left)[\n"))
            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end
            table.insert(ret, pandoc.RawBlock('typst', '],kind:"' .. div.classes[1] .. '")\n'))
            return ret
        end
    end

    return { pandoc.RawBlock('typst', "//#hello2\n"), div, pandoc.RawBlock('typst', "//#hello2\n") }
end

return { { Div = process } }
