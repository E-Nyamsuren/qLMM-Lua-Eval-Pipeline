
--[[
Given a sequence of student IDs entering a classroom, where the IDs range from 0 to N-1, calculate the total number of 
handshakes that occur. Each student will shake hands with every student already in the classroom with a smaller ID number.
The sequence represents the order in which students enter the classroom.

Examples:
    >>> countHandshakes(3, {2, 1, 0})
    0
]]--
function countHandshakes(n, order)
    local handshakes = 0
    for i = 0, n-1 do
        for j = 0, n-1 do
            if i < j and order[i] < order[j] then
                handshakes = handshakes + 1
            end
        end
    end
    return handshakes
end

lu = require('luaunit')

function testCountHandshakes()
    local candidate = countHandshakes
    lu.assertTrue(candidate(4, {2, 1, 3, 0}) == 2)
    lu.assertTrue(candidate(6, {0, 1, 2, 3, 4, 5}) == 15)
    lu.assertTrue(candidate(3, {1, 2, 0}) == 1)

    lu.assertTrue(candidate(4, {3, 2, 1, 0}) == 0)
    lu.assertTrue(candidate(4, {0, 1, 2, 3}) == 6)
    lu.assertTrue(candidate(6, {5, 4, 3, 2, 1, 0}) == 0)

    lu.assertTrue(candidate(4, {0, 2, 1, 3}) == 5)
    lu.assertTrue(candidate(5, {3, 1, 4, 2, 0}) == 3)
    lu.assertTrue(candidate(4, {1, 0, 3, 2}) == 4)

    lu.assertTrue(candidate(3, {2, 0, 1}) == 1)
    lu.assertTrue(candidate(5, {1, 3, 0, 2, 4}) == 7)
    lu.assertTrue(candidate(5, {4, 3, 2, 1, 0}) == 0)
end

os.exit(lu.LuaUnit.run())