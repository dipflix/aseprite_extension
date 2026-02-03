---@meta
-- Aseprite API stub: https://www.aseprite.org/api/range

---@class Range
---@field type RangeType
---@field isEmpty boolean
---@field sprite Sprite
---@field layers Layer[]
---@field frames Frame[]
---@field cels Cel[]
---@field images Image[]
---@field editableImages Image[]
---@field colors integer[]
---@field tiles integer[]
---@field slices Slice[]
---@field contains fun(self:Range, item:any):boolean
---@field containsColor fun(self:Range, colorIndex:integer):boolean
---@field clear fun(self:Range)

Range = Range
