function s(s)
    n:send(s, groupid)
end
function main(m)
    n = m
    groupid = n.groupid
    sendid =n.sendid
   

    yan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"",0) 
    if yan==0 then
    s("@"..n.nick.." 您还没有宠物哦，赶紧“砸蛋”邂逅您的专属宝贝吧")
	return				
    end
   dengji=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础等级/"..sendid..groupid,"",0)
   ming=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/宠物名/"..sendid..groupid,"","")
   shuxing=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/宠物属性/"..sendid..groupid,"","")
   xuhao=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物序号/"..sendid..groupid,"",0)  
   image=n:imagefile((xuhao-1)..".png")
    --image为通过数组序 获取到资源库图片的路径
   jieduan=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/宠物阶段/"..sendid..groupid,"","")
   jibie=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/宠物级别/"..sendid..groupid,"","")
   geti=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础个体/"..sendid..groupid,"",0)
   jingli=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",0)
   jinglishangxian=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力上限/"..sendid..groupid,"",0)
   jingyan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物经验/"..sendid..groupid,"",0)
   vn=n:loadluab("宠物数值读档.lua","你好","luaReturn") --lua中调用lua文本
   zhili=n:JSONObjectString(vn,"智力")
   --取出智力
   gongji=n:JSONObjectString(vn,"攻击")
   --取出攻击
   fangyu=n:JSONObjectString(vn,"防御")
   --取出防御
   xieliangshangxian=n:JSONObjectString(vn,"血量")
   --取出血量
   xieliang=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量/"..sendid..groupid,"",0)
   xingbie=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/宠物性别/"..sendid..groupid,"","雌")
   hunyinzhuangtai=n:dString(n.ss.."/Clousx6/配置缓存/超级宠物/宠物婚姻状态/"..sendid..groupid,"","")
   HF=((300*(dengji+1))*(dengji+1))
			if dengji>=120 then
				HKK=99999999
				HF=HKK
			end
   hh94=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/宠物心情/"..sendid..groupid,"",5)
           GH="正常";

	       DH="★★★★★"
			if hh94==5 then
				DH="★★★★★"	
			end
			if hh94==4 then
				DH="★★★★☆"	
			end
			if hh94==3 then
				GH="心情很差"
				DH="★★★☆☆"	
			end
			if hh94==2 then
				DH="★★☆☆☆"	
			end
			if hh94==1 then
				DH="★☆☆☆☆"	
			end
			if hh94==0 then
				GH="极度崩溃"
				DH="☆☆☆☆☆"	
			end

if xieliang <=0 then
				GH="死亡"	
			end
if jingli==1 then
jingli=0
end

CO=
"±img="..image.."±"..
"┏-★--宠☆物--★-┓\n"..
"●等级："..dengji.."\n"..
"●昵称：宠物宝宝\n"..
"●种类："..ming.."·"..shuxing.."\n"..
"●阶段："..jieduan.."\n"..
"●级别："..jibie.."\n"..
"●个体："..geti.."\n"..
"●战力："..(zhili+gongji+fangyu+xieliangshangxian).."\n"..
"●智力："..zhili.."\n"..
"●攻击："..gongji.."\n"..
"●防御："..fangyu.."\n"..
"●秘技：无\n"..
"●神器：无\n"..
"●性别："..xingbie.."\n"..
"●婚姻："..hunyinzhuangtai.."\n"..
"●状态："..GH.."\n"..
"●天赋：未觉醒\n"..
"●心情："..DH.."\n"..
"●精力："..jingli.."/"..jinglishangxian.."\n"..
"●血量："..xieliang.."/"..xieliangshangxian.."\n"..
"●经验："..jingyan.."/"..HF.."\n"..
"┗-★--信☆息--★-┛"
s(CO) 
    
    
  

 end
