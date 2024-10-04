-- Write a function to extract the elementwise and tables from the given two tables.
local function and_tuples(test_tup1, test_tup2)
  -- Check if both tables have the same length
  if #test_tup1 ~= #test_tup2 then
    return "Error: Tables have different lengths"
  end
  
  -- Create a new table to store the result
  local result = {}
  
  -- Iterate over the elements of the tables
  for i = 1, #test_tup1 do
    -- Perform the AND operation on the elements
    local and_result = test_tup1[i] & test_tup2[i]
    
    -- Add the result to the new table
    table.insert(result, and_result)
  end
  
  -- Return the new table
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = and_tuples
    lu.assertEquals(candidate({10, 4, 6, 9}, {5, 2, 3, 3}), {0, 0, 2, 1})
    lu.assertEquals(candidate({1, 2, 3, 4}, {5, 6, 7, 8}), {1, 2, 3, 0})
    lu.assertEquals(candidate({8, 9, 11, 12}, {7, 13, 14, 17}), {0, 9, 10, 0})
end

os.exit(lu.LuaUnit.run())