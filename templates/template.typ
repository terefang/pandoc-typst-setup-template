$-- // https://github.com/jomaway/typst-gentle-clues/blob/main/docs.pdf
#import "@preview/gentle-clues:1.2.0": *
#import "@preview/based:0.2.0": base64, base32, base16
#import "@preview/tiaoma:0.3.0"

#let make-qrcode(text:"", scale: 1.0) = {
  tiaoma.barcode(text, "QRCode", options: (
   scale: scale,
   option-1: 4,
  ))
}

#let fakesc(s, scaling: 0.8) = {
  show regex("\p{Ll}+"): it => {
    context if (text.size > 9pt) {
        box(scale(x: 115%, reflow: true, text(scaling * 1em,upper(it))))
    } else {
        box(scale(x: 115%, reflow: true, text(scaling * 1em, stroke: 0.001em + text.fill, upper(it))))
    }
  }
  text(s)
}

#let fakebold(txt,stroke: 1,track: 0) = {
  show regex(".+"): it => context {
    text(tracking:(track * 0.001em),stroke: (stroke * 0.001em) + text.fill, it)
  }
  text(txt)
}

$-- ------------------------------------------------------------------
$--
$-- #let kbd(..args) = {
$--   let shortcuts = args
$--     .pos()
$--     .map(word => {
$--       box(inset:3pt,stroke: 1pt + gray.darken(30%).mix((blue, 10%)), text(size:0.6em,weight:"bold", word))
$--     })
$--   shortcuts.intersperse(h(0.4em)).join()
$-- }
$--
$-- #kbd[1][2][Ctrl]
$--
$-- ------------------------------------------------------------------



$-- ------------------------------------------------------------------
$-- #import "@preview/typsy:0.2.0": tree-counter
$--
$-- #let head-counter = tree-counter(heading, level: 1)
$-- #let enum-counter = (head-counter.subcounter)(()=>{})
$-- #let subenum-counter = (enum-counter.subcounter)(()=>{})
$-- #let subsubenum-counter = (subenum-counter.subcounter)(()=>{})
$--
$-- #let qq(marks:1,lines:2,doc) = {
$--     let markAnnoation = if marks == 1 {"mark"} else {"marks"}
$--
$--     [#((enum-counter.take)()) #h(0.5em) #doc #h(1fr) (#marks #markAnnoation)#linebreak()]
$--
$--     for _ in range(lines) [
$--         #box(width:1fr,repeat(". "))
$--         #linebreak()
$--     ]
$-- }
$-- #let sqq(marks:1,lines:2,doc) = {
$--     let markAnnoation = if marks == 1 {"mark"} else {"marks"}
$--
$--     [#((subenum-counter.take)()) #h(0.5em) #doc #h(1fr) (#marks #markAnnoation)#linebreak()]
$--
$--     for _ in range(lines) [
$--         #box(width:1fr,repeat(". "))
$--         #linebreak()
$--     ]
$-- }
$-- #let ssqq(marks:1,lines:2,doc) = {
$--     let markAnnoation = if marks == 1 {"mark"} else {"marks"}
$--
$--     [#((subsubenum-counter.take)()) #h(0.5em) #doc #h(1fr) (#marks #markAnnoation)#linebreak()]
$--
$--     for _ in range(lines) [
$--         #box(width:1fr,repeat(". "))
$--         #linebreak()
$--     ]
$-- }
$--
$-- #set heading(numbering:"1")
$--
$-- = Test 1
$--
$-- #qq(marks:2, lines:5)[Important question "a"]
$--
$-- #sqq(marks:1, lines:4)[Important sub question "a.1"]
$--
$-- #sqq(marks:1, lines:3)[Important sub question "a.2"]
$--
$-- = Test 2
$--
$-- #qq(marks:1, lines:5)[#lorem(20)]
$--
$-- #sqq(marks:1, lines:3)[Important sub question "b.1.1"]
$--
$-- #ssqq(marks:4, lines:6)[Important sub sub question "b.1.1.1"]

$-- ------------------------------------------------------------------
#let my-to-string(it) = {
  if type(it) == str {
    it
  } else if type(it) != content {
    str(it)
  } else if it.has("text") {
    it.text
  } else if it.has("children") {
    it.children.map(my-to-string).join()
  } else if it.has("body") {
    my-to-string(it.body)
  } else if it == [ ] {
    " "
  } else {
    "-"
  }
}
$-- ------------------------------------------------------------------
#let stretchy(text, max: 400%, sep:"\n") = layout(container => {
    let xtext = my-to-string(text)
    for t-line in xtext.split(sep) {
       let x-scale = container.width / measure(t-line).width * 100%
       if max != none { x-scale = calc.min(max, x-scale) }
       box(scale(x: x-scale, origin: start, reflow: true, t-line))
    }
})
$-- ------------------------------------------------------------------


$-- #import "@preview/elembic:1.0.0" as e: field, types
$--
$-- #let fbox = e.element.declare(
$--   "fbox",
$--   prefix: "@preview/my-package,v1",
$--   doc: "My box",
$--   display: it => block(fill: it.fill, inset: 5pt, it.body),
$--   fields: (
$--     field("body", content, doc: "In", required: true),
$--     field("fill", types.option(types.paint), doc: "Fills"),
$--   )
$-- )
$--
$-- #show: e.set_(fbox, fill: purple)
$-- #fbox[elembic 1.0]

#show terms: it => {
  it.children
    .map(child => [
      #strong[#child.term]
      #block(inset: (left: 1.5em, top: -0.4em))[#child.description]
      ])
    .join()
}

#set table(stroke: none,)
#show table: set block(width:100%)

#set list(body-indent:0.5em,indent:0.5em,marker:text(font:"Agave Nerd Font",size:8pt,"\u{ea71} ")) // circle

$-- ---------------------------------------------------------------------

#let horizontalrule = ""

#show figure.where(
  kind: "float-bottom"
):  set figure(scope:"parent",placement: bottom,supplement:none)

#show figure.where(
  kind: "float-top"
):  set figure(scope:"parent",placement: top,supplement:none)


#show figure.where(
  kind: table
): set figure.caption(position: $if(table-caption-position)$$table-caption-position$$else$top$endif$)

#show figure.where(
  kind: image
): set figure.caption(position: $if(figure-caption-position)$$figure-caption-position$$else$bottom$endif$)

// --- BEGIN pandoc template
$-- $if(template)$
$-- #import "$template$": conf
$-- $else$
$-- $template.typst()$
$-- $endif$
// --- END pandoc template


// --- BEGIN pandoc header-includes
$for(header-includes)$
$header-includes$

$endfor$
// --- END pandoc header-includes

#import "/templates/unicode.typ": *


#set document(
$if(title)$
  title: [$title$],
$endif$
$if(author)$
  author: "$author$",
$endif$
  date: datetime.today(),
)

$for(include-before)$

$include-before$

$endfor$


$body$


$for(include-after)$

$include-after$

$endfor$
