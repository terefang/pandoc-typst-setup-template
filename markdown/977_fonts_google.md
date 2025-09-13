# Google Fonts

:::{.foreach var="f-name" arg='("Alumni Sans","Alumni Sans SC","Bebas Neue","Bona Nova","Bona Nova SC","Buenard","Junicode","Montserrat","Noto Sans","Noto Sans Symbols","Noto Sans Symbols 2","Open Sans","Overpass","Sofia Sans")'}

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