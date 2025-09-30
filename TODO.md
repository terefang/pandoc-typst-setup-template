# TODO

```
-- tex booktabs table
--
-- #set table(
--         stroke: (x, y) => { if (y == 0) { (bottom: 0.5pt + black) } },
-- )
-- #show table: block.with(stroke: (y: 1pt + black))
--
-- #table(
-- columns: 4,
-- table.header[This][is][a][test],
-- [a], [b], [c], [d],
-- [1], [2], [3], [4],
-- )
```
#set page(
background: image("background.png", width: 100%, fit: "stretch"),
)



curl https://api.github.com/repos/ryanoasis/nerd-fonts/releases|jq -c '.[]'|head -1|jq -r '.assets[].browser_download_url'|fgrep .zip



curl https://packages.typst.org/preview/index.json |jq -c -r '.[] | "https://packages.typst.org/preview/"+.name+"-"+.version+".tar.gz" '



# make custom part of heading

#let part = heading.with(level: 1)
#show heading.where(level: 1): set heading(supplement: "Part")
#set heading(offset: 1, numbering: "I.1.")

#part[hi hello] <hi>

= it just works!
yep @hi

#outline()



# outlines

```
#let main-matter(body) = {
set heading(numbering: "1.1")

[#outline(target: selector(heading).after(<start-main>).before(<end-main>)) <start-main>]
body
[ #[]<end-main>]
}

#let back-matter(body) = {
set heading(numbering: "A.1")
counter(heading).update(0)

[#outline(title: "Appendices", target: selector(heading).after(<start-appendices>).before(<end-appendices>)) <start-appendices>]
body
[ #[]<end-appendices>]
}

#main-matter[
= Some thing

== Nested thing

= Other thing
]

#back-matter[
= Some extra

= Other extra
]
```


# spec table layout

```
#let bu(body, rowspan: 3, pl: 0.5em) = {
  table.cell(rowspan: rowspan, align: horizon+center, rotate(270deg,reflow:true)[
    #set par(leading: pl)
    #body])
}


#table(
  columns: 2,
  bu[foo], [toto],
  [titi],
  [tutu],
)
```

# some

```
#lorem(20)

lorem #box(move(dy:1em,box(
        width: 5em,
        stroke: (top: black),
        align(center,[ text ])
        )
    )) ipsum

#lorem(20)
```
# other

```
#let column-list(num, body) = {
columns(4, {
let (children, ..fields) = body.fields()
children = children
// markup can contain whitespace
.filter(it => it.func() == list.item)
children
// split into column-sized chunks
.chunks(calc.ceil(children.len() / num))
// each column is an array but should be a sequence of list items
.map(array.join)
// columns should be joined
.join(colbreak())
})
}

#column-list(4)[
- list 1
- list 2
- list 3
- list 4
- list 5
- list 6
- list 7
- list 8
- list 9
- list 10
]
```

# other

```
#let middle_mini_box(content) = box(scale(x: 200%, reflow: true, align(center, par(leading: 0.1em, text(
  size: 0.4em,content
)))))

#let wrapper(content) = box(width: auto, par(leading: 2pt, text(
  size: 41pt,
  content
)))


#wrapper()[MAN #middle_mini_box[_WHAT\ CAN_] I SAY?]
```