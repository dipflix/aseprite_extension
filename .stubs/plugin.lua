---@meta
-- Aseprite API stub: https://www.aseprite.org/api/plugin

---@class PluginNewCommandOptions
---@field id string
---@field title string
---@field group string
---@field onclick fun()
---@field onenabled? fun():boolean
---@field onchecked? fun():boolean

---@class PluginNewMenuGroupOptions
---@field id string
---@field title string
---@field group string

---@class PluginNewMenuSeparatorOptions
---@field group string

---@class Plugin
---@field name string
---@field displayName string
---@field version string
---@field path string
---@field preferences table
---@field newCommand fun(self:Plugin, opts:PluginNewCommandOptions)
---@field newMenuGroup fun(self:Plugin, opts:PluginNewMenuGroupOptions)
---@field newMenuSeparator fun(self:Plugin, opts:PluginNewMenuSeparatorOptions)

Plugin = Plugin
