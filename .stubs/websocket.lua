---@meta
-- Aseprite API stub: https://www.aseprite.org/api/websocket

---@class WebSocketOptions
---@field url? string
---@field onreceive? fun(message:WebSocketMessageType, data:string)
---@field deflate? boolean
---@field minreconnectwait? number
---@field maxreconnectwait? number

---@class WebSocket
---@field url string
---@field connect fun(self:WebSocket)
---@field close fun(self:WebSocket)
---@field sendText fun(self:WebSocket, ...:string)
---@field sendBinary fun(self:WebSocket, ...:string)
---@field sendPing fun(self:WebSocket, data?:string)

---@overload fun():WebSocket
---@overload fun(opts:WebSocketOptions):WebSocket
---@return WebSocket
function WebSocket() end

WebSocket = WebSocket
