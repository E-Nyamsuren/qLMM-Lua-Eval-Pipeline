
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
    local count = 0
    for i = 1, #edges do
        for j = i + 1, #edges do
            for k = j + 1, #edges do
                if edges[i] + edges[j] > edges[k] and edges[j] + edges[k] > edges[i] and edges[i] + edges[k] > edges[j] then
                    count = count + 1
                end
            end
        end
    end
    return count
end


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