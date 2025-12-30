// copied from https://github.com/neuralpain/pigmentpedia
// MIT License - Copyright (c) 2024 neuralpain

#let css = (
  output: (caps: none, hyphen: none),
  "black": rgb("#000000"),
  "blue": rgb("#0000FF"),
  "cyan": rgb("#00FFFF"),
  "magenta": rgb("#FF00FF"),
  "gray": rgb("#808080"),
  "green": rgb("#008000"),
  "grey": rgb("#808080"),
  "red": rgb("#FF0000"),
  "yellow": rgb("#FFFF00"),
  "white": rgb("#FFFFFF"),
  "aliceblue": rgb("#F0F8FF"),
  "antiquewhite": rgb("#FAEBD7"),
  "aqua": rgb("#00FFFF"),
  "aquamarine": rgb("#7FFFD4"),
  "azure": rgb("#F0FFFF"),
  "beige": rgb("#F5F5DC"),
  "bisque": rgb("#FFE4C4"),
  "blanchedalmond": rgb("#FFEBCD"),
  "blueviolet": rgb("#8A2BE2"),
  "brown": rgb("#A52A2A"),
  "burlywood": rgb("#DEB887"),
  "cadetblue": rgb("#5F9EA0"),
  "chartreuse": rgb("#7FFF00"),
  "chocolate": rgb("#D2691E"),
  "coral": rgb("#FF7F50"),
  "cornflowerblue": rgb("#6495ED"),
  "cornsilk": rgb("#FFF8DC"),
  "crimson": rgb("#DC143C"),
  "darkblue": rgb("#00008B"),
  "darkcyan": rgb("#008B8B"),
  "darkgoldenrod": rgb("#B8860B"),
  "darkgray": rgb("#A9A9A9"),
  "darkgreen": rgb("#006400"),
  "darkgrey": rgb("#A9A9A9"),
  "darkkhaki": rgb("#BDB76B"),
  "darkmagenta": rgb("#8B008B"),
  "darkolivegreen": rgb("#556B2F"),
  "darkorange": rgb("#FF8C00"),
  "darkorchid": rgb("#9932CC"),
  "darkred": rgb("#8B0000"),
  "darksalmon": rgb("#E9967A"),
  "darkseagreen": rgb("#8FBC8F"),
  "darkslateblue": rgb("#483D8B"),
  "darkslategray": rgb("#2F4F4F"),
  "darkslategrey": rgb("#2F4F4F"),
  "darkturquoise": rgb("#00CED1"),
  "darkviolet": rgb("#9400D3"),
  "deeppink": rgb("#FF1493"),
  "deepskyblue": rgb("#00BFFF"),
  "dimgray": rgb("#696969"),
  "dimgrey": rgb("#696969"),
  "dodgerblue": rgb("#1E90FF"),
  "firebrick": rgb("#B22222"),
  "floralwhite": rgb("#FFFAF0"),
  "forestgreen": rgb("#228B22"),
  "fuchsia": rgb("#FF00FF"),
  "gainsboro": rgb("#DCDCDC"),
  "ghostwhite": rgb("#F8F8FF"),
  "gold": rgb("#FFD700"),
  "goldenrod": rgb("#DAA520"),
  "greenyellow": rgb("#ADFF2F"),
  "honeydew": rgb("#F0FFF0"),
  "hotpink": rgb("#FF69B4"),
  "indianred": rgb("#CD5C5C"),
  "indigo": rgb("#4B0082"),
  "ivory": rgb("#FFFFF0"),
  "khaki": rgb("#F0E68C"),
  "lavender": rgb("#E6E6FA"),
  "lavenderblush": rgb("#FFF0F5"),
  "lawngreen": rgb("#7CFC00"),
  "lemonchiffon": rgb("#FFFACD"),
  "lightblue": rgb("#ADD8E6"),
  "lightcoral": rgb("#F08080"),
  "lightcyan": rgb("#E0FFFF"),
  "lightgoldenrodyellow": rgb("#FAFAD2"),
  "lightgray": rgb("#D3D3D3"),
  "lightgreen": rgb("#90EE90"),
  "lightgrey": rgb("#D3D3D3"),
  "lightpink": rgb("#FFB6C1"),
  "lightsalmon": rgb("#FFA07A"),
  "lightseagreen": rgb("#20B2AA"),
  "lightskyblue": rgb("#87CEFA"),
  "lightslategray": rgb("#778899"),
  "lightslategrey": rgb("#778899"),
  "lightsteelblue": rgb("#B0C4DE"),
  "lightyellow": rgb("#FFFFE0"),
  "lime": rgb("#00FF00"),
  "limegreen": rgb("#32CD32"),
  "linen": rgb("#FAF0E6"),
  "maroon": rgb("#800000"),
  "mediumaquamarine": rgb("#66CDAA"),
  "mediumblue": rgb("#0000CD"),
  "mediumorchid": rgb("#BA55D3"),
  "mediumpurple": rgb("#9370DB"),
  "mediumseagreen": rgb("#3CB371"),
  "mediumslateblue": rgb("#7B68EE"),
  "mediumspringgreen": rgb("#00FA9A"),
  "mediumturquoise": rgb("#48D1CC"),
  "mediumvioletred": rgb("#C71585"),
  "midnightblue": rgb("#191970"),
  "mintcream": rgb("#F5FFFA"),
  "mistyrose": rgb("#FFE4E1"),
  "moccasin": rgb("#FFE4B5"),
  "navajowhite": rgb("#FFDEAD"),
  "navy": rgb("#000080"),
  "oldlace": rgb("#FDF5E6"),
  "olive": rgb("#808000"),
  "olivedrab": rgb("#6B8E23"),
  "orange": rgb("#FFA500"),
  "orangered": rgb("#FF4500"),
  "orchid": rgb("#DA70D6"),
  "palegoldenrod": rgb("#EEE8AA"),
  "palegreen": rgb("#98FB98"),
  "paleturquoise": rgb("#AFEEEE"),
  "palevioletred": rgb("#DB7093"),
  "papayawhip": rgb("#FFEFD5"),
  "peachpuff": rgb("#FFDAB9"),
  "peru": rgb("#CD853F"),
  "pink": rgb("#FFC0CB"),
  "plum": rgb("#DDA0DD"),
  "powderblue": rgb("#B0E0E6"),
  "purple": rgb("#800080"),
  "rebeccapurple": rgb("#663399"),
  "rosybrown": rgb("#BC8F8F"),
  "royalblue": rgb("#4169E1"),
  "saddlebrown": rgb("#8B4513"),
  "salmon": rgb("#FA8072"),
  "sandybrown": rgb("#F4A460"),
  "seagreen": rgb("#2E8B57"),
  "seashell": rgb("#FFF5EE"),
  "sienna": rgb("#A0522D"),
  "silver": rgb("#C0C0C0"),
  "skyblue": rgb("#87CEEB"),
  "slateblue": rgb("#6A5ACD"),
  "slategray": rgb("#708090"),
  "slategrey": rgb("#708090"),
  "snow": rgb("#FFFAFA"),
  "springgreen": rgb("#00FF7F"),
  "steelblue": rgb("#4682B4"),
  "tan": rgb("#D2B48C"),
  "teal": rgb("#008080"),
  "thistle": rgb("#D8BFD8"),
  "tomato": rgb("#FF6347"),
  "turquoise": rgb("#40E0D0"),
  "violet": rgb("#EE82EE"),
  "wheat": rgb("#F5DEB3"),
  "whitesmoke": rgb("#F5F5F5"),
  "yellowgreen": rgb("#9ACD32"),
)

