-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
    local result = ""
    local i = 1
    while i <= #items do
        if items:sub(i, i) == "(" then
            local j = i + 1
            while j <= #items do
                if items:sub(j, j) == ")" then
                    break
                end
                j = j + 1
            end
            if j <= #items then
                result = result .. items:sub(i + 1, j - 1)
                i = j + 1
            else
                result = result .. items:sub(i)
                i = i + 1
            end
        else
            result = result .. items:sub(i, i)
            i = i + 1
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_parenthesis
    lu.assertEquals(candidate({'python (chrome)'}), 'python')
    lu.assertEquals(candidate({'string(.abc)'}), 'string')
    lu.assertEquals(candidate({'alpha(num)'}), 'alpha')
end

os.exit(lu.LuaUnit.run())