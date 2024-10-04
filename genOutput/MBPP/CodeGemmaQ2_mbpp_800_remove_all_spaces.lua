-- Write a function to remove all whitespaces from a string.
local function remove_all_spaces(text)
¹, text abnorm bordeaux,
 pessi,
     pessi bordeaux bordeaux,
 pessi,
 pessi bordeaux bordeaux suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic suspic banan
 pessi banan
 pessi banan
 pessi banan suspic banan
 pessi banan
 pessi banan
 pessi banan
 pessi banan suspic banan suspic banan suspic banan
 pessi banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan suspic banan banan suspic banan banan banan suspic banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan

lu = require('luaunit')

function test_humaneval()
local candidate = remove_all_spaces
    lu.assertEquals(candidate('python  program'), 'pythonprogram')
    lu.assertEquals(candidate('python   programming    language'), 'pythonprogramminglanguage')
    lu.assertEquals(candidate('python                     program'), 'pythonprogram')
    lu.assertEquals(candidate('   python                     program'), 'pythonprogram')
end

os.exit(lu.LuaUnit.run())