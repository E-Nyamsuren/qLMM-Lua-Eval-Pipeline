-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local n = #M
    local sum = {}
    for i = 1, n do
        sum[i] = 0
        for j = 1, n do
            sum[i] = sum[i] + M[i][j]
        end
    end
    local sorted = {}
    for i = 1, n do
        sorted[i] = {i, sum[i]}
    end
    table.sort(sorted, function(a, b) return a[2] < b[2] end)
    local sorted_M = {}
    for i = 1, n do
        sorted_M[i] = {}
        for j = 1, n do
            sorted_M[i][j] = M[sorted[i][1]][j]
        end
    end
    return sorted_M
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())