-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
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
  local T = 1
  local U = 1
  local V = 1
  local W = 1
  local X = 1
  local Y = 1
  local Z = 1
  local AA = 1
  local AB = 1
  local AC = 1
  local AD = 1
  local AE = 1
  local AF = 1
  local AG = 1
  local AH = 1
  local AI = 1
  local AJ = 1
  local AK = 1
  local AL = 1
  local AM = 1
  local AN = 1
  local AO = 1
  local AP = 1
  local AQ = 1
  local AR

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())