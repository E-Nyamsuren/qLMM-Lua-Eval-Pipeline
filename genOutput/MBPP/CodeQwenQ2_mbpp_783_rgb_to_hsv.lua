-- Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
local function rgb_to_hsv(r, g, b)
    r = r / 255
    g = g / 255
    b = b / 255
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h
    local s
    local v = max
    if min == max then
        h = 0
    elseif max == r then
        h = (60 * ((g - b) / (max - min)) + 360) % 360
    elseif max == g then
        h = (60 * ((b - r) / (max - min)) + 120) % 360
    elseif max == b then
        h = (60 * ((r - g) / (max - min)) + 240) % 360
    end
    if max == 0 then
        s = 0
    else
        s = (max - min) / max
    end
    return h, s, v
end
return rgb_to_hsv

lu = require('luaunit')

function test_humaneval()
local candidate = rgb_to_hsv
    lu.assertEquals(candidate(255, 255, 255), {0.0, 0.0, 100.0})
    lu.assertEquals(candidate(0, 215, 0), {120.0, 100.0, 84.31372549019608})
    lu.assertEquals(candidate(10, 215, 110), {149.26829268292684, 95.34883720930233, 84.31372549019608})
end

os.exit(lu.LuaUnit.run())