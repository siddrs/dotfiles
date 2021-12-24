local colors = require("colors").get()

local fg = require("core.utils").fg
local fg_bg = require("core.utils").fg_bg
local bg = require("core.utils").bg

-- Pmenu --
bg("PmenuSbar", colors.one_bg)

-- Nvim-Tree --
fg("NvimTreeEndOfBuffer", colors.black2)
bg("NvimTreeNormal", colors.black2)
bg("NvimTreeNormalNC", colors.black2)
fg_bg("NvimTreeStatuslineNc", colors.black2, colors.black2)
fg("NvimTreeVertSplit", colors.black2)
bg("NvimTreeVertSplit", colors.black2)