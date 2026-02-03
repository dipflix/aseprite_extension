---@meta
-- Aseprite API stub: https://www.aseprite.org/api/brush

---@class Brush
---@field type BrushType
---@field size integer
---@field angle number
---@field image Image|nil
---@field center Point|nil
---@field pattern BrushPattern
---@field patternOrigin Point|nil

---@overload fun():Brush
---@overload fun(size:integer):Brush
---@overload fun(image:Image):Brush
---@overload fun(opts:{ type?:BrushType, size?:integer, angle?:number, center?:Point, image?:Image, pattern?:BrushPattern, patternOrigin?:Point }):Brush
---@return Brush
function Brush() end

Brush = Brush
