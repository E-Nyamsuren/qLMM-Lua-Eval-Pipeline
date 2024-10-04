-- Write a function which takes a tables of tables and returns the average value for each subtable as a table.
local function average_tuple(nums)
    local sum = 0
    local count = 0
    for _, subtable in ipairs(nums) do
        for _, num in ipairs(subtable) do
            sum = sum + num
            count = count + 1
        end
    end
    local average = sum / count
    local result = {}
    for _, subtable in ipairs(nums) do
        local sub_sum = 0
        for _, num in ipairs(subtable) do
            sub_sum = sub_sum + num
        end
        table.insert(result, sub_sum / #subtable)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = average_tuple
    lu.assertEquals(candidate({{10, 10, 10, 12}, {30, 45, 56, 45}, {81, 80, 39, 32}, {1, 2, 3, 4}}), {30.5, 34.25, 27.0, 23.25})
    lu.assertEquals(candidate({{1, 1, -5}, {30, -15, 56}, {81, -60, -39}, {-10, 2, 3}}), {25.5, -18.0, 3.75})
    lu.assertEquals(candidate({{100, 100, 100, 120}, {300, 450, 560, 450}, {810, 800, 390, 320}, {10, 20, 30, 40}}), {305.0, 342.5, 270.0, 232.5})
end

os.exit(lu.LuaUnit.run())