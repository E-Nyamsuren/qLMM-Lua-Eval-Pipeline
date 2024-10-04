-- Write a function to create a new table from the given string and table.
local function new_tuple(test_list, test_str)
    local new_tuple = {}
    local test_str_list = {}
    local test_str_list_len = 0
    local test_str_list_len_len = 0
    local test_str_list_len_len_len = 0
    local test_str_list_len_len_len_len = 0
    local test_str_list_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list_len_len_len_len_len_len_len_len_len_len_len_len_len_len_len_len_len = 0
    local test_str_list

lu = require('luaunit')

function test_humaneval()
local candidate = new_tuple
    lu.assertEquals(candidate({'WEB', 'is'}, 'best'), {'WEB', 'is', 'best'})
    lu.assertEquals(candidate({'We', 'are'}, 'Developers'), {'We', 'are', 'Developers'})
    lu.assertEquals(candidate({'Part', 'is'}, 'Wrong'), {'Part', 'is', 'Wrong'})
end

os.exit(lu.LuaUnit.run())