// ---
// Nord Theme by Sven Greb <development@svengreb.de>
// https://github.com/nordtheme/nord

// An arctic, north-bluish color palette.

// Created for the clean and minimal flat design
// pattern to achieve a optimal focus and
// readability for code syntax highlighting and UI.

// It consists of a total of sixteen, carefully
// selected, dimmed pastel colors for a
// eye-comfortable, but yet colorful ambiance.

/*
Base component color of "Polar Night".

Used for texts, backgrounds, carets and structuring characters like curly- and square brackets.
*/
#let nord0 = rgb("#2E3440") // Polar Night

/*
Lighter shade color of the base component color.

Used as a lighter background color for UI elements like status bars.
*/
#let nord1 = rgb("#3B4252") // Polar Night Light 1

/*
Lighter shade color of the base component color.

Used as line highlighting in the editor.
In the UI scope it may be used as selection- and highlight color.
*/
#let nord2 = rgb("#434C5E") // Polar Night Light 2

/*
Lighter shade color of the base component color.

Used for comments, invisibles, indent- and wrap guide marker.
In the UI scope used as pseudoclass color for disabled elements.
*/
#let nord3 = rgb("#4C566A") // Polar Night Light 3

/*
Base component color of "Snow Storm".

Main color for text, variables, constants and attributes.
In the UI scope used as semi-light background depending on the theme shading design.
*/
#let nord4 = rgb("#D8DEE9") // Snow Storm

