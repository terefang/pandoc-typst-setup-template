# Other Fonts

:::{.foreach var="f-name" arg='("Agave Nerd Font","Agave Nerd Font Mono","Agave Nerd Font Propo","DejaVu Sans Mono","Libertinus Serif","Luciole","Atkinson Hyperlegible","B612","B612 Mono","Charis SIL","Chivo","Chivo Mono","Fantasma","Gidole","Gidolinya","Helmet Neue","Hubot Sans","Mona Sans","Optician Sans","Saira","Saira Stencil One","Techna Sans","Bodoni Moda","Zalando Sans","Inria Sans","Inria Serif","JuliaMono","Grandstander","League Spartan")'}

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

