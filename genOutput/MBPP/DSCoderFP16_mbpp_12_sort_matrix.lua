-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local N = #M
    local sorted_matrix = {}
    local sums = {}
    for i = 1, N do
        local sum = 0
        for j = 1, N do
            sum = sum + M[i][j]
        end
        sums[i] = sum
    end
    table.sort(sums)
    for i = 1, N do
        table.insert(sorted_matrix, sums[i])
    end
    return sorted_matrix
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())