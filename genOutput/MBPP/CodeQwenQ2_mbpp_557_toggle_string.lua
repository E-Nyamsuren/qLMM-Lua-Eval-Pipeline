-- Write a function to toggle the case of all characters in a string.
local function toggle_string(string)
    local result = ""
    for i = 1, string.len(string) do
        local char = string.sub(string, i, i)
        if char:match("%a") then
            result = result .. (char:lower() == char and char:upper() or char:lower())
        else
            result = result .. char
        end
    end
    return result
end
print(toggle_string("Hello World"))  -- Output: hELLO wORLD
print(toggle_string("123 abc ABC"))  -- Output: 123 ABC abc
print(toggle_string("!@#"))  -- Output: !@#
print(toggle_string(""))  -- Output: ""
print(toggle_string("1234567890"))  -- Output: 1234567890
print(toggle_string("aBcDeF"))  -- Output: AbCdEf
print(toggle_string("!@#$%^&*()"))  -- Output: !@#$%^&*()
print(toggle_string("qWrTy"))  -- Output: QwRtY
print(toggle_string("zXcVb"))  -- Output: ZxCvB
print(toggle_string("sDfGh"))  -- Output: SdFgH
print(toggle_string("jKlHgF"))  -- Output: JkLhGf
print(toggle_string("nBmVc"))  -- Output: NbMvC
print(toggle_string("mNbVc"))  -- Output: MnBvC
print(toggle_string("lNbVc"))  -- Output: LnBvC
print(toggle_string("kLbVc"))  -- Output: KlBvC
print(toggle_string("jHgFd"))  -- Output: JhGfD
print(toggle_string("iGfEdC"))  -- Output: IgFdC
print(toggle_string("hFdCb"))  -- Output: HfDcB
print(toggle_string("

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_string
    lu.assertEquals(candidate('Python'), 'pYTHON')
    lu.assertEquals(candidate('Pangram'), 'pANGRAM')
    lu.assertEquals(candidate('LIttLE'), 'liTTle')
end

os.exit(lu.LuaUnit.run())