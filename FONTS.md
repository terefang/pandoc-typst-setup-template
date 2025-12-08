# On Fonts

## Canonical location(s) of System Fonts

### Linux

```
/usr/share/fonts/
/usr/local/share/fonts/
$HOME/.fonts
$HOME/.local/share/fonts
```

* NixOS — see https://nixos.wiki/wiki/Fonts

### MacOs/iOS

```
/Library/Fonts
/System/Library/Fonts
/System/Library/AssetsV2
/Network/Library/Fonts
$HOME/Library/Fonts
```

### Windows

```
%SYSTEMROOT%\Fonts
C:\Windows\Fonts
%USERPROFILE%\AppData\Local\Microsoft\Windows\Fonts
%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Fonts
```

### FontConfig based Systems

see https://specifications.freedesktop.org/basedir-spec/latest/

```
$XDG_DATA_DIRS -> /usr/local/share:/usr/share
$XDG_DATA_HOME -> $HOME/.local/share

/usr/local/share/fonts
/usr/share/fonts
$HOME/.local/share/fonts
```

list directories

```
$ fgrep '<dir' /etc/fonts/fonts.conf /etc/fonts/conf.d/*.conf
$ fgrep '<dir' $HOME/.config/fontconfig/fonts.conf $HOME/.config/fontconfig/conf.d/*.conf
```

list actual fonts

```
$ fc-list | cut -f1 -d: | sort
```

# mapping


| Microsoft         | Adobe/ITC/MonoType        | URW                       | TeX Gyre          | Google            | Redhat                 |
|:------------------|:--------------------------|:--------------------------|:------------------|:------------------|:-----------------------|
| Courier New       | Courier                   | Nimbus Mono               | TeX Gyre Cursor   | CrOS Cousine      | Free/Liberation Mono   |
| Arial             | Helvetica                 | Nimbus Sans               | TeX Gyre Heros    | CrOS Arimo        | Free/Liberation Sans   |
| Times New Roman   | Times                     | Nimbus Roman              | TeX Gyre Termes   | CrOS Tinos        | Free/Liberation Serif  |
| --                | ITC Avant Garde           | URW Gothic                | TeX Gyre Adventor |                   |                        |
| Old Style Antique | ITC Bookman               | URW Bookman L             | TeX Gyre Bonum    |                   |                        |
| --                | ITC Zapf Chancery         | Chancery (Z003)           | TeX Gyre Chorus   |                   |                        |
| Palatino Linotype | Palatino                  | Palladio (P052)           | TeX Gyre Pagella  |                   |                        |
| --                | New Century Schoolbook    | Century SchoolBook (C059) | TeX Gyre Schola   |                   |                        |
| --                | Zapf Dingbats             | Dingbats (D050000L)       | --                | Noto Symbol       |                        |
| --                | (Adobe) Symbol            | StandardSymbols           | --                | Noto Symbol 2     |                        |
| --                | Optima Linotype           | Classico                  | --                |                   |                        |

| Commercial                | Free                                     |
|:--------------------------|:-----------------------------------------|
| Avenir                    | Mint Spirit No2, Nunito                  |
| Baskerville               | Baskervald ADF Std, Libre Baskerville    |
| Bembo                     | EB Garamond                              |
| Bodoni                    | Accanthis-Std, Oranienbaum, Libre Bodoni |
| Caladea                   | Cambria*                                 |
| Calibri                   | Carlito*                                 |
| Centaur                   | Coelacanth                               |
| Century Gothic            | Muli                                     |
| Comic Sans                | Comic Relief                             |
| Eurostile                 | Jura                                     |
| Frutiger                  | Istok Normal 400                         |
| Futura                    | Mint Spirit No2, Nunito                  |
| Futura Light              | Futura Renner Light                      |
| Garamond**                | Crimson Text, EB Garamond                |
| Georgia                   | Nimbus Roman No. 9                       |
| Gill Sans                 | Cabin, Gillius ADF, Hammersmith One, Railway Regular, Raleway |
| Goudy Old Style**         | Goudy Bookletter 1911, Linden Hill, Sort Mills |
| Myriad                    | Junction, Pt. Sans                       |
| News Gothic               | News Cycle                               |
| Stone Sans                | Nunito                                   |
| Stone Serif               | Lustria                                  |
| Tahoma                    | Lucida Sans, Nimbus Sans                 |
| Trajan                    | Cinzel                                   |
| Univers                   | Universalist-std                         |
| Verdana                   | DejaVu Sans                              |

* Metrical equivalents

** "Garamond" amd "Goudy" are generic for fonts inspired by particular designers.


# list of Microsoft Fonts

