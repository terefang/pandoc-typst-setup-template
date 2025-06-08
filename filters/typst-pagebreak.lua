--[[

pagebreak – convert raw LaTeX page breaks to other formats

Copyright © 2017-2024 Benct Philip Jonsson, Albert Krewinkel

Copyright © 2025 -- Edited by Alfred Reibenschuh for the Typst Template

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

]]

function RawBlock (el)
  -- check that the block is TeX or LaTeX and contains only
  if el.format:match 'tex' then
    if (el.text:match '^\\newpage%{?%}?$') or (el.text:match '^\\np%{?%}?$') then
    return pandoc.RawBlock('typst', '#pagebreak(weak:false)\n\n')
    end
    if (el.text:match '^\\pagebreak%{?%}?$') or (el.text:match '^\\pb%{?%}?$') then
    return pandoc.RawBlock('typst', '#pagebreak(weak:true)\n\n')
    end
    if (el.text:match '^\\pagebreakodd%{?%}?$') or (el.text:match '^\\pbo%{?%}?$') then
    return pandoc.RawBlock('typst', "#pagebreak(weak:true,to:'odd')\n\n")
    end
    if (el.text:match '^\\pagebreakeven%{?%}?$') or (el.text:match '^\\pbe%{?%}?$') then
    return pandoc.RawBlock('typst', "#pagebreak(weak:true,to:'even')\n\n")
    end
    if (el.text:match '^\\colbreak%{?%}?$') or (el.text:match '^\\cb%{?%}?$') then
    return pandoc.RawBlock('typst', '#colbreak(weak:true)\n\n')
    end
    if (el.text:match '^\\newcolumn%{?%}?$') or (el.text:match '^\\nc%{?%}?$') then
    return pandoc.RawBlock('typst', '#colbreak(weak:false)\n\n')
    end
  end
  -- otherwise, leave the block unchanged
  return nil
end

