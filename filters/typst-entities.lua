-- convert html/xml entities to typst


function Str(elem)
    local _capture = {}
    local _offset = 1
    while _offset ~= nil do
        i,j,cap1,cap2 = string.find(elem.text, "&(%w+)-([^;]+);", _offset)
        if (i == nil) then break end

        -- prefix
        if (_offset < i) then
            --print(">"..string.sub(elem.text,_offset,i-1).."<",_offset,i-1)
            table.insert(_capture, pandoc.Str(string.sub(elem.text,_offset,i-1)))
        end

        -- match
        --print(">"..string.sub(elem.text,i,j).."<",i,j)
        i2,j2,cap3,cap4 = string.find(cap2, "^([%w-]+):(%d+)")
        if (i2 ~= nil) then
            table.insert(_capture, pandoc.RawInline('typst', '#{text(size:'..cap4..'pt,'..cap1..'-'..cap3..'-g)}'))
        else
            i2,j2,cap3,cap4 = string.find(cap2, "^(%d+)-([^;]+)")
            if (i2 ~= nil) then
                table.insert(_capture, pandoc.RawInline('typst', '#{text(size:'..cap3..'pt,'..cap1..'-'..cap4..'-g)}'))
            else
                table.insert(_capture, pandoc.RawInline('typst', '#{'..cap1..'-'..cap2..'-g}'))
            end
        end
        _offset=j+1
    end

    -- suffix
    if (_offset ~= nil and _offset < #elem.text) then
        --print(">"..string.sub(elem.text,_offset).."<",_offset , #elem.text)
        table.insert(_capture, pandoc.Str(string.sub(elem.text,_offset)))
    end

    if( #_capture > 0) then
        return _capture
    end
    return nil
end
