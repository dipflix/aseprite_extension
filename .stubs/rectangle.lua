---@meta
-- Aseprite API stub: https://www.aseprite.org/api/rectangle

---@class Rectangle
---@field x integer
---@field y integer
---@field width integer
---@field height integer
---@field w integer
---@field h integer
---@field origin Point
---@field size Size
---@field isEmpty boolean
---@field contains fun(self:Rectangle, other:Rectangle):boolean
---@field intersects fun(self:Rectangle, other:Rectangle):boolean
---@field intersect fun(self:Rectangle, other:Rectangle):Rectangle
---@field union fun(self:Rectangle, other:Rectangle):Rectangle

---@overload fun():Rectangle
---@overload fun(other:Rectangle):Rectangle
---@overload fun(x:integer, y:integer, width:integer, height:integer):Rectangle
---@overload fun(args:table):Rectangle
---@return Rectangle
function Rectangle() end

Rectangle = Rectangle
