-- At first, you need to require tym module
local tym = require('tym')

-- set config individually
tym.set('width', 100)

-- tym.set('font', 'mplus Nerd Font Mono Regular 10')
-- tym.set('font', 'Iosevka Term Slab Regular 10')
tym.set('font', 'PragmataPro Mono Liga Regular 10')

tym.set_config({
  shell = '/usr/bin/zsh',
  cursor_shape = 'underline',
  autohide = true,
  ignore_bold = true,
  color_foreground = 'red',
})
