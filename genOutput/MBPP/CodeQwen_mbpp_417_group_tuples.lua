-- Write a function to find common first element in given table of tables.
local function group_tuples(Input)
    local common_elements = {}
    for i, table in ipairs(Input) do
        for j, element in ipairs(table) do
            if i == 1 then
                common_elements[#common_elements + 1] = element
            else
                local found = false
                for k, common_element in ipairs(common_elements) do
                    if common_element == element then
                        found = true
                        break
                    end
                end
                if not found then
                    common_elements[#common_elements + 1] = element
                end
            end
        end
    end
    return common_elements
end

lu = require('luaunit')

function test_humaneval()
local candidate = group_tuples
    lu.assertEquals(candidate({{'x', 'y'}, {'x', 'z'}, {'w', 't'}}), {{'x', 'y', 'z'}, {'w', 't'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'a', 'c'}, {'d', 'e'}}), {{'a', 'b', 'c'}, {'d', 'e'}})
    lu.assertEquals(candidate({{'f', 'g'}, {'f', 'g'}, {'h', 'i'}}), {{'f', 'g', 'g'}, {'h', 'i'}})
end

os.exit(lu.LuaUnit.run())