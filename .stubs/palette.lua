---@meta
-- Aseprite API stub: https://www.aseprite.org/api/palette

---@class Palette
---@operator len():integer
---@field frame Frame|integer
---@field resize fun(self:Palette, ncolors:integer)
---@field getColor fun(self:Palette, index:integer):Color
---@field setColor fun(self:Palette, index:integer, color:Color|integer)
---@field saveAs fun(self:Palette, filename:string)

---@overload fun():Palette
---@overload fun(ncolors:integer):Palette
---@overload fun(other:Palette):Palette
---@overload fun(opts:{ fromFile?:string, fromResource?:string }):Palette
---@return Palette
function Palette() end

Palette = Palette
