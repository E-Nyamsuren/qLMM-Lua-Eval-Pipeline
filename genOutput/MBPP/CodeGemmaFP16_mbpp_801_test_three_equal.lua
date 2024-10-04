-- Write a luathon function to count the number of equal numbers from three given integers.
local function test_three_equal(x, y, z)
    local count = 0
    if x == y and y == z then
        count = count + 1
    end
    return count
end
print(test_three_equal(1, 1, 1))
print(test_three_equal(1, 1, 2))
print(test_three_equal(1, 2, 3))
print(test_three_equal(2, 2, 2))
print(test_three_equal(2, 3, 2))
print(test_three_equal(3, 3, 3))
print(test_three_equal(3, 3, 2))
print(test_three_equal(3, 2, 3))
print(test_three_equal(2, 3, 3))
print(test_three_equal(3, 2, 2))
print(test_three_equal(2, 2, 3))
print(test_three_equal(2, 3, 3))
print(test_three_equal(3, 3, 2))
print(test_three_equal(3, 2, 3))
print(test_three_equal(2, 3, 3))
print(test_three_equal(3, 2, 2))
print(test_three_equal(2, 2, 3))
print(test_three_equal(2, 3, 3))
print(test_three_equal(3, 3, 2))
print(test_three_equal(3, 2, 3))
print(test_three_equal(2, 3, 3))
print(test_three_equal(3, 2, 2))
print(test_three_equal(2, 2, 3))
print(test_three_equal(2, 3, 3))
print(test_three_equal(3, 3, 2))
print(test_three_equal(3, 2, 3))


lu = require('luaunit')

function test_humaneval()
local candidate = test_three_equal
    lu.assertEquals(candidate(1, 1, 1), 3)
    lu.assertEquals(candidate(-1, -2, -3), 0)
    lu.assertEquals(candidate(1, 2, 2), 2)
end

os.exit(lu.LuaUnit.run())