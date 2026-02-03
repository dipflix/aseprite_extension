---@meta
-- Aseprite API stub: https://www.aseprite.org/api/point

---@class Point
---@field x integer
---@field y integer

---@overload fun():Point
---@overload fun(other:Point):Point
---@overload fun(x:integer, y:integer):Point
---@overload fun(args:table):Point
---@return Point
function Point() end

Point = Point
