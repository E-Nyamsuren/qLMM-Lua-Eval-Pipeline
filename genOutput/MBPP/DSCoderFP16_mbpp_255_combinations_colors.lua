-- Write a function that takes in a table and length n, and generates all combinations (with repetition) of the elements of the table and returns a table with a table for each combination.
local function combinations_colors(l, n)
    local table_combinations = {}
    local table_combinations_colors = {}
    if n == 1 then
        for _, v in ipairs(l) do
            table_combinations[#table_combinations + 1] = {v}
            table_combinations_colors[#table_combinations_colors + 1] = {v}
        end
    else
        for _, v in ipairs(l) do
            combinations_colors(l, n - 1)
            for i = 1, #table_combinations do
                local t = table_combinations[i]
                table_combinations[#table_combinations + 1] = {v}
                table_combinations[#table_combinations] = {}
                for j = 1, #t do
                    table_combinations[#table_combinations] = {t[j], v}
                end
                table_combinations_colors[#table_combinations_colors + 1] = table_combinations[i]
            end
        end
    end
    return table_combinations, table_combinations_colors
end

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_colors
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 1), {{'Red'}, {'Green'}, {'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 2), {{'Red', 'Red'}, {'Red', 'Green'}, {'Red', 'Blue'}, {'Green', 'Green'}, {'Green', 'Blue'}, {'Blue', 'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 3), {{'Red', 'Red', 'Red'}, {'Red', 'Red', 'Green'}, {'Red', 'Red', 'Blue'}, {'Red', 'Green', 'Green'}, {'Red', 'Green', 'Blue'}, {'Red', 'Blue', 'Blue'}, {'Green', 'Green', 'Green'}, {'Green', 'Green', 'Blue'}, {'Green', 'Blue', 'Blue'}, {'Blue', 'Blue', 'Blue'}})
end

os.exit(lu.LuaUnit.run())