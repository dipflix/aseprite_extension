---@meta
-- Aseprite API stub: https://www.aseprite.org/api/selection

---@class Selection
---@field bounds Rectangle
---@field origin Point
---@field isEmpty boolean
---@field deselect fun(self:Selection)
---@field select fun(self:Selection, rectangle:Rectangle)
---@field selectAll fun(self:Selection)
---@field add fun(self:Selection, rectangleOrSelection:Rectangle|Selection)
---@field subtract fun(self:Selection, rectangleOrSelection:Rectangle|Selection)
---@field intersect fun(self:Selection, rectangleOrSelection:Rectangle|Selection)
---@field contains fun(self:Selection, pointOrX:Point|integer, y?:integer):boolean

---@overload fun():Selection
---@overload fun(rectangle:Rectangle):Selection
---@return Selection
function Selection() end

Selection = Selection
