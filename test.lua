function div0(a, b)
    if b == 0 then
        error("DIV BY ZERO!")
    else
        return a / b
    end
end

function div1(a, b)
    -- comment
    --[[ then
        error("DIV BY ZERO!")
    else
        return a / b
    end
        ]]


    return div0(a, b)
end

function div2(a, b)
    return div1(a, b)
end

a = [[
heeg
danenng]]

print(a)
ok, ret = pcall(div2, 4, 2);
print(ok, ret)
ok, ret = pcall(div2, 5, 0);
print(ok, ret)
ok, ret = pcall(div2, {}, {});
print(ok, ret)