function s(s)
    n:send(s, groupid)
end
function main(m)
    n = m
    groupid = n.groupid
    sendid  = n.sendid
    yan=n:dLong(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"",0)
    if yan==1 then
    s("@"..n.nick.." 您已经有宠物了，贪多嚼不烂哦")
	return				
    end
    a3={
	"冥王龙","雪拉比","莱伊","大甲","皮皮","火焰鸡","苍龙","皮卡丘","钢龙","蓝龙","冰妖狐","九尾狐"
	,"朱雀","麒麟","耿鬼","梦幻"
	,"独角狼","闪电鸟","战锤龙","烈焰猴","霸王螺","卡比兽","绿毛虫","天蝎王","雷朵","盔甲鸟","哮天犬"
	,"超梦","美女猫","皮皮虾","唐伯虎","蜥蜴王","洛奇亚","盖欧卡","尼尔","西斯","野猪精"
	,"魔王菇","飞天鼠","青焰驹","长耳兔","裂空座","电龙","穿山甲","水龙","皮神"
	,"火神虫","海星","固拉多","利欧","宙斯","七夕青鸟","蓝龙","凤凰","大力蛙"
	,"烈咬陆鲨","水君","呆河马","喵小将","快龙","美纳斯","妖冥","暴鲤龙","牛魔王","倒萨"
	,"沙瓦郎","玛纽拉","奇犽","土台龟","布谷鸟","烈焰马","大钢蛇","忍蛙","纱奈朵"
	,"紫幻","代发"}
	A=math.random(0,#a3)
	--A数组为宠物名生成的随机数			
    A1=a3[A]
    --A1变量为宠物名数组
    image=n:imagefile((A-1)..".png")
    --image为通过数组序 获取到资源库图片的路径
    B={"金","木","水","火","土","风","雷","冰","风","光","暗"}
   	B1=math.random(0,#B)
    --生成范围随机数
    B2=B[B1]
    --生成随机属性  
    --B数组为宠物的属性
	C={"普通","精品","稀有","神级","传说","史诗"}
	C1=math.random(0,#C)
    --生成范围随机数
    C2=C[C1]
    --生成随机级别  
	--C数组为宠物的级别	
	D={"雌","雄"}
	--D数组为宠物的性别
    D1=math.random(0,#D)
    --生成范围随机数
    D2=D[D1]
    --生成随机性别 
    imageimg="±img="..image.."±"
    --生成发图代码
    s(imageimg.."@"..n.nick.." 恭喜您砸到了一颗"..B2.."属性的宠物蛋，蛋壳里发现了一只"..C2.."的"..A1.."！详细信息发送:我的宠物") 
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物名/"..sendid..groupid,"",A1)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物属性/"..sendid..groupid,"",B2)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物级别/"..sendid..groupid,"",C2)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物性别/"..sendid..groupid,"",D2)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物序号/"..sendid..groupid,"",A)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物级别序号/"..sendid..groupid,"",C1)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物阶段/"..sendid..groupid,"","幼年期")
    V=math.random(100,300)
	n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础个体/"..sendid..groupid,"",V)
    V=math.random(100,300)
	n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础智力/"..sendid..groupid,"",V)
    V=math.random(100,300)
	n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础攻击/"..sendid..groupid,"",V)
    V=math.random(100,300)
	n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础防御/"..sendid..groupid,"",V)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物基础等级/"..sendid..groupid,"",1)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物模拟等级/"..sendid..groupid,"",1)  
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力/"..sendid..groupid,"",100)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物精力上限/"..sendid..groupid,"",100)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物经验/"..sendid..groupid,"",0)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物心情/"..sendid..groupid,"",5)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物婚姻状态/"..sendid..groupid,"","未婚")  
    V=math.random(100,300)
	n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量/"..sendid..groupid,"",V)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量上限/"..sendid..groupid,"",V)
    n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/砸蛋验证/"..sendid..groupid,"","1")
    --写入砸蛋验证
   vn=n:loadluab("宠物数值读档.lua","你好","luaReturn") --lua中调用lua文本
   xieliangshangxian=n:JSONObjectString(vn,"血量")
   --取出血量
  n:xwj(n.ss.."/Clousx6/配置缓存/超级宠物/宠物血量/"..sendid..groupid,"",xieliangshangxian)
  
end

