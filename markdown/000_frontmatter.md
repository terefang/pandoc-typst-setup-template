<!--
this is the front matter

it relys heavy on xml/html macros that are mapped to typst functions 
(see filters/typst-htmlfunc.lua)

-->

<page paper="a4" columns="1" margin="0pt" flipped="false">

<place pos="top + left" scope='"parent"' dx="50pt" dy="50pt" float="true">
<box width="495pt" height="100pt" stroke="none">
<align t="top + center">
<fnt name="TeX Gyre Heros" size="120pt" weight="700" fill="white" stroke="0.1pt">
<scale x="60%" reflow="true">
<par leading="10pt">
Sample Document.
</par>
</scale>
</fnt>
</align>
</box>
</place>

<place pos="bottom + left" scope='"parent"' dx="50pt" dy="-50pt" float="true">
<box width="495pt" height="100pt" stroke="none">
<align t="top + center">
<fnt name="TeX Gyre Heros" size="60pt" weight="700" fill="white" stroke="0.1pt">
<par leading="10pt">
And Here Goes The Author
</par>
</fnt>
</align>
</box>
</place>

</page>