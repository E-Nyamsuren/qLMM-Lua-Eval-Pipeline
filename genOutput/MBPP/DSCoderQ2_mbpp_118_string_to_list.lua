-- Write a function to convert a string to a table of strings split on the space character.
local function string_to_list(string)
    return vim.split(string, " ")
end

lu = require('luaunit')

function test_humaneval()
local candidate = string_to_list
    lu.assertEquals(candidate('python programming'), {'python', 'programming'})
    lu.assertEquals(candidate('lists tuples strings'), {'lists', 'tuples', 'strings'})
    lu.assertEquals(candidate('write a program'), {'write', 'a', 'program'})
end

os.exit(lu.LuaUnit.run())