-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    -- Create a table to store the sum of each row
    local row_sums = {}
    for i = 1, #M do
        -- Calculate the sum of the current row
        local sum = 0
        for j = 1, #M[i] do
            sum = sum + M[i][j]
        end
        -- Store the sum in the row_sums table
        row_sums[i] = sum
    end
    -- Sort the row_sums table in ascending order
    table.sort(row_sums)
    -- Create a new table to store the sorted matrix
    local sorted_matrix = {}
    for i = 1, #M do
        -- Create a new table to store the current row
        local row = {}
        -- Sort the current row in ascending order
        table.sort(M[i])
        -- Store the sorted row in the sorted_matrix table
        sorted_matrix[i] = row
    end
    -- Return the sorted matrix
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