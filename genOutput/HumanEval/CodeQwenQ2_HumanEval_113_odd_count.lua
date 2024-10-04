-- Given a table of strings, where each string consists of only digits, return a table.
-- Each element i of the output should be "the number of odd elements in the
-- string i of the input." where all the i's should be replaced by the number
-- of odd digits in the i'th string of the input.
-- >>> odd_count({'1234567'})
-- {'the number of odd elements 4n the str4ng 4 of the 4nput.'}
-- >>> odd_count({'3', '11111111'})
-- {'the number of odd elements 1n the str1ng 1 of the 1nput.', 'the number of odd elements 8n the str8ng 8 of the 8nput.'}
local function odd_count(lst)
    local function count_odd(s)
        local count = 0
        for i in s:gmatch('%d') do
            if i % 2 ~= 0 then
                count = count + 1
            end
        end
        return count
    end
    local result = {}
    for i, s in ipairs(lst) do
        result[i] = 'the number of odd elements ' .. count_odd(s) .. 'n the str' .. count_odd(s) .. 'ng ' .. count_odd(s) .. ' of the ' .. count_odd(s) .. 'nput.'
    end
    return result
end
print(odd_count({'1234567'}))
print(odd_count({'3', '11111111'}))
print(odd_count({'2468', '13579'}))
print(odd_count({'1234567890'}))
print(odd_count({'0'}))
print(odd_count({'111'}))
print(odd_count({'222'}))
print(odd_count({'333'}))
print(odd_count({'444'}))
print(odd_count({'555'}))
print(odd_count({'666'}))
print(odd_count({'777'}))
print(odd_count({'888'}))
print(odd_count({'999'}))
print(odd_count({'

lu = require('luaunit')

function test_humaneval()
local candidate = odd_count
    lu.assertEquals(candidate({'1234567'}), {'the number of odd elements 4n the str4ng 4 of the 4nput.'})
    lu.assertEquals(candidate({'3', '11111111'}), {'the number of odd elements 1n the str1ng 1 of the 1nput.', 'the number of odd elements 8n the str8ng 8 of the 8nput.'})
    lu.assertEquals(candidate({'271', '137', '314'}), {'the number of odd elements 2n the str2ng 2 of the 2nput.', 'the number of odd elements 3n the str3ng 3 of the 3nput.', 'the number of odd elements 2n the str2ng 2 of the 2nput.'})
end

os.exit(lu.LuaUnit.run())