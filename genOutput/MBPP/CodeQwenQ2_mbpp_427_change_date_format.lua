-- Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
local function change_date_format(dt)
    -- Check if the input is a string
    if type(dt) ~= 'string' then
        return 'Error: Input must be a string'
    end
    
    -- Check if the input string matches the required format
    if string.match(dt, '^%d%d%d%d-%d%d-%d%d$') then
        -- Extract the year, month, and day from the input string
        local year = tonumber(string.sub(dt, 1, 4))
        local month = tonumber(string.sub(dt, 5, 5))
        local day = tonumber(string.sub(dt, 6, 7))
        
        -- Convert the month to a string
        local month_str = ''
        if month == 1 then
            month_str = 'Jan'
        elseif month == 2 then
            month_str = 'Feb'
        elseif month == 3 then
            month_str = 'Mar'
        elseif month == 4 then
            month_str = 'Apr'
        elseif month == 5 then
            month_str = 'May'
        elseif month == 6 then
            month_str = 'Jun'
        elseif month == 7 then
            month_str = 'Jul'
        elseif month == 8 then
            month_str = 'Aug'
        elseif month == 9 then
            month_str = 'Sep'
        elseif month == 10 then
            month_str = 'Oct'
        elseif month == 11 then
            month_str = 'Nov'
        elseif month == 12 then
            month_str = 'Dec'
        end
        
        -- Return the date in the required format
        return string.format('%02d-%s-%04d', day, month_str, year)
    else
        return 'Error: Input must be in the format yyyy-mm-dd'
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = change_date_format
    lu.assertEquals(candidate('2026-01-02'), '02-01-2026')
    lu.assertEquals(candidate('2020-11-13'), '13-11-2020')
    lu.assertEquals(candidate('2021-04-26'), '26-04-2021')
end

os.exit(lu.LuaUnit.run())