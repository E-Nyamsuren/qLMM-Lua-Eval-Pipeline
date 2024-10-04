-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local N = #M
    local S = {}
    for i = 1, N do
        S[i] = 0
        for j = 1, N do
            S[i] = S[i] + M[i][j]
        end
    end
    table.sort(S)
    local R = {}
    for i = 1, N do
        R[i] = {}
        for j = 1, N do
            R[i][j] = M[i][j]
        end
    end
    for i = 1, N do
        for j = 1, N do
            R[i][j] = R[i][j] * S[i]
        end
    end
    return R
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())