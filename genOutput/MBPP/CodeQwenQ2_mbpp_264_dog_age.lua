-- Write a function to calculate a dog's age in dog's years.
local function dog_age(h_age)
    if h_age < 0 then
        return "Invalid age"
    elseif h_age < 2 then
        return h_age * 10.5
    else
        return 21 + (h_age - 2) * 4
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = dog_age
    lu.assertEquals(candidate(12), 61)
    lu.assertEquals(candidate(15), 73)
    lu.assertEquals(candidate(24), 109)
end

os.exit(lu.LuaUnit.run())