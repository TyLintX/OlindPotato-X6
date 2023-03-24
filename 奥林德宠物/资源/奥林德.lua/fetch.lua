function main(m)
    n = m
    groupid = n.groupid
    A= n:imagefile("龙炎灾.png")
    s("±img="..A.."±")    
end

function s(s)
    n:send(s, groupid)
end
