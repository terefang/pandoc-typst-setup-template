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

if a cell starts with the strings "`<:`", "`:>`", or "`<::>`" — the cells alignment is set to left, right, or center.

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