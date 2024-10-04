-- Write a function to sort a given matrix in ascending order according to the sum of its rows.
local function sort_matrix(M)
    local n = #M
    for i = 1, n do
        for j = i + 1, n do
            if M[i][1] + M[j][1] < M[j][1] + M[i][1] then
                M[i], M[j] = M[j], M[i]
            end
        end
    end
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