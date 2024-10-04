-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
    local seq = {1}
    local i = 1
    while i < n do
        local new = {}
        for j, v in ipairs(seq) do
            if j == 1 or j == #seq then
                new[#new+1] = v
            else
                new[#new+1] = seq[j-1] + seq[j]
            end
        end
        seq = new
        i = i + 1
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