function s(s)
    n:send(s, groupid)
end
function main(m)
    n = m
    groupid = n.groupid
    sendid=n.sendid
    nick=n.nick
    yan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"",0) 
    if yan==0 then
    return				
    end
    --判断是否砸蛋过
    HK=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物经验/"..sendid..groupid,"",0)	
	for Y=120,1,-1 do
    HF=((300*Y)*Y)
    if HK>HF then
	n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础等级/"..sendid..groupid,"",Y)
    break
	end
	end
	--记录发言时间
     fayan=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/发言时间/"..sendid..groupid,"",0)
     G1=n:timeb(fayan)--参数输入时间 可以计算当前时间与输入参数的时间差是多少
     if G1>60 then
     jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",0)
     G1=G1/60
     G2=math.ceil(G1)
     n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",(jingli+G2))  

     end
	--自动开始每分钟恢复精力 
    local G3=n:timea(0)--参数输入秒数 可以增加当前时间秒数后的时间 
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/发言时间/"..sendid..groupid,"",G3)
    --检测精力100是否溢出
    jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",0)
    jinglishangxian=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力上限/"..sendid..groupid,"",0)
    if jingli>jinglishangxian then
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",jinglishangxian)  
    end
    if jingli<=1 then
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",1)   
    end
  	--对经验进行计算 并且重新通过经验生成等级
	dengji=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物模拟等级/"..sendid..groupid,"",0)
  	dengji1=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础等级/"..sendid..groupid,"",0)
    --自动检测是否升级 进入升级提示
    if dengji1>dengji then
    n:sleep(200)
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
    V=math.ceil(V)

    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量/"..sendid..groupid,"",V)
 
  K1=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物模拟等级/"..sendid..groupid,"",0)
   
   A=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础个体/"..sendid..groupid,"",0)
   B2=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础智力/"..sendid..groupid,"",0)
   B1=((B2*((A/2)*(K1*S)))/50)		
  
   C2=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础攻击/"..sendid..groupid,"",0)
   C1=((C2*((A/2)*(K1*S)))/50)		

    D2=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础防御/"..sendid..groupid,"",0)
    D1=((D2*((A/2)*(K1*S)))/50)		

    V2=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量上限/"..sendid..groupid,"",0)
    V1=((V2*((A/2)*(K1*S)))/50)
 M=math.ceil(B-B1)
 M1=math.ceil(V-V1)
 M2=math.ceil(C-C1)
 M3=math.ceil(D-D1)
 N=(dengji1-dengji) 
 if N<0 then
 return
 end
    r=" @"..nick.." 您的宠物宝宝升级啦！\\r"..
							 "┏-★--升☆级--★-┓\\r"..
							 "● 等级提升：+"..(dengji1-dengji).."\\r"..
							 "● 精力减少：-30\\r"..
							 "● 智力提升：+"..M.."\\r"..
							 "● 生命提升：+"..M1.."\\r"..
							 "● 攻击提升：+"..M2.."\\r"..
							 "● 防御提升：+"..M3.."\\r"..
							 "┗-★--成☆功--★-┛"	
	jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",0)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",jingli-30)  
  	
    
    s(r)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物模拟等级/"..sendid..groupid,"",dengji1)
    end
end
