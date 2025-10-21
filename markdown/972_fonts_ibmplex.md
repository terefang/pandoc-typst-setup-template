# IBM Plex Fonts

:::{.foreach var="f-name" arg='("IBM Plex Mono","IBM Plex Mono Medm","IBM Plex Mono SmBld","IBM Plex Mono Text","IBM Plex Sans","IBM Plex Sans Medm","IBM Plex Sans SmBld","IBM Plex Sans Text","IBM Plex Serif","IBM Plex Serif Medm","IBM Plex Serif SmBld","IBM Plex Serif Text")'}

```{=typst}
#box[=== #{f-name}]
```

::::{.foreach var="f-weight" arg='(100,200,300,400,500,600,700,800,900)'}

:::::{.foreach var="f-style" arg='("normal","italic")'}

```{=typst}
#{f-weight} : #text(font: f-name,fallback:false,size:f-size-sc,weight: f-weight,style: f-style, [ #smallcaps(f-name) | #fakesc[ #{f-name} ] ])
```

:::::

::::

```{=typst}
#pagebreak()

*#{f-name}*

#text(font: f-name,fallback:false,size:20pt, chr-grid)

#pagebreak()

*#{f-name}*

```

::::{.foreach var="f-weight" arg='("regular","bold")'}

:::::{.foreach var="f-style" arg='("normal","italic")'}

```{=typst}
#text(size:16pt,font: f-name, weight: f-weight,style: f-style,[ #lorem(40) ])
```

:::::

::::

```{=typst}
#pagebreak()
```

:::

