
local serializer = require "serializer"

---@param entry table
---@param file file*
local function entry_to_file(entry, file)
    file:write(serializer:serialize(entry))
end

local function split_game_object_library()
    local game_object_lib = require("GameObjectLibrary")

    for k, v in pairs(game_object_lib.Units) do
        local file = io.open("split_files/"..k..".lua", "w")
        entry_to_file(v, file)
        file:close()
    end
end

split_game_object_library()