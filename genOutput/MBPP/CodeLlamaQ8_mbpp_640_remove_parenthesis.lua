-- Write a function to remove the parenthesis and what is inbetween them from a string.
local function remove_parenthesis(items)
    local result = {}
    local i = 1
    while i <= #items do
        local c = items:sub(i, i)
        if c == "(" then
            local j = i + 1
            while j <= #items do
                local c = items:sub(j, j)
                if c == ")" then
                    break
                end
                j = j + 1
            end
            if j <= #items then
                table.insert(result, items:sub(i + 1, j - 1))
                i = j + 1
            else
                error("Unmatched parenthesis")
            end
        else
            table.insert(result, c)
            i = i + 1
        end
    end
    return table.concat(result)
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_parenthesis
    lu.assertEquals(candidate({'python (chrome)'}), 'python')
    lu.assertEquals(candidate({'string(.abc)'}), 'string')
    lu.assertEquals(candidate({'alpha(num)'}), 'alpha')
end

os.exit(lu.LuaUnit.run())