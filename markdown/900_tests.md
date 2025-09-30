
:::{.foreach var="l-n" arg="(100,80,60,40,20,10)"}

\np


```{=typst}
#set page(margin:(top:50pt),header-ascent:10pt,header:place(top+left,dy:20pt,scope:"parent",float:true,[#lorem(l-n)]))
```
# header Tests

:::


