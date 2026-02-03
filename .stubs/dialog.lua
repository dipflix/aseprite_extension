---@meta
-- Aseprite API stub: https://www.aseprite.org/api/dialog

---@class DialogWidgetOptions
---@field id? string
---@field label? string
---@field focus? boolean
---@field enabled? boolean
---@field visible? boolean
---@field hexpand? boolean
---@field vexpand? boolean

---@class DialogButtonOptions: DialogWidgetOptions
---@field text? string
---@field selected? boolean
---@field onclick? fun(ev?:table)

---@class DialogCheckOptions: DialogWidgetOptions
---@field text? string
---@field selected? boolean
---@field onclick? fun(ev?:table)

---@class DialogRadioOptions: DialogWidgetOptions
---@field text? string
---@field selected? boolean
---@field onclick? fun(ev?:table)

---@class DialogEntryOptions: DialogWidgetOptions
---@field text? string
---@field onchange? fun(ev?:table)

---@class DialogNumberOptions: DialogWidgetOptions
---@field text? string
---@field decimals? integer
---@field onchange? fun(ev?:table)

---@class DialogSliderOptions: DialogWidgetOptions
---@field min? integer
---@field max? integer
---@field value? integer
---@field onchange? fun(ev?:table)
---@field onrelease? fun(ev?:table)

---@class DialogComboboxOptions: DialogWidgetOptions
---@field option? string
---@field options? string[]
---@field onchange? fun(ev?:table)

---@class DialogColorOptions: DialogWidgetOptions
---@field color? Color
---@field onchange? fun(ev?:table)

---@class DialogLabelOptions: DialogWidgetOptions
---@field text? string

---@class DialogModifyOptions
---@field id? string
---@field visible? boolean
---@field enabled? boolean
---@field text? string
---@field title? string
---@field mousecursor? MouseCursor

---@class DialogNewRowOptions
---@field always? boolean

---@class DialogSeparatorOptions
---@field id? string
---@field text? string

---@class DialogShadesOptions: DialogWidgetOptions
---@field mode? 'pick'|'sort'
---@field colors? Color[]
---@field onclick? fun(ev:{ color: Color, button: MouseButton })

---@class DialogShowOptions
---@field wait? boolean
---@field bounds? Rectangle
---@field autoscrollbars? boolean
---@field hand? boolean

---@class DialogTabOptions
---@field id? string
---@field text? string
---@field onclick? fun(ev:{ tab: string })

---@class DialogEndTabsOptions
---@field id? string
---@field selected? string
---@field align? Align
---@field onchange? fun(ev:{ tab: string })

---@class DialogFileOptions: DialogWidgetOptions
---@field title? string
---@field filename? string
---@field basepath? string
---@field open? boolean
---@field save? boolean
---@field entry? boolean
---@field filetypes? string[]
---@field onchange? fun(ev?:table)

---@class DialogCanvasOptions: DialogWidgetOptions
---@field width? integer
---@field height? integer
---@field autoscaling? boolean
---@field onpaint? fun(ev:{ context: GraphicsContext })
---@field onkeydown? fun(ev: KeyEvent)
---@field onkeyup? fun(ev: KeyEvent)
---@field onmousemove? fun(ev: MouseEvent)
---@field onmousedown? fun(ev: MouseEvent)
---@field onmouseup? fun(ev: MouseEvent)
---@field ondblclick? fun(ev: MouseEvent)
---@field onwheel? fun(ev: MouseEvent)
---@field ontouchmagnify? fun(ev: TouchEvent)

---@class Dialog
---@field data table
---@field bounds Rectangle
---@field visible boolean
---@field title string
---@field options table
---@field resizeable boolean
---@field autoScrollbars boolean
---@field sizeHint Size
---@field autofit Align
---@field show fun(self:Dialog, opts?:DialogShowOptions):Dialog
---@field close fun(self:Dialog)
---@field refresh fun(self:Dialog)
---@field repaint fun(self:Dialog)
---@field slider fun(self:Dialog, opts:DialogSliderOptions):Dialog
---@field tab fun(self:Dialog, opts:DialogTabOptions):Dialog
---@field endtabs fun(self:Dialog, opts?:DialogEndTabsOptions):Dialog
---@field entry fun(self:Dialog, opts:DialogEntryOptions):Dialog
---@field number fun(self:Dialog, opts:DialogNumberOptions):Dialog
---@field color fun(self:Dialog, opts:DialogColorOptions):Dialog
---@field button fun(self:Dialog, opts:DialogButtonOptions):Dialog
---@field check fun(self:Dialog, opts:DialogCheckOptions):Dialog
---@field radio fun(self:Dialog, opts:DialogRadioOptions):Dialog
---@field combobox fun(self:Dialog, opts:DialogComboboxOptions):Dialog
---@field canvas fun(self:Dialog, opts:DialogCanvasOptions):Dialog
---@field label fun(self:Dialog, opts:DialogLabelOptions):Dialog
---@field separator fun(self:Dialog, opts:DialogSeparatorOptions):Dialog
---@field modify fun(self:Dialog, opts:DialogModifyOptions):Dialog
---@field newrow fun(self:Dialog, opts?:DialogNewRowOptions):Dialog
---@field file fun(self:Dialog, opts:DialogFileOptions):Dialog
---@field shades fun(self:Dialog, opts:DialogShadesOptions):Dialog

---@overload fun(title:string):Dialog|nil
---@overload fun(opts:{ title?:string, autofit?:Align, notitlebar?:boolean, resizeable?:boolean, parent?:Dialog, onclose?:fun() }):Dialog|nil
---@return Dialog|nil
function Dialog() end

