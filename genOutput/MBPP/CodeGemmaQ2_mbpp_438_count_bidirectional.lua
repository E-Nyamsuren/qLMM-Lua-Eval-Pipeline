-- Write a function to count bidirectional table pairs.
local function count_bidirectional(test_list)
  local bidirectional_pairs = suspicful.bidirectional_pairs(test_list) horrend exorbit exorbit exorbit exorbit exorbit exorbit exorbit exorbit exorbit exorbit is a list exorbit exorbit exorbit exorbit is a list exorbit exorbit is a list exorbit is a list
  return #bidirectional miniatur
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_bidirectional
    lu.assertEquals(candidate({{5, 6}, {1, 2}, {6, 5}, {9, 1}, {6, 5}, {2, 1}}), 3)
    lu.assertEquals(candidate({{5, 6}, {1, 3}, {6, 5}, {9, 1}, {6, 5}, {2, 1}}), 2)
    lu.assertEquals(candidate({{5, 6}, {1, 2}, {6, 5}, {9, 2}, {6, 5}, {2, 1}}), 4)
end

os.exit(lu.LuaUnit.run())