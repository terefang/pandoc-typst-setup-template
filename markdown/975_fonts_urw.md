# URW Free Fonts

:::{.foreach var="f-name" arg='("C059","D050000L","Nimbus Mono PS","Nimbus Roman","Nimbus Sans","P052","Standard Symbols PS","URW Bookman","URW Gothic","Z003")'}

```{=typst}

=== #{f-name}

#text(font: f-name,fallback:false,size:20pt, chr-grid)

#pagebreak()
```

::::{.foreach var="f-weight" arg='("regular","bold")'}

:::::{.foreach var="f-style" arg='("normal","italic")'}

```{=typst}
#text(size:16pt,font: f-name, weight: f-weight,style: f-style,ligatures: false,[ #lorem(40) ])
```

:::::

::::

```{=typst}
#pagebreak()
```


:::