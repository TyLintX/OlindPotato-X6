function main(m)
    n = m
    groupid = n.groupid
 
   local vn=n:loadluab("测试.lua","你好","luaReturn") --lua中调用lua文本
   s(vn)
end

function s(s)
    n:send(s, groupid)
end
