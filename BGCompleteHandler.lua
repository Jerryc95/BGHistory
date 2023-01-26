Handler = BGHistory.BGHistoryHandlers

function Handler:updateDB(battleground, winner)
    local score

    if(battleground == "Warsong Gulch") then
        if(winner == 0) then
            BGHistoryAccountDB.Warsong.Horde = BGHistoryAccountDB.Warsong.Horde + 1
            BGHistoryCharDB.Warsong.Horde = BGHistoryCharDB.Warsong.Horde + 1
            score = BGHistoryAccountDB.Warsong.Horde
            print("The Horde won Warsong", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.Warsong.Alliance = BGHistoryAccountDB.Warsong.Alliance + 1
            BGHistoryCharDB.Warsong.Alliance = BGHistoryCharDB.Warsong.Alliance + 1
            score = BGHistoryAccountDB.Warsong.Alliance
            print("The Alliance won Warsong", score, "times")
        end
    elseif (battleground == "Arathi Basin") then
        if(winner == 0) then
            BGHistoryAccountDB.ArathiBasin.Horde = BGHistoryAccountDB.ArathiBasin.Horde + 1
            BGHistoryCharDB.ArathiBasin.Horde = BGHistoryCharDB.ArathiBasin.Horde + 1
            score = BGHistoryAccountDB.ArathiBasin.Horde
            print("The Horde won AB", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.ArathiBasin.Alliance = BGHistoryAccountDB.ArathiBasin.Alliance + 1
            BGHistoryCharDB.ArathiBasin.Alliance = BGHistoryCharDB.ArathiBasin.Alliance + 1
            score = BGHistoryAccountDB.ArathiBasin.Alliance
            print("The Alliance won AB", score, "times")
        end
    elseif (battleground == "Alterac Valley") then
        if(winner == 0) then
            BGHistoryAccountDB.AlteracValley.Horde = BGHistoryAccountDB.AlteracValley.Horde + 1
            BGHistoryCharDB.AlteracValley.Horde = BGHistoryCharDB.AlteracValley.Horde + 1
            score = BGHistoryAccountDB.AlteracValley.Horde
            print("The Horde won AV", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.AlteracValley.Alliance = BGHistoryAccountDB.AlteracValley.Alliance + 1
            BGHistoryCharDB.AlteracValley.Alliance = BGHistoryCharDB.AlteracValley.Alliance + 1
            print()
        end
    elseif (battleground == "Eye of the Storm") then
        if(winner == 0) then
            BGHistoryAccountDB.EyeOfTheStorm.Horde = BGHistoryAccountDB.EyeOfTheStorm.Horde + 1
            BGHistoryCharDB.EyeOfTheStorm.Horde = BGHistoryCharDB.EyeOfTheStorm.Horde + 1
            score = BGHistoryAccountDB.EyeOfTheStorm.Horde
            print("The Horde won Eye", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.EyeOfTheStorm.Alliance = BGHistoryAccountDB.EyeOfTheStorm.Alliance + 1
            BGHistoryCharDB.EyeOfTheStorm.Alliance = BGHistoryCharDB.EyeOfTheStorm.Alliance + 1
            print()
        end
    elseif (battleground == "Isle of Conquest") then
        if(winner == 0) then
            BGHistoryAccountDB.IsleOfConquest.Horde = BGHistoryAccountDB.IsleOfConquest.Horde + 1
            BGHistoryCharDB.IsleOfConquest.Horde = BGHistoryCharDB.IsleOfConquest.Horde + 1
            score = BGHistoryAccountDB.IsleOfConquest.Horde
            print("The Horde won IOC", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.IsleOfConquest.Alliance = BGHistoryAccountDB.IsleOfConquest.Alliance + 1
            BGHistoryCharDB.IsleOfConquest.Alliance = BGHistoryCharDB.IsleOfConquest.Alliance + 1
            print()
        end
    elseif (battleground == "The Battle for Gilneas") then
        if(winner == 0) then
            BGHistoryAccountDB.BattleForGilneas.Horde = BGHistoryAccountDB.BattleForGilneas.Horde + 1
            BGHistoryCharDB.BattleForGilneas.Horde = BGHistoryCharDB.BattleForGilneas.Horde + 1
            score = BGHistoryAccountDB.BattleForGilneas.Horde
            print("The Horde won Gilneas", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.BattleForGilneas.Alliance = BGHistoryAccountDB.BattleForGilneas.Alliance + 1
            BGHistoryCharDB.BattleForGilneas.Alliance = BGHistoryCharDB.BattleForGilneas.Alliance + 1
            print()
        end
    elseif (battleground == "Battle for Wintergrasp") then
        if(winner == 0) then
            BGHistoryAccountDB.BattleForWintergrasp.Horde = BGHistoryAccountDB.BattleForWintergrasp.Horde + 1
            BGHistoryCharDB.BattleForWintergrasp.Horde = BGHistoryCharDB.BattleForWintergrasp.Horde + 1
            score = BGHistoryAccountDB.BattleForWintergrasp.Horde
            print("The Horde won wintergrasp", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.BattleForGilneas.Alliance = BGHistoryAccountDB.BattleForGilneas.Alliance + 1
            BGHistoryCharDB.BattleForGilneas.Alliance = BGHistoryCharDB.BattleForGilneas.Alliance + 1
            print()
        end
    elseif (battleground == "Ashran") then
        if(winner == 0) then
            BGHistoryAccountDB.Ashran.Horde = BGHistoryAccountDB.Ashran.Horde + 1
            BGHistoryCharDB.Ashran.Horde = BGHistoryCharDB.Ashran.Horde + 1
            print()
        elseif (winner == 1)  then
            BGHistoryAccountDB.Ashran.Alliance = BGHistoryAccountDB.Ashran.Alliance + 1
            BGHistoryCharDB.Ashran.Alliance = BGHistoryCharDB.Ashran.Alliance + 1
            print()
        end
    elseif (battleground == "Twin Peaks") then
        if(winner == 0) then
            BGHistoryAccountDB.TwinPeaks.Horde = BGHistoryAccountDB.TwinPeaks.Horde + 1
            BGHistoryCharDB.TwinPeaks.Horde = BGHistoryCharDB.TwinPeaks.Horde + 1
            print()
        elseif (winner == 1)  then
            BGHistoryAccountDB.TwinPeaks.Alliance = BGHistoryAccountDB.TwinPeaks.Alliance + 1
            BGHistoryCharDB.TwinPeaks.Alliance = BGHistoryCharDB.TwinPeaks.Alliance + 1
            print()
        end
    elseif (battleground == "Silvershard Mines") then
        if(winner == 0) then
            BGHistoryAccountDB.SilvershardMines.Horde = BGHistoryAccountDB.SilvershardMines.Horde + 1
            BGHistoryCharDB.SilvershardMines.Horde = BGHistoryCharDB.SilvershardMines.Horde + 1
            print()
        elseif (winner == 1)  then
            BGHistoryAccountDB.SilvershardMines.Alliance = BGHistoryAccountDB.SilvershardMines.Alliance + 1
            BGHistoryCharDB.SilvershardMines.Alliance = BGHistoryCharDB.SilvershardMines.Alliance + 1
            print()
        end
    elseif (battleground == "Temple of Kotmogu") then
        if(winner == 0) then
            BGHistoryAccountDB.TempleOfKotmogu.Horde = BGHistoryAccountDB.TempleOfKotmogu.Horde + 1
            BGHistoryCharDB.TempleOfKotmogu.Horde = BGHistoryCharDB.TempleOfKotmogu.Horde + 1
            score = BGHistoryAccountDB.TempleOfKotmogu.Horde
            print("The Horde won Temple of Kotmogu", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.TempleOfKotmogu.Alliance = BGHistoryAccountDB.TempleOfKotmogu.Alliance + 1
            BGHistoryCharDB.TempleOfKotmogu.Alliance = BGHistoryCharDB.TempleOfKotmogu.Alliance + 1
            score = BGHistoryAccountDB.TempleOfKotmogu.Alliance
            print("The Alliance won Temple of Kotmogu", score, "times")
        end
    elseif (battleground == "Seething Shore") then
        if(winner == 0) then
            BGHistoryAccountDB.SeethingShore.Horde = BGHistoryAccountDB.SeethingShore.Horde + 1
            BGHistoryCharDB.SeethingShore.Horde = BGHistoryCharDB.SeethingShore.Horde + 1
            score = BGHistoryAccountDB.TempleOfKotmogu.Horde
            print("The Horde won Seething shore", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.SeethingShore.Alliance = BGHistoryAccountDB.SeethingShore.Alliance + 1
            BGHistoryCharDB.SeethingShore.Alliance = BGHistoryCharDB.SeethingShore.Alliance + 1
            score = BGHistoryAccountDB.TempleOfKotmogu.Alliance
            print("The Alliance won seeting shore", score, "times")
        end
    elseif (battleground == "Deepwind Gorge") then
        if(winner == 0) then
            BGHistoryAccountDB.DeepwindGorge.Horde = BGHistoryAccountDB.DeepwindGorge.Horde + 1
            BGHistoryCharDB.DeepwindGorge.Horde = BGHistoryCharDB.DeepwindGorge.Horde + 1
            print()
        elseif (winner == 1)  then
            BGHistoryAccountDB.DeepwindGorge.Alliance = BGHistoryAccountDB.DeepwindGorge.Alliance + 1
            BGHistoryCharDB.DeepwindGorge.Alliance = BGHistoryCharDB.DeepwindGorge.Alliance + 1
            print()
        end
    end
end



function Handler:getBattlegroundStats()
    local guid = UnitGUID("player")
    local battlegroundData = C_PvP.GetScoreInfoByPlayerGuid(guid)
    if(battlegroundData ~= nil) then
        print(battlegroundData.killingBlows)
        print(battlegroundData.honorableKills)
        print(battlegroundData.damageDone)
        print(battlegroundData.healingDone)
        print(battlegroundData.deaths)
    end
end