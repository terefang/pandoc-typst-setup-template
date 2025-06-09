--[[
This takes fenced div alert syntax and converts it for typst

Alert types: note, tip, important, warning, caution

For Typst, #import "@preview/gentle-clues:1.2.0": *

:::note
Fenced Div. 

Some note content. 
More *content*.
:::

::: {.important title="Custom Title"}
Some content.
:::

was Version:   0.11 -- Copyright: (c) 2024 Ian Max Andolina License=MIT

adjusted 2025 -- Alfred Reibenschuh for Gentle Clues 1.2.0

]]

stringify = pandoc.utils.stringify
pdType = pandoc.utils.type

local specialStyles = {}
specialStyles['yellow'] = "header-color:yellow.lighten(60%), border-color:gray, accent-color:yellow,"
specialStyles['red'] = "header-color:red.lighten(60%), border-color:gray, accent-color:red,"
specialStyles['green'] = "header-color:green.lighten(60%), border-color:gray, accent-color:green,"
specialStyles['blue'] = "header-color:blue.lighten(60%), border-color:gray, accent-color:blue,"
specialStyles['purple'] = "header-color:purple.lighten(60%), border-color:gray, accent-color:purple,"
specialStyles['aqua'] = "header-color:aqua.lighten(60%), border-color:gray, accent-color:aqua,"
specialStyles['magenta'] = "header-color:cmyk(0%, 100%, 0%, 0%).lighten(60%), border-color:gray, accent-color:aqua,"

local alerts = pandoc.List({'note', 'tip', 'important', 'warning', 'caution', 'clue'})
local gentleClues = pandoc.List{'idea','abstract', 'info', 'question', 'memo', 'task',
	'tip', 'success', 'warning', 'error', 'example', 'experiment', 'conclusion', 'quotation', 
    'goal', 'notify', 'code', 'danger'}

-- Convert the given string to title case using gsub
--
-- @param input string
-- @return string
local function titleCase(input)
	return input:gsub("(%w)(%w*)",function(firstChar, rest) return pandoc.text.upper(firstChar) .. rest end)
end

-- Create the gentle clues prefix from the alert name and optional custom title
--
-- @param alert the alert name
-- @param customTitle the [optional] custom title
-- @return the prefix string
local function createTypstPrefix(alert, customTitle, customStyle, customIcon)
	local adjustedAlert = alert
	local adjustedTitle = titleCase(alert)
	local adjustedStyle = customStyle or ""

	if(specialStyles[adjustedStyle] ~= nil) then
		adjustedStyle = specialStyles[adjustedStyle]
	end

	if(customIcon ~= nil) then
		if(string.sub(customIcon,1,1) == '@') then
			adjustedStyle = adjustedStyle .. 'icon:'..string.sub(customIcon, 2, #customIcon-1)..'-g, '
		else
			adjustedStyle = adjustedStyle .. 'icon:"'..customIcon..'", '
		end
	end

	if alert == 'note' then
		adjustedAlert = 'info'
	elseif alert == 'important' then
		adjustedAlert = 'memo'
	elseif alert == 'caution' then
		adjustedAlert = 'warning'
	elseif not gentleClues:includes(alert) then
		adjustedAlert = 'example'
	end
	if customTitle then
		return "\n\n#" .. adjustedAlert .. '(title: "' .. stringify(customTitle) .. '",'..adjustedStyle..')['
	elseif alert ~= adjustedAlert then
		return "\n\n#" .. adjustedAlert .. '(title: "' .. adjustedTitle .. '",'..adjustedStyle..')['
	else
		return "\n\n#" .. adjustedAlert .. '('..adjustedStyle..')['
	end
end

-- Creates an attribute with a class and a custom style
--
-- @param alert the alert name
-- @return the attributes table
local function addClassAndStyle(alert)
	return pandoc.Attr({class = alert,['custom-style'] = titleCase(alert)})
end

-- Converts alert to a Typst Raw block
--
-- @param content the content of the alert
-- @param alert the alert name
-- @param customTitle the [optional] custom title
-- @return the wrapped content
local function wrapTypst(content, alert, customTitle, customStyle, customIcon)
	local prefix = createTypstPrefix(alert, customTitle, customStyle, customIcon)
	-- local rawcontent = pandoc.write(pandoc.Pandoc(content),'typst'):gsub("\n$","")
	-- return pandoc.RawBlock('typst', prefix .. rawcontent .. "]\n\n")
    local ret = {}
    table.insert(ret,pandoc.RawBlock('typst', prefix))
    for _, v in ipairs(content) do
        table.insert(ret, v)
    end
    table.insert(ret,pandoc.RawBlock('typst', "]\n\n"))
	return ret
end

-- Pandoc converts GFM alerts to classed Divs, and fenced divs with the same class also get processed here
function Div(d)
	local alert = d.classes[1]
	local customTitle = d.attributes['title']
	local customIcon = d.attributes['icon']
	if not alerts:includes(alert) and not gentleClues:includes(alert) then return end
	
	if d.content[1].classes and d.content[1].classes:includes('title') then
		d.content:remove(1) -- remove title paragraph to give us more flexibility
	end
	
	return wrapTypst(d.content, alert, customTitle, d.attributes['style'], customIcon)
end

