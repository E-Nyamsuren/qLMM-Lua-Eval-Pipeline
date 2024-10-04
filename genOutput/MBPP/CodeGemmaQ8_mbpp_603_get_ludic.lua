-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
    local function is_ludic(n)
        local function is_prime(n)
            for i = 2, math.sqrt(n) do
                if n % i == 0 then
                    return false
                end
            end
            return true
        end
        local function is_square(n)
            local sqrt = math.sqrt(n)
            return sqrt == math.floor(sqrt)
        end
        local function is_prime_square(n)
            local sqrt = math.sqrt(n)
            return is_prime(sqrt)
        end
        local function is_prime_square_sum(n)
            local sqrt = math.sqrt(n)
            for i = 2, sqrt do
                if is_prime(i) and is_prime(n - i) then
                    return true
                end
            end
            return false
        end
        if is_prime(n) then
            return true
        end
        if is_square(n) then
            return false
        end
        if is_prime_square(n) then
            return true
        end
        if is_prime_square_sum(n) then
            return true
        end
        return false
    end
    local function get_ludic_number(n)
        local function get_prime_factors(n)
            local factors = {}
            local i = 2
            while n > 1 do
                if n % i == 0 then
                    table.insert(factors, i)
                    n = n / i
                else
                    i = i + 1
                end
            end
            return factors
        end
        local function get_prime_factors_product(n)
            local factors = get_prime_factors(n)
            local product = 1
            for i = 1, #factors do
                product = product * factors[i]
            end
            return product
        end
        local function get_prime_factors_sum(n)
            local factors = get_prime_factors(n)
            local sum = 0
            

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())