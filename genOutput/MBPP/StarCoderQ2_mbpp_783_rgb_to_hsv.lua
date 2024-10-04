-- Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
local function rgb_to_hsv(r, g, b)
	local r, g, b = r / 255, g / 255, b / 255
	local min = math.min(r, g, b)
	local max = math.max(r, g, b)
	local h = 0
	local s = 0
	local v = max
	local d = max - min
	if max == 0 then
		return 0, 0, v
	end
	if max == min then
		return 0, 0, v
	end
	if max == r then
		h = (g - b) / d * 60 + 0
	elseif max == g then
		h = (b - r) / d * 60 + 120
	elseif max == b then
		h = (r - g) / d * 60 + 240
	end
	if h < 0 then
		h = h + 360
	end
	if max == r then
		s = d / max
	elseif max == g then
		s = d / (max - r)
	elseif max == b then
		s = d / (max - g)
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