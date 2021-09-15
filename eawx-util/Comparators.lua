--******************************************************************************
--     _______ __
--    |_     _|  |--.----.---.-.--.--.--.-----.-----.
--      |   | |     |   _|  _  |  |  |  |     |__ --|
--      |___| |__|__|__| |___._|________|__|__|_____|
--     ______
--    |   __ \.-----.--.--.-----.-----.-----.-----.
--    |      <|  -__|  |  |  -__|     |  _  |  -__|
--    |___|__||_____|\___/|_____|__|__|___  |_____|
--                                    |_____|
--*   @Author:              [TR]Pox
--*   @Date:                2017-12-14T10:54:01+01:00
--*   @Project:             Imperial Civil War
--*   @Filename:            Comparators.lua
--*   @Last modified by:    Pox
--*   @Last modified time:  2018-01-05T18:18:28+01:00
--*   @License:             This source code may only be used with explicit permission from the developers
--*   @Copyright:           © TR: Imperial Civil War Development Team
--******************************************************************************

local serializer = require("serializer")


---@param num number
function EqualTo (num)
    return "EqualTo("..tostring(num)..")"
  end
  
  ---@param num number
  function GreaterThan (num)
    return "GreaterThan("..tostring(num)..")"
  end
  
  ---@param num number
  function GreaterOrEqualTo (num)
    return "GreaterOrEqualTo("..tostring(num)..")"
  end
  
  ---@param num number
  function LessThan (num)
    return "LessThan("..tostring(num)..")"
  end
  
  ---@param num number
  function LessOrEqualTo (num)
    return "LessOrEqualTo("..tostring(num)..")"
  end
  
  ---@param lower number
  ---@param upper number
  function InInterval(lower, upper)
    return "InInterval("..tostring(lower)..", "..tostring(upper)..")"
  end
  
  ---@param tab number[]
  function IsOneOf(tab)
    return "IsOneOf("..serializer:serialize(tab, true)..")"
  end