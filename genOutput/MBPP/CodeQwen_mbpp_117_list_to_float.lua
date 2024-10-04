-- Write a function to convert all possible convertible elements in a table of tables to floats.
local function list_to_float(test_list)
    local result = {}
    for _, sublist in ipairs(test_list) do
        local subresult = {}
        for _, element in ipairs(sublist) do
            if type(element) == "number" then
                table.insert(subresult, element)
            elseif type(element) == "string" then
                local num = tonumber(element)
                if num then
                    table.insert(subresult, num)
                else
                    table.insert(subresult, element)
                end
            else
                table.insert(subresult, element)
            end
        end
        table.insert(result, subresult)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = list_to_float
    lu.assertEquals(candidate({{'3', '4'}, {'1', '26.45'}, {'7.32', '8'}, {'4', '8'}}), {{3.0, 4.0}, {1.0, 26.45}, {7.32, 8.0}, {4.0, 8.0}})
    lu.assertEquals(candidate({{'4', '4'}, {'2', '27'}, {'4.12', '9'}, {'7', '11'}}), {{4.0, 4.0}, {2.0, 27.0}, {4.12, 9.0}, {7.0, 11.0}})
    lu.assertEquals(candidate({{'6', '78'}, {'5', '26.45'}, {'1.33', '4'}, {'82', '13'}}), {{6.0, 78.0}, {5.0, 26.45}, {1.33, 4.0}, {82.0, 13.0}})
end

os.exit(lu.LuaUnit.run())