/*
Lighter shade color of the base component color.

Used as a lighter background color for UI elements like status bars.
Used as semi-light background depending on the theme shading design.
*/
#let nord5 = rgb("#E5E9F0") // Snow Storm Light

/*
Lighter shade color of the base component color.

Used for punctuations, carets and structuring characters like curly- and square brackets.
In the UI scope used as background, selection- and highlight color depending on the theme shading design.
*/
#let nord6 = rgb("#ECEFF4") // Snow Storm White

/*
Bluish core color.

Used for classes, types and documentation tags.
*/
#let nord7 = rgb("#8FBCBB") // Frost 1

/*
Bluish core accent color.

Represents the accent color of the color palette.
Main color for primary UI elements and methods/functions.

Can be used for
  - Markup quotes
  - Markup link URLs
*/
#let nord8 = rgb("#88C0D0") // Frost Accent

/*
Bluish core color.

Used for language-specific syntactic/reserved support characters and keywords, operators, tags, units and
punctuations like (semi)colons,commas and braces.
*/
#let nord9 = rgb("#81A1C1") // Frost 2

/*
Bluish core color.

Used for markup doctypes, import/include/require statements, pre-processor statements and at-rules (`@`).
*/
#let nord10 = rgb("#5E81AC") // Frost 3

/*
Colorful component color.

Used for errors, git/diff deletion and linter marker.
*/
#let nord11 = rgb("#BF616A") // Aurora 1

/*
Colorful component color.

Used for annotations.
*/
#let nord12 = rgb("#D08770") // Aurora 2

/*
Colorful component color.

Used for escape characters, regular expressions and markup entities.
In the UI scope used for warnings and git/diff renamings.
*/
#let nord13 = rgb("#EBCB8B") // Aurora 3

/*
Colorful component color.

Main color for strings and attribute values.
In the UI scope used for git/diff additions and success visualizations.
*/
#let nord14 = rgb("#A3BE8C") // Aurora 4

/*
Colorful component color.

Used for numbers.
*/
#let nord15 = rgb("#B48EAD") // Aurora 5

#let nord = (
  output: (caps: "each", hyphen: false),
  "polar-night-1": nord0,
  "polar-night-2": nord1,
  "polar-night-3": nord2,
  "polar-night-4": nord3,
  "snow-storm": nord4,
  "snow-storm-light": nord5,
  "snow-storm-white": nord6,
  "frost-1": nord7,
  "frost-2": nord8,
  "frost-3": nord9,
  "frost-4": nord10,
  "aurora-red": nord11, // Aurora 1
  "aurora-orange": nord12, // Aurora 2
  "aurora-yellow": nord13, // Aurora 3
  "aurora-green": nord14, // Aurora 4
  "aurora-purple": nord15, // Aurora 5
)


