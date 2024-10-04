-- You will be given the name of a class (a string) and a table of extensions.
-- The extensions are to be used to load additional classes to the class. The
-- strength of the extension is as follows: Let CAP be the number of the uppercase
-- letters in the extension's name, and let SM be the number of lowercase letters 
-- in the extension's name, the strength is given by the fraction CAP - SM. 
-- You should find the strongest extension and return a string in this 
-- format: ClassName.StrongestExtensionName.
-- If there are two or more extensions with the same strength, you should
-- choose the one that comes first in the table.
-- For example, if you are given "Slices" as the class and a table of the
-- extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
-- return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension 
-- (its strength is -1).
-- Example:
-- >>> Strongest_Extension('my_class', {'AA', 'Be', 'CC'})
-- 'my_class.AA'
local function Strongest_Extension(class_name, extensions)
    local max_strength = -math.huge
    local strongest_extension = ''
    for _, extension in ipairs(extensions) do
        local strength = #extension:gsub("%u", "") - #extension:gsub("%l", "")
        if strength > max_strength then
            max_strength = strength
            strongest_extension = extension
        end
    end
    return class_name .. '.' .. strongest_extension
end

lu = require('luaunit')

function test_humaneval()
local candidate = Strongest_Extension
    lu.assertEquals(candidate('Watashi', {'tEN', 'niNE', 'eIGHt8OKe'}), 'Watashi.eIGHt8OKe')
    lu.assertEquals(candidate('Boku123', {'nani', 'NazeDa', 'YEs.WeCaNe', '32145tggg'}), 'Boku123.YEs.WeCaNe')
    lu.assertEquals(candidate('__YESIMHERE', {'t', 'eMptY', 'nothing', 'zeR00', 'NuLl__', '123NoooneB321'}), '__YESIMHERE.NuLl__')
    lu.assertEquals(candidate('K', {'Ta', 'TAR', 't234An', 'cosSo'}), 'K.TAR')
    lu.assertEquals(candidate('__HAHA', {'Tab', '123', '781345', '-_-'}), '__HAHA.123')
    lu.assertEquals(candidate('YameRore', {'HhAas', 'okIWILL123', 'WorkOut', 'Fails', '-_-'}), 'YameRore.okIWILL123')
    lu.assertEquals(candidate('finNNalLLly', {'Die', 'NowW', 'Wow', 'WoW'}), 'finNNalLLly.WoW')
    lu.assertEquals(candidate('_', {'Bb', '91245'}), '_.Bb')
    lu.assertEquals(candidate('Sp', {'671235', 'Bb'}), 'Sp.671235')
end

os.exit(lu.LuaUnit.run())