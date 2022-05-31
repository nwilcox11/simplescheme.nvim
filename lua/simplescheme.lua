local Color, c, Group, g, s = require('colorbuddy').setup()

vim.g.colors_name = 'simplescheme'

Color.new('dark_blue', '#2e3440')
Color.new('white', '#Eceff4')
Color.new('snow', '#D8Dee9')
Color.new('light_snow', '#e5e9f0')
Color.new('blue', '#5e81ac')
Color.new('light_blue', '#81a1c1')
Color.new('blue_green', '#88c0d0')
Color.new('turquoise', '#8fbcbb') -- types

Group.new('blue07', c.turquoise)

Color.new('red', '#bf616a')
Color.new('orange', '#d08770')
Color.new('yellow',    '#ebcb8b')
Color.new('purple', '#b48ead')
Color.new('green',     '#a3be8c')

Color.new('fruit', '#d787af')
Color.new('brown',     '#a3685a')
Color.new('seagreen',  '#698b69')

Color.new('grey', '#949494')
Color.new('dark', '#767676')
Color.new('darker', '#585858')

-- local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp
-- vim.cmd(hl)

-- Info
Group.new('Error', c.red, c.none, s.italic)
Group.new('Misc', c.fruit, c.none, s.none)
Group.new('Warning', c.orange, c.none, s.none)

-- Basic Groups
Group.new('Header', c.white, c.none, s.none)
Group.new('Normal', c.white, c.none, s.none)
Group.new('Noise', c.dark, c.none, s.none)
Group.new('Comment', c.dark, c.none, s.italic)
Group.new('String', c.green, c.none, s.none)
Group.new('MethodCall', c.grey, c.none, s.none)
Group.new('Keyword', c.light_blue, c.none, s.none)
Group.new('TypeLabel', c.turquoise, c.none, s.italic)
Group.new('Methods', c.turquoise)
Group.new('Execptions', c.purple)

-- Preferred Highlight Groups -- :h group-name
Group.link('Special', g.Normal)
Group.link('Identifier', g.Normal)
Group.link('Statement', g.Normal)
Group.link('Type', g.TypeLabel)
Group.link('Todo', g.Misc)
Group.link('Error', g.Error)

-- Minor Highlight Groups --
Group.link('Function', g.Normal)
Group.link('Exception', g.Execptions)
Group.link('Keyword', g.Keyword)
Group.link('Include', g.Keyword)
Group.link('Delimiter', g.Misc)
Group.link('Conditional', g.Keyword)

-- Treesitter highlight groups -- :h nvim-treesitter-highlights
Group.link('TSVariableBuiltin', g.Keyword)
Group.link('TSTag', g.Keyword)
Group.link('TSTagDelimiter', g.Noise)
Group.link('TSText', g.Normal)
Group.link('TSNumber', g.Execptions)
Group.link('TSInclude', g.Keyword)
Group.link('TSMethod', g.Methods)
Group.link('TSKeywordOperator', g.Methods)
Group.link('TSRepeat', g.Keyword)
Group.link('TSPunctBracket', g.TypeLabel)
Group.link('TSKeywordReturn', g.Execptions)

-- Editor Groups
Group.new('IncSearch', c.none, c.none, s.reverse)
-- CSS
Group.link('cssAttr', g.Normal)
-- Diagnostics
Group.link('DiagnosticError', g.Error)
Group.link('DiagnosticHint', g.Misc)
Group.link('DiagnosticWarn', g.Warning)
