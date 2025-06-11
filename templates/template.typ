$-- // https://github.com/jomaway/typst-gentle-clues/blob/main/docs.pdf
#import "@preview/gentle-clues:1.2.0": *

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

#set list(marker:text(font:"Agave Nerd Font",size:8pt,"\u{ea71}")) // circle


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

#set document(
$if(title)$
  title: [$title$],
$endif$
$if(author)$
  author: "$author$",
$endif$
  date: auto,
)

$for(include-before)$

$include-before$

$endfor$


$body$


$for(include-after)$

$include-after$

$endfor$
