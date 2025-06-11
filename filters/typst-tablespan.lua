--[[
   lua filter to merge spanned cells "<" and ">".
   Copyright (C) 2025 – Alfred Reibenschuh
]]


local function process_table(tab)

    for _, body in ipairs(tab.bodies) do

        for _, row in ipairs(body.body) do

            local td = {}
            -- check for span to the left
            for n, cell in ipairs(row.cells) do
                if #cell.contents == 1 and #cell.contents[1].content == 1 and cell.contents[1].content[1].text == '<' then
                    table.insert(td, n)
                end
            end

            for i = #td, 1, -1 do
                local c1 = row.cells[td[i]-1]
                local c2 = row.cells[td[i]]
                row.cells[td[i]-1] = pandoc.Cell(c1.contents, c1.alignment, c1.row_span, c1.col_span+c2.col_span, c1.attr);
                table.remove(row.cells, td[i])
            end

            td = {}
            -- check for span to the right
            for n, cell in ipairs(row.cells) do
                if #cell.contents == 1 and #cell.contents[1].content == 1 and cell.contents[1].content[1].text == '>' then
                    table.insert(td, n)
                    local newalign = tab.colspecs[n+1]
                    newalign = newalign[1]
                    row.cells[n+1] = pandoc.Cell(row.cells[n+1].contents, newalign, row.cells[n+1].row_span, row.cells[n+1].col_span, row.cells[n+1].attr);
                end
            end

            for i = #td, 1, -1 do
                local c1 = row.cells[td[i]]
                local c2 = row.cells[td[i]+1]
                table.remove(row.cells, td[i])
                row.cells[td[i]] = pandoc.Cell(c2.contents, c2.alignment, c2.row_span, c2.col_span+c1.col_span, c2.attr);
            end

            -- check for forced align in cell
            for n, cell in ipairs(row.cells) do
                if cell.contents[1] ~= nil and cell.contents[1].content[1].text == '<:' then
                    local cn = cell.contents
                    table.remove(cn[1].content, 1)
                    row.cells[n] = pandoc.Cell(cn, 'AlignLeft', cell.row_span, cell.col_span, cell.attr);
                elseif cell.contents[1] ~= nil and cell.contents[1].content[1].text == ':>' then
                    local cn = cell.contents
                    table.remove(cn[1].content, 1)
                    row.cells[n] = pandoc.Cell(cn, 'AlignRight', cell.row_span, cell.col_span, cell.attr);
                elseif cell.contents[1] ~= nil and cell.contents[1].content[1].text == '<:>' then
                    local cn = cell.contents
                    table.remove(cn[1].content, 1)
                    row.cells[n] = pandoc.Cell(cn, 'AlignCenter', cell.row_span, cell.col_span, cell.attr);
                end
            end

        end        

    end

    return tab
end


return { { Table = process_table } }
