-- Write a function to extract values between quotation marks " " of the given string.
local function extract_quotation(text1)
    local result = {}
    local i = 1
    while i <= #text1 do
        local j = text1:find('"', i)
        if j then
            local k = text1:find('"', j + 1)
            if k then
                table.insert(result, text1:sub(j + 1, k - 1))
                i = k + 1
            else
                break
            end
        else
            break
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_quotation
    lu.assertEquals(candidate('Cortex "A53" Based "multi" tasking "Processor"'), {'A53', 'multi', 'Processor'})
    lu.assertEquals(candidate('Cast your "favorite" entertainment "apps"'), {'favorite', 'apps'})
    lu.assertEquals(candidate('Watch content "4k Ultra HD" resolution with "HDR 10" Support'), {'4k Ultra HD', 'HDR 10'})
    lu.assertEquals(candidate("Watch content '4k Ultra HD' resolution with 'HDR 10' Support"), {})
end

os.exit(lu.LuaUnit.run())