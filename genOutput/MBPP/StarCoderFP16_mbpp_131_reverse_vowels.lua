-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
	local vowels = {'a', 'e', 'i', 'o', 'u', 'y'}
	local str2 = {}
	local i = 1
	local j = 1
	local k = 1
	local l = 1
	local m = 1
	local n = 1
	local o = 1
	local p = 1
	local q = 1
	local r = 1
	local s = 1
	local t = 1
	local u = 1
	local v = 1
	local w = 1
	local x = 1
	local y = 1
	local z = 1
	local a = 1
	local b = 1
	local c = 1
	local d = 1
	local e = 1
	local f = 1
	local g = 1
	local h = 1
	local i = 1
	local j = 1
	local k = 1
	local l = 1
	local m = 1
	local n = 1
	local o = 1
	local p = 1
	local q = 1
	local r = 1
	local s = 1
	local t = 1
	local u = 1
	local v = 1
	local w = 1
	local x = 1
	local y = 1
	local z = 1
	local A = 1
	local B = 1
	local C = 1
	local D = 1
	local E = 1
	local F = 1
	local G = 1
	local H = 1
	local I = 1
	local J = 1
	local K = 1
	local L = 1
	local M = 1
	local N = 1
	local O = 1
	local P = 1
	local Q = 1
	local R = 1
	local S = 1


lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())