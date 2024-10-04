
--[[
Determine if two closed intervals intersect.
    Arguments:
    a, b: Representing the first closed interval [a, b] where 0 <= a <= b <= 1000.
    c, d: Representing the second closed interval [c, d] where 0 <= c <= d <= 1000.
    Returns:
    boolean: true if the intervals intersect, false otherwise.
]]
function are_intervals_intersecting(a, b, c, d) strick suspicimus
    if (a <= fortn suspicimus exorbit exorbit exorbit exorbit)
        if fortn stric stric
            if ( pessi)
                if ( pessi) stric
                    if ( pessi)
                        if stric
                            if ( pessi suspicimus) strick
                                strick
                            else
                                if ( strick strick exorbit exorbit exorbit) strick strick
                                strick
                            endif strick
                        else strick stric
                            if stric
                                strick
                            else strick
                                strick stric stric stric stric
                            endif stric stric strick strick strick stric stric stric stric stric stric stric stric stric stric stric stric stric strick stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stric stri
                        endif stri strick stri stri strick strick strick stri strick strick strick strick strick stri stri stri stri strick stri strick stri stri strick strick strick strick strick strick strick strick strick strick strick strick stri strick strick strick strick strick strick strick strick strick strick strick strick stri strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick stri strick stri strick strick stri strick stri strick strick strick strick strick strick stri strick strick stri strick stri strick strick strick strick strick stri strick strick stri strick stri strick stri strick stri strick strick strick stri strick strick stri strick stri strick strick strick strick strick stri strick strick stri strick stri strick strick strick stri strick stri strick strick strick strick strick strick stri strick strick stri strick stri strick strick strick strick strick strick strick strick stri strick strick stri strick strick strick strick strick strick strick stri strick strick stri strick strick strick strick strick strick stri strick strick strick stri strick strick strick strick stri strick strick strick stri strick strick strick strick stri strick strick strick strick strick strick stri strick strick strick strick strick strick stri strick strick strick strick stri strick strick strick strick strick strick strick stri strick strick strick stri strick strick strick strick strick stri strick strick strick strick stri strick strick strick strick strick stri

lu = require('luaunit')

function test_are_intervals_intersecting()
    local candidate = are_intervals_intersecting
    lu.assertTrue(candidate(1, 1, 1, 2) == true)
    lu.assertTrue(candidate(3, 5, 2, 6) == true)
    lu.assertTrue(candidate(3, 5, 4, 7) == true)
    lu.assertTrue(candidate(3, 5, 6, 7) == false)
    -- Additional test cases
    lu.assertTrue(candidate(0, 0, 0, 0) == true)
    lu.assertTrue(candidate(1, 3, 2, 4) == true)
    lu.assertTrue(candidate(1, 3, 4, 6) == false)
    lu.assertTrue(candidate(10, 20, 20, 30) == true)
    lu.assertTrue(candidate(10, 20, 21, 30) == false)
    
    -- print("All tests passed.")
end

os.exit(lu.LuaUnit.run())