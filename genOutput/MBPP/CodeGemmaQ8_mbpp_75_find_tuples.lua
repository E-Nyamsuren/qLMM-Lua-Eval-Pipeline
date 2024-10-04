-- Write a function to find tables which have all elements divisible by k from the given table of tables.
local function find_tuples(test_list, K)
    local result = {}
    for i = 1, #test_list do
        local tuple = test_list[i]
        local is_divisible = true
        for j = 1, #tuple do
            if tuple[j] % K ~= 0 then
                is_divisible = false
                break
            end
        end
        if is_divisible then
            table.insert(result, tuple)
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_tuples
    lu.assertEquals(candidate({{6, 24, 12}, {7, 9, 6}, {12, 18, 21}}, 6), {{6, 24, 12}})
    lu.assertEquals(candidate({{5, 25, 30}, {4, 2, 3}, {7, 8, 9}}, 5), {{5, 25, 30}})
    lu.assertEquals(candidate({{7, 9, 16}, {8, 16, 4}, {19, 17, 18}}, 4), {{8, 16, 4}})
end

os.exit(lu.LuaUnit.run())