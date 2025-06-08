#let uni-cent-g = text(str.from-unicode(0x00a2));
#let uni-pound-g = text(str.from-unicode(0x00a3));
#let uni-yen-g = text(str.from-unicode(0x00a5));
#let uni-florin-g = text(str.from-unicode(0x0192));

// --- html entities
#let html-lt-g = text(str.from-unicode(0x003C));        // XML 1.0  HTML 5.0    HTMLspecial	ISOnum	less-than sign
#let html-gt-g = text(str.from-unicode(0x003E));        // XML 1.0  HTML 5.0    HTMLspecial	ISOnum	greater-than sign
#let html-quot-g = text(str.from-unicode(0x0022));
#let html-amp-g = text(str.from-unicode(0x0026));       // XML 1.0  HTML 5.0    HTMLspecial	ISOnum	ampersand
#let html-apos-g =text(str.from-unicode(0x0027));       // XML 1.0	HTMLspecial	ISOnum	apostrophe (apostrophe-quote); see below

// --- on the backburner
//  #let html-Tab-g =text(str.from-unicode(0x0009));        // HTML 5.0		character tabulation (TAB)
//  #let html-NewLine-g =text(str.from-unicode(0x000A));    // HTML 5.0		line feed (LF)
//  #let html-DownBreve-g =text(str.from-unicode(0x0311));  // MathML 2.0   HTML 5.0    combining inverted breve (combining down breve)
//  #let html-tdot-g =text(str.from-unicode(0x20DB));       // MathML 2.0   HTML 5.0    combining three dots above
//  #let html-DotDot-g =text(str.from-unicode(0x20DC));     // MathML 2.0   HTML 5.0    combining four dots above
//  #let html-excl-g =text(str.from-unicode(0x0021));       // HTML 5.0		ISOnum	exclamation mark
//  #let html-num-g =text(str.from-unicode(0x0023));        // HTML 5.0		ISOnum	number sign
//  #let html-dollar-g =text(str.from-unicode(0x0024));     // HTML 5.0		ISOnum	dollar sign
//  #let html-percnt-g =text(str.from-unicode(0x0025));     // HTML 5.0		ISOnum	percent sign
//  #let html-lpar-g =text(str.from-unicode(0x0028)); // HTML 5.0		ISOnum	left parenthesis
//  #let html-rpar-g =text(str.from-unicode(0x0029)); // HTML 5.0		ISOnum	right parenthesis
//  #let html-ast-g =text(str.from-unicode(0x002A)); // HTML 5.0		ISOnum	asterisk (middle asterisk)
//  #let html-plus-g =text(str.from-unicode(0x002B)); // HTML 5.0		ISOnum	plus sign
//  #let html-comma-g =text(str.from-unicode(0x002C)); // HTML 5.0		ISOnum	comma
//  #let html-period-g =text(str.from-unicode(0x002E)); // HTML 5.0		ISOnum	full stop (period)
//  #let html-sol-g =text(str.from-unicode(0x002F)); // HTML 5.0		ISOnum	solidus
//  #let html-colon-g =text(str.from-unicode(0x003A)); // HTML 5.0		ISOnum	colon
//  #let html-semi-g =text(str.from-unicode(0x003B)); // HTML 5.0		ISOnum	semicolon
//  #let html-nvlt-g =text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	less-than sign, combining long vertical line overlay
//  #let html-equals-g =text(str.from-unicode(0x003D)); // HTML 5.0		ISOnum	equals sign
//  #let html-bne-g =text(str.from-unicode(0x20E5)); // HTML 5.0		ISOtech	equals sign, combining reverse solidus overlay
//  #let html-nvgt-g =text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	greater-than sign, combining long vertical line overlay
//  #let html-quest-g =text(str.from-unicode(0x003F)); // HTML 5.0		ISOnum	question mark
//  #let html-commat-g =text(str.from-unicode(0x0040)); // HTML 5.0		ISOnum	commercial at
//  #let html-lsqb-g =text(str.from-unicode(0x005B)); // HTML 5.0		ISOnum	left square bracket (left bracket)
//  #let html-bsol-g =text(str.from-unicode(0x005C)); // HTML 5.0		ISOnum	reverse solidus (backward solidus)
//  #let html-rsqb-g =text(str.from-unicode(0x005D)); // HTML 5.0		ISOnum	right square bracket (right bracket)
//  #let html-Hat-g =text(str.from-unicode(0x005E)); // HTML 5.0			circumflex accent (hat)
//  #let html-lowbar-g =text(str.from-unicode(0x005F)); // HTML 5.0		ISOnum	low line (low bar; &underbar)
//  #let html-grave-g =text(str.from-unicode(0x0060)); // HTML 5.0		ISOdia	grave accent (diacritical grave)
//  #let html-fjlig-g =text(str.from-unicode(0x006A)); // HTML 5.0		ISOpub	latin small letter f, latin small letter j
//  #let html-lcub-g =text(str.from-unicode(0x007B)); // HTML 5.0		ISOnum	left curly bracket (left brace)
//  &verbar;
//  #let html-vert-g =text(str.from-unicode(0x007C)); // HTML 5.0		ISOnum	vertical line (vertical bar), (pipe character)
//  #let html-rcub-g =text(str.from-unicode(0x007D)); // HTML 5.0		ISOnum	right curly bracket (right brace)
//  &nbsp;[b]
//  #let html-NonBreakingSpace-g =text(str.from-unicode(0x00A0)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOnum	no-break space (non-breaking space)[g]
//  #let html-iexcl-g =text(str.from-unicode(0x00A1)); // HTML 3.2	HTMLlat1	ISOnum	inverted exclamation mark
//  #let html-cent-g =text(str.from-unicode(0x00A2)); // HTML 3.2	HTMLlat1	ISOnum	cent sign
//  #let html-pound-g =text(str.from-unicode(0x00A3)); // HTML 3.2	HTMLlat1	ISOnum	pound sign
//  #let html-curren-g = text(str.from-unicode(0x00A4)); // HTML 3.2	HTMLlat1	ISOnum	currency sign
//  #let html-yen-g = text(str.from-unicode(0x00A5)); // HTML 3.2	HTMLlat1	ISOnum	yen sign (yuan sign)
//  #let html-brvbar-g = text(str.from-unicode(0x00A6)); // HTML 3.2	HTMLlat1	ISOnum	broken bar (broken vertical bar)
//  #let html-sect-g = text(str.from-unicode(0x00A7)); // HTML 3.2	HTMLlat1	ISOnum	section sign
//  &uml;[b]
//  &Dot;
//  &die;
//  #let html-DoubleDot-g = text(str.from-unicode(0x00A8)); // 
//  HTML 3.2
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLlat1	ISOdia	diaeresis (spacing dieresis, double dot); see also Germanic umlaut
//  &copy;[b]
//  #let html-COPY-g = text(str.from-unicode(0x00A9)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOnum	copyright sign[h]
//  #let html-ordf-g = text(str.from-unicode(0x00AA)); // HTML 3.2	HTMLlat1	ISOnum	feminine ordinal indicator
//  #let html-laquo-g = text(str.from-unicode(0x00AB)); // HTML 3.2	HTMLlat1	ISOnum	left-pointing double angle quotation mark (left pointing guillemet)
//  #let html-not-g = text(str.from-unicode(0x00AC)); // HTML 3.2	HTMLlat1	ISOnum	not sign
//  #let html-shy-g = text(str.from-unicode(0x00AD)); // HTML 3.2	HTMLlat1	ISOnum	soft hyphen (discretionary hyphen)
//  &reg;[b]
//  &circledR;
//  #let html-REG-g = text(str.from-unicode(0x00AE)); // 
//  HTML 3.2
//  HTML 5.0
//  HTML 5.0
//  HTMLlat1	ISOnum	registered sign (registered trademark symbol)[i]
//  &macr;[b]
//  #let html-strns-g = text(str.from-unicode(0x00AF)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOdia	macron (spacing macron, overline, APL overbar)
//  #let html-deg-g = text(str.from-unicode(0x00B0)); // HTML 3.2	HTMLlat1	ISOnum	degree sign
//  &plusmn;[b]
//  &pm;
//  #let html-PlusMinus-g = text(str.from-unicode(0x00B1)); // 
//  HTML 3.2
//  HTML 5.0
//  HTML 5.0
//  HTMLlat1	ISOnum	plus–minus sign (plus-or-minus sign)
//  #let html-sup2-g = text(str.from-unicode(0x00B2)); // HTML 3.2	HTMLlat1	ISOnum	superscript two (superscript digit two, squared)
//  #let html-sup3-g = text(str.from-unicode(0x00B3)); // HTML 3.2	HTMLlat1	ISOnum	superscript three (superscript digit three, cubed)
//  &acute;[b]
//  #let html-DiacriticalAcute-g = text(str.from-unicode(0x00B4)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOdia	acute accent (diacritical acute, spacing acute)
//  #let html-micro-g = text(str.from-unicode(0x00B5)); // HTML 3.2	HTMLlat1	ISOnum	micro sign
//  #let html-para-g = text(str.from-unicode(0x00B6)); // HTML 3.2	HTMLlat1	ISOnum	pilcrow sign (paragraph sign)
//  &middot;[b]
//  &centerdot;
//  #let html-CenterDot-g = text(str.from-unicode(0x00B7)); // 
//  HTML 3.2
//  HTML 5.0
//  HTML 5.0
//  HTMLlat1	ISOnum	middle dot (center dot, Georgian comma, Greek middle dot)
//  &cedil;[b]
//  #let html-Cedilla-g = text(str.from-unicode(0x00B8)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOdia	cedilla (spacing cedilla)
//  #let html-sup1-g = text(str.from-unicode(0x00B9)); // HTML 3.2	HTMLlat1	ISOnum	superscript one (superscript digit one)
//  #let html-ordm-g = text(str.from-unicode(0x00BA)); // HTML 3.2	HTMLlat1	ISOnum	masculine ordinal indicator
//  #let html-raquo-g = text(str.from-unicode(0x00BB)); // HTML 3.2	HTMLlat1	ISOnum	right-pointing double angle quotation mark (right pointing guillemet)
//  #let html-frac14-g = text(str.from-unicode(0x00BC)); // HTML 3.2	HTMLlat1	ISOnum	vulgar fraction one quarter (fraction one quarter)
//  &frac12;[b]
//  #let html-half-g = text(str.from-unicode(0x00BD)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOnum	vulgar fraction one half (fraction one half)
//  #let html-frac34-g = text(str.from-unicode(0x00BE)); // HTML 3.2	HTMLlat1	ISOnum	vulgar fraction three quarters (fraction three quarters)
//  #let html-iquest-g = text(str.from-unicode(0x00BF)); // HTML 3.2	HTMLlat1	ISOnum	inverted question mark (turned question mark)
//  #let html-Agrave-g = text(str.from-unicode(0x00C0)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter A with grave (Latin capital letter A grave)
//  #let html-Aacute-g = text(str.from-unicode(0x00C1)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter A with acute
//  #let html-Acirc-g = text(str.from-unicode(0x00C2)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter A with circumflex
//  #let html-Atilde-g = text(str.from-unicode(0x00C3)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter A with tilde
//  #let html-Auml-g = text(str.from-unicode(0x00C4)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter A with diaeresis
//  &Aring;[b]
//  #let html-angst-g = text(str.from-unicode(0x00C5)); // 
//  HTML 2.0
//  HTML 5.0
//  HTMLlat1	ISOlat1	Latin capital letter A with ring above (Latin capital letter A ring Angstrom sign[j])
//  #let html-AElig-g = text(str.from-unicode(0x00C6)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter AE (Latin capital ligature AE)
//  #let html-Ccedil-g = text(str.from-unicode(0x00C7)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter C with cedilla
//  #let html-Egrave-g = text(str.from-unicode(0x00C8)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter E with grave
//  #let html-Eacute-g = text(str.from-unicode(0x00C9)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter E with acute
//  #let html-Ecirc-g = text(str.from-unicode(0x00CA)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter E with circumflex
//  #let html-Euml-g = text(str.from-unicode(0x00CB)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter E with diaeresis
//  #let html-Igrave-g = text(str.from-unicode(0x00CC)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter I with grave
//  #let html-Iacute-g = text(str.from-unicode(0x00CD)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter I with acute
//  #let html-Icirc-g = text(str.from-unicode(0x00CE)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter I with circumflex
//  #let html-Iuml-g = text(str.from-unicode(0x00CF)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter I with diaeresis
//  #let html-ETH-g = text(str.from-unicode(0x00D0)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter Eth
//  #let html-Ntilde-g = text(str.from-unicode(0x00D1)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter N with tilde
//  #let html-Ograve-g = text(str.from-unicode(0x00D2)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter O with grave
//  #let html-Oacute-g = text(str.from-unicode(0x00D3)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter O with acute
//  #let html-Ocirc-g = text(str.from-unicode(0x00D4)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter O with circumflex
//  #let html-Otilde-g = text(str.from-unicode(0x00D5)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter O with tilde
//  #let html-Ouml-g = text(str.from-unicode(0x00D6)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter O with diaeresis
//  #let html-times-g = text(str.from-unicode(0x00D7)); // HTML 3.2	HTMLlat1	ISOnum	multiplication sign (times sign)
//  #let html-Oslash-g = text(str.from-unicode(0x00D8)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter O with stroke (Latin capital letter O slash)
//  #let html-Ugrave-g = text(str.from-unicode(0x00D9)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter U with grave
//  #let html-Uacute-g = text(str.from-unicode(0x00DA)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter U with acute
//  #let html-Ucirc-g = text(str.from-unicode(0x00DB)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter U with circumflex
//  #let html-Uuml-g = text(str.from-unicode(0x00DC)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter U with diaeresis
//  #let html-Yacute-g = text(str.from-unicode(0x00DD)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter Y with acute
//  #let html-THORN-g = text(str.from-unicode(0x00DE)); // HTML 2.0	HTMLlat1	ISOlat1	Latin capital letter Thorn
//  #let html-szlig-g = text(str.from-unicode(0x00DF)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter sharp s (ess-zed); see also German eszett
//  #let html-agrave-g = text(str.from-unicode(0x00E0)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter a with grave
//  #let html-aacute-g = text(str.from-unicode(0x00E1)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter a with acute
//  #let html-acirc-g = text(str.from-unicode(0x00E2)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter a with circumflex
//  #let html-atilde-g = text(str.from-unicode(0x00E3)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter a with tilde
//  #let html-auml-g = text(str.from-unicode(0x00E4)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter a with diaeresis
//  #let html-aring-g = text(str.from-unicode(0x00E5)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter a with ring above
//  #let html-aelig-g = text(str.from-unicode(0x00E6)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter ae (Latin small ligature ae)
//  #let html-ccedil-g = text(str.from-unicode(0x00E7)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter c with cedilla
//  #let html-egrave-g = text(str.from-unicode(0x00E8)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter e with grave
//  #let html-eacute-g = text(str.from-unicode(0x00E9)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter e with acute
//  #let html-ecirc-g = text(str.from-unicode(0x00EA)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter e with circumflex
//  #let html-euml-g = text(str.from-unicode(0x00EB)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter e with diaeresis
//  #let html-igrave-g = text(str.from-unicode(0x00EC)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter i with grave
//  #let html-iacute-g = text(str.from-unicode(0x00ED)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter i with acute
//  #let html-icirc-g = text(str.from-unicode(0x00EE)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter i with circumflex
//  #let html-iuml-g = text(str.from-unicode(0x00EF)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter i with diaeresis
//  #let html-eth-g = text(str.from-unicode(0x00F0)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter eth
//  #let html-ntilde-g = text(str.from-unicode(0x00F1)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter n with tilde
//  #let html-ograve-g = text(str.from-unicode(0x00F2)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter o with grave
//  #let html-oacute-g = text(str.from-unicode(0x00F3)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter o with acute
//  #let html-ocirc-g = text(str.from-unicode(0x00F4)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter o with circumflex
//  #let html-otilde-g = text(str.from-unicode(0x00F5)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter o with tilde
//  #let html-ouml-g = text(str.from-unicode(0x00F6)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter o with diaeresis
//  &divide;[b]
//  #let html-div-g = text(str.from-unicode(0x00F7)); // 
//  HTML 3.2
//  HTML 5.0
//  HTMLlat1	ISOnum	division sign
//  #let html-oslash-g = text(str.from-unicode(0x00F8)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter o with stroke (Latin small letter o slash)
//  #let html-ugrave-g = text(str.from-unicode(0x00F9)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter u with grave
//  #let html-uacute-g = text(str.from-unicode(0x00FA)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter u with acute
//  #let html-ucirc-g = text(str.from-unicode(0x00FB)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter u with circumflex
//  #let html-uuml-g = text(str.from-unicode(0x00FC)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter u with diaeresis
//  #let html-yacute-g = text(str.from-unicode(0x00FD)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter y with acute
//  #let html-thorn-g = text(str.from-unicode(0x00FE)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter thorn
//  #let html-yuml-g = text(str.from-unicode(0x00FF)); // HTML 2.0	HTMLlat1	ISOlat1	Latin small letter y with diaeresis
//  #let html-Amacr-g = text(str.from-unicode(0x0100)); // HTML 5.0		ISOlat2	Latin capital letter A with macron
//  #let html-amacr-g = text(str.from-unicode(0x0101)); // HTML 5.0		ISOlat2	Latin small letter a with macron
//  #let html-Abreve-g = text(str.from-unicode(0x0102)); // HTML 5.0		ISOlat2	Latin capital letter A with breve
//  #let html-abreve-g = text(str.from-unicode(0x0103)); // HTML 5.0		ISOlat2	Latin small letter a with breve
//  #let html-Aogon-g = text(str.from-unicode(0x0104)); // HTML 5.0		ISOlat2	Latin capital letter A with ogonek
//  #let html-aogon-g = text(str.from-unicode(0x0105)); // HTML 5.0		ISOlat2	Latin small letter a with ogonek
//  #let html-Cacute-g = text(str.from-unicode(0x0106)); // HTML 5.0		ISOlat2	Latin capital letter C with acute
//  #let html-cacute-g = text(str.from-unicode(0x0107)); // HTML 5.0		ISOlat2	Latin small letter c with acute
//  #let html-Ccirc-g = text(str.from-unicode(0x0108)); // HTML 5.0		ISOlat2	Latin capital letter C with circumflex
//  #let html-ccirc-g = text(str.from-unicode(0x0109)); // HTML 5.0		ISOlat2	Latin small letter c with circumflex
//  #let html-Cdot-g = text(str.from-unicode(0x010A)); // HTML 5.0		ISOlat2	Latin capital letter C with dot above
//  #let html-cdot-g = text(str.from-unicode(0x010B)); // HTML 5.0		ISOlat2	Latin small letter c with dot above
//  #let html-Ccaron-g = text(str.from-unicode(0x010C)); // HTML 5.0		ISOlat2	Latin capital letter C with caron
//  #let html-ccaron-g = text(str.from-unicode(0x010D)); // HTML 5.0		ISOlat2	Latin small letter c with caron
//  #let html-Dcaron-g = text(str.from-unicode(0x010E)); // HTML 5.0		ISOlat2	Latin capital letter D with caron
//  #let html-dcaron-g = text(str.from-unicode(0x010F)); // HTML 5.0		ISOlat2	Latin small letter d with caron
//  #let html-Dstrok-g = text(str.from-unicode(0x0110)); // HTML 5.0		ISOlat2	Latin capital letter D with stroke
//  #let html-dstrok-g = text(str.from-unicode(0x0111)); // HTML 5.0		ISOlat2	Latin small letter d with stroke
//  #let html-Emacr-g = text(str.from-unicode(0x0112)); // HTML 5.0		ISOlat2	Latin capital letter E with macron
//  #let html-emacr-g = text(str.from-unicode(0x0113)); // HTML 5.0		ISOlat2	Latin small letter e with macron
//  #let html-Edot-g = text(str.from-unicode(0x0116)); // HTML 5.0		ISOlat2	Latin capital letter E with dot above
//  #let html-edot-g = text(str.from-unicode(0x0117)); // HTML 5.0		ISOlat2	Latin small letter e with dot above
//  #let html-Eogon-g = text(str.from-unicode(0x0118)); // HTML 5.0		ISOlat2	Latin capital letter E with ogonek
//  #let html-eogon-g = text(str.from-unicode(0x0119)); // HTML 5.0		ISOlat2	Latin small letter e with ogonek
//  #let html-Ecaron-g = text(str.from-unicode(0x011A)); // HTML 5.0		ISOlat2	Latin capital letter E with caron
//  #let html-ecaron-g = text(str.from-unicode(0x011B)); // HTML 5.0		ISOlat2	Latin small letter e with caron
//  #let html-Gcirc-g = text(str.from-unicode(0x011C)); // HTML 5.0		ISOlat2	Latin capital letter G with circumflex
//  #let html-gcirc-g = text(str.from-unicode(0x011D)); // HTML 5.0		ISOlat2	Latin small letter g with circumflex
//  #let html-Gbreve-g = text(str.from-unicode(0x011E)); // HTML 5.0		ISOlat2	Latin capital letter G with breve
//  #let html-gbreve-g = text(str.from-unicode(0x011F)); // HTML 5.0		ISOlat2	Latin small letter g with breve
//  #let html-Gdot-g = text(str.from-unicode(0x0120)); // HTML 5.0		ISOlat2	Latin capital letter G with dot above
//  #let html-gdot-g = text(str.from-unicode(0x0121)); // HTML 5.0		ISOlat2	Latin small letter g with dot above
//  #let html-Gcedil-g = text(str.from-unicode(0x0122)); // HTML 5.0		ISOlat2	Latin capital letter G with cedilla
//  #let html-Hcirc-g = text(str.from-unicode(0x0124)); // HTML 5.0		ISOlat2	Latin capital letter H with circumflex
//  #let html-hcirc-g = text(str.from-unicode(0x0125)); // HTML 5.0		ISOlat2	Latin small letter h with circumflex
//  #let html-Hstrok-g = text(str.from-unicode(0x0126)); // HTML 5.0		ISOlat2	Latin capital letter H with stroke
//  #let html-hstrok-g = text(str.from-unicode(0x0127)); // HTML 5.0		ISOlat2	Latin small letter h with stroke
//  #let html-Itilde-g = text(str.from-unicode(0x0128)); // HTML 5.0		ISOlat2	Latin capital letter I with tilde
//  #let html-itilde-g = text(str.from-unicode(0x0129)); // HTML 5.0		ISOlat2	Latin small letter i with tilde
//  #let html-Imacr-g = text(str.from-unicode(0x012A)); // HTML 5.0		ISOlat2	Latin capital letter I with macron
//  #let html-imacr-g = text(str.from-unicode(0x012B)); // HTML 5.0		ISOlat2	Latin small letter i with macron
//  #let html-Iogon-g = text(str.from-unicode(0x012E)); // HTML 5.0		ISOlat2	Latin capital letter I with ogonek
//  #let html-iogon-g = text(str.from-unicode(0x012F)); // HTML 5.0		ISOlat2	Latin small letter i with ogonek
//  #let html-Idot-g = text(str.from-unicode(0x0130)); // HTML 5.0		ISOlat2	Latin capital letter I with dot above
//  &inodot;
//  #let html-imath-g = text(str.from-unicode(0x0131)); // HTML 5.0		
//  ISOlat2
//  ISOamso
//  Latin small letter dotless i (i mathematical)
//  #let html-IJlig-g = text(str.from-unicode(0x0132)); // HTML 5.0		ISOlat2	Latin capital ligature IJ[k]
//  #let html-ijlig-g = text(str.from-unicode(0x0133)); // HTML 5.0		ISOlat2	Latin small ligature ij[k]
//  #let html-Jcirc-g = text(str.from-unicode(0x0134)); // HTML 5.0		ISOlat2	Latin capital letter J with circumflex
//  #let html-jcirc-g = text(str.from-unicode(0x0135)); // HTML 5.0		ISOlat2	Latin small letter j with circumflex
//  #let html-Kcedil-g = text(str.from-unicode(0x0136)); // HTML 5.0		ISOlat2	Latin capital letter K with cedilla
//  #let html-kcedil-g = text(str.from-unicode(0x0137)); // HTML 5.0		ISOlat2	Latin small letter k with cedilla
//  #let html-kgreen-g = text(str.from-unicode(0x0138)); // HTML 5.0		ISOlat2	Latin small letter kra (k greenlandic)
//  #let html-Lacute-g = text(str.from-unicode(0x0139)); // HTML 5.0		ISOlat2	Latin capital letter L with acute
//  #let html-lacute-g = text(str.from-unicode(0x013A)); // HTML 5.0		ISOlat2	Latin small letter l with acute
//  #let html-Lcedil-g = text(str.from-unicode(0x013B)); // HTML 5.0		ISOlat2	Latin capital letter L with cedilla
//  #let html-lcedil-g = text(str.from-unicode(0x013C)); // HTML 5.0		ISOlat2	Latin small letter l with cedilla
//  #let html-Lcaron-g = text(str.from-unicode(0x013D)); // HTML 5.0		ISOlat2	Latin capital letter L with caron
//  #let html-lcaron-g = text(str.from-unicode(0x013E)); // HTML 5.0		ISOlat2	Latin small letter l with caron
//  #let html-Lmidot-g = text(str.from-unicode(0x013F)); // HTML 5.0		ISOlat2	Latin capital letter L with middle dot[l]
//  #let html-lmidot-g = text(str.from-unicode(0x0140)); // HTML 5.0		ISOlat2	Latin small letter l with middle dot[l]
//  #let html-Lstrok-g = text(str.from-unicode(0x0141)); // HTML 5.0		ISOlat2	Latin capital letter L with stroke
//  #let html-lstrok-g = text(str.from-unicode(0x0142)); // HTML 5.0		ISOlat2	Latin small letter l with stroke
//  #let html-Nacute-g = text(str.from-unicode(0x0143)); // HTML 5.0		ISOlat2	Latin capital letter N with acute
//  #let html-nacute-g = text(str.from-unicode(0x0144)); // HTML 5.0		ISOlat2	Latin small letter n with acute
//  #let html-Ncedil-g = text(str.from-unicode(0x0145)); // HTML 5.0		ISOlat2	Latin capital letter N with cedilla
//  #let html-ncedil-g = text(str.from-unicode(0x0146)); // HTML 5.0		ISOlat2	Latin small letter n with cedilla
//  #let html-Ncaron-g = text(str.from-unicode(0x0147)); // HTML 5.0		ISOlat2	Latin capital letter N with caron
//  #let html-ncaron-g = text(str.from-unicode(0x0148)); // HTML 5.0		ISOlat2	Latin small letter n with caron
//  #let html-napos-g = text(str.from-unicode(0x0149)); // HTML 5.0		ISOlat2	Latin small letter n preceded by apostrophe[m]
//  #let html-ENG-g = text(str.from-unicode(0x014A)); // HTML 5.0		ISOlat2	Latin capital letter Eng
//  #let html-eng-g = text(str.from-unicode(0x014B)); // HTML 5.0		ISOlat2	Latin small letter eng
//  #let html-Omacr-g = text(str.from-unicode(0x014C)); // HTML 5.0		ISOlat2	Latin capital letter O with macron
//  #let html-omacr-g = text(str.from-unicode(0x014D)); // HTML 5.0		ISOlat2	Latin small letter o with macron
//  #let html-Odblac-g = text(str.from-unicode(0x0150)); // HTML 5.0		ISOlat2	Latin capital letter O with double acute
//  #let html-odblac-g = text(str.from-unicode(0x0151)); // HTML 5.0		ISOlat2	Latin small letter o with double acute
//  #let html-OElig-g = text(str.from-unicode(0x0152)); // HTML 4.0	HTMLspecial	ISOlat2	Latin capital ligature OE[n]
//  #let html-oelig-g = text(str.from-unicode(0x0153)); // HTML 4.0	HTMLspecial	ISOlat2	Latin small ligature oe[n]
//  #let html-Racute-g = text(str.from-unicode(0x0154)); // HTML 5.0		ISOlat2	Latin capital letter R with acute
//  #let html-racute-g = text(str.from-unicode(0x0155)); // HTML 5.0		ISOlat2	Latin small letter r with acute
//  #let html-Rcedil-g = text(str.from-unicode(0x0156)); // HTML 5.0		ISOlat2	Latin capital letter R with cedilla
//  #let html-rcedil-g = text(str.from-unicode(0x0157)); // HTML 5.0		ISOlat2	Latin small letter r with cedilla
//  #let html-Rcaron-g = text(str.from-unicode(0x0158)); // HTML 5.0		ISOlat2	Latin capital letter R with caron
//  #let html-rcaron-g = text(str.from-unicode(0x0159)); // HTML 5.0		ISOlat2	Latin small letter r with caron
//  #let html-Sacute-g = text(str.from-unicode(0x015A)); // HTML 5.0		ISOlat2	Latin capital letter S with acute
//  #let html-sacute-g = text(str.from-unicode(0x015B)); // HTML 5.0		ISOlat2	Latin small letter s with acute
//  #let html-Scirc-g = text(str.from-unicode(0x015C)); // HTML 5.0		ISOlat2	Latin capital letter S with circumflex
//  #let html-scirc-g = text(str.from-unicode(0x015D)); // HTML 5.0		ISOlat2	Latin small letter s with circumflex
//  #let html-Scedil-g = text(str.from-unicode(0x015E)); // HTML 5.0		ISOlat2	Latin capital letter S with cedilla
//  #let html-scedil-g = text(str.from-unicode(0x015F)); // HTML 5.0		ISOlat2	Latin small letter s with cedilla
//  #let html-Scaron-g = text(str.from-unicode(0x0160)); // HTML 4.0	HTMLspecial	ISOlat2	Latin capital letter S with caron
//  #let html-scaron-g = text(str.from-unicode(0x0161)); // HTML 4.0	HTMLspecial	ISOlat2	Latin small letter s with caron
//  #let html-Tcedil-g = text(str.from-unicode(0x0162)); // HTML 5.0		ISOlat2	Latin capital letter T with cedilla
//  #let html-tcedil-g = text(str.from-unicode(0x0163)); // HTML 5.0		ISOlat2	Latin small letter t with cedilla
//  #let html-Tcaron-g = text(str.from-unicode(0x0164)); // HTML 5.0		ISOlat2	Latin capital letter T with caron
//  #let html-tcaron-g = text(str.from-unicode(0x0165)); // HTML 5.0		ISOlat2	Latin small letter t with caron
//  #let html-Tstrok-g = text(str.from-unicode(0x0166)); // HTML 5.0		ISOlat2	Latin capital letter T with stroke
//  #let html-tstrok-g = text(str.from-unicode(0x0167)); // HTML 5.0		ISOlat2	Latin small letter t with stroke
//  #let html-Utilde-g = text(str.from-unicode(0x0168)); // HTML 5.0		ISOlat2	Latin capital letter U with tilde
//  #let html-utilde-g = text(str.from-unicode(0x0169)); // HTML 5.0		ISOlat2	Latin small letter u with tilde
//  #let html-Umacr-g = text(str.from-unicode(0x016A)); // HTML 5.0		ISOlat2	Latin capital letter U with macron
//  #let html-umacr-g = text(str.from-unicode(0x016B)); // HTML 5.0		ISOlat2	Latin small letter u with macron
//  #let html-Ubreve-g = text(str.from-unicode(0x016C)); // HTML 5.0		ISOlat2	Latin capital letter U with breve
//  #let html-ubreve-g = text(str.from-unicode(0x016D)); // HTML 5.0		ISOlat2	Latin small letter u with breve
//  #let html-Uring-g = text(str.from-unicode(0x016E)); // HTML 5.0		ISOlat2	Latin capital letter U with ring above
//  #let html-uring-g = text(str.from-unicode(0x016F)); // HTML 5.0		ISOlat2	Latin small letter u with ring above
//  #let html-Udblac-g = text(str.from-unicode(0x0170)); // HTML 5.0		ISOlat2	Latin capital letter U with double acute
//  #let html-udblac-g = text(str.from-unicode(0x0171)); // HTML 5.0		ISOlat2	Latin small letter u with double acute
//  #let html-Uogon-g = text(str.from-unicode(0x0172)); // HTML 5.0		ISOlat2	Latin capital letter U with ogonek
//  #let html-uogon-g = text(str.from-unicode(0x0173)); // HTML 5.0		ISOlat2	Latin small letter u with ogonek
//  #let html-Wcirc-g = text(str.from-unicode(0x0174)); // HTML 5.0		ISOlat2	Latin capital letter W with circumflex
//  #let html-wcirc-g = text(str.from-unicode(0x0175)); // HTML 5.0		ISOlat2	Latin small letter w with circumflex
//  #let html-Ycirc-g = text(str.from-unicode(0x0176)); // HTML 5.0		ISOlat2	Latin capital letter Y with circumflex
//  #let html-ycirc-g = text(str.from-unicode(0x0177)); // HTML 5.0		ISOlat2	Latin small letter y with circumflex
//  #let html-Yuml-g = text(str.from-unicode(0x0178)); // HTML 4.0	HTMLspecial	ISOlat2	Latin capital letter Y with diaeresis
//  #let html-Zacute-g = text(str.from-unicode(0x0179)); // HTML 5.0		ISOlat2	Latin capital letter Z with acute
//  #let html-zacute-g = text(str.from-unicode(0x017A)); // HTML 5.0		ISOlat2	Latin small letter z with acute
//  #let html-Zdot-g = text(str.from-unicode(0x017B)); // HTML 5.0		ISOlat2	Latin capital letter Z with dot above
//  #let html-zdot-g = text(str.from-unicode(0x017C)); // HTML 5.0		ISOlat2	Latin small letter z with dot above
//  #let html-Zcaron-g = text(str.from-unicode(0x017D)); // HTML 5.0		ISOlat2	Latin capital letter Z with caron
//  #let html-zcaron-g = text(str.from-unicode(0x017E)); // HTML 5.0		ISOlat2	Latin small letter z with caron
//  #let html-fnof-g = text(str.from-unicode(0x0192)); // HTML 4.0	HTMLsymbol	ISOtech	Latin small letter f with hook (function, florin)
//  #let html-imped-g = text(str.from-unicode(0x01B5)); // HTML 5.0		ISOtech	Latin capital letter Z with stroke
//  #let html-gacute-g = text(str.from-unicode(0x01F5)); // HTML 5.0		ISOlat2	Latin small letter g with acute
//  #let html-jmath-g = text(str.from-unicode(0x0237)); // HTML 5.0		ISOamso	Latin small letter dotless j (j mathematical)
//  #let html-circ-g = text(str.from-unicode(0x02C6)); // HTML 4.0	HTMLspecial	ISOpub	modifier letter circumflex accent
//  &caron;
//  #let html-Hacek-g = text(str.from-unicode(0x02C7)); // HTML 5.0		ISOdia	caron (hacek)
//  &breve;
//  #let html-Breve-g = text(str.from-unicode(0x02D8)); // HTML 5.0		ISOdia	breve
//  &dot;
//  #let html-DiacriticalDot-g = text(str.from-unicode(0x02D9)); // HTML 5.0		ISOdia	dot above (diacritical dot)
//  #let html-ring-g = text(str.from-unicode(0x02DA)); // HTML 5.0		ISOdia	ring above
//  #let html-ogon-g = text(str.from-unicode(0x02DB)); // HTML 5.0		ISOdia	ogonek
//  &tilde;
//  #let html-DiacriticalTilde-g = text(str.from-unicode(0x02DC)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	ISOdia	small tilde (diacritical tilde)
//  &dblac;
//  #let html-DiacriticalDoubleAcute-g = text(str.from-unicode(0x02DD)); // HTML 5.0		ISOdia	double acute accent (diacritical double acute)
//  #let html-Alpha-g = text(str.from-unicode(0x0391)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Alpha
//  #let html-Beta-g = text(str.from-unicode(0x0392)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Beta
//  #let html-Gamma-g = text(str.from-unicode(0x0393)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Gamma
//  #let html-Delta-g = text(str.from-unicode(0x0394)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Delta
//  #let html-Epsilon-g = text(str.from-unicode(0x0395)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Epsilon
//  #let html-Zeta-g = text(str.from-unicode(0x0396)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Zeta
//  #let html-Eta-g = text(str.from-unicode(0x0397)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Eta
//  #let html-Theta-g = text(str.from-unicode(0x0398)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Theta
//  #let html-Iota-g = text(str.from-unicode(0x0399)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Iota
//  #let html-Kappa-g = text(str.from-unicode(0x039A)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Kappa
//  #let html-Lambda-g = text(str.from-unicode(0x039B)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Lambda
//  #let html-Mu-g = text(str.from-unicode(0x039C)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Mu
//  #let html-Nu-g = text(str.from-unicode(0x039D)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Nu
//  #let html-Xi-g = text(str.from-unicode(0x039E)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Xi
//  #let html-Omicron-g = text(str.from-unicode(0x039F)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Omicron
//  #let html-Pi-g = text(str.from-unicode(0x03A0)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Pi
//  #let html-Rho-g = text(str.from-unicode(0x03A1)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Rho
//  #let html-Sigma-g = text(str.from-unicode(0x03A3)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Sigma
//  #let html-Tau-g = text(str.from-unicode(0x03A4)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Tau
//  #let html-Upsilon-g = text(str.from-unicode(0x03A5)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Upsilon
//  #let html-Phi-g = text(str.from-unicode(0x03A6)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Phi
//  #let html-Chi-g = text(str.from-unicode(0x03A7)); // HTML 4.0	HTMLsymbol	[o]	Greek capital letter Chi
//  #let html-Psi-g = text(str.from-unicode(0x03A8)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek capital letter Psi
//  &Omega;
//  #let html-ohm-g = text(str.from-unicode(0x03A9)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOgrk3[o]	Greek capital letter Omega (Ohm sign[p])
//  #let html-alpha-g = text(str.from-unicode(0x03B1)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter alpha
//  #let html-beta-g = text(str.from-unicode(0x03B2)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter beta
//  #let html-gamma-g = text(str.from-unicode(0x03B3)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter gamma
//  #let html-delta-g = text(str.from-unicode(0x03B4)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter delta
//  &epsi;
//  #let html-epsilon-g = text(str.from-unicode(0x03B5)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOgrk3[o]	Greek small letter epsilon
//  #let html-zeta-g = text(str.from-unicode(0x03B6)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter zeta
//  #let html-eta-g = text(str.from-unicode(0x03B7)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter eta
//  #let html-theta-g = text(str.from-unicode(0x03B8)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter theta
//  #let html-iota-g = text(str.from-unicode(0x03B9)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter iota
//  #let html-kappa-g = text(str.from-unicode(0x03BA)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter kappa
//  #let html-lambda-g = text(str.from-unicode(0x03BB)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter lambda
//  #let html-mu-g = text(str.from-unicode(0x03BC)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter mu
//  #let html-nu-g = text(str.from-unicode(0x03BD)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter nu
//  #let html-xi-g = text(str.from-unicode(0x03BE)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter xi
//  #let html-omicron-g = text(str.from-unicode(0x03BF)); // HTML 4.0	HTMLsymbol	New[o]	Greek small letter omicron
//  #let html-pi-g = text(str.from-unicode(0x03C0)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter pi
//  #let html-rho-g = text(str.from-unicode(0x03C1)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter rho
//  &sigmav;
//  &varsigma;
//  #let html-sigmaf-g = text(str.from-unicode(0x03C2)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOgrk3[o]	Greek small letter final sigma (variant sigma)
//  #let html-sigma-g = text(str.from-unicode(0x03C3)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter sigma
//  #let html-tau-g = text(str.from-unicode(0x03C4)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter tau
//  &upsi;
//  #let html-upsilon-g = text(str.from-unicode(0x03C5)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOgrk3[o]	Greek small letter upsilon
//  #let html-phi-g = text(str.from-unicode(0x03C6)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter phi
//  #let html-chi-g = text(str.from-unicode(0x03C7)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter chi
//  #let html-psi-g = text(str.from-unicode(0x03C8)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter psi
//  #let html-omega-g = text(str.from-unicode(0x03C9)); // HTML 4.0	HTMLsymbol	ISOgrk3[o]	Greek small letter omega
//  &thetav;
//  &vartheta;
//  #let html-thetasym-g = text(str.from-unicode(0x03D1)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	New	Greek theta symbol (variant theta)
//  &Upsi;
//  #let html-upsih-g = text(str.from-unicode(0x03D2)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	New	Greek Upsilon with hook symbol
//  &phiv;
//  &straightphi;
//  #let html-varphi-g = text(str.from-unicode(0x03D5)); // HTML 5.0		ISOgrk3	Greek phi symbol (straight phi, variant phi)
//  &piv;
//  #let html-varpi-g = text(str.from-unicode(0x03D6)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOgrk3	Greek pi symbol (variant pi)
//  #let html-Gammad-g = text(str.from-unicode(0x03DC)); // HTML 5.0		ISOgrk3	Greek letter digamma
//  &gammad;
//  #let html-digamma-g = text(str.from-unicode(0x03DD)); // HTML 5.0		ISOgrk3	Greek small letter digamma
//  &kappav;
//  #let html-varkappa-g = text(str.from-unicode(0x03F0)); // HTML 5.0		ISOgrk3	Greek kappa symbol (variant kappa)
//  &rhov;
//  #let html-varrho-g = text(str.from-unicode(0x03F1)); // HTML 5.0		ISOgrk3	Greek rho symbol (variant rho)
//  &epsiv;
//  &varepsilon;
//  #let html-straightepsilon-g = text(str.from-unicode(0x03F5)); // HTML 5.0		ISOgrk3	Greek lunate epsilon symbol (epsilon, variant epsilon, straight epsilon)
//  &bepsi;
//  #let html-backepsilon-g = text(str.from-unicode(0x03F6)); // HTML 5.0		ISOamsr	Greek reversed lunate epsilon symbol (back epsilon)
//  #let html-IOcy-g = text(str.from-unicode(0x0401)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Io
//  #let html-DJcy-g = text(str.from-unicode(0x0402)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Dje
//  #let html-GJcy-g = text(str.from-unicode(0x0403)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Gje
//  #let html-Jukcy-g = text(str.from-unicode(0x0404)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Ukrainian Ie
//  #let html-DScy-g = text(str.from-unicode(0x0405)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Dze
//  #let html-Iukcy-g = text(str.from-unicode(0x0406)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Byelorussian-Ukrainian I (Ukrainian I)
//  #let html-YIcy-g = text(str.from-unicode(0x0407)); // HTML 5.0		ISOcyr2	Cyrillic capital letter yi
//  #let html-Jsercy-g = text(str.from-unicode(0x0408)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Je (Serbian J)
//  #let html-LJcy-g = text(str.from-unicode(0x0409)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Lje
//  #let html-NJcy-g = text(str.from-unicode(0x040A)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Nje
//  #let html-TSHcy-g = text(str.from-unicode(0x040B)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Tshe
//  #let html-KJcy-g = text(str.from-unicode(0x040C)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Kje
//  #let html-Ubrcy-g = text(str.from-unicode(0x040E)); // HTML 5.0		ISOcyr2	Cyrillic capital letter short U (U breve)
//  #let html-DZcy-g = text(str.from-unicode(0x040F)); // HTML 5.0		ISOcyr2	Cyrillic capital letter Dzhe
//  #let html-Acy-g = text(str.from-unicode(0x0410)); // HTML 5.0		ISOcyr1	Cyrillic capital letter A
//  #let html-Bcy-g = text(str.from-unicode(0x0411)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Be
//  #let html-Vcy-g = text(str.from-unicode(0x0412)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ve
//  #let html-Gcy-g = text(str.from-unicode(0x0413)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ghe
//  #let html-Dcy-g = text(str.from-unicode(0x0414)); // HTML 5.0		ISOcyr1	Cyrillic capital letter De
//  #let html-IEcy-g = text(str.from-unicode(0x0415)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ie
//  #let html-ZHcy-g = text(str.from-unicode(0x0416)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Zhe
//  #let html-Zcy-g = text(str.from-unicode(0x0417)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ze
//  #let html-Icy-g = text(str.from-unicode(0x0418)); // HTML 5.0		ISOcyr1	Cyrillic capital letter I
//  #let html-Jcy-g = text(str.from-unicode(0x0419)); // HTML 5.0		ISOcyr1	Cyrillic capital letter short I (J)
//  #let html-Kcy-g = text(str.from-unicode(0x041A)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ka
//  #let html-Lcy-g = text(str.from-unicode(0x041B)); // HTML 5.0		ISOcyr1	Cyrillic capital letter El
//  #let html-Mcy-g = text(str.from-unicode(0x041C)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Em
//  #let html-Ncy-g = text(str.from-unicode(0x041D)); // HTML 5.0		ISOcyr1	Cyrillic capital letter En
//  #let html-Ocy-g = text(str.from-unicode(0x041E)); // HTML 5.0		ISOcyr1	Cyrillic capital letter O
//  #let html-Pcy-g = text(str.from-unicode(0x041F)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Pe
//  #let html-Rcy-g = text(str.from-unicode(0x0420)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Er
//  #let html-Scy-g = text(str.from-unicode(0x0421)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Es
//  #let html-Tcy-g = text(str.from-unicode(0x0422)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Te
//  #let html-Ucy-g = text(str.from-unicode(0x0423)); // HTML 5.0		ISOcyr1	Cyrillic capital letter U
//  #let html-Fcy-g = text(str.from-unicode(0x0424)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ef
//  #let html-KHcy-g = text(str.from-unicode(0x0425)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ha (Kha)
//  #let html-TScy-g = text(str.from-unicode(0x0426)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Tse
//  #let html-CHcy-g = text(str.from-unicode(0x0427)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Che
//  #let html-SHcy-g = text(str.from-unicode(0x0428)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Sha
//  #let html-SHCHcy-g = text(str.from-unicode(0x0429)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Shcha
//  #let html-HARDcy-g = text(str.from-unicode(0x042A)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Hard Sign
//  #let html-Ycy-g = text(str.from-unicode(0x042B)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Yeru (Y)
//  #let html-SOFTcy-g = text(str.from-unicode(0x042C)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Soft Sign
//  #let html-Ecy-g = text(str.from-unicode(0x042D)); // HTML 5.0		ISOcyr1	Cyrillic capital letter E
//  #let html-YUcy-g = text(str.from-unicode(0x042E)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Yu
//  #let html-YAcy-g = text(str.from-unicode(0x042F)); // HTML 5.0		ISOcyr1	Cyrillic capital letter Ya
//  #let html-acy-g = text(str.from-unicode(0x0430)); // HTML 5.0		ISOcyr1	Cyrillic small letter a
//  #let html-bcy-g = text(str.from-unicode(0x0431)); // HTML 5.0		ISOcyr1	Cyrillic small letter be
//  #let html-vcy-g = text(str.from-unicode(0x0432)); // HTML 5.0		ISOcyr1	Cyrillic small letter ve
//  #let html-gcy-g = text(str.from-unicode(0x0433)); // HTML 5.0		ISOcyr1	Cyrillic small letter ghe
//  #let html-dcy-g = text(str.from-unicode(0x0434)); // HTML 5.0		ISOcyr1	Cyrillic small letter de
//  #let html-iecy-g = text(str.from-unicode(0x0435)); // HTML 5.0		ISOcyr1	Cyrillic small letter ie
//  #let html-zhcy-g = text(str.from-unicode(0x0436)); // HTML 5.0		ISOcyr1	Cyrillic small letter zhe
//  #let html-zcy-g = text(str.from-unicode(0x0437)); // HTML 5.0		ISOcyr1	Cyrillic small letter ze
//  #let html-icy-g = text(str.from-unicode(0x0438)); // HTML 5.0		ISOcyr1	Cyrillic small letter i
//  #let html-jcy-g = text(str.from-unicode(0x0439)); // HTML 5.0		ISOcyr1	Cyrillic small letter short i (j)
//  #let html-kcy-g = text(str.from-unicode(0x043A)); // HTML 5.0		ISOcyr1	Cyrillic small letter ka
//  #let html-lcy-g = text(str.from-unicode(0x043B)); // HTML 5.0		ISOcyr1	Cyrillic small letter el
//  #let html-mcy-g = text(str.from-unicode(0x043C)); // HTML 5.0		ISOcyr1	Cyrillic small letter em
//  #let html-ncy-g = text(str.from-unicode(0x043D)); // HTML 5.0		ISOcyr1	Cyrillic small letter en
//  #let html-ocy-g = text(str.from-unicode(0x043E)); // HTML 5.0		ISOcyr1	Cyrillic small letter o
//  #let html-pcy-g = text(str.from-unicode(0x043F)); // HTML 5.0		ISOcyr1	Cyrillic small letter pe
//  #let html-rcy-g = text(str.from-unicode(0x0440)); // HTML 5.0		ISOcyr1	Cyrillic small letter er
//  #let html-scy-g = text(str.from-unicode(0x0441)); // HTML 5.0		ISOcyr1	Cyrillic small letter es
//  #let html-tcy-g = text(str.from-unicode(0x0442)); // HTML 5.0		ISOcyr1	Cyrillic small letter te
//  #let html-ucy-g = text(str.from-unicode(0x0443)); // HTML 5.0		ISOcyr1	Cyrillic small letter u
//  #let html-fcy-g = text(str.from-unicode(0x0444)); // HTML 5.0		ISOcyr1	Cyrillic small letter ef
//  #let html-khcy-g = text(str.from-unicode(0x0445)); // HTML 5.0		ISOcyr1	Cyrillic small letter ha (kha)
//  #let html-tscy-g = text(str.from-unicode(0x0446)); // HTML 5.0		ISOcyr1	Cyrillic small letter tse
//  #let html-chcy-g = text(str.from-unicode(0x0447)); // HTML 5.0		ISOcyr1	Cyrillic small letter che
//  #let html-shcy-g = text(str.from-unicode(0x0448)); // HTML 5.0		ISOcyr1	Cyrillic small letter sha
//  #let html-shchcy-g = text(str.from-unicode(0x0449)); // HTML 5.0		ISOcyr1	Cyrillic small letter shcha
//  #let html-hardcy-g = text(str.from-unicode(0x044A)); // HTML 5.0		ISOcyr1	Cyrillic small letter hard sign
//  #let html-ycy-g = text(str.from-unicode(0x044B)); // HTML 5.0		ISOcyr1	Cyrillic small letter yeru (y)
//  #let html-softcy-g = text(str.from-unicode(0x044C)); // HTML 5.0		ISOcyr1	Cyrillic small letter soft sign
//  #let html-ecy-g = text(str.from-unicode(0x044D)); // HTML 5.0		ISOcyr1	Cyrillic small letter e
//  #let html-yucy-g = text(str.from-unicode(0x044E)); // HTML 5.0		ISOcyr1	Cyrillic small letter yu
//  #let html-yacy-g = text(str.from-unicode(0x044F)); // HTML 5.0		ISOcyr1	Cyrillic small letter ya
//  #let html-iocy-g = text(str.from-unicode(0x0451)); // HTML 5.0		ISOcyr1	Cyrillic small letter io
//  #let html-djcy-g = text(str.from-unicode(0x0452)); // HTML 5.0		ISOcyr2	Cyrillic small letter dje
//  #let html-gjcy-g = text(str.from-unicode(0x0453)); // HTML 5.0		ISOcyr2	Cyrillic small letter gje
//  #let html-jukcy-g = text(str.from-unicode(0x0454)); // HTML 5.0		ISOcyr2	Cyrillic small letter ukrainian ie
//  #let html-dscy-g = text(str.from-unicode(0x0455)); // HTML 5.0		ISOcyr2	Cyrillic small letter dze
//  #let html-iukcy-g = text(str.from-unicode(0x0456)); // HTML 5.0		ISOcyr2	Cyrillic small letter Byelorussian-Ukrainian i (Ukrainian i)
//  #let html-yicy-g = text(str.from-unicode(0x0457)); // HTML 5.0		ISOcyr2	Cyrillic small letter yi
//  #let html-jsercy-g = text(str.from-unicode(0x0458)); // HTML 5.0		ISOcyr2	Cyrillic small letter je (Serbian j)
//  #let html-ljcy-g = text(str.from-unicode(0x0459)); // HTML 5.0		ISOcyr2	Cyrillic small letter lje
//  #let html-njcy-g = text(str.from-unicode(0x045A)); // HTML 5.0		ISOcyr2	Cyrillic small letter nje
//  #let html-tshcy-g = text(str.from-unicode(0x045B)); // HTML 5.0		ISOcyr2	Cyrillic small letter tshe
//  #let html-kjcy-g = text(str.from-unicode(0x045C)); // HTML 5.0		ISOcyr2	Cyrillic small letter kje
//  #let html-ubrcy-g = text(str.from-unicode(0x045E)); // HTML 5.0		ISOcyr2	Cyrillic small letter short u (u breve)
//  #let html-dzcy-g = text(str.from-unicode(0x045F)); // HTML 5.0		ISOcyr2	Cyrillic small letter dzhe
//  #let html-ensp-g = text(str.from-unicode(0x2002)); // HTML 4.0	HTMLspecial	ISOpub	en space[g]
//  #let html-emsp-g = text(str.from-unicode(0x2003)); // HTML 4.0	HTMLspecial	ISOpub	em space[g]
//  #let html-emsp13-g = text(str.from-unicode(0x2004)); // HTML 5.0		ISOpub	three-per-em space (1/3 em space)
//  #let html-emsp14-g = text(str.from-unicode(0x2005)); // HTML 5.0		ISOpub	four-per-em space (1/4 em space)
//  #let html-numsp-g = text(str.from-unicode(0x2007)); // HTML 5.0		ISOpub	figure space (numeric space)
//  #let html-puncsp-g = text(str.from-unicode(0x2008)); // HTML 5.0		ISOpub	punctuation space
//  &thinsp;
//  #let html-ThinSpace-g = text(str.from-unicode(0x2009)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	ISOpub	thin space[g]
//  &hairsp;
//  #let html-VeryThinSpace-g = text(str.from-unicode(0x200A)); // HTML 5.0		ISOpub	hair space (very thin space)
//  &ZeroWidthSpace;
//  &NegativeVeryThinSpace;[q]
//  &NegativeThinSpace;[q]
//  &NegativeMediumSpace;[q]
//  #let html-NegativeThickSpace-g = text(str.from-unicode(0x200B)); // HTML 5.0			zero width space (negative space)
//  #let html-zwnj-g = text(str.from-unicode(0x200C)); // HTML 4.0	HTMLspecial	NEW RFC 2070	zero width non-joiner
//  #let html-zwj-g = text(str.from-unicode(0x200D)); // HTML 4.0	HTMLspecial	NEW RFC 2070	zero width joiner
//  #let html-lrm-g = text(str.from-unicode(0x200E)); // HTML 4.0	HTMLspecial	NEW RFC 2070	left-to-right mark
//  #let html-rlm-g = text(str.from-unicode(0x200F)); // HTML 4.0	HTMLspecial	NEW RFC 2070	right-to-left mark
//  &hyphen;
//  #let html-dash-g = text(str.from-unicode(0x2010)); // HTML 5.0		ISOnum	hyphen (Unicode hyphen)
//  #let html-ndash-g = text(str.from-unicode(0x2013)); // HTML 4.0	HTMLspecial	ISOpub	en dash
//  #let html-mdash-g = text(str.from-unicode(0x2014)); // HTML 4.0	HTMLspecial	ISOpub	em dash
//  #let html-horbar-g = text(str.from-unicode(0x2015)); // HTML 5.0		ISOnum	horizontal bar
//  &Verbar;
//  #let html-Vert-g = text(str.from-unicode(0x2016)); // HTML 5.0		ISOtech	double vertical line
//  &lsquo;
//  #let html-OpenCurlyQuote-g = text(str.from-unicode(0x2018)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	ISOnum	left single quotation mark (open curly quote)
//  &rsquo;
//  &rsquor;
//  #let html-CloseCurlyQuote-g = text(str.from-unicode(0x2019)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLspecial	ISOnum	right single quotation mark (close curly quote)
//  &sbquo;
//  #let html-lsquor-g = text(str.from-unicode(0x201A)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	New	single low-9 quotation mark (single baseline quote)
//  &ldquo;
//  #let html-OpenCurlyDoubleQuote-g = text(str.from-unicode(0x201C)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	ISOnum	left double quotation mark (open curly double quote)
//  &rdquo;
//  &rdquor;
//  #let html-CloseCurlyDoubleQuote-g = text(str.from-unicode(0x201D)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLspecial	ISOnum	right double quotation mark (close curly double quote)
//  &bdquo;
//  #let html-ldquor-g = text(str.from-unicode(0x201E)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	New	double low-9 quotation mark (baseline double quote)
//  #let html-dagger-g = text(str.from-unicode(0x2020)); // HTML 4.0	HTMLspecial	ISOpub	dagger (obelisk)
//  &Dagger;
//  #let html-ddagger-g = text(str.from-unicode(0x2021)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	ISOpub	double dagger (double obelisk)
//  &bull;
//  #let html-bullet-g = text(str.from-unicode(0x2022)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLspecial	ISOpub	bullet (black small circle)[r]
//  #let html-nldr-g = text(str.from-unicode(0x2025)); // HTML 5.0		ISOpub	two dot leader (n leader)
//  &hellip;
//  #let html-mldr-g = text(str.from-unicode(0x2026)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOpub	horizontal ellipsis (three dot leader, m leader)
//  #let html-permil-g = text(str.from-unicode(0x2030)); // HTML 4.0	HTMLspecial	ISOtech	per mille sign
//  #let html-pertenk-g = text(str.from-unicode(0x2031)); // HTML 5.0		ISOtech	per ten thousand sign (basis point)
//  #let html-prime-g = text(str.from-unicode(0x2032)); // HTML 4.0	HTMLsymbol	ISOtech	prime (arcminutes feet)
//  #let html-Prime-g = text(str.from-unicode(0x2033)); // HTML 4.0	HTMLsymbol	ISOtech	double prime (arcseconds inches)
//  #let html-tprime-g = text(str.from-unicode(0x2034)); // HTML 5.0		ISOtech	triple prime (thirds, lignes)
//  &bprime;
//  #let html-backprime-g = text(str.from-unicode(0x2035)); // HTML 5.0		ISOamso	reversed prime (back prime)
//  #let html-lsaquo-g = text(str.from-unicode(0x2039)); // HTML 4.0	HTMLspecial	ISO proposed	single left-pointing angle quotation mark[s]
//  #let html-rsaquo-g = text(str.from-unicode(0x203A)); // HTML 4.0	HTMLspecial	ISO proposed	single right-pointing angle quotation mark[s]
//  &oline;
//  #let html-OverBar-g = text(str.from-unicode(0x203E)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	New	overline (spacing overscore)
//  #let html-caret-g = text(str.from-unicode(0x2041)); // HTML 5.0		ISOpub	caret insertion point
//  #let html-hybull-g = text(str.from-unicode(0x2043)); // HTML 5.0		ISOpub	hyphen bullet
//  #let html-frasl-g = text(str.from-unicode(0x2044)); // HTML 4.0	HTMLsymbol	New	fraction slash (solidus)
//  #let html-bsemi-g = text(str.from-unicode(0x204F)); // HTML 5.0		ISOamso	reversed semicolon (backward semicolon)
//  #let html-qprime-g = text(str.from-unicode(0x2057)); // HTML 5.0		ISOtech	quadruple prime (fourths)
//  #let html-MediumSpace-g = text(str.from-unicode(0x205F)); // HTML 5.0			medium mathematical space (medium space)
//  #let html-ThickSpace-g = text(str.from-unicode(0x200A)); // HTML 5.0			medium mathematical space, hair space
//  #let html-NoBreak-g = text(str.from-unicode(0x2060)); // HTML 5.0			word joiner (no break)
//  &ApplyFunction;
//  #let html-af-g = text(str.from-unicode(0x2061)); // HTML 5.0			function application (apply function)
//  &InvisibleTimes;
//  #let html-it-g = text(str.from-unicode(0x2062)); // HTML 5.0			invisible times
//  &InvisibleComma;
//  #let html-ic-g = text(str.from-unicode(0x2063)); // HTML 5.0			invisible separator (invisible comma)
//  #let html-euro-g = text(str.from-unicode(0x20AC)); // HTML 4.0	HTMLspecial	New	euro sign
//  &Copf;
//  #let html-complexes-g = text(str.from-unicode(0x2102)); // HTML 5.0		ISOmopf	double-struck capital C (Complex number, open-face capital C)
//  #let html-incare-g = text(str.from-unicode(0x2105)); // HTML 5.0		ISOpub	care of
//  #let html-gscr-g = text(str.from-unicode(0x210A)); // HTML 5.0		ISOmscr	script small g
//  &hamilt;
//  &HilbertSpace;
//  #let html-Hscr-g = text(str.from-unicode(0x210B)); // HTML 5.0		ISOtech	script capital H (Hilbert space, Hamiltonian mechanics)
//  &Hfr;
//  #let html-Poincareplane-g = text(str.from-unicode(0x210C)); // HTML 5.0		ISOmfrk	black-letter capital H (Fraktur capital H, Poincare plane)
//  &Hopf;
//  #let html-quaternions-g = text(str.from-unicode(0x210D)); // HTML 5.0		ISOmopf	double-struck capital H (Quaternion, open-face capital H)
//  #let html-planckh-g = text(str.from-unicode(0x210E)); // HTML 5.0			Planck constant
//  &planck;
//  &hbar;
//  &plankv;
//  #let html-hslash-g = text(str.from-unicode(0x210F)); // HTML 5.0		ISOamso	Planck constant over two pi (h bar, h slash, Planck variant)
//  &Iscr;
//  #let html-imagline-g = text(str.from-unicode(0x2110)); // HTML 5.0		ISOmscr	script capital I (imaginary line)
//  &image;[t]
//  &Im;
//  &imagpart;
//  #let html-Ifr-g = text(str.from-unicode(0x2111)); // 
//  HTML 4.0[t]
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamso	black-letter capital I (Fraktur capital I, imaginary part)
//  &Lscr;
//  &lagran;
//  #let html-Laplacetrf-g = text(str.from-unicode(0x2112)); // HTML 5.0		ISOmscr	script capital L (Lagrangian mechanics, Laplace transform)
//  #let html-ell-g = text(str.from-unicode(0x2113)); // HTML 5.0		ISOamso	script small l (ell, a mathematical symbol)
//  &Nopf;
//  #let html-naturals-g = text(str.from-unicode(0x2115)); // HTML 5.0		ISOmopf	double-struck capital N (Natural number, open-face capital N)
//  #let html-numero-g = text(str.from-unicode(0x2116)); // HTML 5.0		ISOcyr1	numero sign
//  #let html-copysr-g = text(str.from-unicode(0x2117)); // HTML 5.0		ISOpub	sound recording copyright; or phonogram copyright symbol[u]
//  &weierp;
//  #let html-wp-g = text(str.from-unicode(0x2118)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamso	script capital P (power set, Weierstrass p)
//  &Popf;
//  #let html-primes-g = text(str.from-unicode(0x2119)); // HTML 5.0		ISOmopf	double-struck capital P (prime number, open-face capital P)
//  &Qopf;
//  #let html-rationals-g = text(str.from-unicode(0x211A)); // HTML 5.0		ISOmopf	double-struck capital Q (rational number, open-face capital Q)
//  &Rscr;
//  #let html-realine-g = text(str.from-unicode(0x211B)); // HTML 5.0		ISOmscr	script capital R (Riemann integral, real line)
//  &real;
//  &Re;
//  &realpart;
//  #let html-Rfr-g = text(str.from-unicode(0x211C)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamso	black-letter capital R (Fraktur capital R, real part symbol)
//  &Ropf;
//  #let html-reals-g = text(str.from-unicode(0x211D)); // HTML 5.0		ISOmopf	double-struck capital R (real number)
//  #let html-rx-g = text(str.from-unicode(0x211E)); // HTML 5.0		ISOpub	prescription take (Rx)
//  &trade;
//  #let html-TRADE-g = text(str.from-unicode(0x2122)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOnum	trademark symbol; see superscript Latin capital letters TM
//  &Zopf;
//  #let html-integers-g = text(str.from-unicode(0x2124)); // HTML 5.0		ISOmopf	double-struck capital Z (integer)
//  #let html-mho-g = text(str.from-unicode(0x2127)); // HTML 5.0		ISOamso	inverted ohm sign (mho)
//  &Zfr;
//  #let html-zeetrf-g = text(str.from-unicode(0x2128)); // HTML 5.0		ISOmfrk	black-letter capital Z (Fraktur capital Z, dram)
//  #let html-iiota-g = text(str.from-unicode(0x2129)); // HTML 5.0		ISOamso	turned Greek small letter iota (inverted iota)
//  &bernou;
//  &Bernoullis;
//  #let html-Bscr-g = text(str.from-unicode(0x212C)); // HTML 5.0		ISOtech	script capital B (Bernoulli polynomials)
//  &Cfr;
//  #let html-Cayleys-g = text(str.from-unicode(0x212D)); // HTML 5.0		ISOmfrk	black-letter capital C (Fraktur capital C)
//  #let html-escr-g = text(str.from-unicode(0x212F)); // HTML 5.0		ISOmscr	script small e
//  &Escr;
//  #let html-expectation-g = text(str.from-unicode(0x2130)); // HTML 5.0		ISOmscr	script capital E (electromotive force, expected value)
//  &Fscr;
//  #let html-Fouriertrf-g = text(str.from-unicode(0x2131)); // HTML 5.0		ISOmscr	script capital F (Fourier transform)
//  &phmmat;
//  &Mellintrf;
//  #let html-Mscr-g = text(str.from-unicode(0x2133)); // HTML 5.0		ISOtech	script capital M (Mellin transform, M-matrix (physics))
//  &order;
//  &orderof;
//  #let html-oscr-g = text(str.from-unicode(0x2134)); // HTML 5.0		ISOtech	script small o (order, of inferior order to)
//  &alefsym;
//  #let html-aleph-g = text(str.from-unicode(0x2135)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol
//  -
//  New
//  ISOtech
//  alef symbol (first transfinite cardinal)[v]
//  #let html-beth-g = text(str.from-unicode(0x2136)); // HTML 5.0		ISOamso	bet symbol (beth symbol)[w]
//  #let html-gimel-g = text(str.from-unicode(0x2137)); // HTML 5.0		ISOamso	gimel symbol[x]
//  #let html-daleth-g = text(str.from-unicode(0x2138)); // HTML 5.0		ISOamso	dalet symbol (daleth symbol)[y]
//  &CapitalDifferentialD;
//  #let html-DD-g = text(str.from-unicode(0x2145)); // HTML 5.0			double-struck italic capital D
//  &DifferentialD;
//  #let html-dd-g = text(str.from-unicode(0x2146)); // HTML 5.0			double-struck italic small d
//  &ExponentialE;
//  &exponentiale;
//  #let html-ee-g = text(str.from-unicode(0x2147)); // HTML 5.0			double-struck italic small e
//  &ImaginaryI;
//  #let html-ii-g = text(str.from-unicode(0x2148)); // HTML 5.0			double-struck italic small i
//  #let html-frac13-g = text(str.from-unicode(0x2153)); // HTML 5.0		ISOpub	vulgar fraction one third (fraction one third)
//  #let html-frac23-g = text(str.from-unicode(0x2154)); // HTML 5.0		ISOpub	vulgar fraction two thirds (fraction two thirds)
//  #let html-frac15-g = text(str.from-unicode(0x2155)); // HTML 5.0		ISOpub	vulgar fraction one fifth (fraction one fifth)
//  #let html-frac25-g = text(str.from-unicode(0x2156)); // HTML 5.0		ISOpub	vulgar fraction two fifths (fraction two fifths)
//  #let html-frac35-g = text(str.from-unicode(0x2157)); // HTML 5.0		ISOpub	vulgar fraction three fifths (fraction three fifths)
//  #let html-frac45-g = text(str.from-unicode(0x2158)); // HTML 5.0		ISOpub	vulgar fraction four fifths (fraction four fifths)
//  #let html-frac16-g = text(str.from-unicode(0x2159)); // HTML 5.0		ISOpub	vulgar fraction one sixth (fraction one sixth)
//  #let html-frac56-g = text(str.from-unicode(0x215A)); // HTML 5.0		ISOpub	vulgar fraction five sixths (fraction five sixths)
//  #let html-frac18-g = text(str.from-unicode(0x215B)); // HTML 5.0		ISOnum	vulgar fraction one eighth (fraction one eighth)
//  #let html-frac38-g = text(str.from-unicode(0x215C)); // HTML 5.0		ISOnum	vulgar fraction three eighths (fraction three eighths)
//  #let html-frac58-g = text(str.from-unicode(0x215D)); // HTML 5.0		ISOnum	vulgar fraction five eighths (fraction five eighths)
//  #let html-frac78-g = text(str.from-unicode(0x215E)); // HTML 5.0		ISOnum	vulgar fraction seven eighths (fraction seven eighths)
//  &larr;
//  &leftarrow;
//  &LeftArrow;
//  &slarr;
//  #let html-ShortLeftArrow-g = text(str.from-unicode(0x2190)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOnum	leftwards arrow
//  &uarr;
//  &uparrow;
//  &UpArrow;
//  #let html-ShortUpArrow-g = text(str.from-unicode(0x2191)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOnum	upwards arrow
//  &rarr;
//  &rightarrow;
//  &RightArrow;
//  &srarr;
//  #let html-ShortRightArrow-g = text(str.from-unicode(0x2192)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOnum	rightwards arrow
//  &darr;
//  &downarrow;
//  &DownArrow;
//  #let html-ShortDownArrow-g = text(str.from-unicode(0x2193)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOnum	downwards arrow
//  &harr;
//  &leftrightarrow;
//  #let html-LeftRightArrow-g = text(str.from-unicode(0x2194)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamsa	left right arrow (horizontal arrow)
//  &varr;
//  &updownarrow;
//  #let html-UpDownArrow-g = text(str.from-unicode(0x2195)); // HTML 5.0		ISOamsa	up down arrow (vertical arrow)
//  &nwarr;
//  &UpperLeftArrow;
//  #let html-nwarrow-g = text(str.from-unicode(0x2196)); // HTML 5.0		ISOamsa	north west arrow (upper left arrow)
//  &nearr;
//  &UpperRightArrow;
//  #let html-nearrow-g = text(str.from-unicode(0x2197)); // HTML 5.0		ISOamsa	north east arrow (upper right arrow)
//  &searr;
//  &searrow;
//  #let html-LowerRightArrow-g = text(str.from-unicode(0x2198)); // HTML 5.0		ISOamsa	south east arrow (lower right arrow)
//  &swarr;
//  &swarrow;
//  #let html-LowerLeftArrow-g = text(str.from-unicode(0x2199)); // HTML 5.0		ISOamsa	south west arrow (lower left arrow)
//  &nlarr;
//  #let html-nleftarrow-g = text(str.from-unicode(0x219A)); // HTML 5.0		ISOamsa	leftwards arrow with stroke (not left arrow)
//  &nrarr;
//  #let html-nrightarrow-g = text(str.from-unicode(0x219B)); // HTML 5.0		ISOamsa	rightwards arrow with stroke (not right arrow)
//  &rarrw;
//  #let html-rightsquigarrow-g = text(str.from-unicode(0x219D)); // HTML 5.0		ISOamsa	rightwards wave arrow (rightwards squiggle arrow)
//  #let html-nrarrw-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsa	rightwards wave arrow, combining long solidus overlay
//  &Larr;
//  #let html-twoheadleftarrow-g = text(str.from-unicode(0x219E)); // HTML 5.0		ISOamsa	leftwards two headed arrow
//  #let html-Uarr-g = text(str.from-unicode(0x219F)); // HTML 5.0		ISOamsa	upwards two headed arrow
//  &Rarr;
//  #let html-twoheadrightarrow-g = text(str.from-unicode(0x21A0)); // HTML 5.0		ISOamsa	rightwards two headed arrow
//  #let html-Darr-g = text(str.from-unicode(0x21A1)); // HTML 5.0		ISOamsa	downwards two headed arrow
//  &larrtl;
//  #let html-leftarrowtail-g = text(str.from-unicode(0x21A2)); // HTML 5.0		ISOamsa	leftwards arrow with tail
//  &rarrtl;
//  #let html-rightarrowtail-g = text(str.from-unicode(0x21A3)); // HTML 5.0		ISOamsa	rightwards arrow with tail
//  &LeftTeeArrow;
//  #let html-mapstoleft-g = text(str.from-unicode(0x21A4)); // HTML 5.0			leftwards arrow from bar (maps to leftward, left tee arrow)
//  &UpTeeArrow;
//  #let html-mapstoup-g = text(str.from-unicode(0x21A5)); // HTML 5.0			upwards arrow from bar (maps to upward, up tee arrow)
//  &map;[t]
//  &RightTeeArrow;
//  #let html-mapsto-g = text(str.from-unicode(0x21A6)); // HTML 5.0[t]		ISOamsa	rightwards arrow from bar (maps to, right tee arrow)
//  &DownTeeArrow;
//  #let html-mapstodown-g = text(str.from-unicode(0x21A7)); // HTML 5.0			downwards arrow from bar (maps to downward, down tee arrow)
//  &larrhk;
//  #let html-hookleftarrow-g = text(str.from-unicode(0x21A9)); // HTML 5.0		ISOamsa	leftwards arrow with hook
//  &rarrhk;
//  #let html-hookrightarrow-g = text(str.from-unicode(0x21AA)); // HTML 5.0		ISOamsa	rightwards arrow with hook
//  &larrlp;
//  #let html-looparrowleft-g = text(str.from-unicode(0x21AB)); // HTML 5.0		ISOamsa	leftwards arrow with loop
//  &rarrlp;
//  #let html-looparrowright-g = text(str.from-unicode(0x21AC)); // HTML 5.0		ISOamsa	rightwards arrow with loop
//  &harrw;
//  #let html-leftrightsquigarrow-g = text(str.from-unicode(0x21AD)); // HTML 5.0		ISOamsa	left right wave arrow (horizontal wave arrow, left right squiggle arrow)
//  &nharr;
//  #let html-nleftrightarrow-g = text(str.from-unicode(0x21AE)); // HTML 5.0		ISOamsa	left right arrow with stroke (not horizontal arrow, not left right arrow)
//  &lsh;
//  #let html-Lsh-g = text(str.from-unicode(0x21B0)); // HTML 5.0		ISOamsa	upwards arrow with tip leftwards (left shift)
//  &rsh;
//  #let html-Rsh-g = text(str.from-unicode(0x21B1)); // HTML 5.0		ISOamsa	upwards arrow with tip rightwards (right shift)
//  #let html-ldsh-g = text(str.from-unicode(0x21B2)); // HTML 5.0		ISOamsa	downwards arrow with tip leftwards (left down shift)
//  #let html-rdsh-g = text(str.from-unicode(0x21B3)); // HTML 5.0		ISOamsa	downwards arrow with tip rightwards (right down shift)
//  #let html-crarr-g = text(str.from-unicode(0x21B5)); // HTML 4.0	HTMLsymbol	New	downwards arrow with corner leftwards (carriage return)
//  &cularr;
//  #let html-curvearrowleft-g = text(str.from-unicode(0x21B6)); // HTML 5.0		ISOamsa	anticlockwise top semicircle arrow (curve arrow left)
//  &curarr;
//  #let html-curvearrowright-g = text(str.from-unicode(0x21B7)); // HTML 5.0		ISOamsa	clockwise top semicircle arrow (curve arrow right)
//  &olarr;
//  #let html-circlearrowleft-g = text(str.from-unicode(0x21BA)); // HTML 5.0		ISOamsa	anticlockwise open circle arrow (circle arrow left, open left arrow)
//  &orarr;
//  #let html-circlearrowright-g = text(str.from-unicode(0x21BB)); // HTML 5.0		ISOamsa	clockwise open circle arrow (circle arrow right, open right arrow)
//  &lharu;
//  &LeftVector;
//  #let html-leftharpoonup-g = text(str.from-unicode(0x21BC)); // HTML 5.0		ISOamsa	leftwards harpoon with barb upwards (left vector)
//  &lhard;
//  &leftharpoondown;
//  #let html-DownLeftVector-g = text(str.from-unicode(0x21BD)); // HTML 5.0		ISOamsa	leftwards harpoon with barb downwards (down left vector)
//  &uharr;
//  &upharpoonright;
//  #let html-RightUpVector-g = text(str.from-unicode(0x21BE)); // HTML 5.0		ISOamsa	upwards harpoon with barb rightwards (right up vector)
//  &uharl;
//  &upharpoonleft;
//  #let html-LeftUpVector-g = text(str.from-unicode(0x21BF)); // HTML 5.0		ISOamsa	upwards harpoon with barb leftwards (left up vector)
//  &rharu;
//  &RightVector;
//  #let html-rightharpoonup-g = text(str.from-unicode(0x21C0)); // HTML 5.0		ISOamsa	rightwards harpoon with barb upwards (right vector)
//  &rhard;
//  &rightharpoondown;
//  #let html-DownRightVector-g = text(str.from-unicode(0x21C1)); // HTML 5.0		ISOamsa	rightwards harpoon with barb downwards (down right vector)
//  &dharr;
//  &RightDownVector;
//  #let html-downharpoonright-g = text(str.from-unicode(0x21C2)); // HTML 5.0		ISOamsa	downwards harpoon with barb rightwards (right down vector)
//  &dharl;
//  &LeftDownVector;
//  #let html-downharpoonleft-g = text(str.from-unicode(0x21C3)); // HTML 5.0		ISOamsa	downwards harpoon with barb leftwards (left down vector)
//  &rlarr;
//  &rightleftarrows;
//  #let html-RightArrowLeftArrow-g = text(str.from-unicode(0x21C4)); // HTML 5.0		ISOamsa	rightwards arrow over leftwards arrow
//  &udarr;
//  #let html-UpArrowDownArrow-g = text(str.from-unicode(0x21C5)); // HTML 5.0		ISOamsa	upwards arrow leftwards of downwards arrow
//  &lrarr;
//  &leftrightarrows;
//  #let html-LeftArrowRightArrow-g = text(str.from-unicode(0x21C6)); // HTML 5.0		ISOamsa	leftwards arrow over rightwards arrow
//  &llarr;
//  #let html-leftleftarrows-g = text(str.from-unicode(0x21C7)); // HTML 5.0		ISOamsa	leftwards paired arrows
//  &uuarr;
//  #let html-upuparrows-g = text(str.from-unicode(0x21C8)); // HTML 5.0		ISOamsa	upwards paired arrows
//  &rrarr;
//  #let html-rightrightarrows-g = text(str.from-unicode(0x21C9)); // HTML 5.0		ISOamsa	rightwards paired arrows
//  &ddarr;
//  #let html-downdownarrows-g = text(str.from-unicode(0x21CA)); // HTML 5.0		ISOamsa	downwards paired arrows
//  &lrhar;
//  &ReverseEquilibrium;
//  #let html-leftrightharpoons-g = text(str.from-unicode(0x21CB)); // HTML 5.0		ISOamsa	leftwards harpoon over rightwards harpoon (Reverse Equilibrium)
//  &rlhar;
//  &rightleftharpoons;
//  #let html-Equilibrium-g = text(str.from-unicode(0x21CC)); // HTML 5.0		ISOamsa	rightwards harpoon over leftwards harpoon (Equilibrium)
//  &nlArr;
//  #let html-nLeftarrow-g = text(str.from-unicode(0x21CD)); // HTML 5.0		ISOamsa	leftwards double arrow with stroke (not leftwards double arrow)
//  &nhArr;
//  #let html-nLeftrightarrow-g = text(str.from-unicode(0x21CE)); // HTML 5.0		ISOamsa	left right double arrow with stroke (not horizontal double arrow, not left right double arrow)
//  &nrArr;
//  #let html-nRightarrow-g = text(str.from-unicode(0x21CF)); // HTML 5.0		ISOamsa	rightwards double arrow with stroke (not rightwards double arrow)
//  &lArr;
//  &Leftarrow;
//  #let html-DoubleLeftArrow-g = text(str.from-unicode(0x21D0)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	leftwards double arrow[z]
//  &uArr;
//  &Uparrow;
//  #let html-DoubleUpArrow-g = text(str.from-unicode(0x21D1)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamsa	upwards double arrow
//  &rArr;
//  &Rightarrow;
//  &Implies;
//  #let html-DoubleRightArrow-g = text(str.from-unicode(0x21D2)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOnum	rightwards double arrow (implies)[aa]
//  &dArr;
//  &Downarrow;
//  #let html-DoubleDownArrow-g = text(str.from-unicode(0x21D3)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamsa	downwards double arrow
//  &hArr;
//  &Leftrightarrow;
//  &DoubleLeftRightArrow;
//  #let html-iff-g = text(str.from-unicode(0x21D4)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamsa	left right double arrow (iff)
//  &vArr;
//  &Updownarrow;
//  #let html-DoubleUpDownArrow-g = text(str.from-unicode(0x21D5)); // HTML 5.0		ISOamsa	up down double arrow
//  #let html-nwArr-g = text(str.from-unicode(0x21D6)); // HTML 5.0		ISOamsa	north west double arrow
//  #let html-neArr-g = text(str.from-unicode(0x21D7)); // HTML 5.0		ISOamsa	north east double arrow
//  #let html-seArr-g = text(str.from-unicode(0x21D8)); // HTML 5.0		ISOamsa	south east double arrow
//  #let html-swArr-g = text(str.from-unicode(0x21D9)); // HTML 5.0		ISOamsa	south west double arrow
//  &lAarr;
//  #let html-Lleftarrow-g = text(str.from-unicode(0x21DA)); // HTML 5.0		ISOamsa	leftwards triple arrow
//  &rAarr;
//  #let html-Rrightarrow-g = text(str.from-unicode(0x21DB)); // HTML 5.0		ISOamsa	rightwards triple arrow
//  #let html-zigrarr-g = text(str.from-unicode(0x21DD)); // HTML 5.0		ISOamsa	rightwards squiggle arrow (rightwards zigzag arrow)
//  &larrb;
//  #let html-LeftArrowBar-g = text(str.from-unicode(0x21E4)); // HTML 5.0			leftwards arrow to bar
//  &rarrb;
//  #let html-RightArrowBar-g = text(str.from-unicode(0x21E5)); // HTML 5.0			rightwards arrow to bar
//  &duarr;
//  #let html-DownArrowUpArrow-g = text(str.from-unicode(0x21F5)); // HTML 5.0		ISOamsa	downwards arrow leftwards of upwards arrow
//  #let html-loarr-g = text(str.from-unicode(0x21FD)); // HTML 5.0		ISOamsa	leftwards open-headed arrow
//  #let html-roarr-g = text(str.from-unicode(0x21FE)); // HTML 5.0		ISOamsa	rightwards open-headed arrow
//  #let html-hoarr-g = text(str.from-unicode(0x21FF)); // HTML 5.0		ISOamsa	left right open-headed arrow (horizontal open-headed arrow)
//  &forall;
//  #let html-ForAll-g = text(str.from-unicode(0x2200)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	for all
//  &comp;
//  #let html-complement-g = text(str.from-unicode(0x2201)); // HTML 5.0		ISOamso	complement
//  &part;
//  #let html-PartialD-g = text(str.from-unicode(0x2202)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	partial differential
//  #let html-npart-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOtech	partial differential, combining long solidus overlay
//  &exist;
//  #let html-Exists-g = text(str.from-unicode(0x2203)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	there exists
//  &nexist;
//  &NotExists;
//  #let html-nexists-g = text(str.from-unicode(0x2204)); // HTML 5.0		ISOamso	there does not exist
//  &empty;
//  &emptyset;
//  &emptyv;
//  #let html-varnothing-g = text(str.from-unicode(0x2205)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamso	empty set (null set, empty variable, variable nothing); see also U+8960, ⌀
//  &nabla;
//  #let html-Del-g = text(str.from-unicode(0x2207)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	nabla (del, vector differential operator)
//  &isin;
//  &isinv;
//  &Element;
//  #let html-in-g = text(str.from-unicode(0x2208)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	element of (in set)
//  &notin;
//  &NotElement;
//  #let html-notinva-g = text(str.from-unicode(0x2209)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	not an element of (not in set)
//  &niv;
//  &ReverseElement;
//  &ni;
//  #let html-SuchThat-g = text(str.from-unicode(0x220B)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	contains as member (Reversed element, Reversed in set, such that)
//  &notni;
//  &notniva;
//  #let html-NotReverseElement-g = text(str.from-unicode(0x220C)); // HTML 5.0		ISOtech	does not contain as member (Not reversed element, nor reversed in set)
//  &prod;
//  #let html-Product-g = text(str.from-unicode(0x220F)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsb	n-ary product (product sign)[ab]
//  &coprod;
//  #let html-Coproduct-g = text(str.from-unicode(0x2210)); // HTML 5.0		ISOamsb	n-ary coproduct (coproduct sign)
//  &sum;
//  #let html-Sum-g = text(str.from-unicode(0x2211)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsb	n-ary summation[ac]
//  #let html-minus-g = text(str.from-unicode(0x2212)); // HTML 4.0	HTMLsymbol	ISOtech	minus sign
//  &mnplus;
//  &mp;
//  #let html-MinusPlus-g = text(str.from-unicode(0x2213)); // HTML 5.0		ISOtech	minus-or-plus sign (minus–plus sign)
//  &plusdo;
//  #let html-dotplus-g = text(str.from-unicode(0x2214)); // HTML 5.0		ISOamsb	dot plus (dot plus sign, plus dot sign)
//  &setmn;
//  &setminus;
//  &Backslash;
//  &ssetmn;
//  #let html-smallsetminus-g = text(str.from-unicode(0x2216)); // HTML 5.0		ISOamsb	set minus
//  #let html-lowast-g = text(str.from-unicode(0x2217)); // HTML 4.0	HTMLsymbol	ISOtech	asterisk operator
//  &compfn;
//  #let html-SmallCircle-g = text(str.from-unicode(0x2218)); // HTML 5.0		ISOtech	ring operator (composition function, small circle)
//  &radic;
//  #let html-Sqrt-g = text(str.from-unicode(0x221A)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	square root (radical sign)
//  &prop;
//  &propto;
//  &Proportional;
//  &vprop;
//  #let html-varpropto-g = text(str.from-unicode(0x221D)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	proportional to
//  #let html-infin-g = text(str.from-unicode(0x221E)); // HTML 4.0	HTMLsymbol	ISOtech	infinity
//  #let html-angrt-g = text(str.from-unicode(0x221F)); // HTML 5.0		ISOtech	right angle
//  &ang;
//  #let html-angle-g = text(str.from-unicode(0x2220)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamso	angle
//  #let html-nang-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamso	angle, combining long vertical line overlay
//  &angmsd;
//  #let html-measuredangle-g = text(str.from-unicode(0x2221)); // HTML 5.0		ISOamso	measured angle
//  #let html-angsph-g = text(str.from-unicode(0x2222)); // HTML 5.0		ISOtech	spherical angle
//  &mid;
//  &VerticalBar;
//  &smid;
//  #let html-shortmid-g = text(str.from-unicode(0x2223)); // HTML 5.0		ISOamsr	divides (vertical bar, mid, short mid)
//  &nmid;
//  &NotVerticalBar;
//  &nsmid;
//  #let html-nshortmid-g = text(str.from-unicode(0x2224)); // HTML 5.0		ISOamsn	does not divide (not vertical bar, not mid, not short mid)
//  &par;
//  &parallel;
//  &DoubleVerticalBar;
//  &spar;
//  #let html-shortparallel-g = text(str.from-unicode(0x2225)); // HTML 5.0		ISOtech	parallel to (double vertical bar)
//  &npar;
//  &nparallel;
//  &NotDoubleVerticalBar;
//  &nspar;
//  #let html-nshortparallel-g = text(str.from-unicode(0x2226)); // HTML 5.0		ISOamsn	not parallel to (not double vertical bar)
//  &and;
//  #let html-wedge-g = text(str.from-unicode(0x2227)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	logical and (wedge)
//  &or;
//  #let html-vee-g = text(str.from-unicode(0x2228)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	logical or (vee)
//  #let html-cap-g = text(str.from-unicode(0x2229)); // HTML 4.0	HTMLsymbol	ISOtech	intersection (cap)
//  #let html-caps-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsb	intersection, variation selector-1
//  #let html-cup-g = text(str.from-unicode(0x222A)); // HTML 4.0	HTMLsymbol	ISOtech	union (cup)
//  #let html-cups-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsb	union, variation selector-1
//  &int;
//  #let html-Integral-g = text(str.from-unicode(0x222B)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	integral
//  #let html-Int-g = text(str.from-unicode(0x222C)); // HTML 5.0		ISOtech	double integral
//  &tint;
//  #let html-iiint-g = text(str.from-unicode(0x222D)); // HTML 5.0		ISOtech	triple integral
//  &conint;
//  &oint;
//  #let html-ContourIntegral-g = text(str.from-unicode(0x222E)); // HTML 5.0		ISOtech	contour integral (circle integral)
//  &Conint;
//  #let html-DoubleContourIntegral-g = text(str.from-unicode(0x222F)); // HTML 5.0		ISOtech	surface integral (double contour integral)
//  #let html-Cconint-g = text(str.from-unicode(0x2230)); // HTML 5.0		ISOtech	volume integral
//  #let html-cwint-g = text(str.from-unicode(0x2231)); // HTML 5.0		ISOtech	clockwise integral
//  &cwconint;
//  #let html-ClockwiseContourIntegral-g = text(str.from-unicode(0x2232)); // HTML 5.0		ISOtech	clockwise contour integral
//  &awconint;
//  #let html-CounterClockwiseContourIntegral-g = text(str.from-unicode(0x2233)); // HTML 5.0		ISOtech	anticlockwise contour integral
//  &there4;
//  &therefore;
//  #let html-Therefore-g = text(str.from-unicode(0x2234)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	therefore
//  &becaus;
//  &because;
//  #let html-Because-g = text(str.from-unicode(0x2235)); // HTML 5.0		ISOtech	because
//  #let html-ratio-g = text(str.from-unicode(0x2236)); // HTML 5.0		ISOamsr	ratio
//  &Colon;
//  #let html-Proportion-g = text(str.from-unicode(0x2237)); // HTML 5.0		ISOamsr	proportion
//  &minusd;
//  #let html-dotminus-g = text(str.from-unicode(0x2238)); // HTML 5.0		ISOamsb	dot minus
//  #let html-mDDot-g = text(str.from-unicode(0x223A)); // HTML 5.0		ISOamsr	geometric proportion
//  #let html-homtht-g = text(str.from-unicode(0x223B)); // HTML 5.0		ISOamsr	homothetic
//  &sim;
//  &Tilde;
//  &thksim;
//  #let html-thicksim-g = text(str.from-unicode(0x223C)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	tilde operator (varies with, similar to, thick tilde)[ad]
//  #let html-nvsim-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	tilde operator, combining long vertical line overlay
//  &bsim;
//  #let html-backsim-g = text(str.from-unicode(0x223D)); // HTML 5.0		ISOamsr	reversed tilde (back similar to)
//  #let html-race-g = text(str.from-unicode(0x0331)); // HTML 5.0			reversed tilde, combining macron below
//  &ac;
//  #let html-mstpos-g = text(str.from-unicode(0x223E)); // HTML 5.0		ISOamsb	inverted lazy s
//  #let html-acE-g = text(str.from-unicode(0x0333)); // HTML 5.0			inverted lazy s, combining double low line
//  #let html-acd-g = text(str.from-unicode(0x223F)); // HTML 5.0		ISOtech	sine wave
//  &wreath;
//  &VerticalTilde;
//  #let html-wr-g = text(str.from-unicode(0x2240)); // HTML 5.0		ISOamsb	wreath product (vertical tilde)
//  &nsim;
//  #let html-NotTilde-g = text(str.from-unicode(0x2241)); // HTML 5.0		ISOamsn	not tilde (is not similar to)
//  &esim;
//  &EqualTilde;
//  #let html-eqsim-g = text(str.from-unicode(0x2242)); // HTML 5.0		ISOamsr	minus tilde (equal tilde)
//  &nesim;
//  #let html-NotEqualTilde-g = text(str.from-unicode(0x0338)); // HTML 5.0			minus tilde, combining long solidus overlay
//  &sime;
//  &TildeEqual;
//  #let html-simeq-g = text(str.from-unicode(0x2243)); // HTML 5.0		ISOtech	asymptotically equal to (tilde equal)
//  &nsime;
//  &nsimeq;
//  #let html-NotTildeEqual-g = text(str.from-unicode(0x2244)); // HTML 5.0		ISOamsn	not asymptotically equal to (not tilde equal)
//  &cong;
//  #let html-TildeFullEqual-g = text(str.from-unicode(0x2245)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	approximately equal to (congruent to)
//  #let html-simne-g = text(str.from-unicode(0x2246)); // HTML 5.0		ISOamsn	approximately but not actually equal to (similar but not equal to)
//  &ncong;
//  #let html-NotTildeFullEqual-g = text(str.from-unicode(0x2247)); // HTML 5.0		ISOamsn	neither approximately nor actually equal to (not congruent to)
//  &asymp;
//  &ap;
//  &TildeTilde;
//  &approx;
//  &thkap;
//  #let html-thickapprox-g = text(str.from-unicode(0x2248)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOamsr	almost equal to (asymptotic to, approximately, tilde over tilde)
//  &nap;
//  &NotTildeTilde;
//  #let html-napprox-g = text(str.from-unicode(0x2249)); // HTML 5.0		ISOamsn	not almost equal to (not approximately, not tilde over tilde)
//  &ape;
//  #let html-approxeq-g = text(str.from-unicode(0x224A)); // HTML 5.0		ISOamsr	almost equal or equal to (approximately equal to)
//  #let html-apid-g = text(str.from-unicode(0x224B)); // HTML 5.0		ISOamsr	triple tilde
//  #let html-napid-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	triple tilde, combining long solidus overlay
//  &bcong;
//  #let html-backcong-g = text(str.from-unicode(0x224C)); // HTML 5.0		ISOamsr	all equal to (backwards congruent to)
//  &asympeq;
//  #let html-CupCap-g = text(str.from-unicode(0x224D)); // HTML 5.0			equivalent to (asymptotically equivalent to, Cup and Cap)
//  #let html-nvap-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	equivalent to, combining long vertical line overlay
//  &bump;
//  &HumpDownHump;
//  #let html-Bumpeq-g = text(str.from-unicode(0x224E)); // HTML 5.0		ISOamsr	geometrically equivalent to (bump equals, hump and down hump equals)
//  &nbump;
//  #let html-NotHumpDownHump-g = text(str.from-unicode(0x0338)); // HTML 5.0			geometrically equivalent to, combining long solidus overlay
//  &bumpe;
//  &HumpEqual;
//  #let html-bumpeq-g = text(str.from-unicode(0x224F)); // HTML 5.0		ISOamsr	difference between (hump equals)
//  &nbumpe;
//  #let html-NotHumpEqual-g = text(str.from-unicode(0x0338)); // HTML 5.0			difference between, combining long solidus overlay
//  &esdot;
//  &DotEqual;
//  #let html-doteq-g = text(str.from-unicode(0x2250)); // HTML 5.0		ISOamsr	approaches the limit (dot equal)
//  #let html-nedot-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOtech	approaches the limit, combining long solidus overlay
//  &eDot;
//  #let html-doteqdot-g = text(str.from-unicode(0x2251)); // HTML 5.0		ISOamsr	geometrically equal to (dot equal dot)
//  &efDot;
//  #let html-fallingdotseq-g = text(str.from-unicode(0x2252)); // HTML 5.0		ISOamsr	approximately equal to or the image of (falling dot sequence)
//  &erDot;
//  #let html-risingdotseq-g = text(str.from-unicode(0x2253)); // HTML 5.0		ISOamsr	image of or approximately equal to (rising dot sequence)
//  &colone;
//  &coloneq;
//  #let html-Assign-g = text(str.from-unicode(0x2254)); // HTML 5.0		ISOamsr	colon equals (Assignment (computer science))
//  &ecolon;
//  #let html-eqcolon-g = text(str.from-unicode(0x2255)); // HTML 5.0		ISOamsr	equals colon
//  &ecir;
//  #let html-eqcirc-g = text(str.from-unicode(0x2256)); // HTML 5.0		ISOamsr	ring in equal to (equals circle)
//  &cire;
//  #let html-circeq-g = text(str.from-unicode(0x2257)); // HTML 5.0		ISOamsr	ring equal to (circle equals)
//  #let html-wedgeq-g = text(str.from-unicode(0x2259)); // HTML 5.0		ISOtech	estimates (wedge equals)
//  #let html-veeeq-g = text(str.from-unicode(0x225A)); // HTML 5.0		ISOtech	equiangular to (vee equals)
//  &trie;
//  #let html-triangleq-g = text(str.from-unicode(0x225C)); // HTML 5.0		ISOamsr	delta equal to (triangle equals)
//  &equest;
//  #let html-questeq-g = text(str.from-unicode(0x225F)); // HTML 5.0		ISOamsr	questioned equal to
//  &ne;
//  #let html-NotEqual-g = text(str.from-unicode(0x2260)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	not equal to
//  &equiv;
//  #let html-Congruent-g = text(str.from-unicode(0x2261)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	identical to; sometimes used for 'equivalent to' or 'congruent'
//  #let html-bnequiv-g = text(str.from-unicode(0x20E5)); // HTML 5.0		ISOtech	identical to, combining reverse solidus overlay
//  &nequiv;
//  #let html-NotCongruent-g = text(str.from-unicode(0x2262)); // HTML 5.0		ISOamsn	not identical to; sometimes used for 'not congruent'
//  &le;
//  #let html-leq-g = text(str.from-unicode(0x2264)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	less-than or equal to
//  #let html-nvle-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	less-than or equal to, combining long vertical line overlay
//  &ge;
//  &GreaterEqual;
//  #let html-geq-g = text(str.from-unicode(0x2265)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	greater-than or equal to
//  #let html-nvge-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	greater-than or equal to, combining long vertical line overlay
//  &lE;
//  &LessFullEqual;
//  #let html-leqq-g = text(str.from-unicode(0x2266)); // HTML 5.0		ISOamsr	less-than over equal to
//  &nlE;
//  #let html-nleqq-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	less-than over equal to, combining long solidus overlay
//  &gE;
//  &GreaterFullEqual;
//  #let html-geqq-g = text(str.from-unicode(0x2267)); // HTML 5.0		ISOamsr	greater-than over equal to
//  &ngE;
//  &ngeqq;
//  #let html-NotGreaterFullEqual-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	greater-than over equal to, combining long solidus overlay
//  &lnE;
//  #let html-lneqq-g = text(str.from-unicode(0x2268)); // HTML 5.0		ISOamsn	less-than but not equal to
//  &lvnE;
//  #let html-lvertneqq-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsn	less-than but not equal to, variation selector-1
//  &gnE;
//  #let html-gneqq-g = text(str.from-unicode(0x2269)); // HTML 5.0		ISOamsn	greater-than but not equal to
//  &gvnE;
//  #let html-gvertneqq-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsn	greater-than but not equal to, variation selector-1
//  &Lt;
//  &NestedLessLess;
//  #let html-ll-g = text(str.from-unicode(0x226A)); // HTML 5.0		ISOamsr	much less-than
//  &nLtv;
//  #let html-NotLessLess-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	much less-than, combining long solidus overlay
//  #let html-nLt-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	much less-than, combining long vertical line overlay
//  &Gt;
//  &NestedGreaterGreater;
//  #let html-gg-g = text(str.from-unicode(0x226B)); // HTML 5.0		ISOamsr	much greater-than
//  &nGtv;
//  #let html-NotGreaterGreater-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	much greater-than, combining long solidus overlay
//  #let html-nGt-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	much greater-than, combining long vertical line overlay
//  &twixt;
//  #let html-between-g = text(str.from-unicode(0x226C)); // HTML 5.0		ISOamsr	between
//  #let html-NotCupCap-g = text(str.from-unicode(0x226D)); // HTML 5.0			not equivalent to (not cup cap)
//  &nlt;
//  &NotLess;
//  #let html-nless-g = text(str.from-unicode(0x226E)); // HTML 5.0		ISOamsn	not less-than
//  &ngt;
//  &NotGreater;
//  #let html-ngtr-g = text(str.from-unicode(0x226F)); // HTML 5.0		ISOamsn	not greater-than
//  &nle;
//  &NotLessEqual;
//  #let html-nleq-g = text(str.from-unicode(0x2270)); // HTML 5.0		ISOamsn	neither less-than nor equal to
//  &nge;
//  &NotGreaterEqual;
//  #let html-ngeq-g = text(str.from-unicode(0x2271)); // HTML 5.0		ISOamsn	neither greater-than nor equal to
//  &lsim;
//  &LessTilde;
//  #let html-lesssim-g = text(str.from-unicode(0x2272)); // HTML 5.0		ISOamsr	less-than or equivalent to (less-than tilde, less-than or similar to)
//  &gsim;
//  &gtrsim;
//  #let html-GreaterTilde-g = text(str.from-unicode(0x2273)); // HTML 5.0		ISOamsr	greater-than or equivalent to (greater-than tilde, greater-than or similar to)
//  &nlsim;
//  #let html-NotLessTilde-g = text(str.from-unicode(0x2274)); // HTML 5.0		ISOamsn	neither less-than nor equivalent to (not less-than tilde, neither less-than nor similar to)
//  &ngsim;
//  #let html-NotGreaterTilde-g = text(str.from-unicode(0x2275)); // HTML 5.0		ISOamsn	neither greater-than nor equivalent to (not greater-than tilde, neither greater-than nor similar to)
//  &lg;
//  &lessgtr;
//  #let html-LessGreater-g = text(str.from-unicode(0x2276)); // HTML 5.0		ISOamsr	less-than or greater-than
//  &gl;
//  &gtrless;
//  #let html-GreaterLess-g = text(str.from-unicode(0x2277)); // HTML 5.0		ISOamsr	greater-than or less-than
//  &ntlg;
//  #let html-NotLessGreater-g = text(str.from-unicode(0x2278)); // HTML 5.0		ISOamsn	neither less-than nor greater-than
//  &ntgl;
//  #let html-NotGreaterLess-g = text(str.from-unicode(0x2279)); // HTML 5.0		ISOamsn	neither greater-than nor less-than
//  &pr;
//  &Precedes;
//  #let html-prec-g = text(str.from-unicode(0x227A)); // HTML 5.0		ISOamsr	precedes
//  &sc;
//  &Succeeds;
//  #let html-succ-g = text(str.from-unicode(0x227B)); // HTML 5.0		ISOamsr	succeeds
//  &prcue;
//  &PrecedesSlantEqual;
//  #let html-preccurlyeq-g = text(str.from-unicode(0x227C)); // HTML 5.0		ISOamsr	precedes or equal to (precedes curly equals, precedes slant equals)
//  &sccue;
//  &SucceedsSlantEqual;
//  #let html-succcurlyeq-g = text(str.from-unicode(0x227D)); // HTML 5.0		ISOamsr	succeeds or equal to (succeeds curly equals, succeeds slant equals)
//  &prsim;
//  &precsim;
//  #let html-PrecedesTilde-g = text(str.from-unicode(0x227E)); // HTML 5.0		ISOamsr	precedes or equivalent to (precedes or similar to, precedes tilde)
//  &scsim;
//  &succsim;
//  #let html-SucceedsTilde-g = text(str.from-unicode(0x227F)); // HTML 5.0		ISOamsr	succeeds or equivalent to (succeeds or similar to, succeeds tilde)
//  #let html-NotSucceedsTilde-g = text(str.from-unicode(0x0338)); // HTML 5.0			succeeds or equivalent to, combining long solidus overlay
//  &npr;
//  &nprec;
//  #let html-NotPrecedes-g = text(str.from-unicode(0x2280)); // HTML 5.0		ISOamsn	does not precede
//  &nsc;
//  &nsucc;
//  #let html-NotSucceeds-g = text(str.from-unicode(0x2281)); // HTML 5.0		ISOamsn	does not succeed
//  &sub;
//  #let html-subset-g = text(str.from-unicode(0x2282)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	subset of
//  &vnsub;
//  &NotSubset;
//  #let html-nsubset-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	subset of, combining long vertical line overlay
//  &sup;
//  &supset;
//  #let html-Superset-g = text(str.from-unicode(0x2283)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	superset of
//  &vnsup;
//  &NotSuperset;
//  #let html-nsupset-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	superset of, combining long vertical line overlay
//  #let html-nsub-g = text(str.from-unicode(0x2284)); // HTML 4.0	HTMLsymbol	ISOamsn	not a subset of
//  #let html-nsup-g = text(str.from-unicode(0x2285)); // HTML 4.0	HTMLsymbol	ISOamsn	not a superset of[ae]
//  &sube;
//  &SubsetEqual;
//  #let html-subseteq-g = text(str.from-unicode(0x2286)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	subset of or equal to
//  &supe;
//  &supseteq;
//  #let html-SupersetEqual-g = text(str.from-unicode(0x2287)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	superset of or equal to
//  &nsube;
//  &nsubseteq;
//  #let html-NotSubsetEqual-g = text(str.from-unicode(0x2288)); // HTML 5.0		ISOamsn	neither a subset of nor equal to
//  &nsupe;
//  &nsupseteq;
//  #let html-NotSupersetEqual-g = text(str.from-unicode(0x2289)); // HTML 5.0		ISOamsn	neither a superset of nor equal to
//  &subne;
//  #let html-subsetneq-g = text(str.from-unicode(0x228A)); // HTML 5.0		ISOamsn	subset of with not equal to
//  &vsubne;
//  #let html-varsubsetneq-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsn	subset of with not equal to, variation selector-1
//  &supne;
//  #let html-supsetneq-g = text(str.from-unicode(0x228B)); // HTML 5.0		ISOamsn	superset of with not equal to
//  &vsupne;
//  #let html-varsupsetneq-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsn	superset of with not equal to, variation selector-1
//  #let html-cupdot-g = text(str.from-unicode(0x228D)); // HTML 5.0		ISOamsb	multiset multiplication (cup dot)
//  &uplus;
//  #let html-UnionPlus-g = text(str.from-unicode(0x228E)); // HTML 5.0		ISOamsb	multiset union (union plus)
//  &sqsub;
//  &SquareSubset;
//  #let html-sqsubset-g = text(str.from-unicode(0x228F)); // HTML 5.0		ISOamsr	square image of (square subset)
//  #let html-NotSquareSubset-g = text(str.from-unicode(0x0338)); // HTML 5.0			square image of, combining long solidus overlay
//  &sqsup;
//  &SquareSuperset;
//  #let html-sqsupset-g = text(str.from-unicode(0x2290)); // HTML 5.0		ISOamsr	square original of (square superset)
//  #let html-NotSquareSuperset-g = text(str.from-unicode(0x0338)); // HTML 5.0			square original of, combining long solidus overlay
//  &sqsube;
//  &SquareSubsetEqual;
//  #let html-sqsubseteq-g = text(str.from-unicode(0x2291)); // HTML 5.0		ISOamsr	square image of or equal to (square subset equal)
//  &sqsupe;
//  &SquareSupersetEqual;
//  #let html-sqsupseteq-g = text(str.from-unicode(0x2292)); // HTML 5.0		ISOamsr	square original of or equal to (square superset equal)
//  &sqcap;
//  #let html-SquareIntersection-g = text(str.from-unicode(0x2293)); // HTML 5.0		ISOamsb	square cap (square intersection)
//  #let html-sqcaps-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsb	square cap, variation selector-1
//  &sqcup;
//  #let html-SquareUnion-g = text(str.from-unicode(0x2294)); // HTML 5.0		ISOamsb	square cup (square union)
//  #let html-sqcups-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsb	square cup, variation selector-1
//  &oplus;
//  #let html-CirclePlus-g = text(str.from-unicode(0x2295)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsb	circled plus (direct sum)
//  &ominus;
//  #let html-CircleMinus-g = text(str.from-unicode(0x2296)); // HTML 5.0		ISOamsb	circled minus
//  &otimes;
//  #let html-CircleTimes-g = text(str.from-unicode(0x2297)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsb	circled times (vector product)
//  #let html-osol-g = text(str.from-unicode(0x2298)); // HTML 5.0		ISOamsb	circled division slash (circled solidus)
//  &odot;
//  #let html-CircleDot-g = text(str.from-unicode(0x2299)); // HTML 5.0		ISOamsb	circled dot operator (circled dot)
//  &ocir;
//  #let html-circledcirc-g = text(str.from-unicode(0x229A)); // HTML 5.0		ISOamsb	circled ring operator (circled circle)
//  &oast;
//  #let html-circledast-g = text(str.from-unicode(0x229B)); // HTML 5.0		ISOamsb	circled asterisk operator
//  &odash;
//  #let html-circleddash-g = text(str.from-unicode(0x229D)); // HTML 5.0		ISOamsb	circled dash
//  &plusb;
//  #let html-boxplus-g = text(str.from-unicode(0x229E)); // HTML 5.0		ISOamsb	squared plus (boxed plus)
//  &minusb;
//  #let html-boxminus-g = text(str.from-unicode(0x229F)); // HTML 5.0		ISOamsb	squared minus (boxed minus)
//  &timesb;
//  #let html-boxtimes-g = text(str.from-unicode(0x22A0)); // HTML 5.0		ISOamsb	squared times (boxed times)
//  &sdotb;
//  #let html-dotsquare-g = text(str.from-unicode(0x22A1)); // HTML 5.0		ISOamsb	squared dot operator (boxed small dot)
//  &vdash;
//  #let html-RightTee-g = text(str.from-unicode(0x22A2)); // HTML 5.0		ISOamsr	right tack (proves, right tee)
//  &dashv;
//  #let html-LeftTee-g = text(str.from-unicode(0x22A3)); // HTML 5.0		ISOamsr	left tack (left tee)
//  &top;
//  #let html-DownTee-g = text(str.from-unicode(0x22A4)); // HTML 5.0		
//  ISOtech
//  ISOamsb
//  down tack (top tack, down tee)
//  &bottom;
//  &bot;
//  &perp;
//  #let html-UpTee-g = text(str.from-unicode(0x22A5)); // 
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	up tack (orthogonal to perpendicular, bottom tack, up tee)[af]
//  #let html-models-g = text(str.from-unicode(0x22A7)); // HTML 5.0		ISOamsr	models
//  &vDash;
//  #let html-DoubleRightTee-g = text(str.from-unicode(0x22A8)); // HTML 5.0		ISOamsr	true (double right tee)
//  #let html-Vdash-g = text(str.from-unicode(0x22A9)); // HTML 5.0		ISOamsr	forces
//  #let html-Vvdash-g = text(str.from-unicode(0x22AA)); // HTML 5.0		ISOamsr	triple vertical bar right turnstile
//  #let html-VDash-g = text(str.from-unicode(0x22AB)); // HTML 5.0		ISOamsr	double vertical bar double right turnstile
//  #let html-nvdash-g = text(str.from-unicode(0x22AC)); // HTML 5.0		ISOamsn	does not prove
//  #let html-nvDash-g = text(str.from-unicode(0x22AD)); // HTML 5.0		ISOamsn	not true
//  #let html-nVdash-g = text(str.from-unicode(0x22AE)); // HTML 5.0		ISOamsn	does not force
//  #let html-nVDash-g = text(str.from-unicode(0x22AF)); // HTML 5.0		ISOamsn	negated double vertical bar double right turnstile
//  #let html-prurel-g = text(str.from-unicode(0x22B0)); // HTML 5.0		ISOamsr	precedes under relation
//  &vltri;
//  &vartriangleleft;
//  #let html-LeftTriangle-g = text(str.from-unicode(0x22B2)); // HTML 5.0		ISOamsr	normal subgroup of (left triangle)
//  &vrtri;
//  &vartriangleright;
//  #let html-RightTriangle-g = text(str.from-unicode(0x22B3)); // HTML 5.0		ISOamsr	contains as normal subgroup (right triangle)
//  &ltrie;
//  &trianglelefteq;
//  #let html-LeftTriangleEqual-g = text(str.from-unicode(0x22B4)); // HTML 5.0		ISOamsr	normal subgroup of or equal to (left triangle equal)
//  #let html-nvltrie-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	normal subgroup of or equal to, combining long vertical line overlay
//  &rtrie;
//  &trianglerighteq;
//  #let html-RightTriangleEqual-g = text(str.from-unicode(0x22B5)); // HTML 5.0		ISOamsr	contains as normal subgroup or equal to (right triangle equal)
//  #let html-nvrtrie-g = text(str.from-unicode(0x20D2)); // HTML 5.0		ISOamsn	contains as normal subgroup or equal to, combining long vertical line overlay
//  #let html-origof-g = text(str.from-unicode(0x22B6)); // HTML 5.0		ISOamsa	original of
//  #let html-imof-g = text(str.from-unicode(0x22B7)); // HTML 5.0		ISOamsa	image of
//  &mumap;
//  #let html-multimap-g = text(str.from-unicode(0x22B8)); // HTML 5.0		ISOamsa	multimap
//  #let html-hercon-g = text(str.from-unicode(0x22B9)); // HTML 5.0		ISOamsb	Hermitian conjugate matrix
//  &intcal;
//  #let html-intercal-g = text(str.from-unicode(0x22BA)); // HTML 5.0		ISOamsb	intercalate
//  #let html-veebar-g = text(str.from-unicode(0x22BB)); // HTML 5.0		
//  ISOamsr
//  ISOamsb
//  xor
//  #let html-barvee-g = text(str.from-unicode(0x22BD)); // HTML 5.0			nor
//  #let html-angrtvb-g = text(str.from-unicode(0x22BE)); // HTML 5.0		ISOamso	right angle with arc
//  #let html-lrtri-g = text(str.from-unicode(0x22BF)); // HTML 5.0		ISOamso	right triangle (lower right triangle)
//  &xwedge;
//  &Wedge;
//  #let html-bigwedge-g = text(str.from-unicode(0x22C0)); // HTML 5.0		ISOamsb	n-ary logical and (x wedge, big wedge)
//  &xvee;
//  &Vee;
//  #let html-bigvee-g = text(str.from-unicode(0x22C1)); // HTML 5.0		ISOamsb	n-ary logical or (x vee, big vee)
//  &xcap;
//  &Intersection;
//  #let html-bigcap-g = text(str.from-unicode(0x22C2)); // HTML 5.0		ISOamsb	n-ary intersection (x cap, big cap)
//  &xcup;
//  &Union;
//  #let html-bigcup-g = text(str.from-unicode(0x22C3)); // HTML 5.0		ISOamsb	n-ary union (x cup, big cup)
//  &diam;
//  &diamond;
//  #let html-Diamond-g = text(str.from-unicode(0x22C4)); // HTML 5.0		ISOamsb	diamond operator
//  #let html-sdot-g = text(str.from-unicode(0x22C5)); // HTML 4.0	HTMLsymbol	ISOamsb	dot operator (small dot)[ag]
//  &sstarf;
//  #let html-Star-g = text(str.from-unicode(0x22C6)); // HTML 5.0		ISOamsb	star operator
//  &divonx;
//  #let html-divideontimes-g = text(str.from-unicode(0x22C7)); // HTML 5.0		ISOamsb	division times
//  #let html-bowtie-g = text(str.from-unicode(0x22C8)); // HTML 5.0		ISOamsr	bowtie
//  #let html-ltimes-g = text(str.from-unicode(0x22C9)); // HTML 5.0		ISOamsb	left normal factor semidirect product (left times)
//  #let html-rtimes-g = text(str.from-unicode(0x22CA)); // HTML 5.0		ISOamsb	right normal factor semidirect product (right times)
//  &lthree;
//  #let html-leftthreetimes-g = text(str.from-unicode(0x22CB)); // HTML 5.0		ISOamsb	left semidirect product (left three times)
//  &rthree;
//  #let html-rightthreetimes-g = text(str.from-unicode(0x22CC)); // HTML 5.0		ISOamsb	right semidirect product (right three times)
//  &bsime;
//  #let html-backsimeq-g = text(str.from-unicode(0x22CD)); // HTML 5.0		ISOamsr	reversed tilde equals (back similar or equal to)
//  &cuvee;
//  #let html-curlyvee-g = text(str.from-unicode(0x22CE)); // HTML 5.0		ISOamsb	curly logical or (curly vee)
//  &cuwed;
//  #let html-curlywedge-g = text(str.from-unicode(0x22CF)); // HTML 5.0		ISOamsb	curly logical and (curly wedge)
//  &Sub;
//  #let html-Subset-g = text(str.from-unicode(0x22D0)); // HTML 5.0		ISOamsr	double subset
//  &Sup;
//  #let html-Supset-g = text(str.from-unicode(0x22D1)); // HTML 5.0		ISOamsr	double superset
//  #let html-Cap-g = text(str.from-unicode(0x22D2)); // HTML 5.0		ISOamsb	double intersection (double cap)
//  #let html-Cup-g = text(str.from-unicode(0x22D3)); // HTML 5.0		ISOamsb	double union (double cup)
//  &fork;
//  #let html-pitchfork-g = text(str.from-unicode(0x22D4)); // HTML 5.0		ISOamsr	pitchfork (Transversality theorem)
//  #let html-epar-g = text(str.from-unicode(0x22D5)); // HTML 5.0		ISOtech	equal and parallel to
//  &ltdot;
//  #let html-lessdot-g = text(str.from-unicode(0x22D6)); // HTML 5.0		ISOamsr	less-than with dot
//  &gtdot;
//  #let html-gtrdot-g = text(str.from-unicode(0x22D7)); // HTML 5.0		ISOamsr	greater-than with dot
//  #let html-Ll-g = text(str.from-unicode(0x22D8)); // HTML 5.0		ISOamsr	very much less-than[ah]
//  #let html-nLl-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	very much less-than, combining long solidus overlay
//  &Gg;
//  #let html-ggg-g = text(str.from-unicode(0x22D9)); // HTML 5.0		ISOamsr	very much greater-than
//  #let html-nGg-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	very much greater-than, combining long solidus overlay
//  &leg;
//  &LessEqualGreater;
//  #let html-lesseqgtr-g = text(str.from-unicode(0x22DA)); // HTML 5.0		ISOamsr	less-than equal to or greater-than
//  #let html-lesg-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsr	less-than equal to or greater-than, variation selector-1
//  &gel;
//  &gtreqless;
//  #let html-GreaterEqualLess-g = text(str.from-unicode(0x22DB)); // HTML 5.0		ISOamsr	greater-than equal to or less-than
//  #let html-gesl-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsr	greater-than equal to or less-than, variation selector-1
//  &cuepr;
//  #let html-curlyeqprec-g = text(str.from-unicode(0x22DE)); // HTML 5.0		ISOamsr	equal to or precedes (curly equal to or precedes)
//  &cuesc;
//  #let html-curlyeqsucc-g = text(str.from-unicode(0x22DF)); // HTML 5.0		ISOamsr	equal to or succeeds (curly equal to or succeeds)
//  &nprcue;
//  #let html-NotPrecedesSlantEqual-g = text(str.from-unicode(0x22E0)); // HTML 5.0		ISOamsn	does not precede or equal (not precedes curly equal, not precedes slant equal)
//  &nsccue;
//  #let html-NotSucceedsSlantEqual-g = text(str.from-unicode(0x22E1)); // HTML 5.0		ISOamsn	does not succeed or equal (not succeeds curly equal, not succeeds slant equal)
//  &nsqsube;
//  #let html-NotSquareSubsetEqual-g = text(str.from-unicode(0x22E2)); // HTML 5.0		ISOamsn	not square image of or equal to (not square subset equal)
//  &nsqsupe;
//  #let html-NotSquareSupersetEqual-g = text(str.from-unicode(0x22E3)); // HTML 5.0		ISOamsn	not square original of or equal to (not square superset equal)
//  #let html-lnsim-g = text(str.from-unicode(0x22E6)); // HTML 5.0		ISOamsn	less-than but not equivalent to (less-than but not similar to)
//  #let html-gnsim-g = text(str.from-unicode(0x22E7)); // HTML 5.0		ISOamsn	greater-than but not equivalent to (greater-than but not similar to)
//  &prnsim;
//  #let html-precnsim-g = text(str.from-unicode(0x22E8)); // HTML 5.0		ISOamsn	precedes but not equivalent to (precedes but not similar to)
//  &scnsim;
//  #let html-succnsim-g = text(str.from-unicode(0x22E9)); // HTML 5.0		ISOamsn	succeeds but not equivalent to (succeeds but not similar to)
//  &nltri;
//  &ntriangleleft;
//  #let html-NotLeftTriangle-g = text(str.from-unicode(0x22EA)); // HTML 5.0		ISOamsn	not normal subgroup of (not left triangle)
//  &nrtri;
//  &ntriangleright;
//  #let html-NotRightTriangle-g = text(str.from-unicode(0x22EB)); // HTML 5.0		ISOamsn	does not contain as normal subgroup (not right triangle)
//  &nltrie;
//  &ntrianglelefteq;
//  #let html-NotLeftTriangleEqual-g = text(str.from-unicode(0x22EC)); // HTML 5.0		ISOamsn	not normal subgroup of or equal to (not left triangle equal)
//  &nrtrie;
//  &ntrianglerighteq;
//  #let html-NotRightTriangleEqual-g = text(str.from-unicode(0x22ED)); // HTML 5.0		ISOamsn	does not contain as normal subgroup or equal (not right triangle equal)
//  #let html-vellip-g = text(str.from-unicode(0x22EE)); // HTML 5.0		ISOpub	vertical ellipsis
//  #let html-ctdot-g = text(str.from-unicode(0x22EF)); // HTML 5.0		ISOtech	midline horizontal ellipsis (centered triple dot)
//  #let html-utdot-g = text(str.from-unicode(0x22F0)); // HTML 5.0		ISOtech	up right diagonal ellipsis (upward triple dot)
//  #let html-dtdot-g = text(str.from-unicode(0x22F1)); // HTML 5.0		ISOtech	down right diagonal ellipsis (downward triple dot)
//  #let html-disin-g = text(str.from-unicode(0x22F2)); // HTML 5.0		ISOtech	element of with long horizontal stroke
//  #let html-isinsv-g = text(str.from-unicode(0x22F3)); // HTML 5.0		ISOtech	element of with vertical bar at end of horizontal stroke
//  #let html-isins-g = text(str.from-unicode(0x22F4)); // HTML 5.0		ISOtech	small element of with vertical bar at end of horizontal stroke
//  #let html-isindot-g = text(str.from-unicode(0x22F5)); // HTML 5.0		ISOtech	element of with dot above
//  #let html-notindot-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOtech	element of with dot above, combining long solidus overlay
//  #let html-notinvc-g = text(str.from-unicode(0x22F6)); // HTML 5.0		ISOtech	element of with overbar
//  #let html-notinvb-g = text(str.from-unicode(0x22F7)); // HTML 5.0		ISOtech	small element of with overbar
//  #let html-isinE-g = text(str.from-unicode(0x22F9)); // HTML 5.0		ISOtech	element of with two horizontal strokes
//  #let html-notinE-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOtech	element of with two horizontal strokes, combining long solidus overlay
//  #let html-nisd-g = text(str.from-unicode(0x22FA)); // HTML 5.0		ISOtech	contains with long horizontal stroke
//  #let html-xnis-g = text(str.from-unicode(0x22FB)); // HTML 5.0		ISOtech	contains with vertical bar at end of horizontal stroke
//  #let html-nis-g = text(str.from-unicode(0x22FC)); // HTML 5.0		ISOtech	small contains with vertical bar at end of horizontal stroke
//  #let html-notnivc-g = text(str.from-unicode(0x22FD)); // HTML 5.0		ISOtech	contains with overbar
//  #let html-notnivb-g = text(str.from-unicode(0x22FE)); // HTML 5.0		ISOtech	small contains with overbar
//  &barwed;
//  #let html-barwedge-g = text(str.from-unicode(0x2305)); // HTML 5.0		ISOamsb	projective
//  &Barwed;
//  #let html-doublebarwedge-g = text(str.from-unicode(0x2306)); // HTML 5.0		ISOamsb	perspective
//  &lceil;
//  #let html-LeftCeiling-g = text(str.from-unicode(0x2308)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsc	left ceiling (APL upstile)
//  &rceil;
//  #let html-RightCeiling-g = text(str.from-unicode(0x2309)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsc	right ceiling
//  &lfloor;
//  #let html-LeftFloor-g = text(str.from-unicode(0x230A)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsc	left floor (APL downstile)
//  &rfloor;
//  #let html-RightFloor-g = text(str.from-unicode(0x230B)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOamsc	right floor
//  #let html-drcrop-g = text(str.from-unicode(0x230C)); // HTML 5.0		ISOpub	bottom right crop (down right crop)
//  #let html-dlcrop-g = text(str.from-unicode(0x230D)); // HTML 5.0		ISOpub	bottom left crop (down left crop)
//  #let html-urcrop-g = text(str.from-unicode(0x230E)); // HTML 5.0		ISOpub	top right crop (up right crop)
//  #let html-ulcrop-g = text(str.from-unicode(0x230F)); // HTML 5.0		ISOpub	top left crop (up left crop)
//  #let html-bnot-g = text(str.from-unicode(0x2310)); // HTML 5.0		ISOtech	reversed not sign (backwards not sign)
//  #let html-profline-g = text(str.from-unicode(0x2312)); // HTML 5.0		ISOtech	arc
//  #let html-profsurf-g = text(str.from-unicode(0x2313)); // HTML 5.0		ISOtech	segment
//  #let html-telrec-g = text(str.from-unicode(0x2315)); // HTML 5.0		ISOpub	telephone recorder
//  #let html-target-g = text(str.from-unicode(0x2316)); // HTML 5.0		ISOpub	position indicator (target)
//  &ulcorn;
//  #let html-ulcorner-g = text(str.from-unicode(0x231C)); // HTML 5.0		ISOamsc	top left corner (up left corner)
//  &urcorn;
//  #let html-urcorner-g = text(str.from-unicode(0x231D)); // HTML 5.0		ISOamsc	top right corner (up right corner)
//  &dlcorn;
//  #let html-llcorner-g = text(str.from-unicode(0x231E)); // HTML 5.0		ISOamsc	bottom left corner (down left corner)
//  &drcorn;
//  #let html-lrcorner-g = text(str.from-unicode(0x231F)); // HTML 5.0		ISOamsc	bottom right corner (down right corner)
//  &frown;
//  #let html-sfrown-g = text(str.from-unicode(0x2322)); // HTML 5.0		ISOamsr	frown
//  &smile;
//  #let html-ssmile-g = text(str.from-unicode(0x2323)); // HTML 5.0		ISOamsr	smile
//  #let html-cylcty-g = text(str.from-unicode(0x232D)); // HTML 5.0		ISOtech	cylindricity
//  #let html-profalar-g = text(str.from-unicode(0x232E)); // HTML 5.0		ISOtech	all around-profile
//  #let html-topbot-g = text(str.from-unicode(0x2336)); // HTML 5.0		ISOtech	APL functional symbol I-beam (top bottom)
//  #let html-ovbar-g = text(str.from-unicode(0x233D)); // HTML 5.0		ISOamsb	APL functional symbol circle stile (circle vertical bar)
//  #let html-solbar-g = text(str.from-unicode(0x233F)); // HTML 5.0		ISOamsn	APL functional symbol slash bar (solidus bar)
//  #let html-angzarr-g = text(str.from-unicode(0x237C)); // HTML 5.0		ISOamsa	right angle with downwards zigzag arrow (azimuth, angzarr)
//  &lmoust;
//  #let html-lmoustache-g = text(str.from-unicode(0x23B0)); // HTML 5.0		ISOamsc	upper left or lower right curly bracket section (left moustache)
//  &rmoust;
//  #let html-rmoustache-g = text(str.from-unicode(0x23B1)); // HTML 5.0		ISOamsc	upper right or lower left curly bracket section (right moustache)
//  &tbrk;
//  #let html-OverBracket-g = text(str.from-unicode(0x23B4)); // HTML 5.0		ISOamso	top square bracket (over bracket)
//  &bbrk;
//  #let html-UnderBracket-g = text(str.from-unicode(0x23B5)); // HTML 5.0		ISOamso	bottom square bracket (under bracket)
//  #let html-bbrktbrk-g = text(str.from-unicode(0x23B6)); // HTML 5.0		ISOamso	bottom square bracket over top square bracket
//  #let html-OverParenthesis-g = text(str.from-unicode(0x23DC)); // HTML 5.0			top parenthesis (over parenthesis)
//  #let html-UnderParenthesis-g = text(str.from-unicode(0x23DD)); // HTML 5.0			bottom parenthesis (under parenthesis)
//  #let html-OverBrace-g = text(str.from-unicode(0x23DE)); // HTML 5.0			top curly bracket (over brace)
//  #let html-UnderBrace-g = text(str.from-unicode(0x23DF)); // HTML 5.0			bottom curly bracket (under brace)
//  #let html-trpezium-g = text(str.from-unicode(0x23E2)); // HTML 5.0		ISOamso	white trapezium
//  #let html-elinters-g = text(str.from-unicode(0x23E7)); // HTML 5.0		ISOtech	electrical intersection
//  #let html-blank-g = text(str.from-unicode(0x2423)); // HTML 5.0		ISOpub	open box (blank)
//  &oS;
//  #let html-circledS-g = text(str.from-unicode(0x24C8)); // HTML 5.0		ISOamso	circled Latin capital letter S
//  &boxh;
//  #let html-HorizontalLine-g = text(str.from-unicode(0x2500)); // HTML 5.0		ISObox	box drawings light horizontal (horizontal line)
//  #let html-boxv-g = text(str.from-unicode(0x2502)); // HTML 5.0		ISObox	box drawings light vertical
//  #let html-boxdr-g = text(str.from-unicode(0x250C)); // HTML 5.0		ISObox	box drawings light down and right
//  #let html-boxdl-g = text(str.from-unicode(0x2510)); // HTML 5.0		ISObox	box drawings light down and left
//  #let html-boxur-g = text(str.from-unicode(0x2514)); // HTML 5.0		ISObox	box drawings light up and right
//  #let html-boxul-g = text(str.from-unicode(0x2518)); // HTML 5.0		ISObox	box drawings light up and left
//  #let html-boxvr-g = text(str.from-unicode(0x251C)); // HTML 5.0		ISObox	box drawings light vertical and right
//  #let html-boxvl-g = text(str.from-unicode(0x2524)); // HTML 5.0		ISObox	box drawings light vertical and left
//  #let html-boxhd-g = text(str.from-unicode(0x252C)); // HTML 5.0		ISObox	box drawings light down and horizontal (horizontal and down)
//  #let html-boxhu-g = text(str.from-unicode(0x2534)); // HTML 5.0		ISObox	box drawings light up and horizontal (horizontal and up)
//  #let html-boxvh-g = text(str.from-unicode(0x253C)); // HTML 5.0		ISObox	box drawings light vertical and horizontal
//  #let html-boxH-g = text(str.from-unicode(0x2550)); // HTML 5.0		ISObox	box drawings double horizontal
//  #let html-boxV-g = text(str.from-unicode(0x2551)); // HTML 5.0		ISObox	box drawings double vertical
//  #let html-boxdR-g = text(str.from-unicode(0x2552)); // HTML 5.0		ISObox	box drawings down single and right double
//  #let html-boxDr-g = text(str.from-unicode(0x2553)); // HTML 5.0		ISObox	box drawings down double and right single
//  #let html-boxDR-g = text(str.from-unicode(0x2554)); // HTML 5.0		ISObox	box drawings double down and right
//  #let html-boxdL-g = text(str.from-unicode(0x2555)); // HTML 5.0		ISObox	box drawings down single and left double
//  #let html-boxDl-g = text(str.from-unicode(0x2556)); // HTML 5.0		ISObox	box drawings down double and left single
//  #let html-boxDL-g = text(str.from-unicode(0x2557)); // HTML 5.0		ISObox	box drawings double down and left
//  #let html-boxuR-g = text(str.from-unicode(0x2558)); // HTML 5.0		ISObox	box drawings up single and right double
//  #let html-boxUr-g = text(str.from-unicode(0x2559)); // HTML 5.0		ISObox	box drawings up double and right single
//  #let html-boxUR-g = text(str.from-unicode(0x255A)); // HTML 5.0		ISObox	box drawings double up and right
//  #let html-boxuL-g = text(str.from-unicode(0x255B)); // HTML 5.0		ISObox	box drawings up single and left double
//  #let html-boxUl-g = text(str.from-unicode(0x255C)); // HTML 5.0		ISObox	box drawings up double and left single
//  #let html-boxUL-g = text(str.from-unicode(0x255D)); // HTML 5.0		ISObox	box drawings double up and left
//  #let html-boxvR-g = text(str.from-unicode(0x255E)); // HTML 5.0		ISObox	box drawings vertical single and right double
//  #let html-boxVr-g = text(str.from-unicode(0x255F)); // HTML 5.0		ISObox	box drawings vertical double and right single
//  #let html-boxVR-g = text(str.from-unicode(0x2560)); // HTML 5.0		ISObox	box drawings double vertical and right
//  #let html-boxvL-g = text(str.from-unicode(0x2561)); // HTML 5.0		ISObox	box drawings vertical single and left double
//  #let html-boxVl-g = text(str.from-unicode(0x2562)); // HTML 5.0		ISObox	box drawings vertical double and left single
//  #let html-boxVL-g = text(str.from-unicode(0x2563)); // HTML 5.0		ISObox	box drawings double vertical and left
//  #let html-boxHd-g = text(str.from-unicode(0x2564)); // HTML 5.0		ISObox	box drawings down single and horizontal double (horizontal double and down single)
//  #let html-boxhD-g = text(str.from-unicode(0x2565)); // HTML 5.0		ISObox	box drawings down double and horizontal single (horizontal single and down double)
//  #let html-boxHD-g = text(str.from-unicode(0x2566)); // HTML 5.0		ISObox	box drawings double down and horizontal (horizontal and down)
//  #let html-boxHu-g = text(str.from-unicode(0x2567)); // HTML 5.0		ISObox	box drawings up single and horizontal double (horizontal double and up single)
//  #let html-boxhU-g = text(str.from-unicode(0x2568)); // HTML 5.0		ISObox	box drawings up double and horizontal single (horizontal single and up double)
//  #let html-boxHU-g = text(str.from-unicode(0x2569)); // HTML 5.0		ISObox	box drawings double up and horizontal (horizontal and up)
//  #let html-boxvH-g = text(str.from-unicode(0x256A)); // HTML 5.0		ISObox	box drawings vertical single and horizontal double
//  #let html-boxVh-g = text(str.from-unicode(0x256B)); // HTML 5.0		ISObox	box drawings vertical double and horizontal single
//  #let html-boxVH-g = text(str.from-unicode(0x256C)); // HTML 5.0		ISObox	box drawings double vertical and horizontal
//  #let html-uhblk-g = text(str.from-unicode(0x2580)); // HTML 5.0		ISOpub	upper half block
//  #let html-lhblk-g = text(str.from-unicode(0x2584)); // HTML 5.0		ISOpub	lower half block
//  #let html-block-g = text(str.from-unicode(0x2588)); // HTML 5.0		ISOpub	full block
//  #let html-blk14-g = text(str.from-unicode(0x2591)); // HTML 5.0		ISOpub	light shade (1/4 block)
//  #let html-blk12-g = text(str.from-unicode(0x2592)); // HTML 5.0		ISOpub	medium shade (1/2 block)
//  #let html-blk34-g = text(str.from-unicode(0x2593)); // HTML 5.0		ISOpub	dark shade (3/4 block)
//  &squ;
//  &square;
//  #let html-Square-g = text(str.from-unicode(0x25A1)); // HTML 5.0		ISOpub	white square
//  &squf;
//  &squarf;
//  &blacksquare;
//  #let html-FilledVerySmallSquare-g = text(str.from-unicode(0x25AA)); // HTML 5.0		ISOpub	black small square (filled very small square)
//  #let html-EmptyVerySmallSquare-g = text(str.from-unicode(0x25AB)); // HTML 5.0			white small square (empty very small square)
//  #let html-rect-g = text(str.from-unicode(0x25AD)); // HTML 5.0		ISOpub	white rectangle
//  #let html-marker-g = text(str.from-unicode(0x25AE)); // HTML 5.0		ISOpub	black vertical rectangle (marker)
//  #let html-fltns-g = text(str.from-unicode(0x25B1)); // HTML 5.0		ISOtech	white parallelogram
//  &xutri;
//  #let html-bigtriangleup-g = text(str.from-unicode(0x25B3)); // HTML 5.0		ISOamsb	white up-pointing triangle (big up-pointing triangle)
//  &utrif;
//  #let html-blacktriangle-g = text(str.from-unicode(0x25B4)); // HTML 5.0		ISOpub	black up-pointing small triangle (black triangle, up-pointing triangle filled)
//  &utri;
//  #let html-triangle-g = text(str.from-unicode(0x25B5)); // HTML 5.0		ISOpub	white up-pointing small triangle (up-pointing triangle)
//  &rtrif;
//  #let html-blacktriangleright-g = text(str.from-unicode(0x25B8)); // HTML 5.0		ISOpub	black right-pointing small triangle (black right-pointing triangle, right-pointing triangle filled)
//  &rtri;
//  #let html-triangleright-g = text(str.from-unicode(0x25B9)); // HTML 5.0		ISOpub	white right-pointing small triangle (right-pointing triangle)
//  &xdtri;
//  #let html-bigtriangledown-g = text(str.from-unicode(0x25BD)); // HTML 5.0		ISOamsb	white down-pointing triangle (big down-pointing triangle)
//  &dtrif;
//  #let html-blacktriangledown-g = text(str.from-unicode(0x25BE)); // HTML 5.0		ISOpub	black down-pointing small triangle (black down-pointing triangle, down-pointing triangle filled)
//  &dtri;
//  #let html-triangledown-g = text(str.from-unicode(0x25BF)); // HTML 5.0		ISOpub	white down-pointing small triangle (down-pointing triangle)
//  &ltrif;
//  #let html-blacktriangleleft-g = text(str.from-unicode(0x25C2)); // HTML 5.0		ISOpub	black left-pointing small triangle (black left-pointing triangle, left-pointing triangle filled)
//  &ltri;
//  #let html-triangleleft-g = text(str.from-unicode(0x25C3)); // HTML 5.0		ISOpub	white left-pointing small triangle (left-pointing triangle)
//  &loz;
//  #let html-lozenge-g = text(str.from-unicode(0x25CA)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOpub	lozenge
//  #let html-cir-g = text(str.from-unicode(0x25CB)); // HTML 5.0		ISOpub	white circle (circle)
//  #let html-tridot-g = text(str.from-unicode(0x25EC)); // HTML 5.0		ISOamsb	white up-pointing triangle with dot (triangle dot)
//  &xcirc;
//  #let html-bigcirc-g = text(str.from-unicode(0x25EF)); // HTML 5.0		ISOamsb	large circle (big circle)
//  #let html-ultri-g = text(str.from-unicode(0x25F8)); // HTML 5.0		ISOamso	upper left triangle
//  #let html-urtri-g = text(str.from-unicode(0x25F9)); // HTML 5.0		ISOamso	upper right triangle
//  #let html-lltri-g = text(str.from-unicode(0x25FA)); // HTML 5.0		ISOamso	lower left triangle
//  #let html-EmptySmallSquare-g = text(str.from-unicode(0x25FB)); // HTML 5.0			white medium square (empty small square)
//  #let html-FilledSmallSquare-g = text(str.from-unicode(0x25FC)); // HTML 5.0			black medium square (filled small square)
//  &starf;
//  #let html-bigstar-g = text(str.from-unicode(0x2605)); // HTML 5.0		ISOpub	black star (filled star, big star)
//  #let html-star-g = text(str.from-unicode(0x2606)); // HTML 5.0		ISOpub	white star (star)
//  #let html-phone-g = text(str.from-unicode(0x260E)); // HTML 5.0		ISOpub	black telephone (phone)
//  #let html-female-g = text(str.from-unicode(0x2640)); // HTML 5.0		ISOpub	female sign
//  #let html-male-g = text(str.from-unicode(0x2642)); // HTML 5.0		ISOpub	male sign
//  &spades;
//  #let html-spadesuit-g = text(str.from-unicode(0x2660)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOpub	black spade suit[r]
//  &clubs;
//  #let html-clubsuit-g = text(str.from-unicode(0x2663)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOpub	black club suit (shamrock)[r]
//  &hearts;
//  #let html-heartsuit-g = text(str.from-unicode(0x2665)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOpub	black heart suit (valentine)[r]
//  &diams;
//  #let html-diamondsuit-g = text(str.from-unicode(0x2666)); // 
//  HTML 4.0
//  HTML 5.0
//  HTMLsymbol	ISOpub	black diamond suit[r]
//  #let html-sung-g = text(str.from-unicode(0x266A)); // HTML 5.0		ISOnum	eighth note (sung)
//  #let html-flat-g = text(str.from-unicode(0x266D)); // HTML 5.0		ISOpub	music flat sign
//  &natur;
//  #let html-natural-g = text(str.from-unicode(0x266E)); // HTML 5.0		ISOpub	music natural sign
//  #let html-sharp-g = text(str.from-unicode(0x266F)); // HTML 5.0		ISOpub	music sharp sign
//  &check;
//  #let html-checkmark-g = text(str.from-unicode(0x2713)); // HTML 5.0		ISOpub	check mark
//  #let html-cross-g = text(str.from-unicode(0x2717)); // HTML 5.0		ISOpub	ballot x (cross)
//  &malt;
//  #let html-maltese-g = text(str.from-unicode(0x2720)); // HTML 5.0		ISOpub	Maltese cross
//  #let html-sext-g = text(str.from-unicode(0x2736)); // HTML 5.0		ISOpub	six pointed black star (sextile)
//  #let html-VerticalSeparator-g = text(str.from-unicode(0x2758)); // HTML 5.0			light vertical bar (vertical separator)
//  #let html-lbbrk-g = text(str.from-unicode(0x2772)); // HTML 5.0		ISOtech	light left tortoise shell bracket ornament
//  #let html-rbbrk-g = text(str.from-unicode(0x2773)); // HTML 5.0		ISOtech	light right tortoise shell bracket ornament
//  #let html-bsolhsub-g = text(str.from-unicode(0x27C8)); // HTML 5.0		ISOamsr	reverse solidus preceding subset
//  #let html-suphsol-g = text(str.from-unicode(0x27C9)); // HTML 5.0		ISOamsr	superset preceding solidus
//  &lobrk;
//  #let html-LeftDoubleBracket-g = text(str.from-unicode(0x27E6)); // HTML 5.0		ISOtech	mathematical left white square bracket
//  &robrk;
//  #let html-RightDoubleBracket-g = text(str.from-unicode(0x27E7)); // HTML 5.0		ISOtech	mathematical right white square bracket
//  &lang;
//  &LeftAngleBracket;
//  &langle;	⟨	
//  U+27E8;
//  previously U+2329
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	mathematical left angle bracket (bra)[ai]
//  &rang;
//  &RightAngleBracket;
//  &rangle;	⟩	
//  U+27E9;
//  previously U+232A
//  HTML 4.0
//  HTML 5.0
//  HTML 5.0
//  HTMLsymbol	ISOtech	mathematical right angle bracket (ket)[aj]
//  #let html-Lang-g = text(str.from-unicode(0x27EA)); // HTML 5.0		ISOtech	mathematical left double angle bracket
//  #let html-Rang-g = text(str.from-unicode(0x27EB)); // HTML 5.0		ISOtech	mathematical right double angle bracket
//  #let html-loang-g = text(str.from-unicode(0x27EC)); // HTML 5.0		ISOtech	mathematical left white tortoise shell bracket
//  #let html-roang-g = text(str.from-unicode(0x27ED)); // HTML 5.0		ISOtech	mathematical right white tortoise shell bracket
//  &xlarr;
//  &longleftarrow;
//  #let html-LongLeftArrow-g = text(str.from-unicode(0x27F5)); // HTML 5.0		ISOamsa	long leftwards arrow
//  &xrarr;
//  &longrightarrow;
//  #let html-LongRightArrow-g = text(str.from-unicode(0x27F6)); // HTML 5.0		ISOamsa	long rightwards arrow
//  &xharr;
//  &longleftrightarrow;
//  #let html-LongLeftRightArrow-g = text(str.from-unicode(0x27F7)); // HTML 5.0		ISOamsa	long left right arrow (long horizontal arrow)
//  &xlArr;
//  &Longleftarrow;
//  #let html-DoubleLongLeftArrow-g = text(str.from-unicode(0x27F8)); // HTML 5.0		ISOamsa	long leftwards double arrow
//  &xrArr;
//  &Longrightarrow;
//  #let html-DoubleLongRightArrow-g = text(str.from-unicode(0x27F9)); // HTML 5.0		ISOamsa	long rightwards double arrow
//  &xhArr;
//  &Longleftrightarrow;
//  #let html-DoubleLongLeftRightArrow-g = text(str.from-unicode(0x27FA)); // HTML 5.0		ISOamsa	long left right double arrow (long horizontal double arrow)
//  &xmap;
//  #let html-longmapsto-g = text(str.from-unicode(0x27FC)); // HTML 5.0		ISOamsa	long rightwards arrow from bar (long maps to)
//  #let html-dzigrarr-g = text(str.from-unicode(0x27FF)); // HTML 5.0		ISOamsa	long rightwards squiggle arrow (long rightwards zigzag arrow)
//  #let html-nvlArr-g = text(str.from-unicode(0x2902)); // HTML 5.0		ISOamsa	leftwards double arrow with vertical stroke
//  #let html-nvrArr-g = text(str.from-unicode(0x2903)); // HTML 5.0		ISOamsa	rightwards double arrow with vertical stroke
//  #let html-nvHarr-g = text(str.from-unicode(0x2904)); // HTML 5.0		ISOamsa	left right double arrow with vertical stroke
//  #let html-Map-g = text(str.from-unicode(0x2905)); // HTML 5.0		ISOamsa	rightwards two-headed arrow from bar (double maps to)
//  #let html-lbarr-g = text(str.from-unicode(0x290C)); // HTML 5.0		ISOamsa	leftwards double dash arrow
//  &rbarr;
//  #let html-bkarow-g = text(str.from-unicode(0x290D)); // HTML 5.0		ISOamsa	rightwards double dash arrow
//  #let html-lBarr-g = text(str.from-unicode(0x290E)); // HTML 5.0		ISOamsa	leftwards triple dash arrow
//  &rBarr;
//  #let html-dbkarow-g = text(str.from-unicode(0x290F)); // HTML 5.0		ISOamsa	rightwards triple dash arrow
//  &RBarr;
//  #let html-drbkarow-g = text(str.from-unicode(0x2910)); // HTML 5.0		ISOamsa	rightwards two-headed triple dash arrow
//  #let html-DDotrahd-g = text(str.from-unicode(0x2911)); // HTML 5.0		ISOamsa	rightwards arrow with dotted stem
//  #let html-UpArrowBar-g = text(str.from-unicode(0x2912)); // HTML 5.0			upwards arrow to bar
//  #let html-DownArrowBar-g = text(str.from-unicode(0x2913)); // HTML 5.0			downwards arrow to bar
//  #let html-Rarrtl-g = text(str.from-unicode(0x2916)); // HTML 5.0		ISOamsa	rightwards two-headed arrow with tail
//  #let html-latail-g = text(str.from-unicode(0x2919)); // HTML 5.0		ISOamsa	leftwards arrow-tail
//  #let html-ratail-g = text(str.from-unicode(0x291A)); // HTML 5.0		ISOamsa	rightwards arrow-tail
//  #let html-lAtail-g = text(str.from-unicode(0x291B)); // HTML 5.0		ISOamsa	leftwards double arrow-tail
//  #let html-rAtail-g = text(str.from-unicode(0x291C)); // HTML 5.0		ISOamsa	rightwards double arrow-tail
//  #let html-larrfs-g = text(str.from-unicode(0x291D)); // HTML 5.0		ISOamsa	leftwards arrow to black diamond
//  #let html-rarrfs-g = text(str.from-unicode(0x291E)); // HTML 5.0		ISOamsa	rightwards arrow to black diamond
//  #let html-larrbfs-g = text(str.from-unicode(0x291F)); // HTML 5.0		ISOamsa	leftwards arrow from bar to black diamond
//  #let html-rarrbfs-g = text(str.from-unicode(0x2920)); // HTML 5.0		ISOamsa	rightwards arrow from bar to black diamond
//  #let html-nwarhk-g = text(str.from-unicode(0x2923)); // HTML 5.0		ISOamsa	north west arrow with hook
//  #let html-nearhk-g = text(str.from-unicode(0x2924)); // HTML 5.0		ISOamsa	north east arrow with hook
//  &searhk;
//  #let html-hksearow-g = text(str.from-unicode(0x2925)); // HTML 5.0		ISOamsa	south east arrow with hook
//  &swarhk;
//  #let html-hkswarow-g = text(str.from-unicode(0x2926)); // HTML 5.0		ISOamsa	south west arrow with hook
//  #let html-nwnear-g = text(str.from-unicode(0x2927)); // HTML 5.0		ISOamsa	north west arrow and north east arrow
//  &nesear;
//  #let html-toea-g = text(str.from-unicode(0x2928)); // HTML 5.0		ISOamsa	north east arrow and south east arrow (to east arrow)
//  &seswar;
//  #let html-tosa-g = text(str.from-unicode(0x2929)); // HTML 5.0		ISOamsa	south east arrow and south west arrow (to south arrow)
//  #let html-swnwar-g = text(str.from-unicode(0x292A)); // HTML 5.0		ISOamsa	south west arrow and north west arrow
//  #let html-rarrc-g = text(str.from-unicode(0x2933)); // HTML 5.0		ISOamsa	wave arrow pointing directly right (right arrow curved)
//  #let html-nrarrc-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsa	wave arrow pointing directly right, combining long solidus overlay
//  #let html-cudarrr-g = text(str.from-unicode(0x2935)); // HTML 5.0		ISOamsa	arrow pointing rightwards then curving downwards (curved down arrow right)
//  #let html-ldca-g = text(str.from-unicode(0x2936)); // HTML 5.0		ISOamsa	arrow pointing downwards then curving leftwards (left down curved arrow)
//  #let html-rdca-g = text(str.from-unicode(0x2937)); // HTML 5.0		ISOamsa	arrow pointing downwards then curving rightwards (right down curved arrow)
//  #let html-cudarrl-g = text(str.from-unicode(0x2938)); // HTML 5.0		ISOamsa	right-side arc clockwise arrow (curved down arrow left)
//  #let html-larrpl-g = text(str.from-unicode(0x2939)); // HTML 5.0		ISOamsa	left-side arc anticlockwise arrow
//  #let html-curarrm-g = text(str.from-unicode(0x293C)); // HTML 5.0		ISOamsa	top arc clockwise arrow with minus (curved right arrow with minus)
//  #let html-cularrp-g = text(str.from-unicode(0x293D)); // HTML 5.0		ISOamsa	top arc anticlockwise arrow with plus (curved left arrow with plus)
//  #let html-rarrpl-g = text(str.from-unicode(0x2945)); // HTML 5.0		ISOamsa	rightwards arrow with plus below
//  #let html-harrcir-g = text(str.from-unicode(0x2948)); // HTML 5.0		ISOamsa	left right arrow through small circle
//  #let html-Uarrocir-g = text(str.from-unicode(0x2949)); // HTML 5.0		ISOamsa	upwards two-headed arrow from small circle
//  #let html-lurdshar-g = text(str.from-unicode(0x294A)); // HTML 5.0		ISOamsa	left barb up right barb down harpoon (left up right down short arrow)
//  #let html-ldrushar-g = text(str.from-unicode(0x294B)); // HTML 5.0		ISOamsa	left barb down right barb up harpoon (left down right up short arrow)
//  #let html-LeftRightVector-g = text(str.from-unicode(0x294E)); // HTML 5.0			left barb up right barb up harpoon (left right vector)
//  #let html-RightUpDownVector-g = text(str.from-unicode(0x294F)); // HTML 5.0			up barb right down barb right harpoon (right up down vector)
//  #let html-DownLeftRightVector-g = text(str.from-unicode(0x2950)); // HTML 5.0			left barb down right barb down harpoon (down left right vector)
//  #let html-LeftUpDownVector-g = text(str.from-unicode(0x2951)); // HTML 5.0			up barb left down barb left harpoon (left up down vector)
//  #let html-LeftVectorBar-g = text(str.from-unicode(0x2952)); // HTML 5.0			leftwards harpoon with barb up to bar (left vector bar)
//  #let html-RightVectorBar-g = text(str.from-unicode(0x2953)); // HTML 5.0			rightwards harpoon with barb up to bar (right vector bar)
//  #let html-RightUpVectorBar-g = text(str.from-unicode(0x2954)); // HTML 5.0			upwards harpoon with barb right to bar (right up vector bar)
//  #let html-RightDownVectorBar-g = text(str.from-unicode(0x2955)); // HTML 5.0			downwards harpoon with barb right to bar (right down vector bar)
//  #let html-DownLeftVectorBar-g = text(str.from-unicode(0x2956)); // HTML 5.0			leftwards harpoon with barb down to bar (down left vector bar)
//  #let html-DownRightVectorBar-g = text(str.from-unicode(0x2957)); // HTML 5.0			rightwards harpoon with barb down to bar (down right vector bar)
//  #let html-LeftUpVectorBar-g = text(str.from-unicode(0x2958)); // HTML 5.0			upwards harpoon with barb left to bar (left up vector bar)
//  #let html-LeftDownVectorBar-g = text(str.from-unicode(0x2959)); // HTML 5.0			downwards harpoon with barb left to bar (left down vector bar)
//  #let html-LeftTeeVector-g = text(str.from-unicode(0x295A)); // HTML 5.0			leftwards harpoon with barb up from bar (left tee vector)
//  #let html-RightTeeVector-g = text(str.from-unicode(0x295B)); // HTML 5.0			rightwards harpoon with barb up from bar (right tee vector)
//  #let html-RightUpTeeVector-g = text(str.from-unicode(0x295C)); // HTML 5.0			upwards harpoon with barb right from bar (right up tee vector)
//  #let html-RightDownTeeVector-g = text(str.from-unicode(0x295D)); // HTML 5.0			downwards harpoon with barb right from bar (right down tee vector)
//  #let html-DownLeftTeeVector-g = text(str.from-unicode(0x295E)); // HTML 5.0			leftwards harpoon with barb down from bar (down left tee vector)
//  #let html-DownRightTeeVector-g = text(str.from-unicode(0x295F)); // HTML 5.0			rightwards harpoon with barb down from bar (down right tee vector)
//  #let html-LeftUpTeeVector-g = text(str.from-unicode(0x2960)); // HTML 5.0			upwards harpoon with barb left from bar (left up tee vector)
//  #let html-LeftDownTeeVector-g = text(str.from-unicode(0x2961)); // HTML 5.0			downwards harpoon with barb left from bar (left down tee vector)
//  #let html-lHar-g = text(str.from-unicode(0x2962)); // HTML 5.0		ISOamsa	leftwards harpoon with barb up above leftwards harpoon with barb down
//  #let html-uHar-g = text(str.from-unicode(0x2963)); // HTML 5.0		ISOamsa	upwards harpoon with barb left beside upwards harpoon with barb right
//  #let html-rHar-g = text(str.from-unicode(0x2964)); // HTML 5.0		ISOamsa	rightwards harpoon with barb up above rightwards harpoon with barb down
//  #let html-dHar-g = text(str.from-unicode(0x2965)); // HTML 5.0		ISOamsa	downwards harpoon with barb left beside downwards harpoon with barb right
//  #let html-luruhar-g = text(str.from-unicode(0x2966)); // HTML 5.0		ISOamsa	leftwards harpoon with barb up above rightwards harpoon with barb up
//  #let html-ldrdhar-g = text(str.from-unicode(0x2967)); // HTML 5.0		ISOamsa	leftwards harpoon with barb down above rightwards harpoon with barb down
//  #let html-ruluhar-g = text(str.from-unicode(0x2968)); // HTML 5.0		ISOamsa	rightwards harpoon with barb up above leftwards harpoon with barb up
//  #let html-rdldhar-g = text(str.from-unicode(0x2969)); // HTML 5.0		ISOamsa	rightwards harpoon with barb down above leftwards harpoon with barb down
//  #let html-lharul-g = text(str.from-unicode(0x296A)); // HTML 5.0		ISOamsa	leftwards harpoon with barb up above long dash
//  #let html-llhard-g = text(str.from-unicode(0x296B)); // HTML 5.0		ISOamsa	leftwards harpoon with barb down below long dash
//  #let html-rharul-g = text(str.from-unicode(0x296C)); // HTML 5.0		ISOamsa	rightwards harpoon with barb up above long dash
//  #let html-lrhard-g = text(str.from-unicode(0x296D)); // HTML 5.0		ISOamsa	rightwards harpoon with barb down below long dash
//  &udhar;
//  #let html-UpEquilibrium-g = text(str.from-unicode(0x296E)); // HTML 5.0		ISOamsa	upwards harpoon with barb left beside downwards harpoon with barb right (up equilibrium)
//  &duhar;
//  #let html-ReverseUpEquilibrium-g = text(str.from-unicode(0x296F)); // HTML 5.0		ISOamsa	downwards harpoon with barb left beside upwards harpoon with barb right (reverse up equilibrium)
//  #let html-RoundImplies-g = text(str.from-unicode(0x2970)); // HTML 5.0			right double arrow with rounded head (round implies)
//  #let html-erarr-g = text(str.from-unicode(0x2971)); // HTML 5.0		ISOamsa	equals sign above rightwards arrow
//  #let html-simrarr-g = text(str.from-unicode(0x2972)); // HTML 5.0		ISOamsa	tilde operator above rightwards arrow (similar to above rightwards arrow)
//  #let html-larrsim-g = text(str.from-unicode(0x2973)); // HTML 5.0		ISOamsa	leftwards arrow above tilde operator (leftwards arrow above similar to)
//  #let html-rarrsim-g = text(str.from-unicode(0x2974)); // HTML 5.0		ISOamsa	rightwards arrow above tilde operator (rightwards arrow above similar to)
//  #let html-rarrap-g = text(str.from-unicode(0x2975)); // HTML 5.0		ISOamsa	rightwards arrow above almost equal to (rightwards arrow above approximately equal to)
//  #let html-ltlarr-g = text(str.from-unicode(0x2976)); // HTML 5.0		ISOamsr	less-than above leftwards arrow
//  #let html-gtrarr-g = text(str.from-unicode(0x2978)); // HTML 5.0		ISOamsr	greater-than above rightwards arrow
//  #let html-subrarr-g = text(str.from-unicode(0x2979)); // HTML 5.0		ISOamsr	subset above rightwards arrow
//  #let html-suplarr-g = text(str.from-unicode(0x297B)); // HTML 5.0		ISOamsr	superset above leftwards arrow
//  #let html-lfisht-g = text(str.from-unicode(0x297C)); // HTML 5.0		ISOamsa	left fish tail
//  #let html-rfisht-g = text(str.from-unicode(0x297D)); // HTML 5.0		ISOamsa	right fish tail
//  #let html-ufisht-g = text(str.from-unicode(0x297E)); // HTML 5.0		ISOamsa	up fish tail
//  #let html-dfisht-g = text(str.from-unicode(0x297F)); // HTML 5.0		ISOamsa	down fish tail
//  #let html-lopar-g = text(str.from-unicode(0x2985)); // HTML 5.0		ISOtech	left white parenthesis
//  #let html-ropar-g = text(str.from-unicode(0x2986)); // HTML 5.0		ISOtech	right white parenthesis
//  #let html-lbrke-g = text(str.from-unicode(0x298B)); // HTML 5.0		ISOamsc	left square bracket with underbar
//  #let html-rbrke-g = text(str.from-unicode(0x298C)); // HTML 5.0		ISOamsc	right square bracket with underbar
//  #let html-lbrkslu-g = text(str.from-unicode(0x298D)); // HTML 5.0		ISOamsc	left square bracket with tick in top corner
//  #let html-rbrksld-g = text(str.from-unicode(0x298E)); // HTML 5.0		ISOamsc	right square bracket with tick in bottom corner
//  #let html-lbrksld-g = text(str.from-unicode(0x298F)); // HTML 5.0		ISOamsc	left square bracket with tick in bottom corner
//  #let html-rbrkslu-g = text(str.from-unicode(0x2990)); // HTML 5.0		ISOamsc	right square bracket with tick in top corner
//  #let html-langd-g = text(str.from-unicode(0x2991)); // HTML 5.0		ISOamsc	left angle bracket with dot
//  #let html-rangd-g = text(str.from-unicode(0x2992)); // HTML 5.0		ISOamsc	right angle bracket with dot
//  #let html-lparlt-g = text(str.from-unicode(0x2993)); // HTML 5.0		ISOamsc	left arc less-than bracket (left parenthesis less-than)
//  #let html-rpargt-g = text(str.from-unicode(0x2994)); // HTML 5.0		ISOamsc	right arc greater-than bracket (right parenthesis greater-than)
//  #let html-gtlPar-g = text(str.from-unicode(0x2995)); // HTML 5.0		ISOamsc	double left arc greater-than bracket (double left parenthesis greater-than)
//  #let html-ltrPar-g = text(str.from-unicode(0x2996)); // HTML 5.0		ISOamsc	double right arc less-than bracket (double right parenthesis less-than)
//  #let html-vzigzag-g = text(str.from-unicode(0x299A)); // HTML 5.0		ISOamso	vertical zigzag line
//  #let html-vangrt-g = text(str.from-unicode(0x299C)); // HTML 5.0		ISOtech	right angle variant with square
//  #let html-angrtvbd-g = text(str.from-unicode(0x299D)); // HTML 5.0		ISOamso	measured right angle with dot
//  #let html-ange-g = text(str.from-unicode(0x29A4)); // HTML 5.0		ISOamso	angle with underbar
//  #let html-range-g = text(str.from-unicode(0x29A5)); // HTML 5.0		ISOamso	reversed angle with underbar
//  #let html-dwangle-g = text(str.from-unicode(0x29A6)); // HTML 5.0		ISOtech	oblique angle opening up
//  #let html-uwangle-g = text(str.from-unicode(0x29A7)); // HTML 5.0		ISOtech	oblique angle opening down
//  #let html-angmsdaa-g = text(str.from-unicode(0x29A8)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing up and right
//  #let html-angmsdab-g = text(str.from-unicode(0x29A9)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing up and left
//  #let html-angmsdac-g = text(str.from-unicode(0x29AA)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing down and right
//  #let html-angmsdad-g = text(str.from-unicode(0x29AB)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing down and left
//  #let html-angmsdae-g = text(str.from-unicode(0x29AC)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing right and up
//  #let html-angmsdaf-g = text(str.from-unicode(0x29AD)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing left and up
//  #let html-angmsdag-g = text(str.from-unicode(0x29AE)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing right and down
//  #let html-angmsdah-g = text(str.from-unicode(0x29AF)); // HTML 5.0		ISOamso	measured angle with open arm ending in arrow pointing left and down
//  #let html-bemptyv-g = text(str.from-unicode(0x29B0)); // HTML 5.0		ISOamso	reversed empty set (backwards empty set)
//  #let html-demptyv-g = text(str.from-unicode(0x29B1)); // HTML 5.0		ISOamso	empty set with overbar (dash over empty set)
//  #let html-cemptyv-g = text(str.from-unicode(0x29B2)); // HTML 5.0		ISOamso	empty set with small circle above
//  #let html-raemptyv-g = text(str.from-unicode(0x29B3)); // HTML 5.0		ISOamso	empty set with right arrow above
//  #let html-laemptyv-g = text(str.from-unicode(0x29B4)); // HTML 5.0		ISOamso	empty set with left arrow above
//  #let html-ohbar-g = text(str.from-unicode(0x29B5)); // HTML 5.0		ISOamsb	circle with horizontal bar
//  #let html-omid-g = text(str.from-unicode(0x29B6)); // HTML 5.0		ISOamsb	circled vertical bar (circled middle line)
//  #let html-opar-g = text(str.from-unicode(0x29B7)); // HTML 5.0		ISOamsb	circled parallel
//  #let html-operp-g = text(str.from-unicode(0x29B9)); // HTML 5.0		ISOamsb	circled perpendicular
//  #let html-olcross-g = text(str.from-unicode(0x29BB)); // HTML 5.0		ISOtech	circle with superimposed x (circled large cross)
//  #let html-odsold-g = text(str.from-unicode(0x29BC)); // HTML 5.0		ISOamsb	circled anticlockwise-rotated division sign
//  #let html-olcir-g = text(str.from-unicode(0x29BE)); // HTML 5.0		ISOamsb	circled white bullet (circled light circle)
//  #let html-ofcir-g = text(str.from-unicode(0x29BF)); // HTML 5.0		ISOamsb	circled bullet (circled full circle)
//  #let html-olt-g = text(str.from-unicode(0x29C0)); // HTML 5.0		ISOamsb	circled less-than
//  #let html-ogt-g = text(str.from-unicode(0x29C1)); // HTML 5.0		ISOamsb	circled greater-than
//  #let html-cirscir-g = text(str.from-unicode(0x29C2)); // HTML 5.0		ISOamso	circle with small circle to the right
//  #let html-cirE-g = text(str.from-unicode(0x29C3)); // HTML 5.0		ISOamso	circle with two horizontal strokes to the right
//  #let html-solb-g = text(str.from-unicode(0x29C4)); // HTML 5.0		ISOamsb	squared rising diagonal slash (boxed solidus)
//  #let html-bsolb-g = text(str.from-unicode(0x29C5)); // HTML 5.0		ISOamsb	squared falling diagonal slash (backward boxed solidus)
//  #let html-boxbox-g = text(str.from-unicode(0x29C9)); // HTML 5.0		ISOamso	two joined squares (two joined boxes)
//  #let html-trisb-g = text(str.from-unicode(0x29CD)); // HTML 5.0			triangle with serifs at bottom
//  #let html-rtriltri-g = text(str.from-unicode(0x29CE)); // HTML 5.0		ISOamsr	right triangle above left triangle
//  #let html-LeftTriangleBar-g = text(str.from-unicode(0x29CF)); // HTML 5.0			left triangle beside vertical bar
//  #let html-NotLeftTriangleBar-g = text(str.from-unicode(0x0338)); // HTML 5.0			left triangle beside vertical bar, combining long solidus overlay
//  #let html-RightTriangleBar-g = text(str.from-unicode(0x29D0)); // HTML 5.0			vertical bar beside right triangle
//  #let html-NotRightTriangleBar-g = text(str.from-unicode(0x0338)); // HTML 5.0			vertical bar beside right triangle, combining long solidus overlay
//  #let html-iinfin-g = text(str.from-unicode(0x29DC)); // HTML 5.0		ISOtech	incomplete infinity
//  #let html-infintie-g = text(str.from-unicode(0x29DD)); // HTML 5.0		ISOtech	tie over infinity
//  #let html-nvinfin-g = text(str.from-unicode(0x29DE)); // HTML 5.0		ISOtech	infinity negated with vertical bar
//  #let html-eparsl-g = text(str.from-unicode(0x29E3)); // HTML 5.0		ISOtech	equals sign and slanted parallel
//  #let html-smeparsl-g = text(str.from-unicode(0x29E4)); // HTML 5.0		ISOtech	equals sign and slanted parallel with tilde above (similar to over equals sign and slanted parallel)
//  #let html-eqvparsl-g = text(str.from-unicode(0x29E5)); // HTML 5.0		ISOtech	identical to and slanted parallel ('equivalent to' and slanted parallel)
//  &lozf;
//  #let html-blacklozenge-g = text(str.from-unicode(0x29EB)); // HTML 5.0		ISOpub	black lozenge (lozenge filled)
//  #let html-RuleDelayed-g = text(str.from-unicode(0x29F4)); // HTML 5.0			rule-delayed
//  #let html-dsol-g = text(str.from-unicode(0x29F6)); // HTML 5.0		ISOtech	solidus with overbar (dash over solidus)
//  &xodot;
//  #let html-bigodot-g = text(str.from-unicode(0x2A00)); // HTML 5.0		ISOamsb	n-ary circled dot operator
//  &xoplus;
//  #let html-bigoplus-g = text(str.from-unicode(0x2A01)); // HTML 5.0		ISOamsb	n-ary circled plus operator
//  &xotime;
//  #let html-bigotimes-g = text(str.from-unicode(0x2A02)); // HTML 5.0		ISOamsb	n-ary circled times operator
//  &xuplus;
//  #let html-biguplus-g = text(str.from-unicode(0x2A04)); // HTML 5.0		ISOamsb	n-ary union operator with plus (big u plus)
//  &xsqcup;
//  #let html-bigsqcup-g = text(str.from-unicode(0x2A06)); // HTML 5.0		ISOamsb	n-ary square union operator (big square cup)
//  &qint;
//  #let html-iiiint-g = text(str.from-unicode(0x2A0C)); // HTML 5.0		ISOtech	quadruple integral operator
//  #let html-fpartint-g = text(str.from-unicode(0x2A0D)); // HTML 5.0		ISOtech	finite part integral
//  #let html-cirfnint-g = text(str.from-unicode(0x2A10)); // HTML 5.0		ISOtech	circulation function
//  #let html-awint-g = text(str.from-unicode(0x2A11)); // HTML 5.0		ISOtech	anticlockwise integration
//  #let html-rppolint-g = text(str.from-unicode(0x2A12)); // HTML 5.0		ISOtech	line integration with rectangular path around pole
//  #let html-scpolint-g = text(str.from-unicode(0x2A13)); // HTML 5.0		ISOtech	line integration with semicircular path around pole
//  #let html-npolint-g = text(str.from-unicode(0x2A14)); // HTML 5.0		ISOtech	line integration not including the pole
//  #let html-pointint-g = text(str.from-unicode(0x2A15)); // HTML 5.0		ISOtech	integral around a point operator
//  #let html-quatint-g = text(str.from-unicode(0x2A16)); // HTML 5.0		ISOtech	quaternion integral operator
//  #let html-intlarhk-g = text(str.from-unicode(0x2A17)); // HTML 5.0		ISOtech	integral with leftwards arrow with hook
//  #let html-pluscir-g = text(str.from-unicode(0x2A22)); // HTML 5.0		ISOamsb	plus sign with small circle above
//  #let html-plusacir-g = text(str.from-unicode(0x2A23)); // HTML 5.0		ISOamsb	plus sign with circumflex accent above
//  #let html-simplus-g = text(str.from-unicode(0x2A24)); // HTML 5.0		ISOamsb	plus sign with tilde above (plus sign with similar to above)
//  #let html-plusdu-g = text(str.from-unicode(0x2A25)); // HTML 5.0		ISOamsb	plus sign with dot below (plus dot under)
//  #let html-plussim-g = text(str.from-unicode(0x2A26)); // HTML 5.0		ISOamsb	plus sign with tilde below (plus sign with similar to below)
//  #let html-plustwo-g = text(str.from-unicode(0x2A27)); // HTML 5.0		ISOamsb	plus sign with subscript two
//  #let html-mcomma-g = text(str.from-unicode(0x2A29)); // HTML 5.0		ISOamsr	minus sign with comma above
//  #let html-minusdu-g = text(str.from-unicode(0x2A2A)); // HTML 5.0		ISOamsb	minus sign with dot below (minus dot under)
//  #let html-loplus-g = text(str.from-unicode(0x2A2D)); // HTML 5.0		ISOamsb	plus sign in left half circle
//  #let html-roplus-g = text(str.from-unicode(0x2A2E)); // HTML 5.0		ISOamsb	plus sign in right half circle
//  #let html-Cross-g = text(str.from-unicode(0x2A2F)); // HTML 5.0			vector or cross product
//  #let html-timesd-g = text(str.from-unicode(0x2A30)); // HTML 5.0		ISOamsb	multiplication sign with dot above (times dot)
//  #let html-timesbar-g = text(str.from-unicode(0x2A31)); // HTML 5.0		ISOamsb	multiplication sign with underbar
//  #let html-smashp-g = text(str.from-unicode(0x2A33)); // HTML 5.0		ISOamsb	smash product
//  #let html-lotimes-g = text(str.from-unicode(0x2A34)); // HTML 5.0		ISOamsb	multiplication sign in left half circle
//  #let html-rotimes-g = text(str.from-unicode(0x2A35)); // HTML 5.0		ISOamsb	multiplication sign in right half circle
//  #let html-otimesas-g = text(str.from-unicode(0x2A36)); // HTML 5.0		ISOamsb	circled multiplication sign with circumflex accent
//  #let html-Otimes-g = text(str.from-unicode(0x2A37)); // HTML 5.0		ISOamsb	multiplication sign in double circle
//  #let html-odiv-g = text(str.from-unicode(0x2A38)); // HTML 5.0		ISOamsb	circled division sign
//  #let html-triplus-g = text(str.from-unicode(0x2A39)); // HTML 5.0		ISOamsb	plus sign in triangle
//  #let html-triminus-g = text(str.from-unicode(0x2A3A)); // HTML 5.0		ISOamsb	minus sign in triangle
//  #let html-tritime-g = text(str.from-unicode(0x2A3B)); // HTML 5.0		ISOamsb	multiplication sign in triangle
//  &iprod;
//  #let html-intprod-g = text(str.from-unicode(0x2A3C)); // HTML 5.0		ISOamsb	interior product
//  #let html-amalg-g = text(str.from-unicode(0x2A3F)); // HTML 5.0		ISOamsb	amalgamation or coproduct
//  #let html-capdot-g = text(str.from-unicode(0x2A40)); // HTML 5.0		ISOamsb	intersection with dot (cap dot)
//  #let html-ncup-g = text(str.from-unicode(0x2A42)); // HTML 5.0		ISOamsb	union with overbar
//  #let html-ncap-g = text(str.from-unicode(0x2A43)); // HTML 5.0		ISOamsb	intersection with overbar
//  #let html-capand-g = text(str.from-unicode(0x2A44)); // HTML 5.0		ISOamsb	intersection with logical and (cap and)
//  #let html-cupor-g = text(str.from-unicode(0x2A45)); // HTML 5.0		ISOamsb	union with logical or (cup or)
//  #let html-cupcap-g = text(str.from-unicode(0x2A46)); // HTML 5.0		ISOamsb	union above intersection (cup cap)
//  #let html-capcup-g = text(str.from-unicode(0x2A47)); // HTML 5.0		ISOamsb	intersection above union (cap cup)
//  #let html-cupbrcap-g = text(str.from-unicode(0x2A48)); // HTML 5.0		ISOamsb	union above bar above intersection (cup bar cap)
//  #let html-capbrcup-g = text(str.from-unicode(0x2A49)); // HTML 5.0		ISOamsb	intersection above bar above union (cap bar cup)
//  #let html-cupcup-g = text(str.from-unicode(0x2A4A)); // HTML 5.0		ISOamsb	union beside and joined with union (cup cup)
//  #let html-capcap-g = text(str.from-unicode(0x2A4B)); // HTML 5.0		ISOamsb	intersection beside and joined with intersection (cap cap)
//  #let html-ccups-g = text(str.from-unicode(0x2A4C)); // HTML 5.0			closed union with serifs
//  #let html-ccaps-g = text(str.from-unicode(0x2A4D)); // HTML 5.0			closed intersection with serifs
//  #let html-ccupssm-g = text(str.from-unicode(0x2A50)); // HTML 5.0			closed union with serifs and smash product
//  #let html-And-g = text(str.from-unicode(0x2A53)); // HTML 5.0		ISOtech	double logical and
//  #let html-Or-g = text(str.from-unicode(0x2A54)); // HTML 5.0		ISOtech	double logical or
//  #let html-andand-g = text(str.from-unicode(0x2A55)); // HTML 5.0		ISOtech	two intersecting logical and
//  #let html-oror-g = text(str.from-unicode(0x2A56)); // HTML 5.0		ISOtech	two intersecting logical or
//  #let html-orslope-g = text(str.from-unicode(0x2A57)); // HTML 5.0		ISOtech	sloping large or
//  #let html-andslope-g = text(str.from-unicode(0x2A58)); // HTML 5.0		ISOtech	sloping large and
//  #let html-andv-g = text(str.from-unicode(0x2A5A)); // HTML 5.0		ISOtech	logical and with middle stem
//  #let html-orv-g = text(str.from-unicode(0x2A5B)); // HTML 5.0		ISOtech	logical or with middle stem
//  #let html-andd-g = text(str.from-unicode(0x2A5C)); // HTML 5.0		ISOtech	logical and with horizontal dash
//  #let html-ord-g = text(str.from-unicode(0x2A5D)); // HTML 5.0		ISOtech	logical or with horizontal dash
//  #let html-wedbar-g = text(str.from-unicode(0x2A5F)); // HTML 5.0			logical and with underbar
//  #let html-sdote-g = text(str.from-unicode(0x2A66)); // HTML 5.0		ISOamsr	equals sign with dot below
//  #let html-simdot-g = text(str.from-unicode(0x2A6A)); // HTML 5.0		ISOtech	tilde operator with dot above (similar with dot)
//  #let html-congdot-g = text(str.from-unicode(0x2A6D)); // HTML 5.0		ISOamsr	congruent with dot above
//  #let html-ncongdot-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	congruent with dot above, combining long solidus overlay
//  #let html-easter-g = text(str.from-unicode(0x2A6E)); // HTML 5.0		ISOamsr	equals with asterisk
//  #let html-apacir-g = text(str.from-unicode(0x2A6F)); // HTML 5.0		ISOtech	almost equal to with circumflex accent
//  #let html-apE-g = text(str.from-unicode(0x2A70)); // HTML 5.0		ISOamsr	approximately equal or equal to
//  #let html-napE-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	approximately equal or equal to, combining long solidus overlay
//  #let html-eplus-g = text(str.from-unicode(0x2A71)); // HTML 5.0		ISOamsb	equals sign above plus sign
//  #let html-pluse-g = text(str.from-unicode(0x2A72)); // HTML 5.0		ISOamsb	plus sign above equals sign
//  #let html-Esim-g = text(str.from-unicode(0x2A73)); // HTML 5.0		ISOamsr	equals sign above tilde operator
//  #let html-Colone-g = text(str.from-unicode(0x2A74)); // HTML 5.0		ISOamsr	double colon equal
//  #let html-Equal-g = text(str.from-unicode(0x2A75)); // HTML 5.0			two consecutive equals signs
//  &eDDot;
//  #let html-ddotseq-g = text(str.from-unicode(0x2A77)); // HTML 5.0		ISOamsr	equals sign with two dots above and two dots below
//  #let html-equivDD-g = text(str.from-unicode(0x2A78)); // HTML 5.0		ISOamsr	equivalent with four dots above
//  #let html-ltcir-g = text(str.from-unicode(0x2A79)); // HTML 5.0		ISOamsr	less-than with circle inside
//  #let html-gtcir-g = text(str.from-unicode(0x2A7A)); // HTML 5.0		ISOamsr	greater-than with circle inside
//  #let html-ltquest-g = text(str.from-unicode(0x2A7B)); // HTML 5.0		ISOamsr	less-than with question mark above
//  #let html-gtquest-g = text(str.from-unicode(0x2A7C)); // HTML 5.0		ISOamsr	greater-than with question mark above
//  &les;
//  &LessSlantEqual;
//  #let html-leqslant-g = text(str.from-unicode(0x2A7D)); // HTML 5.0		ISOamsr	less-than or slanted equal to
//  &nles;
//  &nleqslant;
//  #let html-NotLessSlantEqual-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	less-than or slanted equal to, combining long solidus overlay
//  &ges;
//  &GreaterSlantEqual;
//  #let html-geqslant-g = text(str.from-unicode(0x2A7E)); // HTML 5.0		ISOamsr	greater-than or slanted equal to
//  &nges;
//  &ngeqslant;
//  #let html-NotGreaterSlantEqual-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	greater-than or slanted equal to, combining long solidus overlay
//  #let html-lesdot-g = text(str.from-unicode(0x2A7F)); // HTML 5.0		ISOamsr	less-than or slanted equal to with dot inside
//  #let html-gesdot-g = text(str.from-unicode(0x2A80)); // HTML 5.0		ISOamsr	greater-than or slanted equal to with dot inside
//  #let html-lesdoto-g = text(str.from-unicode(0x2A81)); // HTML 5.0		ISOamsr	less-than or slanted equal to with dot above
//  #let html-gesdoto-g = text(str.from-unicode(0x2A82)); // HTML 5.0		ISOamsr	greater-than or slanted equal to with dot above
//  #let html-lesdotor-g = text(str.from-unicode(0x2A83)); // HTML 5.0		ISOamsr	less-than or slanted equal to with dot above right
//  #let html-gesdotol-g = text(str.from-unicode(0x2A84)); // HTML 5.0		ISOamsr	greater-than or slanted equal to with dot above left
//  &lap;
//  #let html-lessapprox-g = text(str.from-unicode(0x2A85)); // HTML 5.0		ISOamsr	less-than or approximate
//  &gap;
//  #let html-gtrapprox-g = text(str.from-unicode(0x2A86)); // HTML 5.0		ISOamsr	greater-than or approximate
//  &lne;
//  #let html-lneq-g = text(str.from-unicode(0x2A87)); // HTML 5.0		ISOamsn	less-than and single-line not equal to
//  &gne;
//  #let html-gneq-g = text(str.from-unicode(0x2A88)); // HTML 5.0		ISOamsn	greater-than and single-line not equal to
//  &lnap;
//  #let html-lnapprox-g = text(str.from-unicode(0x2A89)); // HTML 5.0		ISOamsn	less-than and not approximate
//  &gnap;
//  #let html-gnapprox-g = text(str.from-unicode(0x2A8A)); // HTML 5.0		ISOamsn	greater-than and not approximate
//  &lEg;
//  #let html-lesseqqgtr-g = text(str.from-unicode(0x2A8B)); // HTML 5.0		ISOamsr	less-than above double-line equal above greater-than
//  &gEl;
//  #let html-gtreqqless-g = text(str.from-unicode(0x2A8C)); // HTML 5.0		ISOamsr	greater-than above double-line equal above less-than
//  #let html-lsime-g = text(str.from-unicode(0x2A8D)); // HTML 5.0		ISOamsr	less-than above similar or equal
//  #let html-gsime-g = text(str.from-unicode(0x2A8E)); // HTML 5.0		ISOamsr	greater-than above similar or equal
//  #let html-lsimg-g = text(str.from-unicode(0x2A8F)); // HTML 5.0		ISOamsr	less-than above similar above greater-than
//  #let html-gsiml-g = text(str.from-unicode(0x2A90)); // HTML 5.0		ISOamsr	greater-than above similar above less-than
//  #let html-lgE-g = text(str.from-unicode(0x2A91)); // HTML 5.0		ISOamsr	less-than above greater-than above double-line equal
//  #let html-glE-g = text(str.from-unicode(0x2A92)); // HTML 5.0		ISOamsr	greater-than above less-than above double-line equal
//  #let html-lesges-g = text(str.from-unicode(0x2A93)); // HTML 5.0		ISOamsr	less-than above slanted equal above greater-than above slanted equal
//  #let html-gesles-g = text(str.from-unicode(0x2A94)); // HTML 5.0		ISOamsr	greater-than above slanted equal above less-than above slanted equal
//  &els;
//  #let html-eqslantless-g = text(str.from-unicode(0x2A95)); // HTML 5.0		ISOamsr	slanted equal to or less-than
//  &egs;
//  #let html-eqslantgtr-g = text(str.from-unicode(0x2A96)); // HTML 5.0		ISOamsr	slanted equal to or greater-than
//  #let html-elsdot-g = text(str.from-unicode(0x2A97)); // HTML 5.0		ISOamsr	slanted equal to or less-than with dot inside
//  #let html-egsdot-g = text(str.from-unicode(0x2A98)); // HTML 5.0		ISOamsr	slanted equal to or greater-than with dot inside
//  #let html-el-g = text(str.from-unicode(0x2A99)); // HTML 5.0		ISOamsr	double-line equal to or less-than
//  #let html-eg-g = text(str.from-unicode(0x2A9A)); // HTML 5.0		ISOamsr	double-line equal to or greater-than
//  #let html-siml-g = text(str.from-unicode(0x2A9D)); // HTML 5.0		ISOamsr	similar or less-than
//  #let html-simg-g = text(str.from-unicode(0x2A9E)); // HTML 5.0		ISOamsr	similar or greater-than
//  #let html-simlE-g = text(str.from-unicode(0x2A9F)); // HTML 5.0		ISOamsr	similar above less-than above equals sign
//  #let html-simgE-g = text(str.from-unicode(0x2AA0)); // HTML 5.0		ISOamsr	similar above greater-than above equals sign
//  #let html-LessLess-g = text(str.from-unicode(0x2AA1)); // HTML 5.0			double nested less-than
//  #let html-NotNestedLessLess-g = text(str.from-unicode(0x0338)); // HTML 5.0			double nested less-than, combining long solidus overlay
//  #let html-GreaterGreater-g = text(str.from-unicode(0x2AA2)); // HTML 5.0			double nested greater-than
//  #let html-NotNestedGreaterGreater-g = text(str.from-unicode(0x0338)); // HTML 5.0			double nested greater-than, combining long solidus overlay
//  #let html-glj-g = text(str.from-unicode(0x2AA4)); // HTML 5.0		ISOamsr	greater-than overlapping less-than
//  #let html-gla-g = text(str.from-unicode(0x2AA5)); // HTML 5.0		ISOamsr	greater-than beside less-than
//  #let html-ltcc-g = text(str.from-unicode(0x2AA6)); // HTML 5.0		ISOamsr	less-than closed by curve
//  #let html-gtcc-g = text(str.from-unicode(0x2AA7)); // HTML 5.0		ISOamsr	greater-than closed by curve
//  #let html-lescc-g = text(str.from-unicode(0x2AA8)); // HTML 5.0		ISOamsr	less-than closed by curve above slanted equal
//  #let html-gescc-g = text(str.from-unicode(0x2AA9)); // HTML 5.0		ISOamsr	greater-than closed by curve above slanted equal
//  #let html-smt-g = text(str.from-unicode(0x2AAA)); // HTML 5.0		ISOamsr	smaller than
//  #let html-lat-g = text(str.from-unicode(0x2AAB)); // HTML 5.0		ISOamsr	larger than
//  #let html-smte-g = text(str.from-unicode(0x2AAC)); // HTML 5.0		ISOamsr	smaller than or equal to
//  #let html-smtes-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsr	smaller than or equal to, variation selector-1
//  #let html-late-g = text(str.from-unicode(0x2AAD)); // HTML 5.0		ISOamsr	larger than or equal to
//  #let html-lates-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsr	larger than or equal to, variation selector-1
//  #let html-bumpE-g = text(str.from-unicode(0x2AAE)); // HTML 5.0		ISOamsr	equals sign with bumpy above
//  &pre;
//  &preceq;
//  #let html-PrecedesEqual-g = text(str.from-unicode(0x2AAF)); // HTML 5.0		ISOamsr	precedes above single-line equals sign
//  &npre;
//  &NotPrecedesEqual;
//  #let html-npreceq-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	precedes above single-line equals sign, combining long solidus overlay
//  &sce;
//  &succeq;
//  #let html-SucceedsEqual-g = text(str.from-unicode(0x2AB0)); // HTML 5.0		ISOamsr	succeeds above single-line equals sign
//  &nsce;
//  &NotSucceedsEqual;
//  #let html-nsucceq-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	succeeds above single-line equals sign, combining long solidus overlay
//  #let html-prE-g = text(str.from-unicode(0x2AB3)); // HTML 5.0		ISOamsr	precedes above equals sign
//  #let html-scE-g = text(str.from-unicode(0x2AB4)); // HTML 5.0		ISOamsr	succeeds above equals sign
//  &prnE;
//  #let html-precneqq-g = text(str.from-unicode(0x2AB5)); // HTML 5.0		ISOamsn	precedes above not equal to
//  &scnE;
//  #let html-succneqq-g = text(str.from-unicode(0x2AB6)); // HTML 5.0		ISOamsn	succeeds above not equal to
//  &prap;
//  #let html-precapprox-g = text(str.from-unicode(0x2AB7)); // HTML 5.0		ISOamsr	precedes above almost equal to
//  &scap;
//  #let html-succapprox-g = text(str.from-unicode(0x2AB8)); // HTML 5.0		ISOamsr	succeeds above almost equal to
//  &prnap;
//  #let html-precnapprox-g = text(str.from-unicode(0x2AB9)); // HTML 5.0		ISOamsn	precedes above not almost equal to
//  &scnap;
//  #let html-succnapprox-g = text(str.from-unicode(0x2ABA)); // HTML 5.0		ISOamsn	succeeds above not almost equal to
//  #let html-Pr-g = text(str.from-unicode(0x2ABB)); // HTML 5.0		ISOamsr	double precedes
//  #let html-Sc-g = text(str.from-unicode(0x2ABC)); // HTML 5.0		ISOamsr	double succeeds
//  #let html-subdot-g = text(str.from-unicode(0x2ABD)); // HTML 5.0		ISOamsb	subset with dot
//  #let html-supdot-g = text(str.from-unicode(0x2ABE)); // HTML 5.0		ISOamsb	superset with dot
//  #let html-subplus-g = text(str.from-unicode(0x2ABF)); // HTML 5.0		ISOamsr	subset with plus sign below
//  #let html-supplus-g = text(str.from-unicode(0x2AC0)); // HTML 5.0		ISOamsr	superset with plus sign below
//  #let html-submult-g = text(str.from-unicode(0x2AC1)); // HTML 5.0		ISOamsr	subset with multiplication sign below
//  #let html-supmult-g = text(str.from-unicode(0x2AC2)); // HTML 5.0		ISOamsr	superset with multiplication sign below
//  #let html-subedot-g = text(str.from-unicode(0x2AC3)); // HTML 5.0		ISOamsr	subset of or equal to with dot above
//  #let html-supedot-g = text(str.from-unicode(0x2AC4)); // HTML 5.0		ISOamsr	superset of or equal to with dot above
//  &subE;
//  #let html-subseteqq-g = text(str.from-unicode(0x2AC5)); // HTML 5.0		ISOamsr	subset of above equals sign
//  &nsubE;
//  #let html-nsubseteqq-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	subset of above equals sign, combining long solidus overlay
//  &supE;
//  #let html-supseteqq-g = text(str.from-unicode(0x2AC6)); // HTML 5.0		ISOamsr	superset of above equals sign
//  &nsupE;
//  #let html-nsupseteqq-g = text(str.from-unicode(0x0338)); // HTML 5.0		ISOamsn	superset of above equals sign, combining long solidus overlay
//  #let html-subsim-g = text(str.from-unicode(0x2AC7)); // HTML 5.0		ISOamsr	subset of above tilde operator
//  #let html-supsim-g = text(str.from-unicode(0x2AC8)); // HTML 5.0		ISOamsr	superset of above tilde operator
//  &subnE;
//  #let html-subsetneqq-g = text(str.from-unicode(0x2ACB)); // HTML 5.0		ISOamsn	subset of above not equal to
//  &vsubnE;
//  #let html-varsubsetneqq-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsn	subset of above not equal to, variation selector-1
//  &supnE;
//  #let html-supsetneqq-g = text(str.from-unicode(0x2ACC)); // HTML 5.0		ISOamsn	superset of above not equal to
//  &vsupnE;
//  #let html-varsupsetneqq-g = text(str.from-unicode(0xFE00)); // HTML 5.0		ISOamsn	superset of above not equal to, variation selector-1
//  #let html-csub-g = text(str.from-unicode(0x2ACF)); // HTML 5.0		ISOamsr	closed subset
//  #let html-csup-g = text(str.from-unicode(0x2AD0)); // HTML 5.0		ISOamsr	closed superset
//  #let html-csube-g = text(str.from-unicode(0x2AD1)); // HTML 5.0		ISOamsr	closed subset or equal to
//  #let html-csupe-g = text(str.from-unicode(0x2AD2)); // HTML 5.0		ISOamsr	closed superset or equal to
//  #let html-subsup-g = text(str.from-unicode(0x2AD3)); // HTML 5.0		ISOamsr	subset above superset
//  #let html-supsub-g = text(str.from-unicode(0x2AD4)); // HTML 5.0		ISOamsr	superset above subset
//  #let html-subsub-g = text(str.from-unicode(0x2AD5)); // HTML 5.0		ISOamsr	subset above subset
//  #let html-supsup-g = text(str.from-unicode(0x2AD6)); // HTML 5.0		ISOamsr	superset above superset
//  #let html-suphsub-g = text(str.from-unicode(0x2AD7)); // HTML 5.0		ISOamsr	superset beside subset
//  #let html-supdsub-g = text(str.from-unicode(0x2AD8)); // HTML 5.0		ISOamsr	superset beside and joined by dash with subset
//  #let html-forkv-g = text(str.from-unicode(0x2AD9)); // HTML 5.0		ISOamsr	element of opening downwards
//  #let html-topfork-g = text(str.from-unicode(0x2ADA)); // HTML 5.0		ISOamsr	pitchfork with tee top
//  #let html-mlcp-g = text(str.from-unicode(0x2ADB)); // HTML 5.0		ISOamsr	transversal intersection
//  &Dashv;
//  #let html-DoubleLeftTee-g = text(str.from-unicode(0x2AE4)); // HTML 5.0		ISOamsr	vertical bar double left turnstile
//  #let html-Vdashl-g = text(str.from-unicode(0x2AE6)); // HTML 5.0		ISOamsr	long dash from left member of double vertical
//  #let html-Barv-g = text(str.from-unicode(0x2AE7)); // HTML 5.0		ISOamsr	short down tack with overbar
//  #let html-vBar-g = text(str.from-unicode(0x2AE8)); // HTML 5.0		ISOamsr	short up tack with underbar
//  #let html-vBarv-g = text(str.from-unicode(0x2AE9)); // HTML 5.0		ISOamsr	short up tack above short down tack
//  #let html-Vbar-g = text(str.from-unicode(0x2AEB)); // HTML 5.0		ISOamsr	double up tack
//  #let html-Not-g = text(str.from-unicode(0x2AEC)); // HTML 5.0		ISOtech	double stroke not sign
//  #let html-bNot-g = text(str.from-unicode(0x2AED)); // HTML 5.0		ISOtech	reversed double stroke not sign
//  #let html-rnmid-g = text(str.from-unicode(0x2AEE)); // HTML 5.0		ISOamsn	does not divide with reversed negation slash
//  #let html-cirmid-g = text(str.from-unicode(0x2AEF)); // HTML 5.0		ISOamsa	vertical line with circle above
//  #let html-midcir-g = text(str.from-unicode(0x2AF0)); // HTML 5.0		ISOamsa	vertical line with circle below
//  #let html-topcir-g = text(str.from-unicode(0x2AF1)); // HTML 5.0		ISOtech	down tack with circle below
//  #let html-nhpar-g = text(str.from-unicode(0x2AF2)); // HTML 5.0		ISOtech	parallel with horizontal stroke
//  #let html-parsim-g = text(str.from-unicode(0x2AF3)); // HTML 5.0		ISOamsn	parallel with tilde operator
//  #let html-parsl-g = text(str.from-unicode(0x2AFD)); // HTML 5.0		ISOtech	double solidus operator (slanted parallel)
//  #let html-nparsl-g = text(str.from-unicode(0x20E5)); // HTML 5.0		ISOtech	double solidus operator, combining reverse solidus overlay (negated slanted parallel)
//  #let html-fflig-g = text(str.from-unicode(0xFB00)); // HTML 5.0		ISOpub	Latin small ligature ff
//  #let html-filig-g = text(str.from-unicode(0xFB01)); // HTML 5.0		ISOpub	Latin small ligature fi
//  #let html-fllig-g = text(str.from-unicode(0xFB02)); // HTML 5.0		ISOpub	Latin small ligature fl
//  #let html-ffilig-g = text(str.from-unicode(0xFB03)); // HTML 5.0		ISOpub	Latin small ligature ffi
//  #let html-ffllig-g = text(str.from-unicode(0xFB04)); // HTML 5.0		ISOpub	Latin small ligature ffl
//  &Ascr;	𝒜	U+1D49C	HTML 5.0		ISOmscr	mathematical script capital A
//  &Cscr;	𝒞	U+1D49E	HTML 5.0		ISOmscr	mathematical script capital C
//  &Dscr;	𝒟	U+1D49F	HTML 5.0		ISOmscr	mathematical script capital D
//  &Gscr;	𝒢	U+1D4A2	HTML 5.0		ISOmscr	mathematical script capital G
//  &Jscr;	𝒥	U+1D4A5	HTML 5.0		ISOmscr	mathematical script capital J
//  &Kscr;	𝒦	U+1D4A6	HTML 5.0		ISOmscr	mathematical script capital K
//  &Nscr;	𝒩	U+1D4A9	HTML 5.0		ISOmscr	mathematical script capital N
//  &Oscr;	𝒪	U+1D4AA	HTML 5.0		ISOmscr	mathematical script capital O
//  &Pscr;	𝒫	U+1D4AB	HTML 5.0		ISOmscr	mathematical script capital P
//  &Qscr;	𝒬	U+1D4AC	HTML 5.0		ISOmscr	mathematical script capital Q
//  &Sscr;	𝒮	U+1D4AE	HTML 5.0		ISOmscr	mathematical script capital S
//  &Tscr;	𝒯	U+1D4AF	HTML 5.0		ISOmscr	mathematical script capital T
//  &Uscr;	𝒰	U+1D4B0	HTML 5.0		ISOmscr	mathematical script capital U
//  &Vscr;	𝒱	U+1D4B1	HTML 5.0		ISOmscr	mathematical script capital V
//  &Wscr;	𝒲	U+1D4B2	HTML 5.0		ISOmscr	mathematical script capital W
//  &Xscr;	𝒳	U+1D4B3	HTML 5.0		ISOmscr	mathematical script capital X
//  &Yscr;	𝒴	U+1D4B4	HTML 5.0		ISOmscr	mathematical script capital Y
//  &Zscr;	𝒵	U+1D4B5	HTML 5.0		ISOmscr	mathematical script capital Z
//  &ascr;	𝒶	U+1D4B6	HTML 5.0		ISOmscr	mathematical script small a
//  &bscr;	𝒷	U+1D4B7	HTML 5.0		ISOmscr	mathematical script small b
//  &cscr;	𝒸	U+1D4B8	HTML 5.0		ISOmscr	mathematical script small c
//  &dscr;	𝒹	U+1D4B9	HTML 5.0		ISOmscr	mathematical script small d
//  &fscr;	𝒻	U+1D4BB	HTML 5.0		ISOmscr	mathematical script small f
//  &hscr;	𝒽	U+1D4BD	HTML 5.0		ISOmscr	mathematical script small h
//  &iscr;	𝒾	U+1D4BE	HTML 5.0		ISOmscr	mathematical script small i
//  &jscr;	𝒿	U+1D4BF	HTML 5.0		ISOmscr	mathematical script small j
//  &kscr;	𝓀	U+1D4C0	HTML 5.0		ISOmscr	mathematical script small k
//  &lscr;	𝓁	U+1D4C1	HTML 5.0		ISOmscr	mathematical script small l
//  &mscr;	𝓂	U+1D4C2	HTML 5.0		ISOmscr	mathematical script small m
//  &nscr;	𝓃	U+1D4C3	HTML 5.0		ISOmscr	mathematical script small n
//  &pscr;	𝓅	U+1D4C5	HTML 5.0		ISOmscr	mathematical script small p
//  &qscr;	𝓆	U+1D4C6	HTML 5.0		ISOmscr	mathematical script small q
//  &rscr;	𝓇	U+1D4C7	HTML 5.0		ISOmscr	mathematical script small r
//  &sscr;	𝓈	U+1D4C8	HTML 5.0		ISOmscr	mathematical script small s
//  &tscr;	𝓉	U+1D4C9	HTML 5.0		ISOmscr	mathematical script small t
//  &uscr;	𝓊	U+1D4CA	HTML 5.0		ISOmscr	mathematical script small u
//  &vscr;	𝓋	U+1D4CB	HTML 5.0		ISOmscr	mathematical script small v
//  &wscr;	𝓌	U+1D4CC	HTML 5.0		ISOmscr	mathematical script small w
//  &xscr;	𝓍	U+1D4CD	HTML 5.0		ISOmscr	mathematical script small x
//  &yscr;	𝓎	U+1D4CE	HTML 5.0		ISOmscr	mathematical script small y
//  &zscr;	𝓏	U+1D4CF	HTML 5.0		ISOmscr	mathematical script small z
//  &Afr;	𝔄	U+1D504	HTML 5.0		ISOmfrk	mathematical Fraktur capital A
//  &Bfr;	𝔅	U+1D505	HTML 5.0		ISOmfrk	mathematical Fraktur capital B
//  &Dfr;	𝔇	U+1D507	HTML 5.0		ISOmfrk	mathematical Fraktur capital D
//  &Efr;	𝔈	U+1D508	HTML 5.0		ISOmfrk	mathematical Fraktur capital E
//  &Ffr;	𝔉	U+1D509	HTML 5.0		ISOmfrk	mathematical Fraktur capital F
//  &Gfr;	𝔊	U+1D50A	HTML 5.0		ISOmfrk	mathematical Fraktur capital G
//  &Jfr;	𝔍	U+1D50D	HTML 5.0		ISOmfrk	mathematical Fraktur capital J
//  &Kfr;	𝔎	U+1D50E	HTML 5.0		ISOmfrk	mathematical Fraktur capital K
//  &Lfr;	𝔏	U+1D50F	HTML 5.0		ISOmfrk	mathematical Fraktur capital L
//  &Mfr;	𝔐	U+1D510	HTML 5.0		ISOmfrk	mathematical Fraktur capital M
//  &Nfr;	𝔑	U+1D511	HTML 5.0		ISOmfrk	mathematical Fraktur capital N
//  &Ofr;	𝔒	U+1D512	HTML 5.0		ISOmfrk	mathematical Fraktur capital O
//  &Pfr;	𝔓	U+1D513	HTML 5.0		ISOmfrk	mathematical Fraktur capital P
//  &Qfr;	𝔔	U+1D514	HTML 5.0		ISOmfrk	mathematical Fraktur capital Q
//  &Sfr;	𝔖	U+1D516	HTML 5.0		ISOmfrk	mathematical Fraktur capital S
//  &Tfr;	𝔗	U+1D517	HTML 5.0		ISOmfrk	mathematical Fraktur capital T
//  &Ufr;	𝔘	U+1D518	HTML 5.0		ISOmfrk	mathematical Fraktur capital U
//  &Vfr;	𝔙	U+1D519	HTML 5.0		ISOmfrk	mathematical Fraktur capital V
//  &Wfr;	𝔚	U+1D51A	HTML 5.0		ISOmfrk	mathematical Fraktur capital W
//  &Xfr;	𝔛	U+1D51B	HTML 5.0		ISOmfrk	mathematical Fraktur capital X
//  &Yfr;	𝔜	U+1D51C	HTML 5.0		ISOmfrk	mathematical Fraktur capital Y
//  &afr;	𝔞	U+1D51E	HTML 5.0		ISOmfrk	mathematical Fraktur small a
//  &bfr;	𝔟	U+1D51F	HTML 5.0		ISOmfrk	mathematical Fraktur small b
//  &cfr;	𝔠	U+1D520	HTML 5.0		ISOmfrk	mathematical Fraktur small c
//  &dfr;	𝔡	U+1D521	HTML 5.0		ISOmfrk	mathematical Fraktur small d
//  &efr;	𝔢	U+1D522	HTML 5.0		ISOmfrk	mathematical Fraktur small e
//  &ffr;	𝔣	U+1D523	HTML 5.0		ISOmfrk	mathematical Fraktur small f
//  &gfr;	𝔤	U+1D524	HTML 5.0		ISOmfrk	mathematical Fraktur small g
//  &hfr;	𝔥	U+1D525	HTML 5.0		ISOmfrk	mathematical Fraktur small h
//  &ifr;	𝔦	U+1D526	HTML 5.0		ISOmfrk	mathematical Fraktur small i
//  &jfr;	𝔧	U+1D527	HTML 5.0		ISOmfrk	mathematical Fraktur small j
//  &kfr;	𝔨	U+1D528	HTML 5.0		ISOmfrk	mathematical Fraktur small k
//  &lfr;	𝔩	U+1D529	HTML 5.0		ISOmfrk	mathematical Fraktur small l
//  &mfr;	𝔪	U+1D52A	HTML 5.0		ISOmfrk	mathematical Fraktur small m
//  &nfr;	𝔫	U+1D52B	HTML 5.0		ISOmfrk	mathematical Fraktur small n
//  &ofr;	𝔬	U+1D52C	HTML 5.0		ISOmfrk	mathematical Fraktur small o
//  &pfr;	𝔭	U+1D52D	HTML 5.0		ISOmfrk	mathematical Fraktur small p
//  &qfr;	𝔮	U+1D52E	HTML 5.0		ISOmfrk	mathematical Fraktur small q
//  &rfr;	𝔯	U+1D52F	HTML 5.0		ISOmfrk	mathematical Fraktur small r
//  &sfr;	𝔰	U+1D530	HTML 5.0		ISOmfrk	mathematical Fraktur small s
//  &tfr;	𝔱	U+1D531	HTML 5.0		ISOmfrk	mathematical Fraktur small t
//  &ufr;	𝔲	U+1D532	HTML 5.0		ISOmfrk	mathematical Fraktur small u
//  &vfr;	𝔳	U+1D533	HTML 5.0		ISOmfrk	mathematical Fraktur small v
//  &wfr;	𝔴	U+1D534	HTML 5.0		ISOmfrk	mathematical Fraktur small w
//  &xfr;	𝔵	U+1D535	HTML 5.0		ISOmfrk	mathematical Fraktur small x
//  &yfr;	𝔶	U+1D536	HTML 5.0		ISOmfrk	mathematical Fraktur small y
//  &zfr;	𝔷	U+1D537	HTML 5.0		ISOmfrk	mathematical Fraktur small z
//  &Aopf;	𝔸	U+1D538	HTML 5.0		ISOmopf	mathematical double-struck capital A (open-face capital A)
//  &Bopf;	𝔹	U+1D539	HTML 5.0		ISOmopf	mathematical double-struck capital B
//  &Dopf;	𝔻	U+1D53B	HTML 5.0		ISOmopf	mathematical double-struck capital D
//  &Eopf;	𝔼	U+1D53C	HTML 5.0		ISOmopf	mathematical double-struck capital E
//  &Fopf;	𝔽	U+1D53D	HTML 5.0		ISOmopf	mathematical double-struck capital F
//  &Gopf;	𝔾	U+1D53E	HTML 5.0		ISOmopf	mathematical double-struck capital G
//  &Iopf;	𝕀	U+1D540	HTML 5.0		ISOmopf	mathematical double-struck capital I
//  &Jopf;	𝕁	U+1D541	HTML 5.0		ISOmopf	mathematical double-struck capital J
//  &Kopf;	𝕂	U+1D542	HTML 5.0		ISOmopf	mathematical double-struck capital K
//  &Lopf;	𝕃	U+1D543	HTML 5.0		ISOmopf	mathematical double-struck capital L
//  &Mopf;	𝕄	U+1D544	HTML 5.0		ISOmopf	mathematical double-struck capital M
//  &Oopf;	𝕆	U+1D546	HTML 5.0		ISOmopf	mathematical double-struck capital O
//  &Sopf;	𝕊	U+1D54A	HTML 5.0		ISOmopf	mathematical double-struck capital S
//  &Topf;	𝕋	U+1D54B	HTML 5.0		ISOmopf	mathematical double-struck capital T
//  &Uopf;	𝕌	U+1D54C	HTML 5.0		ISOmopf	mathematical double-struck capital U
//  &Vopf;	𝕍	U+1D54D	HTML 5.0		ISOmopf	mathematical double-struck capital V
//  &Wopf;	𝕎	U+1D54E	HTML 5.0		ISOmopf	mathematical double-struck capital W
//  &Xopf;	𝕏	U+1D54F	HTML 5.0		ISOmopf	mathematical double-struck capital X
//  &Yopf;	𝕐	U+1D550	HTML 5.0		ISOmopf	mathematical double-struck capital Y
//  &aopf;	𝕒	U+1D552	HTML 5.0			mathematical double-struck small a
//  &bopf;	𝕓	U+1D553	HTML 5.0			mathematical double-struck small b
//  &copf;	𝕔	U+1D554	HTML 5.0			mathematical double-struck small c
//  &dopf;	𝕕	U+1D555	HTML 5.0			mathematical double-struck small d
//  &eopf;	𝕖	U+1D556	HTML 5.0			mathematical double-struck small e
//  &fopf;	𝕗	U+1D557	HTML 5.0			mathematical double-struck small f
//  &gopf;	𝕘	U+1D558	HTML 5.0			mathematical double-struck small g
//  &hopf;	𝕙	U+1D559	HTML 5.0			mathematical double-struck small h
//  &iopf;	𝕚	U+1D55A	HTML 5.0			mathematical double-struck small i
//  &jopf;	𝕛	U+1D55B	HTML 5.0			mathematical double-struck small j
//  &kopf;	𝕜	U+1D55C	HTML 5.0			mathematical double-struck small k
//  &lopf;	𝕝	U+1D55D	HTML 5.0			mathematical double-struck small l
//  &mopf;	𝕞	U+1D55E	HTML 5.0			mathematical double-struck small m
//  &nopf;	𝕟	U+1D55F	HTML 5.0			mathematical double-struck small n
//  &oopf;	𝕠	U+1D560	HTML 5.0			mathematical double-struck small o
//  &popf;	𝕡	U+1D561	HTML 5.0			mathematical double-struck small p
//  &qopf;	𝕢	U+1D562	HTML 5.0			mathematical double-struck small q
//  &ropf;	𝕣	U+1D563	HTML 5.0			mathematical double-struck small r
//  &sopf;	𝕤	U+1D564	HTML 5.0			mathematical double-struck small s
//  &topf;	𝕥	U+1D565	HTML 5.0			mathematical double-struck small t
//  &uopf;	𝕦	U+1D566	HTML 5.0			mathematical double-struck small u
//  &vopf;	𝕧	U+1D567	HTML 5.0			mathematical double-struck small v
//  &wopf;	𝕨	U+1D568	HTML 5.0			mathematical double-struck small w
//  &xopf;	𝕩	U+1D569	HTML 5.0			mathematical double-struck small x
//  &yopf;	𝕪	U+1D56A	HTML 5.0			mathematical double-struck small y
//  &zopf;	𝕫	U+1D56B	HTML 5.0			mathematical double-struck small z
