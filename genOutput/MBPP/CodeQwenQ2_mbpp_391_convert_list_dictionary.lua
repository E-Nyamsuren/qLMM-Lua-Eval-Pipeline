-- Write a function to convert more than one table to nested table.
local function convert_list_dictionary(l1, l2, l3)
    local nested_table = {}
    for i, v in ipairs(l1) do
        nested_table[i] = {}
        nested_table[i][l2[i]] = l3[i]
    end
    return nested_table
end
print(convert_list_dictionary({1, 2, 3}, {"a", "b", "c"}, {4, 5, 6}))

lu = require('luaunit')

function test_humaneval()
local candidate = convert_list_dictionary
    lu.assertEquals(candidate({'S001', 'S002', 'S003', 'S004'}, {'Adina Park', 'Leyton Marsh', 'Duncan Boyle', 'Saim Richards'}, {85, 98, 89, 92}), {{['S001'] = {['Adina Park'] = 85}}, {['S002'] = {['Leyton Marsh'] = 98}}, {['S003'] = {['Duncan Boyle'] = 89}}, {['S004'] = {['Saim Richards'] = 92}}})
    lu.assertEquals(candidate({'abc', 'def', 'ghi', 'jkl'}, {'python', 'program', 'language', 'programs'}, {100, 200, 300, 400}), {{['abc'] = {['python'] = 100}}, {['def'] = {['program'] = 200}}, {['ghi'] = {['language'] = 300}}, {['jkl'] = {['programs'] = 400}}})
    lu.assertEquals(candidate({'A1', 'A2', 'A3', 'A4'}, {'java', 'C', 'C++', 'DBMS'}, {10, 20, 30, 40}), {{['A1'] = {['java'] = 10}}, {['A2'] = {['C'] = 20}}, {['A3'] = {['C++'] = 30}}, {['A4'] = {['DBMS'] = 40}}})
end

os.exit(lu.LuaUnit.run())