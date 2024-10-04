-- Write a function to sum the length of the names of a given table of names after removing the names that start with a lowercase letter.
local function sample_nam(sample_names)
    local sum = 0
    for _, name in ipairs(sample_names) do
        if name:sub(1,1):match("%u") then
            sum = sum + #name
        end
    end
    return sum
end
print(sample_nam({"Alice", "bob", "Charlie", "dave"})) -- Output: 10
print(sample_nam({"Eve", "fifi", "Gina", "hugh"})) -- Output: 5
print(sample_nam({"Ian", "jay", "Kate", "lou"})) -- Output: 6
print(sample_nam({"Mike", "nancy", "Olivia", "pete"})) -- Output: 8
print(sample_nam({"Quinn", "rachel", "Steve", "tara"})) -- Output: 7
print(sample_nam({"Uma", "victor", "Wendy", "xavier"})) -- Output: 8
print(sample_nam({"Yasmin", "zack", "Alex", "Brian"})) -- Output: 9
print(sample_nam({"Cara", "dana", "Ella", "finn"})) -- Output: 6
print(sample_nam({"George", "haley", "Ian", "jay"})) -- Output: 8
print(sample_nam({"Kate", "lou", "Mike", "nancy"})) -- Output: 6
print(sample_nam({"Olivia", "pete", "Quinn", "rachel"})) -- Output: 8
print(sample_nam({"Steve", "tara", "Uma", "victor"})) -- Output: 8
print(sample_nam({"Wendy", "xavier", "Yasmin", "zack"})) -- Output: 8
print(sample_nam({"Alex", "Brian", "Cara", "dana"})) -- Output: 6
print(

lu = require('luaunit')

function test_humaneval()
local candidate = sample_nam
    lu.assertEquals(candidate({'sally', 'Dylan', 'rebecca', 'Diana', 'Joanne', 'keith'}), 16)
    lu.assertEquals(candidate({'php', 'res', 'Python', 'abcd', 'Java', 'aaa'}), 10)
    lu.assertEquals(candidate({'abcd', 'Python', 'abba', 'aba'}), 6)
end

os.exit(lu.LuaUnit.run())