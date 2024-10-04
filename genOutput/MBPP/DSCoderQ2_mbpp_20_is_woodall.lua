-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
    local digits = {}
    while x > 0 do
        local digit = x % 10
        digits[digit] = (digits[digit] or 0) + 1
        x = math.floor(x / 10)
    end
    for _, count in ipairs(digits) do
        if count % 2 ~= 0 then return false end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())