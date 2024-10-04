
--[[
The task is to determine if it is possible to assemble the wooden squares from n buckets,
where each bucket contains a_i squares with a side length of 1, into a single larger square.
Input: length of list, array of numbers
    >>> Is_Square(1, {9})
    true
    >>> Is_Square(2, {14, 2})
    true
    >>> Is_Square(2, {7, 7})
    false
]]--
function Is_Square(length, squares)
    if length == 1 then
        return true
    end
    if length == 2 then
        return squares[1] == squares[2]
    end
    if length == 3 then
        return squares[1] == squares[2] and squares[2] == squares[3]
    end
    if length == 4 then
        return squares[1] == squares[2] and squares[2] == squares[3] and squares[3] == squares[4]
    end
    if length == 5 then
        return squares[1] == squares[2] and squares[2] == squares[3] and squares[3] == squares[4] and squares[4] == squares[5]
    end
    if length == 6 then
        return squares[1] == squares[2] and squares[2] == squares[3] and squares[3] == squares[4] and squares[4] == squares[5] and squares[5] == squares[6]
    end
    if length == 7 then
        return squares[1] == squares[2] and squares[2] == squares[3] and squares[3] == squares[4] and squares[4] == squares[5] and squares[5] == squares[6] and squares[6] == squares[7]
    end
    if length == 8 then
        return squares[1] == squares[2] and squares[2] == squares[3] and squares[3] == squares[4] and squares[4] == squares[5] and squares[5] == squares[6] and squares[6] == squares[7] and squares[7] == squares[8]
    end
    if length

lu = require('luaunit')

function testIsSquare()
    local candidate = Is_Square
    lu.assertTrue(candidate(1, {9}) == true)
    lu.assertTrue(candidate(2, {14, 2}) == true)
    lu.assertTrue(candidate(2, {7, 7}) == false)
    lu.assertTrue(candidate(7, {1, 2, 3, 4, 5, 6, 7}) == false)
    lu.assertTrue(candidate(6, {1, 3, 5, 7, 9, 11}) == true)
    lu.assertTrue(candidate(4, {2, 2, 2, 2}) == false)

    -- Additional test cases
    lu.assertTrue(candidate(3, {4, 5, 6}) == false)
    lu.assertTrue(candidate(4, {16, 9, 4, 1}) == false)
    lu.assertTrue(candidate(5, {1, 1, 1, 1, 1}) == false)
    lu.assertTrue(candidate(2, {25, 25}) == false)
    lu.assertTrue(candidate(3, {10, 10, 5}) == true)

    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())