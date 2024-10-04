-- Given a table, return true if all keys are strings in lower 
-- case or all keys are strings in upper case, else return false.
-- The function should return false is the given table is empty.
-- Examples:
-- >>> check_dict_case({['a'] = 'apple', ['b'] = 'banana'})
-- true
-- >>> check_dict_case({['a'] = 'apple', ['A'] = 'banana', ['B'] = 'banana'})
-- false
-- >>> check_dict_case({['a'] = 'apple', [8] = 'banana', ['a'] = 'apple'})
-- false
-- >>> check_dict_case({['Name'] = 'John', ['Age'] = '36', ['City'] = 'Houston'})
-- false
-- >>> check_dict_case({['STATE'] = 'NC', ['ZIP'] = '12345'})
-- true
local function check_dict_case(dict)
    if next(dict) == nil then
        return false
    end
    local lower_keys = {}
    local upper_keys = {}
    for k, v in pairs(dict) do
        lower_keys[k] = true
        upper_keys[k] = true
    end
    for k, v in pairs(dict) do
        if lower_keys[k] == true then
            if string.lower(k) ~= k then
                return false
            end
        elseif upper_keys[k] == true then
            if string.upper(k) ~= k then
                return false
            end
        else
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_dict_case
    lu.assertEquals(candidate({['p'] = 'pineapple', ['b'] = 'banana'}), true)
    lu.assertEquals(candidate({['p'] = 'pineapple', ['A'] = 'banana', ['B'] = 'banana'}), false)
    lu.assertEquals(candidate({['p'] = 'pineapple', ['5'] = 'banana', ['a'] = 'apple'}), false)
    lu.assertEquals(candidate({['Name'] = 'John', ['Age'] = '36', ['City'] = 'Houston'}), false)
    lu.assertEquals(candidate({['STATE'] = 'NC', ['ZIP'] = '12345'}), true)
    lu.assertEquals(candidate({['fruit'] = 'Orange', ['taste'] = 'Sweet'}), true)
    lu.assertEquals(candidate({}), false)
end

os.exit(lu.LuaUnit.run())