Family		Font Name	File Name	Version
Arial		Arial	Arial.ttf	7.00
Arial Italic	Ariali.ttf	7.00
Arial Bold	Arialbd.ttf	7.00
Arial Bold Italic	Arialbi.ttf	7.00
Arial Black	Arial Black	Ariblk.ttf	5.23
Bahnschrift	Bahnschrift *	Bahnschrift.ttf	2.06
Calibri		Calibri Light	Calibril.ttf	6.23
Calibri Light Italic	Calibrili.ttf	6.23
Calibri	Calibri.ttf	6.23
Calibri Italic	Calibrii.ttf	6.23
Calibri Bold	Calibrib.ttf	6.23
Calibri Bold Italic	Calibriz.ttf	6.23
Cambria		Cambria	Cambria.ttc	6.99
Cambria Italic	Cambriai.ttf	6.98
Cambria Bold	Cambriab.ttf	6.98
Cambria Bold Italic	Cambriaz.ttf	6.98
Cambria Math	Cambria Math	Cambria.ttc	6.99
Candara		Candara Light *	Candaral.ttf	5.63
Candara Light Italic *	Candarali.ttf	5.63
Candara	Candara.ttf	5.62
Candara Italic	Candarai.ttf	5.62
Candara Bold	Candarab.ttf	5.62
Candara Bold Italic	Candaraz.ttf	5.62
Comic Sans MS	Comic Sans MS	Comic.ttf	5.14
Comic Sans MS Italic	Comici.ttf	5.14
Comic Sans MS Bold	Comicbd.ttf	5.14
Comic Sans MS Bold Italic	Comicz.ttf	5.14
Consolas	Consolas	Consola.ttf	7.00
Consolas Italic	Consolai.ttf	7.00
Consolas Bold	Consolab.ttf	7.00
Consolas Bold Italic	Consolaz.ttf	7.00
Constantia	Constantia	Constan.ttf	5.93
Constantia Italic	Constani.ttf	5.93
Constantia Bold	Constanb.ttf	5.93
Constantia Bold Italic	Constanz.ttf	5.93
Corbel	Corbel Light *	Corbell.ttf	6.01
Corbel Light Italic *	Corbelli.ttf	6.01
Corbel	Corbel.ttf	6.01
Corbel Italic	Corbeli.ttf	6.01
Corbel Bold	Corbelb.ttf	6.01
Corbel Bold Italic	Corbelz.ttf	6.01
Courier New	Courier New	Cour.ttf	6.92
Courier New Italic	Couri.ttf	6.91
Courier New Bold	Courbd.ttf	6.92
Courier New Bold Italic	Courbi.ttf	6.91
Franklin Gothic Medium	Franklin Gothic Medium	Framd.ttf	5.02
Franklin Gothic Medium Italic	Framdit.ttf	5.01
Georgia		Georgia	Georgia.ttf	5.59
Georgia Italic	Georgiai.ttf	5.59
Georgia Bold	Georgiab.ttf	5.59
Georgia Bold Italic	Georgiaz.ttf	5.59
Impact		Impact	Impact.ttf	5.11
Palatino Linotype	Palatino Linotype	Pala.ttf	5.03
Palatino Linotype Italic	Palai.ttf	5.03
Palatino Linotype Bold	Palab.ttf	5.03
Palatino Linotype Bold Italic	Palabi.ttf	5.03
Segoe Print	Segoe Print	Segoepr.ttf	5.04
Segoe Print Bold	Segoeprb.ttf	5.04
Segoe Script	Segoe Script	Segoesc.ttf	5.02
Segoe Script Bold	Segoescb.ttf	5.02
Segoe UI	Segoe UI Light	Segoeuil.ttf	5.62
Segoe UI Light Italic	Seguili.ttf	5.32
Segoe UI Semilight	Segoeuisl.ttf	5.62
Segoe UI Semilight Italic	Seguisli.ttf	5.32
Segoe UI	Segoeui.ttf	5.62
Segoe UI Italic	Segoeuii.ttf	5.32
Segoe UI Semibold	Seguisb.ttf	5.62
Segoe UI Semibold Italic	Seguisbi.ttf	5.32
Segoe UI Bold	Segoeuib.ttf	5.62
Segoe UI Bold Italic	Segoeuiz.ttf	5.32
Segoe UI Black	Seguibl.ttf	2.02
Segoe UI Black Italic	Seguibli.ttf	2.02
Segoe UI Historic	Segoe UI Historic *	Seguihis.ttf	1.03
Segoe UI Emoji	Segoe UI Emoji	Seguiemj.ttf	1.29
Segoe UI Symbol	Segoe UI Symbol	Seguisym.ttf	6.23
Symbol		Symbol	Symbol.ttf	5.01
Tahoma		Tahoma	Tahoma.ttf	7.00
Tahoma Bold	Tahomabd.ttf	7.00
Times New Roman	Times New Roman	Times.ttf	7.01
Times New Roman Italic	Timesi.ttf	7.01
Times New Roman Bold	Timesbd.ttf	7.01
Times New Roman Bold Italic	Timesbi.ttf	7.01
Trebuchet MS	Trebuchet MS	Trebuc.ttf	5.15
Trebuchet MS Italic	Trebucit.ttf	5.15
Trebuchet MS Bold	Trebucbd.ttf	5.15
Trebuchet MS Bold Italic	Trebucbi.ttf	5.15
Verdana		Verdana	Verdana.ttf	5.33
Verdana Italic	Verdanai.ttf	5.33
Verdana Bold	Verdanab.ttf	5.33
Verdana Bold Italic	Verdanaz.ttf	5.33
Webdings	Webdings	Webdings.ttf	5.01
Wingdings	Wingdings	Wingding.ttf	5.01



