# ADF Fonts

:::{.foreach var="f-name" arg='("Accanthis ADF Std","Accanthis ADF Std No2","Accanthis ADF Std No3","Aurelis ADF No2 Std","Aurelis ADF Script No2 Std","Aurelis ADF Script No2 Std Ext","Baskervald ADF Std","Berenis ADF Pro","Berenis ADF Pro Math","Electrum ADF","Gillius ADF","Gillius ADF No2","Ikarius ADF No2 Std","Ikarius ADF Std","Irianis ADF Std","Irianis ADF Style Std","Libris ADF Std","Mekanus ADF Std","Mekanus ADF Titling Std","Mint Spirit","Mint Spirit No2","NeoGothis ADF Std","Oldania ADF Std","Romande ADF No2 Std","Romande ADF Script Std","Romande ADF Std","Romande ADF Style Std","Solothurn","Switzera ADF","Switzera ADF Ext","Tribun ADF Std","Universalis ADF Pro","Universalis ADF Std","Venturis ADF","Venturis ADF Cd Style","Venturis ADF Goth Titling","Venturis ADF Math","Venturis ADF No2","Venturis ADF Style","Venturis ADF Titling No1","Venturis ADF Titling No2","Venturis ADF Titling No3","Venturis ADF Titling No4","Venturis Old ADF","VenturisSans ADF","VenturisSans ADF Ex","VenturisSans ADF No2","VenturisSans ADF No2 Ex","Verana","Verana Sans")'}

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