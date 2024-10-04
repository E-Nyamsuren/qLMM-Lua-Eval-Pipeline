-- Write a function to pack consecutive duplicates of a given table elements into subtables.
local function pack_consecutive_duplicates(list1)
    local list2 = {}
    local list3 = {}
    local list4 = {}
    local list5 = {}
    local list6 = {}
    local list7 = {}
    local list8 = {}
    local list9 = {}
    local list10 = {}
    local list11 = {}
    local list12 = {}
    local list13 = {}
    local list14 = {}
    local list15 = {}
    local list16 = {}
    local list17 = {}
    local list18 = {}
    local list19 = {}
    local list20 = {}
    local list21 = {}
    local list22 = {}
    local list23 = {}
    local list24 = {}
    local list25 = {}
    local list26 = {}
    local list27 = {}
    local list28 = {}
    local list29 = {}
    local list30 = {}
    local list31 = {}
    local list32 = {}
    local list33 = {}
    local list34 = {}
    local list35 = {}
    local list36 = {}
    local list37 = {}
    local list38 = {}
    local list39 = {}
    local list40 = {}
    local list41 = {}
    local list42 = {}
    local list43 = {}
    local list44 = {}
    local list45 = {}
    local list46 = {}
    local list47 = {}
    local list48 = {}
    local list49 = {}
    local list50 = {}
    local list51 = {}
    local list52 = {}
    local list53 = {}
    local list54 = {}
    local list55 = {}
    local list56 = {}
    local list57 = {}
    local list58 = {}
    local list59 = {}
    local list60 = {}
    local list61 = {}
    local list62 = {}


lu = require('luaunit')

function test_humaneval()
local candidate = pack_consecutive_duplicates
    lu.assertEquals(candidate({0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4}), {{0, 0}, {1}, {2}, {3}, {4, 4}, {5}, {6, 6, 6}, {7}, {8}, {9}, {4, 4}})
    lu.assertEquals(candidate({10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10}), {{10, 10}, {15}, {19}, {18, 18}, {17}, {26, 26}, {17}, {18}, {10}})
    lu.assertEquals(candidate({'a', 'a', 'b', 'c', 'd', 'd'}), {{'a', 'a'}, {'b'}, {'c'}, {'d', 'd'}})
end

os.exit(lu.LuaUnit.run())