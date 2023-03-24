function main(m)

A={"黑暗星空","水帘洞天","天棘雷池","不朽金山","冰魂寒界"}
	

    n = m
    groupid = n.groupid
    sendid=n.sendid
  local vn=n:loadluab("判断检测.lua","你好","luaReturn") --lua中调用lua文本
  if vn=="1" then
  return
  end
  --检测精力是否为0
  jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",0)
  if jingli<35 then
  h="@"..n.nick.." 您的宠物精力不足，休息休息吧。"	
  s(h)	
  return
  end
  jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量/"..sendid..groupid,"",0)
  if jingli<=1 then
  h="@"..n.nick.." 您的宠物已经死亡了，恢复正常后才能驱使它哦"	
  s(h)	
  return
  end

dengji=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础等级/"..sendid..groupid,"",0) 
oo=math.random(10,(50+dengji))--生成修炼随机时间 单位分			   
oo1=oo*10
oo2=oo*60
--修炼经验
HF=((100*(dengji+1))*(dengji+1))
oc=math.random((HF/10),(HF/2))--随机修炼时间
				
time=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/修炼时间差/"..sendid..groupid,"","0")
if time=="0" then
ac()
return
end
G1=n:timeb(time)--参数输入时间 可以计算当前时间与输入参数的时间差是多少
if G1<0 then--if判断G1时间差是否为负数，如果为负数，代表有等待差时间
local d=string.gsub(G1.."", "-", "")--替换函数 将负数字符串 -号去除
S="@"..n.nick.." 时间还没到哦，\n".."下次活动时间:\n"..time.."\n距您下一次活动还差"..math.ceil((d/60)).."分"							
s(S)
return
end

ac()
end
function ac()
local G3=n:timea(oo2)--参数输入秒数 可以增加当前时间秒数后的时间
	A3=math.random(0,#A)
	--A数组为宠物地域生成的随机数			
    A1=A[A3]

sd="@"..n.nick.." 您的宠物宝宝正在"..A1.."拼命的练功......\n"..
"┏-★--修☆炼--★-┓\n"..
"●练功持续："..oo.."分钟\n"..
"●精力减少：-35\n"..
"●经验增加：+"..oc.."\n"..
"●下次练功："..G3.."\n"..
"┗-★--成☆功--★-┛"
s(sd)
jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",0)
n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",jingli-35)  
n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/修炼时间差/"..sendid..groupid,"",G3)
 jingyan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物经验/"..sendid..groupid,"",0)
 n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物经验/"..sendid..groupid,"",(jingyan+oc))

end

function s(s)
n:send(s, groupid)
end
