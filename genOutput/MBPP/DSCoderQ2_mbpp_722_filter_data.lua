-- The input is given as - a table with a student name as a key and a table of float (student_height, student_weight) as a value, - minimal height, - minimal weight. Write a function to filter students that have height and weight above the minimum.
local function filter_data(students, h, w)
    local result = {}
    for name, values in pairs(students) do
        if values.student_height > h and values.student_weight > w then
            result[name] = values
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = filter_data
    lu.assertEquals(candidate({['Cierra Vega'] = {6.2, 70}, ['Alden Cantrell'] = {5.9, 65}, ['Kierra Gentry'] = {6.0, 68}, ['Pierre Cox'] = {5.8, 66}}, 6.0, 70), {['Cierra Vega'] = {6.2, 70}})
    lu.assertEquals(candidate({['Cierra Vega'] = {6.2, 70}, ['Alden Cantrell'] = {5.9, 65}, ['Kierra Gentry'] = {6.0, 68}, ['Pierre Cox'] = {5.8, 66}}, 5.9, 67), {['Cierra Vega'] = {6.2, 70}, ['Kierra Gentry'] = {6.0, 68}})
    lu.assertEquals(candidate({['Cierra Vega'] = {6.2, 70}, ['Alden Cantrell'] = {5.9, 65}, ['Kierra Gentry'] = {6.0, 68}, ['Pierre Cox'] = {5.8, 66}}, 5.7, 64), {['Cierra Vega'] = {6.2, 70}, ['Alden Cantrell'] = {5.9, 65}, ['Kierra Gentry'] = {6.0, 68}, ['Pierre Cox'] = {5.8, 66}})
end

os.exit(lu.LuaUnit.run())