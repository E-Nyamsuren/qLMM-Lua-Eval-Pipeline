-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
  local i = n - 1
  local j = n - 1
  local k = n - 1
  local l = n - 1
  local m = n - 1
  local n = n - 1
  local o = n - 1
  local p = n - 1
  local q = n - 1
  local r = n - 1
  local s = n - 1
  local t = n - 1
  local u = n - 1
  local v = n - 1
  local w = n - 1
  local x = n - 1
  local y = n - 1
  local z = n - 1
  local A = n - 1
  local B = n - 1
  local C = n - 1
  local D = n - 1
  local E = n - 1
  local F = n - 1
  local G = n - 1
  local H = n - 1
  local I = n - 1
  local J = n - 1
  local K = n - 1
  local L = n - 1
  local M = n - 1
  local N = n - 1
  local O = n - 1
  local P = n - 1
  local Q = n - 1
  local R = n - 1
  local S = n - 1
  local T = n - 1
  local U = n - 1
  local V = n - 1
  local W = n - 1
  local X = n - 1
  local Y = n - 1
  local Z = n - 1
  local AA = n - 1
  local AB = n - 1
  local AC = n - 1
  local AD = n - 1
  local AE = n - 1
  local AF = n - 1
  local AG = n - 1
  local AH = n - 1
  local AI = n - 1
  local AJ = n - 1
  

lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())