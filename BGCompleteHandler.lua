local handler = BGHistory.BGCompleteHandler

local function getBattleground()
    local battlegroundName
    local id = C_Map.GetBestMapForUnit("player")
    local mapID
        if (id ~= nil) then
        mapID = id
    end
    local area = C_Map.GetMapInfo(mapID)
    
    for i = 1 ,13,1 do	
        local name, canEnter, isHoliday, isRandom, battleGroundID, info = GetBattlegroundInfo(i)
        if(name == area.name) then
            battlegroundName = name
            break
        end
     end
    return battlegroundName
end

function BGHistory.BGCompleteHandler:handleBGComplete(winner, duration)
    local battleground = getBattleground()
    print(battleground)
    print(winner)
    print(duration)
    if (winner == 0) then
        print("The Horde have won!")
        print(duration)
    elseif (winner == 1) then
        print("The Alliance have won!")
        print(duration)
    end
end