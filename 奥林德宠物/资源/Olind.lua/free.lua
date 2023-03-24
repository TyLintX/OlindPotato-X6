function s(s)
    n:send(s, groupid)
end
function main(m)
    n = m
    groupid = n.groupid
    sendid  = n.sendid
    yan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"",0)
    if yan==0 then
    s("@"..n.nick.." 您还没有宠物哦，无法放生。")
	return				
    end
    s("@"..n.nick.." 放生成功，宠物屁颠屁颠的走了。")
   n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"","0")
 
end
