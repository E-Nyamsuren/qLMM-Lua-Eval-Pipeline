-- Write a function that returns integers x and y that satisfy ax + by = n as a table, or return nil if no solution exists.
local function find_solution(a, b, n)
    if a == 0 or b == 0 then
        return
    end
    if a == b then
        return
    end
    if a > b then
        return
    end
    if a < b then
        return
    end
    if a == b then
        return
    end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
        return
    end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
            return
        end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
        return
    end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
            return
        end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
        return
    end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
            return
        end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
        return
    end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
            return
        end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
        return
    end
    if a < b then
        return
    end
    if a > b then
        return
    end
    if a == b then
            return
        end
    if a < b then

lu = require('luaunit')

function test_humaneval()
local candidate = find_solution
    lu.assertEquals(candidate(2, 3, 7), {2, 1})
    lu.assertEquals(candidate(4, 2, 7), None)
    lu.assertEquals(candidate(1, 13, 17), {4, 1})
end

os.exit(lu.LuaUnit.run())