-- Write a luathon function to check whether the length of the word is odd or not.
local function word_len(s)
    local len = string.len(s)
    if len % 2 == 0 then
        return false
    else
        return true
    end
end
print(word_len("python"))
print(word_len("java"))
print(word_len("javascript"))
print(word_len("ruby"))
print(word_len("php"))
print(word_len("perl"))
print(word_len("swift"))
print(word_len("kotlin"))
print(word_len("dart"))
print(word_len("rust"))
print(word_len("go"))
print(word_len("scala"))
print(word_len("haskell"))
print(word_len("erlang"))
print(word_len("prolog"))
print(word_len("lua"))
print(word_len("cobol"))
print(word_len("fortran"))
print(word_len("pascal"))
print(word_len("assembly"))
print(word_len("lisp"))
print(word_len("erlang"))
print(word_len("prolog"))
print(word_len("lua"))
print(word_len("cobol"))
print(word_len("fortran"))
print(word_len("pascal"))
print(word_len("assembly"))
print(word_len("lisp"))
print(word_len("erlang"))
print(word_len("prolog"))
print(word_len("lua"))
print(word_len("cobol"))
print(word_len("fortran"))
print(word_len("pascal"))
print(word_len("assembly"))
print(word_len("lisp"))
print(word_len("erlang"))
print(word_len("prolog"))
print(word_len("lua"))
print(word_len("cobol"))
print(word_len("fortran"))
print(word_len("pascal"))
print(word_len("assembly"))
print(word_len("lisp"))
print(word_len("erlang"))
print(word_len("prolog

lu = require('luaunit')

function test_humaneval()
local candidate = word_len
    lu.assertEquals(candidate('Hadoop'), false)
    lu.assertEquals(candidate('great'), true)
    lu.assertEquals(candidate('structure'), true)
end

os.exit(lu.LuaUnit.run())