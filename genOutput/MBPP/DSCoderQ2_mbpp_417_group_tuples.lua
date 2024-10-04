-- Write a function to find common first element in given table of tables.
local function group_tuples(Input)
    local Output = {}
    for _, Table in ipairs(Input) do
        for _, Tuple in ipairs(Table) do
            local Found = false
            for _, Group in ipairs(Output) do
                if Group[1] == Tuple[1] then
                    table.insert(Group, Tuple)
                    Found = true
                    break
                end
           

lu = require('luaunit')

function test_humaneval()
local candidate = group_tuples
    lu.assertEquals(candidate({{'x', 'y'}, {'x', 'z'}, {'w', 't'}}), {{'x', 'y', 'z'}, {'w', 't'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'a', 'c'}, {'d', 'e'}}), {{'a', 'b', 'c'}, {'d', 'e'}})
    lu.assertEquals(candidate({{'f', 'g'}, {'f', 'g'}, {'h', 'i'}}), {{'f', 'g', 'g'}, {'h', 'i'}})
end

os.exit(lu.LuaUnit.run())