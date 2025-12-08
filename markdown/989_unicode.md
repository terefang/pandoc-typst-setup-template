\np

<set cmd="page" arg="columns:3" />

# unicode characters

<!--f:fnt name="UniFont" fallback="false"-->
<dump-entities/>
<!--/f:fnt-->

<!--
&uni-cent:32;<fill c=" ."/>uni-cent<br/>
&uni-pound:32;<fill c=" ."/>uni-pound<br/>
&uni-yen:32;<fill c=" ."/>uni-yen<br/>
&uni-florin:32;<fill c=" ."/>uni-florin<br/>
-->

## OK

```{=typst}

#text(fallback:false,font:"UniFont")[
#text(size: 32pt, [#{str.from-unicode(0xF6C9)}])#box(width: 1fr, repeat(". ")) f6c9 #linebreak();
#text(size: 32pt, [#{str.from-unicode(0xF7B4)}])#box(width: 1fr, repeat(". ")) f7b4 #linebreak();
]

```

## NOK

```{=typst}

#text(size: 32pt, [#{str.from-unicode(0xF6C9)}])#box(width: 1fr, repeat(". ")) f6c9 #linebreak();
#text(size: 32pt, [#{str.from-unicode(0xF7B4)}])#box(width: 1fr, repeat(". ")) f7b4 #linebreak();

```

