# TeX Gyre Fonts

:::{.foreach var="f-name" arg='("TeX Gyre Adventor","TeX Gyre Bonum","TeX Gyre Bonum Math","TeX Gyre Chorus","TeX Gyre Cursor","TeX Gyre DejaVu Math","TeX Gyre Heros","TeX Gyre Pagella","TeX Gyre Pagella Math","TeX Gyre Schola","TeX Gyre Schola Math","TeX Gyre Termes","TeX Gyre Termes Math")'}

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

