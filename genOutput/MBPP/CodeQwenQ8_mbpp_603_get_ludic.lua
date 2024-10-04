-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local ludics = {}
    local i = 1
    while i <= n do
        table.insert(ludics, i)
        i = i + 1
    end
    local k = 1
    while k <= #ludics do
        local j = k + 1
        while j <= #ludics do
            if ludics[j] % ludics[k] == 0 then
                table.remove(ludics, j)
            else
                j = j + 1
            end
        end
        k = k + 1
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