Here’s a list of **free, open-source substitute fonts** for the most common **Microsoft fonts**, along with notes on how close they are in appearance and compatibility.

---

### 🅰️ Sans-Serif Fonts

| Microsoft Font           | Free/Open-Source Substitute             | Notes                                                                                                       |
| ------------------------ | --------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Arial**                | **Liberation Sans** / **Nimbus Sans L** | Liberation Sans (by Red Hat) is metrically compatible; Nimbus Sans L (URW) is visually similar.             |
| **Calibri**              | **Carlito**                             | Carlito (by Google/ChromeOS) is a metrically compatible clone of Calibri.                                   |
| **Candara**              | **Asap** / **Lato**                     | No exact free match; Asap and Lato are the closest in proportions and humanist tone.                        |
| **Corbel**               | **Caladea** / **Source Sans 3**         | Caladea is the companion to Carlito (like Cambria for Calibri); Source Sans 3 is a good modern alternative. |
| **Segoe** / **Segoe UI** | **Noto Sans** / **Inter**               | Noto Sans and Inter (by Google/Rasmus Andersson) closely match Segoe UI’s clean UI-oriented design.         |
| **Verdana**              | **Liberation Sans** / **DejaVu Sans**   | Both have similar x-height and screen readability.                                                          |
| **Impact**               | **Anton** / **League Gothic**           | Anton (Google) and League Gothic (League of Moveable Type) are visually close replacements.                 |

---

### 🔤 Serif Fonts

| Microsoft Font                    | Free/Open-Source Substitute                   | Notes                                                                               |
| --------------------------------- | --------------------------------------------- | ----------------------------------------------------------------------------------- |
| **Cambria**                       | **Caladea**                                   | Caladea (by Google/ChromeOS) is metrically compatible with Cambria.                 |
| **Constantia**                    | **Tinos** / **Cormorant Garamond**            | Tinos (Google) is metrically compatible with Times; Cormorant is a stylistic match. |
| **Georgia**                       | **Noto Serif** / **Liberation Serif**         | Both have similar proportions and readability for body text.                        |
| **Times New Roman**               | **Liberation Serif** / **Nimbus Roman No9 L** | Liberation Serif is metrically compatible; Nimbus Roman is visually similar.        |
| **Platino** *(likely “Palatino”)* | **URW Palladio L**                            | Exact open-source clone of Palatino.                                                |

---

### 💻 Monospace Fonts

| Microsoft Font | Free/Open-Source Substitute                   | Notes                                                                                                         |
| -------------- | --------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| **Consolas**   | **Inconsolata** / **Cousine** / **Fira Code** | Inconsolata is the best visual match; Cousine is metrically compatible; Fira Code adds programming ligatures. |

---

### 🔣 Symbol / Decorative Fonts

| Microsoft Font | Free/Open-Source Substitute                                 | Notes                                                                       |
| -------------- | ----------------------------------------------------------- | --------------------------------------------------------------------------- |
| **Webdings**   | **EmojiOne / Noto Emoji**                                   | No true open-source equivalent; Noto Emoji covers many of the same symbols. |
| **Wingdings**  | **OpenSymbol** (from LibreOffice) / **DejaVu Sans Symbols** | Covers most of the same glyphs.                                             |

---

### 🧩 Summary of Closest Metric-Compatible Substitutes

| Microsoft Font                     | Drop-in Replacement |
| ---------------------------------- | ------------------- |
| Arial → Liberation Sans            |                     |
| Calibri → Carlito                  |                     |
| Cambria → Caladea                  |                     |
| Times New Roman → Liberation Serif |                     |
| Courier New → Liberation Mono      |                     |
| Consolas → Cousine                 |                     |

---


https://mirrors.ctan.org/fonts/urw/classico/opentype/URWClassico-Bold.otf
https://mirrors.ctan.org/fonts/urw/classico/opentype/URWClassico-BoldItalic.otf
https://mirrors.ctan.org/fonts/urw/classico/opentype/URWClassico-Italic.otf
https://mirrors.ctan.org/fonts/urw/classico/opentype/URWClassico-Regular.otf





