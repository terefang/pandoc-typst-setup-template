--[[
   lua filter to merge fenced div attributes for special blocks

   Copyright (C) 2024 – Alfred Reibenschuh
]]

local function process(div)
    if FORMAT:match 'typst' then
        -- a credits container on a separate page
        if div.classes[1] == 'credits' then
            local cmargin = "50pt"
            if div.attributes['margin'] ~= nil then
                cmargin = div.attributes['margin']
            end

            local ret = {}
            table.insert(ret,pandoc.RawBlock('typst',
                    "\n#page(columns:1,margin:" ..
                            cmargin ..
                            ",header:none,grid(align:bottom+left,columns:(1fr),rows:(1fr),[#set heading(outlined: false, bookmarked: false)"))
            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end
            table.insert(ret,pandoc.RawBlock('typst', "\n]))\n"))

            return ret
        end

        -- a block container
        if div.classes[1] == 'block' then
            local opts = ""
            for k, v in pairs(div.attributes) do
                opts = opts .. k..':' .. v .. ','
            end

            local ret = {}
            table.insert(ret,pandoc.RawBlock('typst',
                    "\n#block("..opts.."["))
            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end
            table.insert(ret,pandoc.RawBlock('typst', "\n])\n"))

            return ret
        end

        -- a loop container
        if div.classes[1] == 'loop' then
            local ret = {}

            local size = div.attributes['num']

            for i = 1,size,1 do
                for _, v in ipairs(div.content) do
                    table.insert(ret, v)
                end
            end

            return ret
        end

        -- a container closing with a horizontal rule
        if div.classes[1] == 'hr' then
            local attr = {}
            attr['stroke'] = '(bottom:1pt)'
            attr['width'] = '100%'
            attr['inset'] = '(bottom:5pt)'

            for k, v in pairs(div.attributes) do
                attr[k] = v
            end

            local opts = ""
            for k, v in pairs(attr) do
                opts = opts .. k..':' .. v .. ','
            end

            local ret = {}
            table.insert(ret,pandoc.RawBlock('typst',"\n#block("..opts.."["))
            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end
            table.insert(ret,pandoc.RawBlock('typst', "\n])\n"))

            return ret
        end
    end

    return nil
end

return { { Div = process } }
