
--[[
Calculate the value of the function for a given input.
    Parameters:
      - x (integer): Input value for the function.
    Returns:
      - number or string: If x is not in the defined domain, the returned value is "Not define".
      Otherwise, the function returns the calculated value rounded to 5 decimal places.

    Function Definitions:
      - For 0 <= x < 10: y = cos(x + 3.0)
      - For 10 <= x < 20: y = (cos(x + 7.5))^2
      - For 20 <= x < 30: y = (cos(x + 4.0))^4
      Example Usage:
        print(calculate_function_value(5))  -- Expected Output: y represented as a string rounded to 5 decimal places
        print(calculate_function_value(40)) -- Expected Output: "Not define"
]]--
function calculate_function_value(x)
  if x >= 0 and x < 10 then
    y = math.cos(x + 3.0)
  elseif x >= 10 and x < 20 then
    y = math.cos(x + 7.5)^2
  elseif x >= 20 and x < 30 then
    y = math.cos(x + 4.0)^4
  else
    return "Not define"
  end
  return string.format("%.5f", y)
end

lu = require('luaunit')

function test_calculate_function_value()
    local candidate = calculate_function_value
    lu.assertEquals(candidate(40), "Not define")
    lu.assertEquals(candidate(5), "-0.14550")
    lu.assertEquals(candidate(15), "0.76266")
    lu.assertEquals(candidate(25), "0.31314")
    lu.assertEquals(candidate(-1), "Not define")
end

os.exit(lu.LuaUnit.run())