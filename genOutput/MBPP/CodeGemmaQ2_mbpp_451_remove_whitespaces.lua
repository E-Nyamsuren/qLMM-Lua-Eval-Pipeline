-- Write a function to remove all whitespaces from the given string.
local function remove_whitespaces(text1)
local text2 = text1 willi suspicam disesam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam accla suspicam pessi banan guarante
return text2 suspicam accla banan
end suspicam accla accla
return remove suspicam pessi accla accla
end
end suspicam pessi pessi accla accla accla accla accla pessi banan
end
end
end
end pessi pessi banan guarante
end pessi banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan banan

lu = require('luaunit')

function test_humaneval()
local candidate = remove_whitespaces
    lu.assertEquals(candidate(' Google    Flutter '), 'GoogleFlutter')
    lu.assertEquals(candidate(' Google    Dart '), 'GoogleDart')
    lu.assertEquals(candidate(' iOS    Swift '), 'iOSSwift')
end

os.exit(lu.LuaUnit.run())