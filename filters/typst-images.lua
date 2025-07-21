--[[
   lua filter to massage images for typst processing.

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

-- #box(image("/assets/some/other/image.jpg"))

local function process(div)
    if FORMAT:match 'typst' then
        local ret = {}
        table.insert(ret, pandoc.RawBlock('typst', '#box(image("'..div.src..'")) /* */') )
        return ret
    end
    return nil
end

return { { Image = process } }
