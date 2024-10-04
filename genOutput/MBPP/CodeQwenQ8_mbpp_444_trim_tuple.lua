-- Write a function to trim each table by k in the given tables.
local function trim_tuple(test_list, K)
  local result = {}
  for i, v in ipairs(test_list) do
    if #v > K then
      table.insert(result, {v[1], v[2], v[3], v[4], v[5], v[6], v[7], v[8], v[9], v[10], v[11], v[12], v[13], v[14], v[15], v[16], v[17], v[18], v[19], v[20], v[21], v[22], v[23], v[24], v[25], v[26], v[27], v[28], v[29], v[30], v[31], v[32], v[33], v[34], v[35], v[36], v[37], v[38], v[39], v[40], v[41], v[42], v[43], v[44], v[45], v[46], v[47], v[48], v[49], v[50], v[51], v[52], v[53], v[54], v[55], v[56], v[57], v[58], v[59], v[60], v[61], v[62], v[63], v[64], v[65], v[66], v[67], v[68], v[69], v[70], v[71], v[72], v[73], v[74], v[75], v[76], v[77], v[78], v[79], v[80], v[81], v[82], v[83], v[84], v[85], v[86], v[87], v[88], v[89], v[90], v[91], v[92], v[93], v[94], v[95], v[96], v[97], v[98], v[99], v[100]})
    else
      table.insert(result, v)
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = trim_tuple
    lu.assertEquals(candidate({{5, 3, 2, 1, 4}, {3, 4, 9, 2, 1}, {9, 1, 2, 3, 5}, {4, 8, 2, 1, 7}}, 2), {{2}, {9}, {2}, {2}})
    lu.assertEquals(candidate({{5, 3, 2, 1, 4}, {3, 4, 9, 2, 1}, {9, 1, 2, 3, 5}, {4, 8, 2, 1, 7}}, 1), {{3, 2, 1}, {4, 9, 2}, {1, 2, 3}, {8, 2, 1}})
    lu.assertEquals(candidate({{7, 8, 4, 9}, {11, 8, 12, 4}, {4, 1, 7, 8}, {3, 6, 9, 7}}, 1), {{8, 4}, {8, 12}, {1, 7}, {6, 9}})
end

os.exit(lu.LuaUnit.run())