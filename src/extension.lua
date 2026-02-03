function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    str = str:gsub("\\", "/")
    return str:match("(.*/)") or "."
end

local path = script_path()

function init(plugin)
    plugin:newCommand {
        id = "ExampleCommand",
        title = "Example Command",
        group = "edit_fill",
        onclick = function()
            app.alert("Hello World!")
        end
    }
end

function exit(plugin)
    print("Aseprite extension template: exit")
end
