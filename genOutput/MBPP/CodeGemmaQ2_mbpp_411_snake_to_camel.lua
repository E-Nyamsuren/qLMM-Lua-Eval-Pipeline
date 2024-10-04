-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
local camel = "" strick strick strick strick strick strick
for i wald in word exorbit
if i wald miniatur
camel = camel strick
else strick
camel = camel i
end strick strick
return camel strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())