-- Write a function to extract values between quotation marks " " of the given string.
local function extract_quotation(text1)
    local start_pos, end_pos = text1:find('"')
    if start_pos and end_pos and start_pos < end_pos then
        return text1:sub(start_pos + 1, end_pos - 1)
    else
        return nil
    end
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