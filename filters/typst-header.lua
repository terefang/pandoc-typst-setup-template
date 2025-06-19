--[[
   lua filter to merge fenced div attributes for special blocks

   Copyright (C) 2024 – Alfred Reibenschuh
]]

local function process2(ret, div)
    table.insert(ret, div)
end

local function process(div)
    if FORMAT:match 'typst' then
        -- a container closing with a horizontal rule
        if div.classes[1] == 'hr' then
            local attr = {}
            attr['stroke'] = '(bottom:1pt)'
            attr['width'] = '100%'
            attr['inset'] = '(bottom:5pt)'

            for k, v in pairs(div.attributes) do
                if k:sub(1,3) == 'hr-' then
                    attr[k:sub(4)] = v
                end
            end

            local opts = ""
            for k, v in pairs(attr) do
                opts = opts .. k..':' .. v .. ','
            end

            local ret = {}
            table.insert(ret,pandoc.RawBlock('typst',"\n#block("..opts.."["))

            process2(ret, div)

            table.insert(ret,pandoc.RawBlock('typst', "\n])\n"))

            return ret
        end
    end

    return nil
end

return { { Header = process } }
