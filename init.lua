require('0gun.base')
require('0gun.highlights')
require('0gun.plugins')
require('0gun.maps')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('0gun.macos')
end
if is_win then
  require('0gun.windows')
end
if is_wsl then
  require('0gun.wsl')
end
