# Supported Syntax

the base markdown syntax is pandocs with the following options:

* +pipe_tables
* +raw_attribute
* +raw_html
* +fenced_divs
* +yaml_metadata_block
* -tex_math_dollars

## markdown extensions

### html/xml-entities

all html/xml entity references work normally, except if the entity name is in the format "`\&<namespace>-<glyphname>\;".

namespaces glyphs are mapped to glyph-names as given in the registration files:

* diceset.typ
* nerdfont.typ
* unicode.typ
* zapfding.typ

### pipe-tables

#### col-spans

if a cell consists solely of either the character "`<`" or "`>`" then the cell is merged (spanned) with the pointing cell.

#### cell align

if a cell starts with the strings "`<:`", "`:>`", or "`<:>`" — the cells alignment is set to left, right, or center.

### credits page

a simple credits page, bottom-left aigned.

```
::: {.credits}

credits content.

:::
```

### color-boxes

```
::: {.colorbox title="this title" color="black|red|green|blue|yellow|purple|cyan|magenta|orange" font="" font-size=""}

box content.

:::
```

title-less boxes can also use the shortcut "`<color>box`"

```
::: {.redbox font="" font-size=""}

box content.

:::
```


### gentle-clues aka. alerts

the following clue names are supported:

* note
* tip
* important
* warning
* caution
* idea
* abstract
* info
* question
* memo
* task
* success
* error
* example
* experiment
* conclusion
* quotation
* goal
* notify
* code
* danger

simple clues can be in the format of the fenced div:

```
:::note

Some note content. 
More *content*.

:::
```

advanced usage also supports the "title" and "style" (yellow, red, green, blue, purple, aqua, magenta) attributes:

```
::: {.important title="Custom Title" style="red"}

Some content.

:::
```

### html/xml macros

* br — line break
* brj — line break + justified
* pbr — page break (weak)
* pbe — page break (weak, to even)
* pbo — page break (weak, to odd)
* np — page break (hard)
* cbr — column break (weak)
* nc — column break (hard)
* lc — lower case (spanner)
* uc — upper case (spanner)
* sc — small caps (spanner)
* font or fnt — wraps the typst /text/ function  (spanner)
* page — wraps the typst /page/ function  (spanner)
* place — wraps the typst /place/ function  (spanner)
* block — wraps the typst /block/ function  (spanner)
* box — wraps the typst /box/ function  (spanner)
* align — wraps the typst /align/ function  (spanner)
* scale — wraps the typst /scale/ function  (spanner)
* par — wraps the typst /par/ function  (spanner)
* toc or outline — wraps the typst /outline/ function
* tbl — wraps the typst /table/ function
* thead — wraps the typst /table.header/ function
* tcell — wraps the typst /table.cell/ function
* thline — wraps the typst /table.hline/ function
* tvline — wraps the typst /table.vline/ function
* grid — wraps the typst /grid/ function
* cell — wraps the typst /grid.cell/ function
* hline — wraps the typst /grid.hline/ function
* vline — wraps the typst /grid.vline/ function