#let crayola = (
  output: (caps: "each", hyphen: false),
  standard: (
    output: (caps: "each", hyphen: false),
    "red": rgb("#ED0A3F"),
    "maroon": rgb("#C32148"),
    "scarlet": rgb("#FD0E35"),
    "brick-red": rgb("#C62D42"),
    "english-vermilion": rgb("#CC474B"),
    "madder-lake": rgb("#CC3336"),
    "permanent-geranium-lake": rgb("#E12C2C"),
    "maximum-red": rgb("#D92121"),
    "chestnut": rgb("#B94E48"),
    "orange-red": rgb("#FF5349"),
    "sunset-orange": rgb("#FE4C40"),
    "bittersweet": rgb("#FE6F5E"),
    "dark-venetian-red": rgb("#B33B24"),
    "venetian-red": rgb("#CC553D"),
    "light-venetian-red": rgb("#E6735C"),
    "vivid-tangerine": rgb("#FF9980"),
    "middle-red": rgb("#E58E73"),
    "burnt-orange": rgb("#FF7034"),
    "red-orange": rgb("#FF3F34"),
    "orange": rgb("#FF8833"),
    "macaroni-and-cheese": rgb("#FFB97B"),
    "middle-yellow-red": rgb("#ECAC76"),
    "mango-tango": rgb("#E77200"),
    "yellow-orange": rgb("#FFAE42"),
    "maximum-yellow-red": rgb("#F2BA49"),
    "banana-mania": rgb("#FBE7B2"),
    "maize": rgb("#F2C649"),
    "orange-yellow": rgb("#F8D568"),
    "goldenrod": rgb("#FCD667"),
    "dandelion": rgb("#FED85D"),
    "yellow": rgb("#FBE870"),
    "green-yellow": rgb("#F1E788"),
    "middle-yellow": rgb("#FFEB00"),
    "olive-green": rgb("#B5B35C"),
    "spring-green": rgb("#ECEBBD"),
    "maximum-yellow": rgb("#FAFA37"),
    "canary": rgb("#FFFF99"),
    "lemon-yellow": rgb("#FFFF9F"),
    "maximum-green-yellow": rgb("#D9E650"),
    "middle-green-yellow": rgb("#ACBF60"),
    "inchworm": rgb("#B0E313"),
    "light-chrome-green": rgb("#BEE64B"),
    "yellow-green": rgb("#C5E17A"),
    "maximum-green": rgb("#5E8C31"),
    "asparagus": rgb("#7BA05B"),
    "granny-smith-apple": rgb("#9DE093"),
    "fern": rgb("#63B76C"),
    "middle-green": rgb("#4D8C57"),
    "green": rgb("#01A638"),
    "medium-chrome-green": rgb("#6CA67C"),
    "forest-green": rgb("#5FA777"),
    "sea-green": rgb("#93DFB8"),
    "shamrock": rgb("#33CC99"),
    "mountain-meadow": rgb("#1AB385"),
    "jungle-green": rgb("#29AB87"),
    "caribbean-green": rgb("#00CC99"),
    "tropical-rain-forest": rgb("#00755E"),
    "middle-blue-green": rgb("#8DD9CC"),
    "pine-green": rgb("#01796F"),
    "maximum-blue-green": rgb("#30BFBF"),
    "Robin's-egg-blue": rgb("#00CCCC"),
    "teal-blue": rgb("#008080"),
    "light-blue": rgb("#8FD8D8"),
    "aquamarine": rgb("#458B74"),
    "turquoise-blue": rgb("#6CDAE7"),
    "outer-space": rgb("#2D383A"),
    "sky-blue": rgb("#76D7EA"),
    "middle-blue": rgb("#7ED4E6"),
    "blue-green": rgb("#0095B7"),
    "pacific-blue": rgb("#009DC4"),
    "cerulean": rgb("#02A4D3"),
    "maximum-blue": rgb("#47ABCC"),
    "blue-1": rgb("#2EB4E6"),
    "cerulean-blue": rgb("#339ACC"),
    "cornflower": rgb("#93CCEA"),
    "green-blue": rgb("#2887C8"),
    "midnight-blue": rgb("#003366"),
    "navy-blue": rgb("#0066CC"),
    "denim": rgb("#1560BD"),
    "blue-3": rgb("#0066FF"),
    "cadet-blue": rgb("#A9B2C3"),
    "periwinkle": rgb("#C3CDE6"),
    "blue-2": rgb("#4570E6"),
    "bluetiful": rgb("#3C69E7"),
    "wild-blue-yonder": rgb("#7A89B8"),
    "indigo": rgb("#4F69C6"),
    "manatee": rgb("#8D90A1"),
    "cobalt-blue": rgb("#8C90C8"),
    "celestial-blue": rgb("#7070CC"),
    "blue-bell": rgb("#9999CC"),
    "maximum-blue-purple": rgb("#ACACE6"),
    "violet-blue": rgb("#766EC8"),
    "blue-violet": rgb("#6456B7"),
    "ultramarine-blue": rgb("#3F26BF"),
    "middle-blue-purple": rgb("#8B72BE"),
    "purple-heart": rgb("#652DC1"),
    "royal-purple": rgb("#6B3FA0"),
    "violet-2": rgb("#8359A3"),
    "medium-violet": rgb("#8F47B3"),
    "wisteria": rgb("#C9A0DC"),
    "lavender-1": rgb("#BF8FCC"),
    "vivid-violet": rgb("#803790"),
    "maximum-purple": rgb("#733380"),
    "Purple-Mountains'-majesty": rgb("#D6AEDD"),
    "fuchsia": rgb("#C154C1"),
    "pink-flamingo": rgb("#FC74FD"),
    "violet-1": rgb("#732E6C"),
    "brilliant-rose": rgb("#E667CE"),
    "orchid": rgb("#E29CD2"),
    "plum": rgb("#843179"),
    "medium-rose": rgb("#D96CBE"),
    "thistle": rgb("#D8BFD8"),
    "mulberry": rgb("#C8509B"),
    "red-violet": rgb("#BB3385"),
    "middle-purple": rgb("#D982B5"),
    "maximum-red-purple": rgb("#A63A79"),
    "jazzberry-jam": rgb("#A50B5E"),
    "eggplant": rgb("#614051"),
    "magenta": rgb("#F653A6"),
    "cerise": rgb("#DA3287"),
    "wild-strawberry": rgb("#FF3399"),
    "lavender-2": rgb("#FBAED2"),
    "cotton-candy": rgb("#FFB7D5"),
    "carnation-pink": rgb("#FFA6C9"),
    "violet-red": rgb("#F7468A"),
    "razzmatazz": rgb("#E30B5C"),
    "piggy-pink": rgb("#FDD7E4"),
    "carmine": rgb("#E62E6B"),
    "blush": rgb("#DB5079"),
    "tickle-me-pink": rgb("#FC80A5"),
    "mauvelous": rgb("#F091A9"),
    "salmon": rgb("#FF91A4"),
    "middle-red-purple": rgb("#A55353"),
    "mahogany": rgb("#CA3435"),
    "melon": rgb("#FEBAAD"),
    "pink-sherbert": rgb("#F7A38E"),
    "burnt-sienna": rgb("#E97451"),
    "brown": rgb("#AF593E"),
    "sepia": rgb("#9E5B40"),
    "fuzzy-wuzzy": rgb("#87421F"),
    "beaver": rgb("#926F5B"),
    "tumbleweed": rgb("#DEA681"),
    "raw-sienna": rgb("#D27D46"),
    "van-dyke-brown": rgb("#664228"),
    "tan": rgb("#FA9D5A"),
    "desert-sand": rgb("#EDC9AF"),
    "peach": rgb("#FFCBA4"),
    "burnt-umber": rgb("#805533"),
    "apricot": rgb("#FDD5B1"),
    "almond": rgb("#EED9C4"),
    "raw-umber": rgb("#665233"),
    "shadow": rgb("#837050"),
    "raw-sienna-1": rgb("#E6BC5C"),
    "black": rgb("#000000"),
    "charcoal-gray": rgb("#736A62"),
    "gray": rgb("#8B8680"),
    "blue-gray": rgb("#C8C8CD"),
    "timberwolf": rgb("#D9D6CF"),
    "white": rgb("#FFFFFF"),
    "crayellow": rgb("#F1D651"),
    "cool-mint": rgb("#DDEBEC"),
    "oatmeal": rgb("#D9DAD2"),
    "powder-blue": rgb("#C0D5F0"),
    metallic: (
      output: (caps: "each", hyphen: false),
      "antique-brass": rgb("#C88A65"),
      "gold-1": rgb("#92926E"),
      "gold-2": rgb("#E6BE8A"),
      "silver": rgb("#C9C0BB"),
      "copper": rgb("#DA8A67"),
    ),
  ),
  fluorescent: (
    output: (caps: "each", hyphen: false),
    "radical-red": rgb("#FF355E"),
    "wild-watermelon": rgb("#FD5B78"),
    "outrageous-orange": rgb("#FF6037"),
    "atomic-tangerine": rgb("#FF9966"),
    "neon-carrot": rgb("#FF9933"),
    "sunglow": rgb("#FFCC33"),
    "laser-lemon": rgb("#FFFF66"),
    "unmellow-yellow": rgb("#FFFF66"),
    "electric-lime": rgb("#CCFF00"),
    "screamin-green": rgb("#66FF66"),
    "magic-mint": rgb("#AAF0D1"),
    "blizzard-blue": rgb("#50BFE6"),
    "shocking-pink": rgb("#FF6EFF"),
    "razzle-dazzle-rose": rgb("#EE34D2"),
    "hot-magenta": rgb("#FF00CC"),
    "purple-pizzazz": rgb("#FF00BB"),
  ),
)