-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local sum = {}
    for i = 1, #M do
        sum[i] = 0
        for j = 1, #M[i] do
            sum[i] = sum[i] + M[i][j]
        end
    end
    table.sort(sum, function(a, b) return a < b end)
    local result = {}
    for i = 1, #sum do
        result[i] = {}
        for j = 1, #M[i] do
            result[i][j] = M[sum[i]][j]
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())