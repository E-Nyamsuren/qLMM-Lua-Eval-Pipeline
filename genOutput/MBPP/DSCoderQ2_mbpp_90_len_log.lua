-- Write a luathon function to find the length of the longest word.
local function len_log(list1)
    local max_len = 0
    for _, word in ipairs(list1) do
        if #word > max_len then
            max_len = #word
        end
    end
    return max_len
end

lu = require('luaunit')

function test_humaneval()
local candidate = len_log
    lu.assertEquals(candidate({'python', 'PHP', 'bigdata'}), 7)
    lu.assertEquals(candidate({'a', 'ab', 'abc'}), 3)
    lu.assertEquals(candidate({'small', 'big', 'tall'}), 5)
end

os.exit(lu.LuaUnit.run())