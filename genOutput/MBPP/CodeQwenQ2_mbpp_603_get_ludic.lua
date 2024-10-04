-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local ludic = {}
    local i = 2
    while i <= n do
        if i % 2 == 0 then
            ludic[i] = true
        else
            ludic[i] = false
        end
        i = i + 1
    end
    local j = 2
    while j <= n do
        if ludic[j] then
            local k = j * 2
            while k <= n do
                ludic[k] = false
                k = k + j
            end
        end
        j = j + 1
    end
    local result = {}
    for i = 2, n do
        if ludic[i] then
            table.insert(result, i)
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())