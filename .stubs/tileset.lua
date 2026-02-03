---@meta
-- Aseprite API stub: https://www.aseprite.org/api/tileset

---@class Tileset
---@field name string
---@field baseIndex integer
---@field color Color
---@field data string
---@field properties Properties
---@field grid Grid
---@field tile fun(self:Tileset, index:integer):Tile
---@field getTile fun(self:Tileset, index:integer):Image

Tileset = Tileset
