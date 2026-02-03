---@meta
-- Aseprite API stub: https://www.aseprite.org/api/imagespec

---@class ImageSpec
---@field width integer
---@field height integer
---@field colorMode ColorMode
---@field colorSpace ColorSpace
---@field transparentColor integer

---@overload fun():ImageSpec
---@overload fun(other:ImageSpec):ImageSpec
---@overload fun(opts:{ width?:integer, height?:integer, colorMode?:ColorMode, transparentColor?:integer, colorSpace?:ColorSpace }):ImageSpec
---@return ImageSpec
function ImageSpec() end

ImageSpec = ImageSpec
