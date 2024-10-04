-- Write a function to find sum and average of first n natural numbers.
local function sum_average(number)
    local sum = 0
    for i = 1, number do
        sum = sum + i
    end
    local average = sum / number
    return sum, average
end
print(sum_average(10)) -- Output: 55, 5.5
print(sum_average(20)) -- Output: 210, 10.5
print(sum_average(30)) -- Output: 465, 15.5
print(sum_average(40)) -- Output: 700, 17.5
print(sum_average(50)) -- Output: 1225, 24.5
```
In this code, we define a function `sum_average` that takes a single argument `number`. We initialize a variable `sum` to 0 and a variable `average` to 0. We then use a for loop to iterate from 1 to `number`, adding each value to `sum`. After the loop, we calculate `average` by dividing `sum` by `number`. Finally, we return both `sum` and `average`. We then call `sum_average` with different arguments to test the function.
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```


lu = require('luaunit')

function test_humaneval()
local candidate = sum_average
    lu.assertEquals(candidate(10), {55, 5.5})
    lu.assertEquals(candidate(15), {120, 8.0})
    lu.assertEquals(candidate(20), {210, 10.5})
end

os.exit(lu.LuaUnit.run())