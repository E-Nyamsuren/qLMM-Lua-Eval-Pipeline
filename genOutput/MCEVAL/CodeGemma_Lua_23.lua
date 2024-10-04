
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
    local triangles = {}
    local count = 0
    for i = 1, #edges do
        for j = i + 1, #edges do
            for k = j + 1, #edges do
                local a = edges[i]
                local b = edges[j]
                local c = edges[k]
                if a + b > c and a + c > b and b + c > a then
                    local triangle = {a, b, c}
                    table.sort(triangle)
                    if not triangles[triangle[1]] then
                        triangles[triangle[1]] = {}
                    end
                    if not triangles[triangle[1]][triangle[2]] then
                        triangles[triangle[1]][triangle[2]] = {}
                    end
                    if not triangles[triangle[1]][triangle[2]][triangle[3]] then
                        triangles[triangle[1]][triangle[2]][triangle[3]] = true
                        count = count + 1
                    end
                end
            end
        end
    end
    return count
end
</code>

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