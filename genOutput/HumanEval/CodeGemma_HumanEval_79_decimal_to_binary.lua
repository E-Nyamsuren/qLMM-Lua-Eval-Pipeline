-- You will be given a number in decimal form and your task is to convert it to
-- binary format. The function should return a string, with each character representing a binary
-- number. Each character in the string will be '0' or '1'.
-- There will be an extra couple of characters 'db' at the beginning and at the end of the string.
-- The extra characters are there to help with the format.
-- Examples:
-- >>> decimal_to_binary(15)
-- 'db1111db'
-- >>> decimal_to_binary(32)
-- 'db100000db'
local function decimal_to_binary(decimal)
  local binary = ""
  local remainder = 0
  local quotient = 0
  local i = 0
  local j = 0
  local k = 0
  local l = 0
  local m = 0
  local n = 0
  local o = 0
  local p = 0
  local q = 0
  local r = 0
  local s = 0
  local t = 0
  local u = 0
  local v = 0
  local w = 0
  local x = 0
  local y = 0
  local z = 0
  local aa = 0
  local bb = 0
  local cc = 0
  local dd = 0
  local ee = 0
  local ff = 0
  local gg = 0
  local hh = 0
  local ii = 0
  local jj = 0
  local kk = 0
  local ll = 0
  local mm = 0
  local nn = 0
  local oo = 0
  local pp = 0
  local qq = 0
  local rr = 0
  local ss = 0
  local tt = 0
  local uu = 0
  local vv = 0
  local ww = 0
  local xx = 0
  local yy = 0
  local zz = 0
  local aaa = 0
  local bbb = 0
  local ccc = 0
  local ddd = 0
  

lu = require('luaunit')

function test_humaneval()
local candidate = decimal_to_binary
    lu.assertEquals(candidate(0), 'db0db')
    lu.assertEquals(candidate(32), 'db100000db')
    lu.assertEquals(candidate(103), 'db1100111db')
    lu.assertEquals(candidate(15), 'db1111db')
end

os.exit(lu.LuaUnit.run())