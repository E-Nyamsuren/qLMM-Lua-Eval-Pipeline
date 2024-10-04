-- Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
local function rgb_to_hsv(r, g, b)
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, v
    v = max
    local delta = max - min
    if max == 0 then
        s = 0
        h = 0
    else
        s = delta / max
        if r == max then
            h = (g - b) / delta
            if g < b then
                h = h + 6
            end
        elseif g == max then
            h = (b - r) / delta + 2
        elseif b == max then
            h = (r - g) / delta + 4
        end
        h = h / 6
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