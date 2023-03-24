function main(m)
    n = m
    groupid = n.groupid
    A=n:loadFile("测试.txt")
    s(A)    
end

function s(s)
    n:send(s, groupid)
end
