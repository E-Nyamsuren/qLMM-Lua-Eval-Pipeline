
--[[
    Answer a series of questions by providing choices A, B, C, or D for each question.
    Question 1:
    Constants like 1e6 belong to which data type?
        A. unsigned int
        B. int
        C. float
        D. double
    Question 2:
    Given 21! = 51,090,942,171,709,440,000, which data type can be used to store this value?
        A. int
        B. long long
        C. double
        D. None of the above
    Question 3:
    Which statement about left values in expressions is incorrect?
        A. Variable name expressions are left values.
        B. Increment operation requires the operand to be a left value.
        C. Pointer dereference expressions are left values.
        D. Prefix increment operation expressions are left values.
    Question 4:
    Which statement about functions is incorrect?
        A. Formal parameters of a function are local variables.
        B. Local variables are allocated space in the stack.
        C. The function type is the same as the return value type.
        D. A function can call itself from within its body.
    Question 5:
    Which statement about pointers is incorrect?
        A. Subtracting two pointers equals the difference in their address values.
        B. Pointer dereference involves resolving based on the pointer's type.
        C. int *p[4], p is an array of int pointers.
        D. Function names can be assigned to function pointers.
    >>> answer_questions()
    AAAAA
You're supposed to only return strings similar to "AAAAA", which stand for the choices of the question.
]]--
function answer_questions()
    local answer = ""
    answer = answer .. answer_question_1()
    answer = answer .. answer_question_2()
    answer = answer .. answer_question_3()
    answer = answer .. answer_question_4()
    answer = answer .. answer_question_5()
    return answer
end

lu = require('luaunit')

function testAnswerQuestions()
    local candidate = answer_questions
    local expected_answers = "DDDBA"
    lu.assertTrue(candidate() == expected_answers)
end

os.exit(lu.LuaUnit.run())