\np

<set cmd="page" arg="columns:2" />

```{=typst}
#let iconlist = read("/lib/diceset.txt").split("\n").filter(it => (it != ""))
```

# ICON FONT

:::{.foreach var="icon" arg="iconlist"}

<f:fnt size="32pt"><var arg='ds-icons.at(icon)'></f:fnt><fill c=" ."/><var arg="icon"><br/>

:::

