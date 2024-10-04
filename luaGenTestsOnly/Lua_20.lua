lu = require('luaunit')

function testAnswerQuestions()
    local candidate = answer_questions
    local expected_answers = "DDDBA"
    lu.assertTrue(candidate() == expected_answers)
end

os.exit(lu.LuaUnit.run())