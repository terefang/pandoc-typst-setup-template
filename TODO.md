# TODO

## Typst Patches

[_] #185 | Support variable fonts 
[_] #2098 | Also select font via unprettified family name 
[_] #2469 | Load fonts / font families from files or bytes
    #7491 | Feature Request: allow using fonts by filename
[_] #3488 | Add a font function
[_] #4393 | Select font glyph by name
[_] #4773 | Inconsistent font resolution: standalone vs fallback
[_] #7009 | Simulate fake small caps 
[_] #7180 | Allow font size to be set relative to one of fonts typographic parameters 
[_] #7283 | Ability to use a different font for italic
[_] #7417 | Not all font family variants grouped correctly (not recognized as one family) 
[_] #7468 | Also select font via localized family name
[x] #7490 | Show full font file path in typst fonts --variants
    #6943 | Allow fonts subcommand to also display the full filename path 
[_] #7531 | Warn when requested font variant is missing and report fallback target 
[_] #7582 | typst-kit: Allow adding custom fonts from bytes, similar to default embedded fonts
[?] #7586 | tyspst-cli fonts --variants doesn't seem to look at fonts metadata to list all available styles

# pandoc features

## Extension: table_attributes±

Attributes may be attached to tables by including them at the end of the caption.

```
(table)

: Here's the caption. {#ident .class key="value"}
```


## Code

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

```
#let gn(enable:true,word) = if enable {
  show " ": "-"
  word
} else {
  word
}

#gn[Cộng hòa] #gn[xã hội chủ nghĩa] #gn[Việt Nam]

#let gn = gn.with(enable:false)
#gn[Cộng hòa] #gn[xã hội chủ nghĩa] #gn[Việt Nam]
```

```
#let to-string(it) = {
if type(it) == str {
it
} else if type(it) != content {
str(it)
} else if it.has("text") {
it.text
} else if it.has("children") {
it.children.map(to-string).join()
} else if it.has("body") {
to-string(it.body)
} else if it == [ ] {
" "
}
}

#to-string[This _*cool*_ project] // => "This cool project"
```

# Registry

* https://www.color.org/registry/index.xalter

### FOGRA51 aka. PSOcoated_v3

* https://www.color.org/registry/PSOcoated_v3.xalter
* https://www.color.org/registry/profiles/PSOcoated_v3.icc

### FOGRA52 aka. PSOuncoated_v3

* https://www.color.org/registry/PSOuncoated_v3_FOGRA52.xalter
* https://www.color.org/registry/profiles/PSOuncoated_v3_FOGRA52.icc

# tables

make macros for special types of table/grid cells

### spec

```
#let breaks = state("_table_breaks", (0, ))
#let breakcell(body, ..args) = table.cell(colspan: 4, stroke:none, align:center,inset:0.6em,fill: rgb("FFFFFF"), ..args, { body })
#show table.cell: it => {
if it.colspan == 4 {
breaks.update(arr => arr + (it.y, ))
}
it
}
#context [
#let break-y = breaks.final()
#pad(x:-6em)[#figure(
table(
columns:(1fr,auto,auto,3.5fr),
inset: (y: 4.95pt),
fill: (_, y) => {
let last-break = break-y.filter(elt => elt <= y).last()
if calc.odd(y - last-break) { rgb("D3D3D3") }
},
align: (left+horizon,center+horizon,center+horizon,left+horizon),
stroke: (x: none, y:none),
table.header(
table.cell(fill: gray,align:left)[*Special Effect*],
table.cell(fill: gray,align:left)[*Offense*],
table.cell(fill: gray,align:left)[*Defense*],
table.cell(fill: gray, align:center)[*Description*]
),

breakcell[_0-Point Special Effects_],
table.hline(stroke:0.05em),

[*Brace*], [X], [X], [*Brace*, as the Proactive Action.],

[*Communicate*], [X], [X], [Verbally or somatically communicate with others.],

[*Prepare Counter*], [X], [X], [Mark a Special Effect in secret. If used against you, it is cancelled.],

[*Ward Location*], [X], [X], [With a Shield, *Passive Block* one or more Hit Locations.],

table.hline(stroke:0.05em),
breakcell[_1-Point Special Effects_],
table.hline(stroke:0.05em),

[*Arise*], [], [X], [Stand up from a Prone position.],

[*Bash*], [X], [], [Shield or Bludgeoning weapon. Knock your target backwards.],
table.hline(stroke:0.05em),
breakcell[_2-Point Special Effects_],
table.hline(stroke:0.05em),

[*Choose Location*], [X], [], [Choose a specific Hit Location to strike. Costs 4 for Ranged Weapons.],
))]
]

```

## new chapter marking

```
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => {
pagebreak(weak: true, to: "odd")
set text(2em)
{
set align(right)
set text(white)
show: block.with(
fill: blue.darken(20%),
inset: (x: 6pt, top: 1cm, bottom: 8pt),
// guessed, doesn't really matter if it overflows
outset: (top: 2.5cm)
)
counter(heading).display()
}
show: block.with(
below: 1em,
)
it.body
}

= Fundamentals

#lorem(30)

== Overview

#lorem(30)
```
