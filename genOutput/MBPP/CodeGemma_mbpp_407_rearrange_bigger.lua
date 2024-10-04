-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
  local s = tostring(n)
  local t = {}
  for i = 1, #s do
    table.insert(t, tonumber(string.sub(s, i, i)))
  end
  table.sort(t, function(a, b) return a > b end)
  local i = 1
  while i <= #t and t[i] == t[#t] do
    i = i + 1
  end
  if i > #t then
    return nil
  end
  local j = #t
  while j >= i and t[j] == t[i] do
    j = j - 1
  end
  t[i], t[j] = t[j], t[i]
  local k = i + 1
  while k <= #t - 1 do
    t[k], t[k + 1] = t[k + 1], t[k]
    k = k + 1
  end
  local r = 0
  for i = 1, #t do
    r = r * 10 + t[i]
  end
  return r
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())