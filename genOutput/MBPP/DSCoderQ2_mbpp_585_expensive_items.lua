-- Write a function to find the n most expensive items in a given dataset.
local function expensive_items(items, n)
    table.sort(items, function(a, b) return a.price > b.price end)
    local expensive = {}
    for i = 1, n do
        table.insert(expensive, items[i])
    end
    return expensive
end

lu = require('luaunit')

function test_humaneval()
local candidate = expensive_items
    lu.assertEquals(candidate({{['name'] = 'Item-1', ['price'] = 101.1}, {['name'] = 'Item-2', ['price'] = 555.22}}, 1), {{['name'] = 'Item-2', ['price'] = 555.22}})
    lu.assertEquals(candidate({{['name'] = 'Item-1', ['price'] = 101.1}, {['name'] = 'Item-2', ['price'] = 555.22}, {['name'] = 'Item-3', ['price'] = 45.09}}, 2), {{['name'] = 'Item-2', ['price'] = 555.22}, {['name'] = 'Item-1', ['price'] = 101.1}})
    lu.assertEquals(candidate({{['name'] = 'Item-1', ['price'] = 101.1}, {['name'] = 'Item-2', ['price'] = 555.22}, {['name'] = 'Item-3', ['price'] = 45.09}, {['name'] = 'Item-4', ['price'] = 22.75}}, 1), {{['name'] = 'Item-2', ['price'] = 555.22}})
end

os.exit(lu.LuaUnit.run())