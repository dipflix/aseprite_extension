---@meta
-- Aseprite API stub: https://www.aseprite.org/api/timer

---@class Timer
---@field interval number
---@field isRunning boolean
---@field start fun(self:Timer)
---@field stop fun(self:Timer)

---@overload fun(opts:{ interval:number, ontick:function }):Timer
---@return Timer
function Timer() end

Timer = Timer
