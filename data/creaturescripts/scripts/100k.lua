local levu = 99 -- Level
function onAdvance(cid, skill, oldlevel, newlevel)
        if getPlayerLevel(cid) > levu and getPlayerStorageValue(cid, 21920) == -1 then
        setPlayerStorageValue(cid, 21920, 1)
        doPlayerAddItem(cid, 2160, 10)
end
return true
end