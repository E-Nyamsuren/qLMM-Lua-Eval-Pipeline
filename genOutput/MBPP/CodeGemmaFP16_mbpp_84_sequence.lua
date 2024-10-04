-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
    local seq = {0, 1}
    for i = 2, n do
        local prev = seq[i - 1]
        local curr = seq[i]
        local next = 0
        while curr > 0 do
            local digit = curr % 10
            next = next * 10 + digit
            curr = math.floor(curr / 10)
        end
        next = next + prev
        seq[i] = next
    end
    return seq[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())