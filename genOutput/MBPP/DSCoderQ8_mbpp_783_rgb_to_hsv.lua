-- Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
local function rgb_to_hsv(r, g, b)
    -- Normalize r, g, b to [0, 1]
    r, g, b = r / 255, g / 255, b / 255

lu = require('luaunit')

function test_humaneval()
local candidate = rgb_to_hsv
    lu.assertEquals(candidate(255, 255, 255), {0.0, 0.0, 100.0})
    lu.assertEquals(candidate(0, 215, 0), {120.0, 100.0, 84.31372549019608})
    lu.assertEquals(candidate(10, 215, 110), {149.26829268292684, 95.34883720930233, 84.31372549019608})
end

os.exit(lu.LuaUnit.run())