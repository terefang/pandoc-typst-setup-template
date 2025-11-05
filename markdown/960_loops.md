# LOOPS

:::{.foreach var="hn" arg="range(1,2)"}

<set cmd="text" arg='font:"TeX Gyre Bonum"'/>

<lorem n="50"/>

:::

:::{.foreach var="hn" arg="range(1,2)"}

<set cmd="text" arg='font:"TeX Gyre Bonum", features: ("sups",)'/>

<lorem n="50"/>

:::

:::{.foreach var="hn" arg="range(1,2)"}

<set cmd="text" arg='font:"TeX Gyre Bonum"'/>

<super>
<lorem n="50"/>
</super>

:::