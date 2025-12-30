#let cc-sym-uni00A9-g = text(font:"CCSymbols",str.from-unicode(0x00a9))
#let cc-sym-uni229C-g = text(font:"CCSymbols",str.from-unicode(0x229c))
#let cc-sym-u1F10D-g = text(font:"CCSymbols",str.from-unicode(0x1f10d))
#let cc-sym-u1F10E-g = text(font:"CCSymbols",str.from-unicode(0x1f10e))
#let cc-sym-u1F10F-g = text(font:"CCSymbols",str.from-unicode(0x1f10f))
#let cc-sym-u1F16D-g = text(font:"CCSymbols",str.from-unicode(0x1f16d))
#let cc-sym-u1F16E-g = text(font:"CCSymbols",str.from-unicode(0x1f16e))
#let cc-sym-u1F16F-g = text(font:"CCSymbols",str.from-unicode(0x1f16f))

#let cc-sym-copyright-sign-g = text(font:"CCSymbols",str.from-unicode(0x00a9))
#let cc-sym-cicled-equals-g = text(font:"CCSymbols",str.from-unicode(0x229c))
#let cc-sym-cicled-zero-with-slash-g = text(font:"CCSymbols",str.from-unicode(0x1f10d))
#let cc-sym-cicled-anticlockwise-arrow-g = text(font:"CCSymbols",str.from-unicode(0x1f10e))
#let cc-sym-cicled-dollar-sign-with-overlaid-backslash-g = text(font:"CCSymbols",str.from-unicode(0x1f10f))
#let cc-sym-cicled-cc-g = text(font:"CCSymbols",str.from-unicode(0x1f16d))
#let cc-sym-cicled-c-with-overlaid-backslash-g = text(font:"CCSymbols",str.from-unicode(0x1f16e))
#let cc-sym-cicled-human-figure-g = text(font:"CCSymbols",str.from-unicode(0x1f16f))

#let cc-sym-nd-g = text(font:"CCSymbols",str.from-unicode(0x229c))
#let cc-sym-zero-g = text(font:"CCSymbols",str.from-unicode(0x1f10d))
#let cc-sym-sa-g = text(font:"CCSymbols",str.from-unicode(0x1f10e))
#let cc-sym-nc-g = text(font:"CCSymbols",str.from-unicode(0x1f10f))
#let cc-sym-cc-g = text(font:"CCSymbols",str.from-unicode(0x1f16d))
#let cc-sym-public-g = text(font:"CCSymbols",str.from-unicode(0x1f16e))
#let cc-sym-by-g = text(font:"CCSymbols",str.from-unicode(0x1f16f))

#let cc-symbols = (:)

#cc-symbols.insert("copyright-sign",cc-sym-copyright-sign-g);
#cc-symbols.insert("cicled-equals",cc-sym-cicled-equals-g);
#cc-symbols.insert("cicled-zero-with-slash",cc-sym-cicled-zero-with-slash-g);
#cc-symbols.insert("cicled-anticlockwise-arrow",cc-sym-cicled-anticlockwise-arrow-g);
#cc-symbols.insert("cicled-dollar-sign-with-overlaid-backslash",cc-sym-cicled-dollar-sign-with-overlaid-backslash-g);
#cc-symbols.insert("cicled-cc",cc-sym-cicled-cc-g);
#cc-symbols.insert("cicled-c-with-overlaid-backslash",cc-sym-cicled-c-with-overlaid-backslash-g);
#cc-symbols.insert("cicled-human-figure",cc-sym-cicled-human-figure-g);

#cc-symbols.insert("nd",cc-sym-cicled-equals-g);
#cc-symbols.insert("zero",cc-sym-cicled-zero-with-slash-g);
#cc-symbols.insert("sa",cc-sym-cicled-anticlockwise-arrow-g);
#cc-symbols.insert("nc",cc-sym-cicled-dollar-sign-with-overlaid-backslash-g);
#cc-symbols.insert("cc",cc-sym-cicled-cc-g);
#cc-symbols.insert("public",cc-sym-cicled-c-with-overlaid-backslash-g);
#cc-symbols.insert("by",cc-sym-cicled-human-figure-g);

