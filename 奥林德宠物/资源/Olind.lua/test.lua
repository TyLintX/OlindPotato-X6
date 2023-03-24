function main(m)
    n = m
    groupid = n.groupid
    -- 注意，lua词库用\n表示换行，字符串用“..”与字符串或数字拼接
    str = "养鲲：从无尽之海抓一只奇怪的鲲，可能获得各种道具。\n"
            .."鲲海：抓来的鲲所处的地方，三只及以上可以合成。合成有几率变异，使鲲海等级大幅上升。\n"
            .."收藏：将一条鲲海的鲲收藏至鲲界，栗子【收藏戮鲲】。可以多次收藏，等级叠加不清零。\n"
            .."命名：将鲲界的鲲改名，栗子【命名戮鲲】，需要消耗一张改名卡。\n"
            .."吞鲲：鲲界的鲲把鲲海的所有鲲都吃了，鲲海等级叠加至鲲界。\n"
            .."属性：查看鲲界这条鲲的属性。"
        --   n:call("XXX帮助", 0) -- n:call调用
end
function luaReturn(str1) 
   n:send(str1, groupid)   
return groupid
end
function s(s)
    n:send(s, groupid)
end
