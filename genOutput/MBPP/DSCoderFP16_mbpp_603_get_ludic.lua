-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local lucid_numbers = {}
    for i = 1, n do
        local is_lucid = true
        local j = 2
        while j * j <= i do
            if i % j == 0 then
                is_lucid = false
                break
            end
            j = j + 1
        end
        if is_lucid then
            table.insert(lucid_numbers, i)
        end
    end
    return lucid_numbers
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())