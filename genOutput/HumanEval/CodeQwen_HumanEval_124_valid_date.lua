-- You have to write a function which validates a given date string and
-- returns true if the date is valid otherwise false.
-- The date is valid if all of the following rules are satisfied:
-- 1. The date string is not empty.
-- 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
-- 3. The months should not be less than 1 or higher than 12.
-- 4. The date should be in the format: mm-dd-yyyy
-- >>> valid_date('03-11-2000')
-- true
-- >>> valid_date('15-01-2012')
-- false
-- >>> valid_date('04-0-2040')
-- false
-- >>> valid_date('06-04-2020')
-- true
-- >>> valid_date('06/04/2020')
-- false
local function valid_date(date)
    -- Check if the date string is empty
    if date == '' then
        return false
    end
    -- Check if the date string is in the correct format
    if string.find(date, '-') == nil then
        return false
    end
    -- Split the date string into month, day, and year
    local month, day, year = string.match(date, '(%d+)-(%d+)-(%d+)')
    -- Check if the month is valid
    if tonumber(month) < 1 or tonumber(month) > 12 then
        return false
    end
    -- Check if the day is valid
    if tonumber(day) < 1 or tonumber(day) > 31 then
        return false
    end
    -- Check if the day is valid for February
    if tonumber(month) == 2 and tonumber(day) > 29 then
        return false
    end
    -- Check if the day is valid for April, June

lu = require('luaunit')

function test_humaneval()
local candidate = valid_date
    lu.assertEquals(candidate('03-11-2000'), true)
    lu.assertEquals(candidate('15-01-2012'), false)
    lu.assertEquals(candidate('04-0-2040'), false)
    lu.assertEquals(candidate('06-04-2020'), true)
    lu.assertEquals(candidate('01-01-2007'), true)
    lu.assertEquals(candidate('03-32-2011'), false)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('04-31-3000'), false)
    lu.assertEquals(candidate('06-06-2005'), true)
    lu.assertEquals(candidate('21-31-2000'), false)
    lu.assertEquals(candidate('04-12-2003'), true)
    lu.assertEquals(candidate('04122003'), false)
    lu.assertEquals(candidate('20030412'), false)
    lu.assertEquals(candidate('2003-04'), false)
    lu.assertEquals(candidate('2003-04-12'), false)
    lu.assertEquals(candidate('04-2003'), false)
end

os.exit(lu.LuaUnit.run())