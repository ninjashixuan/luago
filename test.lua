local function max(...)
    local args = { ... }
    local val, idx
    for i = 1, #args do
        if val == nil or args[i] > val then
            val, idx = args[i], i
        end
    end
    return val, idx
end

local function assert(v)
    if not v then
        fail()
    end
end

local v1 = max(3, 9, 1, 4, 5)
assert(v1 == 9)
local v2, i2 = max(3, 9, 1, 4, 5)
assert(v2 == 9 and i2 == 2)
local v3, i3 = max(3, 9, 1, 4, 5, -1)
assert(v3 == 9 and i3 == 2)
local t = {max(3, 9, 1, 4, 5)}
assert(t[1] == 9 and t[2] == 2)