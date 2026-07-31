-- convert html/xml entities to typst

package.path = os.getenv("PANDOC_LUA_LIB")..';'..package.path
local stringify = pandoc.utils.stringify
local _ENTITY = require("entities")
local _SYM = require("symbols")

function Str(elem)
    local _capture = {}
    local _offset = 1
    local i,j
    while _offset ~= nil do

        i,j,cap0 = string.find(elem.text, "&([^;]+);", _offset)

        -- bail out of none found
        if (i == nil) then
            break
        end

        -- prefix
        if (_offset < i) then
            table.insert(_capture, pandoc.Str(string.sub(elem.text,_offset,i-1)))
        end

        i1,j1,cap1,cap2 = string.find(cap0, "^([%w-%_%.]+):(%d+)")

        if (cap2 ~= nil) then
            table.insert(_capture, pandoc.RawInline('typst', '#text(size:'..cap2..'pt)['))
        else
            cap1 = cap0
        end

        -- print("> "..cap0)
        -- check if a mappable entity
        if (_ENTITY[cap1] ~= nil) then
            table.insert(_capture, pandoc.RawInline('typst', _ENTITY[cap1]))
        elseif (_SYM[cap1] ~= nil) then
            table.insert(_capture, pandoc.RawInline('typst', _SYM[cap1]))
        else
            table.insert(_capture, pandoc.RawInline('typst', '#{'..cap1..'-g}'))
        end

        if (cap2 ~= nil) then
            table.insert(_capture, pandoc.RawInline('typst', ']'))
        end

        _offset=j+1

    end

    -- suffix
    if((#_capture>=1) and (#elem.text >= _offset)) then
        -- collect the suffix
        table.insert(_capture, pandoc.Str(string.sub(elem.text,_offset)))
    end

    if( #_capture > 0) then
        return _capture
    end
    return nil
end
