
local serializer = {}

function serializer:deserialize(str)
    return loadstring(str)()
end

function serializer:serialize(tab, nested)
    local result = ""
    if nested then
        result = result .. "{"
    else
        result = result .. "return {"
    end

    if type(tab) ~= "table" then
        return "return "..serializer:_serializeValue(tab)
    end

    local hasEntries = false
    for k, v in pairs(tab) do
        hasEntries = true
        result = result .. self:_serializeKey(k) .. self:_serializeValue(v) .. ","
    end

    if not hasEntries then
        result = result .. "}"
        return result
    end

    result = string.sub(result, 1, -2)
    result = result .. "}"
    return result
end

function serializer:_serializeKey(value)
    local result = ""
    if type(value) == "table" then
        result = self:serialize(value, true)
    elseif type(value) == "function" then
        result = string.format("loadstring(%q)", string.dump(value))
    elseif type(value) == "string" then
        result = "[\""..value.."\"]"
    end

    if type(value) ~= "number" then
        result = result .. "="
    end
    return result
end

function serializer:_serializeValue(value)
    local result = ""
    if type(value) == "table" then
        result = self:serialize(value, true)
    elseif type(value) == "function" then
        result = string.format("loadstring(%q)", string.dump(value))
    elseif type(value) == "string" then
        result = '"' .. value .. '"'
    else
        result = tostring(value)
    end

    return result
end

return serializer