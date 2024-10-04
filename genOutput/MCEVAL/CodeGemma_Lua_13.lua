
--[[
Calculate the total score for a student based on the scores in different subjects.
    Parameters:
    - subject_scores (list): A list containing the scores for each subject.
    Returns:
    int: The total score obtained by summing up the scores in all subjects.
    Example usage:
    print(calculate_total_score(100,100,100,100,100)) -- Output: 500
--]]
function calculate_total_score(score1, score2, score3, score4, score5)
    local total_score = score1 + score2 + score3 + score4 + score5
    return total_score
end

lu = require('luaunit')

function testCalculateTotalScore()
    local candidate = calculate_total_score
    lu.assertTrue(candidate(100,100,100,100,100) == 500)
    lu.assertTrue(candidate(0,0,0,0,0) == 0)
    lu.assertTrue(candidate(20, 30, 40, 10, 50) == 150)
    lu.assertTrue(candidate(23, 45, 67, 89, 12) == 236)
    lu.assertTrue(candidate(5, 5, 5, 5, 5) == 25)
end

os.exit(lu.LuaUnit.run())