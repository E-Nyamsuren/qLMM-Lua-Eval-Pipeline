-- Write a function to find common first element in given table of tables.
local function group_tuples(Input)
    local common_elements = {}
    local first_element = {}
    
    for i, table in ipairs(Input) do
        if #table > 0 then
            first_element[i] = table[1]
        end
    end
    
    for i, element in ipairs(first_element) do
        if i == 1 then
            common_elements[element] = true
        elseif common_elements[element] then
            -- do nothing
        else
            common_elements[element] = false
        end
    end
    
    local result = {}
    for element, value in pairs(common_elements) do
        if value then
            table.insert(result, element)
        end
    end
    
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = group_tuples
    lu.assertEquals(candidate({{'x', 'y'}, {'x', 'z'}, {'w', 't'}}), {{'x', 'y', 'z'}, {'w', 't'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'a', 'c'}, {'d', 'e'}}), {{'a', 'b', 'c'}, {'d', 'e'}})
    lu.assertEquals(candidate({{'f', 'g'}, {'f', 'g'}, {'h', 'i'}}), {{'f', 'g', 'g'}, {'h', 'i'}})
end

os.exit(lu.LuaUnit.run())