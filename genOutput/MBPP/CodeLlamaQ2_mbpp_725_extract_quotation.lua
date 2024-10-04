-- Write a function to extract values between quotation marks " " of the given string.
local function extract_quotation(text1)
    local result = {}
    local start = text1:find('"')
    local end_ = text1:find('"', start + 1)
    while start and end_ do
        table.insert(result, text1:sub(start + 1, end_ - 1))
        start = text1:find('"', end_ + 1)
        end_ = text1:find('"', start + 1)
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