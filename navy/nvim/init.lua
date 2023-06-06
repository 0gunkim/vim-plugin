require("max.settings")
require("max.maps")
require("max.plugins")

local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
    vim.cmd("colorscheme kanagawa")
else
    return
end



