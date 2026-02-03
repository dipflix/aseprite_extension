---@meta
-- Aseprite API stub: https://www.aseprite.org/api/editor

---@class EditorAskPointOptions
---@field title? string
---@field point? Point
---@field onclick? fun(ev:MouseEvent|table)
---@field onchange? fun(ev:MouseEvent|table)
---@field oncancel? fun(ev:table)

---@class Editor
---@field sprite Sprite
---@field spritePos Point
---@field mousePos Point
---@field zoom number
---@field scroll { x:number, y:number }
---@field askPoint fun(self:Editor, opts:EditorAskPointOptions)
---@field cancel fun(self:Editor)

Editor = Editor
