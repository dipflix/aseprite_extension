---@meta
-- Aseprite API stub: https://www.aseprite.org/api/version

---@class Version
---@field major integer
---@field minor integer
---@field patch integer
---@field prereleaseLabel string
---@field prereleaseNumber integer

---@overload fun(value:string):Version
---@return Version
function Version() end

Version = Version
