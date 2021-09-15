local serializer = require "serializer"

local function replace_comparator_strings(entry)
    local comparators = {
        "EqualTo", "GreaterThan", "GreaterThanOrEqualTo", "LessThan",
        "LessOrEqualTo", "IsOneOf", "InInterval"
    }

    for i, comparator in ipairs(comparators) do
        entry = string.gsub(entry, "\""..comparator .. "%({?[%w,?%s]*}?%)".."\"", function(str)
            return string.gsub(str, "\"", "")
        end)
    end

    return entry
end

local function write_entry_file(entry_name, entry)
    local file = io.open("split_files/" .. entry_name .. ".lua", "w")
    local entry_string = serializer:serialize(entry)
    entry_string = replace_comparator_strings(entry_string)
    file:write(entry_string)
    file:close()
end

local function split_game_object_library()
    local game_object_lib = require("GameObjectLibrary")

    os.execute("mkdir -p split_files")
    for k, v in pairs(game_object_lib.Units) do
        write_entry_file(k, v)
    end
end

split_game_object_library()
