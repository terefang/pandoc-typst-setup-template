# Libre Fonts

:::{.foreach var="f-name" arg='("Garamond Libre","Libre Baskerville","Libre Caslon Text","Libre Franklin","Libertinus Keyboard","Libertinus Math","Libertinus Mono","Libertinus Sans","Libertinus Serif","Libertinus Serif Display","Libertinus Serif Initials","Linux Libertine Display O","Linux Libertine Initials O","Linux Libertine Mono O","Linux Libertine O")'}


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