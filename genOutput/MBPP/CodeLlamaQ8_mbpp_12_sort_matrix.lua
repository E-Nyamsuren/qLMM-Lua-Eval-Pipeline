-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local n = #M
    local m = #M[1]
    local sum = {}
    for i = 1, n do
        local s = 0
        for j = 1, m do
            s = s + M[i][j]
        end
        sum[i] = s
    end
    local sorted = {}
    for i = 1, n do
        sorted[i] = i
    end
    table.sort(sorted, function(a, b)
        return sum[a] < sum[b]
    end)
    return sorted
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())