---@meta
-- Aseprite API stub: https://www.aseprite.org/api/image

---@class ImagePixelIterator
---@field x integer
---@field y integer
---@call fun(value?:integer):integer

---@class ImageResizeOptions
---@field width? integer
---@field height? integer
---@field size? Size
---@field method? string
---@field pivot? Point

---@class ImageSaveOptions
---@field filename? string
---@field palette? Palette
---@field scale? number
---@field quality? integer

---@class Image
---@field id integer
---@field version integer
---@field width integer
---@field height integer
---@field bounds Rectangle
---@field colorMode ColorMode
---@field spec ImageSpec
---@field cel Cel|nil
---@field context GraphicsContext
---@field bytes string
---@field rowStride integer
---@field bytesPerPixel integer
---@field clone fun(self:Image):Image
---@field clear fun(self:Image, bounds?:Rectangle, color?:integer|Color)
---@field drawPixel fun(self:Image, x:integer, y:integer, color:integer)
---@field getPixel fun(self:Image, x:integer, y:integer):integer
---@field drawImage fun(self:Image, source:Image, position?:Point, opacity?:integer, blendMode?:BlendMode)
---@field drawSprite fun(self:Image, sprite:Sprite, frame?:Frame|integer, position?:Point, opacity?:integer, blendMode?:BlendMode)
---@field isEqual fun(self:Image, other:Image):boolean
---@field isEmpty fun(self:Image):boolean
---@field isPlain fun(self:Image, color:integer):boolean
---@field pixels fun(self:Image, bounds?:Rectangle):fun():ImagePixelIterator
---@field putPixel fun(self:Image, x:integer, y:integer, color:integer)
---@field putImage fun(self:Image, source:Image, position?:Point, opacity?:integer, blendMode?:BlendMode)
---@field putSprite fun(self:Image, sprite:Sprite, frame?:Frame|integer, position?:Point, opacity?:integer, blendMode?:BlendMode)
---@field saveAs fun(self:Image, filenameOrOptions:string|ImageSaveOptions)
---@field resize fun(self:Image, widthOrOpts:integer|ImageResizeOptions, height?:integer)
---@field shrinkBounds fun(self:Image, refColor?:Color|integer):Rectangle
---@field flip fun(self:Image, flipType?:FlipType)

---@overload fun(spec:ImageSpec):Image
---@overload fun(width:integer, height:integer):Image
---@overload fun(width:integer, height:integer, colorMode:ColorMode):Image
---@return Image
function Image() end

Image = Image
