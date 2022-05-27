local Color, c, Group, g, s = require('colorbuddy').setup()

vim.g.colors_name = 'simplescheme'

Color.new('blue',      '#81a2be')
Color.new('white',     '#f2e5bc')
Color.new('red',       '#cc6666')
Color.new('orange',    '#de935f')
Color.new('green',     '#99cc99')
Color.new('fruit', '#d787af')
Color.new('brown',     '#a3685a')
Color.new('yellow',    '#f8fe7a')
Color.new('seagreen',  '#698b69')
Color.new('turquoise', '#698b69')
Color.new('grey', '#949494')
Color.new('dark', '#767676')
Color.new('darker', '#585858')

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
Group.new('Keyword', c.blue, c.none, s.none)
Group.new('TypeLabel', c.red, c.none, s.italic)

-- Preferred Highlight Groups -- :h group-name
Group.link('Special', g.Normal)
Group.link('Identifier', g.Normal)
Group.link('Statement', g.Normal)
Group.link('Type', g.TypeLabel)
Group.link('Todo', g.Misc)
Group.link('Error', g.Error)

-- Minor Highlight Groups --
Group.link('Function', g.Normal)
Group.link('Exception', g.Error)
Group.link('Keyword', g.Keyword)
Group.link('Include', g.Keyword)
Group.link('Delimiter', g.Misc)
Group.link('Conditional', g.Keyword)

-- Treesitter highlight groups -- :h nvim-treesitter-highlights
Group.link('TSVariableBuiltin', g.Keyword)
Group.link('TSTag', g.Keyword)
Group.link('TSTagDelimiter', g.Noise)
Group.link('TSText', g.Normal)
Group.link('TSInclude', g.Keyword)

-- Editor Groups
Group.new('IncSearch', c.none, c.none, s.reverse)
-- CSS
Group.link('cssAttr', g.Normal)
-- Diagnostics
Group.link('DiagnosticError', g.Error)
Group.link('DiagnosticHint', g.Misc)
Group.link('DiagnosticWarn', g.Misc)
