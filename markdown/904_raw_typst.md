<page 
    columns="2" 
    numbering='"1"' 
    header='text(font: "TeX Gyre Heros",)[ #context{ if calc.even(here().page()) [_Lisa Strassners Thesis_ #h(1fr)] else [#h(1fr) National Academy of Sciences] } ]'
>

```{=typst}

#show heading: it => [
    #if it.level == 1 [
        #pagebreak(weak:true,to:"odd")
        #place(
          top + center,
          scope: "parent",
          float: true,
          text(font: "Montserrat", weight: "bold",size:24pt)[\~ #upper(it.body) \~],
        )
    ] else { text(font: "Montserrat", weight: "bold",size:20pt-(2pt * it.level),upper(it)) }
]

#set par(justify:true)

```

# RAW TYPST

the above is a raw typst code block. <br/>
it is used to setup a header formatting system. <br/>
this would usually go into the `template.typ` file.

# big page header 1

<lorem s="20" />

## the h2 <lorem s="5" />

<lorem s="20" />

### the h3 <lorem s="5" />

<lorem s="20" />

#### the h4 <lorem s="5" />

<lorem s="20" />

##### the h5 <lorem s="5" />

<lorem s="20" />

###### the h6 <lorem s="5" />

<lorem s="20" />

# big page header 2

<lorem s="20" />

###### the h6 <lorem s="5" />

<lorem s="20" />

</page>



