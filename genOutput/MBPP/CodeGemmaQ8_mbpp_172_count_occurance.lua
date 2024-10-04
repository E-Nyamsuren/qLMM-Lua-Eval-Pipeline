-- Write a function to count the number of occurence of the string 'std' in a given string.
local function count_occurance(s)
    local count = 0
    local i = 1
    while true do
        local j = s:find('std', i)
        if j == nil then
            break
        end
        count = count + 1
        i = j + 1
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_occurance
    lu.assertEquals(candidate('letstdlenstdporstd'), 3)
    lu.assertEquals(candidate('truststdsolensporsd'), 1)
    lu.assertEquals(candidate('makestdsostdworthit'), 2)
    lu.assertEquals(candidate('stds'), 1)
    lu.assertEquals(candidate(''), 0)
end

os.exit(lu.LuaUnit.run())