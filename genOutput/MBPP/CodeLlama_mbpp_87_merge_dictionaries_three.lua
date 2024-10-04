-- Write a function to merge three dictionaries into a single table.
local function merge_dictionaries_three(dict1, dict2, dict3)
    local result = {}
    for k, v in pairs(dict1) do
        result[k] = v
    end
    for k, v in pairs(dict2) do
        result[k] = v
    end
    for k, v in pairs(dict3) do
        result[k] = v
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = merge_dictionaries_three
    lu.assertEquals(candidate({['R'] = 'Red', ['B'] = 'Black', ['P'] = 'Pink'}, {['G'] = 'Green', ['W'] = 'White'}, {['O'] = 'Orange', ['W'] = 'White', ['B'] = 'Black'}), {['B'] = 'Black', ['R'] = 'Red', ['P'] = 'Pink', ['G'] = 'Green', ['W'] = 'White', ['O'] = 'Orange'})
    lu.assertEquals(candidate({['R'] = 'Red', ['B'] = 'Black', ['P'] = 'Pink'}, {['G'] = 'Green', ['W'] = 'White'}, {['L'] = 'lavender', ['B'] = 'Blue'}), {['W'] = 'White', ['P'] = 'Pink', ['B'] = 'Black', ['R'] = 'Red', ['G'] = 'Green', ['L'] = 'lavender'})
    lu.assertEquals(candidate({['R'] = 'Red', ['B'] = 'Black', ['P'] = 'Pink'}, {['L'] = 'lavender', ['B'] = 'Blue'}, {['G'] = 'Green', ['W'] = 'White'}), {['B'] = 'Black', ['P'] = 'Pink', ['R'] = 'Red', ['G'] = 'Green', ['L'] = 'lavender', ['W'] = 'White'})
end

os.exit(lu.LuaUnit.run())