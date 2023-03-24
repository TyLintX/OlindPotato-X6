function main(m)
   n = m
   groupid = n.groupid
   sendid =n.sendid
  S=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物级别序号/"..sendid..groupid,"",0)
   S=S+1
   --宠物计算数值的地方
   K=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础等级/"..sendid..groupid,"",0)
   
   A=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础个体/"..sendid..groupid,"",0)
   B=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础智力/"..sendid..groupid,"",0)
   B=((B*((A/2)*(K*S)))/50)		
  
   C=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础攻击/"..sendid..groupid,"",0)
   C=((C*((A/2)*(K*S)))/50)		

    D=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础防御/"..sendid..groupid,"",0)
    D=((D*((A/2)*(K*S)))/50)		

    V=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量上限/"..sendid..groupid,"",0)
    V=((V*((A/2)*(K*S)))/50)
    AE={"智力","攻击","防御","血量"}
    --去除小数取整数
 C=math.ceil(C)
 D=math.ceil(D)
 V=math.ceil(V)
         
    B=math.ceil(B)
    --去除小数取整数
    AC={B,C,D,V}	
   end
function luaReturn(str1) 
GJ=n:JSONObject(AE,AC)
return GJ
end
