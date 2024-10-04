
--[[
Count the number of acute-angled triangles that can be formed by selecting any 3 edges out of a given set of edges.

Args:
- edges: A table containing integer values representing the lengths of the edges.

Returns:
int: The count of distinct acute-angled triangles that can be formed.

Examples:
>>> count_acute_triangles({1, 1, 1, 1})
4
]]
function count_acute_triangles(edges)
    -- Sort the edges in ascending order
    table.sort(edges)
    
    -- Initialize the count of acute-angled triangles
    local count = 0
    
    -- Iterate over the edges
    for i = 1, #edges - 2 do
        -- Check if the current edge forms an acute-angled triangle
        if edges[i] < edges[i + 1] + edges[i + 2] then
            count = count + 1
        end
    end
    
    return count
end
<|file_separator|>

lu = require('luaunit')

function testCountAcuteTriangles()
    local candidate = count_acute_triangles
    lu.assertTrue(candidate({1, 1, 1, 1}) == 4)
    lu.assertTrue(candidate({1, 2, 3}) == 0)
    -- Additional tests to ensure correctness
    lu.assertTrue(candidate({3, 4, 5, 7, 10}) == 0)
    lu.assertTrue(candidate({6, 8, 10, 5, 5, 5}) == 4)
end

os.exit(lu.LuaUnit.run())