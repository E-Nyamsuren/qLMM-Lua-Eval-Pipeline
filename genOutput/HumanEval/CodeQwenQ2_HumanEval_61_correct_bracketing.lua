-- brackets is a string of "(" and ")".
-- return true if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing('(')
-- false
-- >>> correct_bracketing('()')
-- true
-- >>> correct_bracketing('(()())')
-- true
-- >>> correct_bracketing(')(()')
-- false
local function correct_bracketing(brackets)
    local count = 0
    for i in brackets:gmatch(".") do
        if i == "(" then
            count = count + 1
        elseif i == ")" then
            count = count - 1
        end
        if count < 0 then
            return false
        end
    end
    return count == 0
end
print(correct_bracketing('(')) -- false
print(correct_bracketing('()')) -- true
print(correct_bracketing('(()())')) -- true
print(correct_bracketing(')(()')) -- false
```
This code snippet defines a function `correct_bracketing` that takes a string of brackets as input and returns `true` if every opening bracket has a corresponding closing bracket. It uses a counter to keep track of the number of open brackets and decrements it when a closing bracket is encountered. If the counter becomes negative, it means there is a closing bracket without a corresponding opening bracket, and the function returns `false`. If the counter is zero at the end of the string, it means all brackets are correctly matched, and the function returns `true`. The code also includes test cases to demonstrate the function's behavior.
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```


lu = require('luaunit')

function test_humaneval()
local candidate = correct_bracketing
    lu.assertEquals(candidate('()'), true)
    lu.assertEquals(candidate('(()())'), true)
    lu.assertEquals(candidate('()()(()())()'), true)
    lu.assertEquals(candidate('()()((()()())())(()()(()))'), true)
    lu.assertEquals(candidate('((()())))'), false)
    lu.assertEquals(candidate(')(()'), false)
    lu.assertEquals(candidate('('), false)
    lu.assertEquals(candidate('(((('), false)
    lu.assertEquals(candidate(')'), false)
    lu.assertEquals(candidate('(()'), false)
    lu.assertEquals(candidate('()()(()())())(()'), false)
    lu.assertEquals(candidate('()()(()())()))()'), false)
end

os.exit(lu.LuaUnit.run())