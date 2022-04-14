local mt = {}

function vector(x, y)
    local v = {x = x, y = y}
    setmetatable(v, mt)
    return v
end

mt.__add = function(a, b)
    return vector(a.x + b.x, a.y + b.y)
end

mt.__sub = function(a, b)
    return vector(a.x - b.x, a.y - b.y)
end

mt.__mul = function(a, b)
    return vector(a.x * b, a.y * b)
end

mt.__div = function(a, b)
    return vector(a.x / b, a.y / b)
end

mt.__len = function(v)
    return (v.x * v.x + v.y * v.y) ^ 0.5
end

mt.__eq = function(a, b)
    return a.x == b.x and a.y == b.y
end

mt.__index = function(v, k)
    if k == "print" then
        return function()
            print("[" .. v.x .. ", " .. v.y .. "]")
        end
    end
end

mt.__call = function(v)
    print("[" .. v.x .. ", " .. v.y .. "]")
end

v1 = vector(1,2); v1:print()
v2 = vector(3,4); v2:print()
v3 = v1 * 2; v3:print()
v4 = v1 + v2; v4:print()
print(#v2)
print(v1 == v2)
print(v2 == vector(3,4))
v4()