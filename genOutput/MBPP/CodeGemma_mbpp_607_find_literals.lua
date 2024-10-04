-- Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
local function find_literals(text, pattern)
  local start = 1
  local end_ = 1
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
  local T = 1
  local U = 1
  local V = 1
  local W = 1
  local X = 1
  local Y = 1
  local Z = 1
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

lu = require('luaunit')

function test_humaneval()
local candidate = find_literals
    lu.assertEquals(candidate('The quick brown fox jumps over the lazy dog.', 'fox'), {'fox', 16, 19})
    lu.assertEquals(candidate('Its been a very crazy procedure right', 'crazy'), {'crazy', 16, 21})
    lu.assertEquals(candidate('Hardest choices required strongest will', 'will'), {'will', 35, 39})
end

os.exit(lu.LuaUnit.run())