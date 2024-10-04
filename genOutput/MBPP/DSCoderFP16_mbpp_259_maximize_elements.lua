-- Write a function to maximize the given two tables.
local function maximize_elements(test_tup1, test_tup2)
    -- Check if both tables are not empty
    if #test_tup1 ~= 0 and #test_tup2 ~= 0 then
        -- Check if the first element of the first table is greater than the first element of the second table
        if test_tup1[1] > test_tup2[1] then
            return test_tup1
        elseif test_tup1[1] < test_tup2[1] then
            return test_tup2
        else
            -- If the first elements are equal, check the second elements
            if test_tup1[2] > test_tup2[2] then
                return test_tup1
            elseif test_tup1[2] < test_tup2[2] then
                return test_tup2
            else
                -- If the second elements are also equal, return the first table
                return test_tup1
            end
        end
    else
        -- If one of the tables is empty, return the non-empty table
        return test_tup1 or test_tup2
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = maximize_elements
    lu.assertEquals(candidate({{1, 3}, {4, 5}, {2, 9}, {1, 10}}, {{6, 7}, {3, 9}, {1, 1}, {7, 3}}), {{6, 7}, {4, 9}, {2, 9}, {7, 10}})
    lu.assertEquals(candidate({{2, 4}, {5, 6}, {3, 10}, {2, 11}}, {{7, 8}, {4, 10}, {2, 2}, {8, 4}}), {{7, 8}, {5, 10}, {3, 10}, {8, 11}})
    lu.assertEquals(candidate({{3, 5}, {6, 7}, {4, 11}, {3, 12}}, {{8, 9}, {5, 11}, {3, 3}, {9, 5}}), {{8, 9}, {6, 11}, {4, 11}, {9, 12}})
end

os.exit(lu.LuaUnit.run())