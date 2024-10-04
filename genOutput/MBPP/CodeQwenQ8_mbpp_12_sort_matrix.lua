-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    -- Create a table to store the sum of each row
    local sums = {}
    for i = 1, #M do
        sums[i] = 0
        for j = 1, #M[i] do
            sums[i] = sums[i] + M[i][j]
        end
    end
    
    -- Sort the matrix based on the sum of its rows
    table.sort(M, function(a, b)
        return sums[a] < sums[b]
    end)
    
    return M
end

lu = require('luaunit')

function test_humaneval()
local candidate = sort_matrix
    lu.assertEquals(candidate({{1, 2, 3}, {2, 4, 5}, {1, 1, 1}}), {{1, 1, 1}, {1, 2, 3}, {2, 4, 5}})
    lu.assertEquals(candidate({{1, 2, 3}, {-2, 4, -5}, {1, -1, 1}}), {{-2, 4, -5}, {1, -1, 1}, {1, 2, 3}})
    lu.assertEquals(candidate({{5, 8, 9}, {6, 4, 3}, {2, 1, 4}}), {{2, 1, 4}, {6, 4, 3}, {5, 8, 9}})
end

os.exit(lu.LuaUnit.run())