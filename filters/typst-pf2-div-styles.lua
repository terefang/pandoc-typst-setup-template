--[[
   lua filter to special blocks for pf2

   Copyright (C) 2025 – Alfred Reibenschuh
]]

local function process(div)
    if FORMAT:match 'typst' then
        -- pf2-creature-ability
        -- name="title"
        -- type="feat|..."
        -- level="n"
        -- action="action-1|action-2|action-3|action-free|reaction"
        if div.classes[1] == 'pf2-creature-ability' then
            local ret = {}

            if div.classes[2] == 'nobreak' then
                table.insert(ret,pandoc.RawBlock('typst',"\n#block(breakable:false)[\n"))
            end
            table.insert(ret,pandoc.RawBlock('typst',"\n#block(stroke:(bottom:1pt),width:100%,inset:(bottom:5pt),[\n"))
            table.insert(ret,pandoc.RawBlock('typst','#set text(font:"Bebas Neue",size:12pt);\n'))
            table.insert(ret,pandoc.RawBlock('typst',div.attributes['name']))
            if(div.attributes['action'] ~= nil) then
                table.insert(ret,pandoc.RawBlock('typst'," #{ds-pf2-"..(div.attributes['action']).."-g} "))
            end
            table.insert(ret,pandoc.RawBlock('typst',"#h(1fr)"))
            if(div.attributes['level'] ~= nil) then
                if(div.attributes['type'] ~= nil) then
                    table.insert(ret,pandoc.RawBlock('typst'," "..div.attributes['type'].." |"))
                end
                table.insert(ret,pandoc.RawBlock('typst'," "..(div.attributes['level'])))
            end
            table.insert(ret,pandoc.RawBlock('typst',"])"))
            table.insert(ret,pandoc.RawBlock('typst', "\n#[\n"))
            table.insert(ret,pandoc.RawBlock('typst','#set par(justify:true);\n'))
            for _, v in ipairs(div.content) do
                table.insert(ret, v)
            end
            table.insert(ret,pandoc.RawBlock('typst', "\n]\n"))
            if div.classes[2] == 'nobreak' then
                table.insert(ret,pandoc.RawBlock('typst', "\n]\n"))
            end

            return ret
        end
    end

    return nil
end

return { { Div = process } }
