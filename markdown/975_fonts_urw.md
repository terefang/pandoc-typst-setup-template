# URW Free Fonts

:::{.foreach var="f-name" arg='("C059","D050000L","Nimbus Mono PS","Nimbus Roman","Nimbus Sans","P052","Standard Symbols PS","URW Bookman","URW Gothic","URW Classico","Z003")'}

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

