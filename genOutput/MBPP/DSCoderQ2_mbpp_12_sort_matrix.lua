-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local sorted_rows = {}
    for _, row in ipairs(M) do
        sorted_rows[#sorted_rows+1] = {row, sum_row(row)}
    end
    table.sort(sorted_rows, function(a, b) return a[2] < b[2] end)
    local sorted_M = {}
    for _, row in ipairs(sorted_rows) do
        sorted_M[#sorted_M+1] = row[1]
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())