-- Write a function that takes in a table and length n, and generates all combinations (with repetition) of the elements of the table and returns a table with a table for each combination.
local function combinations_colors(l, n)
    local result = {}
    local function recurse(t, k, prefix)
        if k == n then
            local prefix_copy = {}
            for i = 1, #prefix do
                prefix_copy[i] = prefix[i]
            end
            table.insert(result, prefix_copy)
        else
            for i = k, #t do
                local prefix_copy = {}
                for j = 1, #prefix do
                    prefix_copy[j] = prefix[j]
                end
                prefix_copy[#prefix + 1] = t[i]
                recurse(t, k + 1, prefix_copy)
            end
        end
    end
    recurse(l, 1, {})
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_colors
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 1), {{'Red'}, {'Green'}, {'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 2), {{'Red', 'Red'}, {'Red', 'Green'}, {'Red', 'Blue'}, {'Green', 'Green'}, {'Green', 'Blue'}, {'Blue', 'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 3), {{'Red', 'Red', 'Red'}, {'Red', 'Red', 'Green'}, {'Red', 'Red', 'Blue'}, {'Red', 'Green', 'Green'}, {'Red', 'Green', 'Blue'}, {'Red', 'Blue', 'Blue'}, {'Green', 'Green', 'Green'}, {'Green', 'Green', 'Blue'}, {'Green', 'Blue', 'Blue'}, {'Blue', 'Blue', 'Blue'}})
end

os.exit(lu.LuaUnit.run())