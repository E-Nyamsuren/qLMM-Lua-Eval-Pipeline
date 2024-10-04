lu = require('luaunit')

function testHelloMMCodeEval()
    local candidate = hello_mmcodeeval
    lu.assertEquals(candidate(), "Hello, MMCODEEVAL: Masssively Multilingual Code Evaluation")
end

os.exit(lu.LuaUnit.run())