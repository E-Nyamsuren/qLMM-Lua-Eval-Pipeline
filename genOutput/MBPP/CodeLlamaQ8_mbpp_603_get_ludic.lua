-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local ludics = {2}
    local i = 3
    while i <= n do
        local is_ludic = true
        for _, v in ipairs(ludics) do
            if i % v == 0 then
                is_ludic = false
                break
            end
        end
        if is_ludic then
            ludics[#ludics + 1] = i
        end
        i = i + 1
    end
    return ludics
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())