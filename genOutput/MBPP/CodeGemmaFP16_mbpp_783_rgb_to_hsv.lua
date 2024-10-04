-- Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
local function rgb_to_hsv(r, g, b)
    local h, s, v
    local min, max = math.min(r, g, b), math.max(r, g, b)
    local delta = max - min
    v = max
    if max == 0 then
        s = 0
    else
        s = delta / max
    end
    if delta == 0 then
        h = 0
    elseif max == r then
        h = (g - b) / delta
    elseif max == g then
        h = 2 + (b - r) / delta
    else
        h = 4 + (r - g) / delta
    end
    h = h * 60
    if h < 0 then
        h = h + 360
    end
    return h, s, v
end

lu = require('luaunit')

function test_humaneval()
local candidate = rgb_to_hsv
    lu.assertEquals(candidate(255, 255, 255), {0.0, 0.0, 100.0})
    lu.assertEquals(candidate(0, 215, 0), {120.0, 100.0, 84.31372549019608})
    lu.assertEquals(candidate(10, 215, 110), {149.26829268292684, 95.34883720930233, 84.31372549019608})
end

os.exit(lu.LuaUnit.run())