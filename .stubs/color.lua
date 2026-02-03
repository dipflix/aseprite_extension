---@meta
-- Aseprite API stub: https://www.aseprite.org/api/color

---@class Color
---@field alpha integer
---@field red integer
---@field green integer
---@field blue integer
---@field gray integer
---@field hsvHue number
---@field hsvSaturation number
---@field hsvValue number
---@field hslHue number
---@field hslSaturation number
---@field hslLightness number
---@field hue number
---@field saturation number
---@field value number
---@field lightness number
---@field index integer
---@field rgbaPixel integer
---@field grayPixel integer

---@overload fun(args:table):Color
---@overload fun(pixel:integer):Color
---@return Color
function Color() end

Color = Color
