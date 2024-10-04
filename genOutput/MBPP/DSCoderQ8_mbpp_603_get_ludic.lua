-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local ludic = {2}
    local function is_ludic(x)
        for i = 1, #ludic do
            if ludic[i] == x then return true end
            if ludic[i] > x then return false end
        end
        return false
    end
    local function add_ludic(x)
        if not is_ludic(x) then
            table.insert(ludic, x)
        end
    end
    local function next_ludic(x)
        return x + ludic[#ludic]
    end
    local x = 3
    while x <= n do
        add_ludic(x)
        x = next_ludic(x)
    end
    return ludic
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())