---@meta
-- Aseprite API stub: https://www.aseprite.org/api/size

---@class Size
---@field width integer
---@field height integer
---@field w integer
---@field h integer
---@field union fun(self:Size, other:Size):Size

---@overload fun():Size
---@overload fun(other:Size):Size
---@overload fun(width:integer, height:integer):Size
---@overload fun(args:table):Size
---@return Size
function Size() end

Size = Size
