-- Given a string 'text', return its md5 hash equivalent string.
-- If 'text' is an empty string, return nil.
-- >>> string_to_md5('Hello world')
-- '3e25960a79dbc69b674cd4ec67a72c62'
local function string_to_md5(text)
    if text == '' then
        return nil
    end
    local md5 = require('md5')
    return md5.sumhexa(text)
end
print(string_to_md5('Hello world')) -- '3e25960a79dbc69b674cd4ec67a72c62'
print(string_to_md5('')) -- nil
print(string_to_md5('OpenWisp')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp2')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp3')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp4')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp5')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp6')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp7')) -- 'd0a291c0a3c7c3c7c7c7c7c7c7c7c7c7'
print(string_to_md5('OpenWisp

lu = require('luaunit')

function test_humaneval()
local candidate = string_to_md5
    lu.assertEquals(candidate('Hello world'), '3e25960a79dbc69b674cd4ec67a72c62')
    lu.assertEquals(candidate(''), None)
    lu.assertEquals(candidate('A B C'), '0ef78513b0cb8cef12743f5aeb35f888')
    lu.assertEquals(candidate('password'), '5f4dcc3b5aa765d61d8327deb882cf99')
end

os.exit(lu.LuaUnit.run())