# Libre Fonts

:::{.foreach var="f-name" arg='("Garamond Libre","Libre Baskerville","Libre Caslon Text","Libre Franklin")'}

```{=typst}
=== #{f-name}
#text(font: f-name,fallback:false,size:20pt, chr-grid)
#pagebreak()
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