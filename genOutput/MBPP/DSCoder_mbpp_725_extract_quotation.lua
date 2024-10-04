-- Write a function to extract values between quotation marks " " of the given string.
local function extract_quotation(text1)
    local start_index, end_index, found = 1, 1, false
    local result = {}
    while start_index do
        start_index, end_index = string.find(text1, '"', end_index)
        if start_index then
            found = true
            local start_quote = start_index
            local end_quote = string.find(text1, '"', start_index + 1)
            if end_quote then
                table.insert(result, string.sub(text1, start_quote + 1, end_quote - 1))
                end_index = end_quote + 1
            else
                break
            end
        end
    end
    if found then
        return result
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