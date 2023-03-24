function s(s)
    n:send(s, groupid)
end
function main(m)
    n = m
    groupid = n.groupid
    sendid=n.sendid
end
function luaReturn(str1)
    yan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"",0) 
    if yan==0 then
    s("@"..n.nick.." 您还没有宠物哦，赶紧“砸蛋”邂逅您的专属宝贝吧")
	return "1"				
    end     
return "0"
end

