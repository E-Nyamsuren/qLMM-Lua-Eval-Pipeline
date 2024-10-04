lu = require('luaunit')

function testMinTotalCost()
	local candidate = minTotalCost
	lu.assertTrue(candidate(5, {4, 3, 3, 3, 3}) == 15)
	lu.assertTrue(candidate(3, {1, 1, 1}) == 3)
	lu.assertTrue(candidate(4, {5, 4, 3, 2}) == 11)
	lu.assertTrue(candidate(4, {100, 99, 98, 97}) == 391)
	lu.assertTrue(candidate(6, {10, 9, 8, 7, 6, 5}) == 35)
	lu.assertTrue(candidate(7, {2, 2, 2, 2, 2, 2, 2}) == 14)
	lu.assertTrue(candidate(8, {9, 7, 7, 7, 7, 7, 7, 7}) == 56)
	lu.assertTrue(candidate(9, {3, 2, 2, 2, 2, 2, 2, 2, 2}) == 18)
	lu.assertTrue(candidate(10, {6, 5, 5, 5, 5, 5, 5, 5, 5, 5}) == 50)
	lu.assertTrue(candidate(11, {8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}) == 11)
end

os.exit(lu.LuaUnit.run())