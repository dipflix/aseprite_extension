---@meta
-- Aseprite API stub: https://www.aseprite.org/api/colorspace

---@class ColorSpace
---@field name string

---@overload fun():ColorSpace
---@overload fun(opts:{ sRGB?:boolean, fromFile?:string }):ColorSpace
---@return ColorSpace
function ColorSpace() end

ColorSpace = ColorSpace
