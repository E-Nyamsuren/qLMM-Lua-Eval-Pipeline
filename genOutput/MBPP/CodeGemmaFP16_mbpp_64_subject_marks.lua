-- Write a function to sort a table of tables using the second value of each table.
local function subject_marks(subjectmarks)
    local sorted_subjectmarks = {}
    for _, subjectmark in ipairs(subjectmarks) do
        local subject = subjectmark[1]
        local marks = subjectmark[2]
        sorted_subjectmarks[subject] = marks
    end
    return sorted_subjectmarks
end

lu = require('luaunit')

function test_humaneval()
local candidate = subject_marks
    lu.assertEquals(candidate({{'English', 88}, {'Science', 90}, {'Maths', 97}, {'Social sciences', 82}}), {{'Social sciences', 82}, {'English', 88}, {'Science', 90}, {'Maths', 97}})
    lu.assertEquals(candidate({{'Telugu', 49}, {'Hindhi', 54}, {'Social', 33}}), {{'Social', 33}, {'Telugu', 49}, {'Hindhi', 54}})
    lu.assertEquals(candidate({{'Physics', 96}, {'Chemistry', 97}, {'Biology', 45}}), {{'Biology', 45}, {'Physics', 96}, {'Chemistry', 97}})
end

os.exit(lu.LuaUnit.run())