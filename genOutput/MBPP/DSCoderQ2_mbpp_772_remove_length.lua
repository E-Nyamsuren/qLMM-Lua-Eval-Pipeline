-- Write a function to remove all the words with k length in the given string.
local function remove_length(test_str, K)
    local words = test_str:gmatch("%b()%b")
    local new_str = ""
    for word in words do
        if #word ~= K then
            new_str = new_str .. word .. " "
        end
    end
    return new_str:sub(1, new_str:len() - 1) -- remove trailing space
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_length
    lu.assertEquals(candidate('The person is most value tet', 3), 'person is most value')
    lu.assertEquals(candidate('If you told me about this ok', 4), 'If you me about ok')
    lu.assertEquals(candidate('Forces of darkeness is come into the play', 4), 'Forces of darkeness is the')
end

os.exit(lu.LuaUnit.run())