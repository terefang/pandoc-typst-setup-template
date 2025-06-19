--[[
   lua filter to process colorbox fenced div for typst processing.

   Copyright (C) 2025 – Alfred Reibenschuh
]]

local specialStyles = {}
specialStyles['blackbox'] = "black"
specialStyles['redbox'] = "red"
specialStyles['greenbox'] = "green"
specialStyles['bluebox'] = "blue"
specialStyles['yellowbox'] = "yellow"
specialStyles['purplebox'] = "purple"
specialStyles['cyanbox'] = "cyan"
specialStyles['magentabox'] = "magenta"
specialStyles['orangebox'] = "orange"
specialStyles['whitebox'] = "white"

local function process(div)
    if FORMAT:match 'typst' then
        if specialStyles[div.classes[1]] ~= nil then
            local type = 'colorbox('

            type = type .. "color:\"" .. specialStyles[div.classes[1]] .. "\","

            type = type .. "width:100%,"

            if div.attributes['font'] ~= nil then
                type = type .. "font:\"" .. div.attributes['font'] .. "\","
            end

            if div.attributes['font-size'] ~= nil then
                type = type .. "font-size:" .. div.attributes['font-size'] .. ","
            end
            type = type .. ")"

            local ret = {}

            if (div.classes[2] == 'float') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(bottom+left,float:true,[\n"))
            elseif (div.classes[2] == 'float-right') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(bottom+right,float:true,[\n"))
            elseif (div.classes[2] == 'float-top') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(top+left,scope:\"parent\",float:true,[\n"))
            elseif (div.classes[2] == 'float-bottom') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(bottom+left,scope:\"parent\",float:true,[\n"))
            end

            table.insert(ret, pandoc.RawBlock('typst', "\n#" .. type .. "["))

            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end

            table.insert(ret, pandoc.RawBlock('typst', "\n]\n"))

            if (div.classes[2] == 'float') then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            elseif (div.classes[2] == 'float-top') then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            elseif (div.classes[2] == 'float-bottom') then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            end

            return ret

        end
        if div.classes[1] == 'colorbox' then
            local type = 'colorbox'
            if div.attributes['type'] == 'outline' then
                type = 'outline-colorbox'
            end

            type = type .. "("

            if div.attributes['title'] ~= nil then
                type = type .. 'title:"' .. div.attributes['title'] .. '",'
            end

            if div.attributes['font'] ~= nil then
                type = type .. "font:\"" .. div.attributes['font'] .. "\","
            end

            if div.attributes['font-size'] ~= nil then
                type = type .. "font-size:" .. div.attributes['font-size'] .. ","
            end

            if div.attributes['color'] ~= nil then
                type = type .. "color:\"" .. div.attributes['color'] .. "\","
            end

            if div.attributes['width'] ~= nil then
                type = type .. "width:" .. div.attributes['width'] .. ","
            else
                type = type .. "width:100%,"
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

            local ret = {}

            if (div.classes[2] == 'float') then
                table.insert(ret, pandoc.RawBlock('typst', "#place(bottom+left,float:true,[\n"))
            end

            table.insert(ret, pandoc.RawBlock('typst', "\n#" .. type .. "["))

            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end

            table.insert(ret, pandoc.RawBlock('typst', "\n]\n"))

            if (div.classes[2] == 'float') then
                table.insert(ret, pandoc.RawBlock('typst', '])\n'))
            end

            return ret
        end

    end

    return nil
end

return { { Div = process } }
