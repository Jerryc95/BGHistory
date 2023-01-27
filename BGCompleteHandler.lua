Handler = BGHistory.BGHistoryHandlers

function Handler:updateDB(battleground, winner)
    local killingBlows
    local honorableKills
    local deaths
    local score

    local guid = UnitGUID("player")
    local battlegroundData = C_PvP.GetScoreInfoByPlayerGuid(guid)
    if(battlegroundData ~= nil) then
        killingBlows = battlegroundData.killingBlows
        honorableKills = battlegroundData.honorableKills
        deaths = battlegroundData.deaths
    end

    if(battleground == "Warsong Gulch") then
        BGHistoryAccountDB.Warsong.killingBlows = BGHistoryAccountDB.Warsong.killingBlows + killingBlows
        BGHistoryAccountDB.Warsong.honorableKills = BGHistoryAccountDB.Warsong.honorableKills + honorableKills
        BGHistoryAccountDB.Warsong.deaths = BGHistoryAccountDB.Warsong.deaths + deaths
        BGHistoryCharDB.Warsong.killingBlows = BGHistoryCharDB.Warsong.killingBlows + killingBlows
        BGHistoryCharDB.Warsong.honorableKills = BGHistoryCharDB.Warsong.honorableKills + honorableKills
        BGHistoryCharDB.Warsong.deaths = BGHistoryCharDB.Warsong.deaths + deaths

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
        BGHistoryAccountDB.ArathiBasin.killingBlows = BGHistoryAccountDB.ArathiBasin.killingBlows + killingBlows
        BGHistoryAccountDB.ArathiBasin.honorableKills = BGHistoryAccountDB.ArathiBasin.honorableKills + honorableKills
        BGHistoryAccountDB.ArathiBasin.deaths = BGHistoryAccountDB.ArathiBasin.deaths + deaths
        BGHistoryCharDB.ArathiBasin.killingBlows = BGHistoryCharDB.ArathiBasin.killingBlows + killingBlows
        BGHistoryCharDB.ArathiBasin.honorableKills = BGHistoryCharDB.ArathiBasin.honorableKills + honorableKills
        BGHistoryCharDB.ArathiBasin.deaths = BGHistoryCharDB.ArathiBasin.deaths + deaths

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
        BGHistoryAccountDB.AlteracValley.killingBlows = BGHistoryAccountDB.AlteracValley.killingBlows + killingBlows
        BGHistoryAccountDB.AlteracValley.honorableKills = BGHistoryAccountDB.AlteracValley.honorableKills + honorableKills
        BGHistoryAccountDB.AlteracValley.deaths = BGHistoryAccountDB.AlteracValley.deaths + deaths
        BGHistoryCharDB.AlteracValley.killingBlows = BGHistoryCharDB.AlteracValley.killingBlows + killingBlows
        BGHistoryCharDB.AlteracValley.honorableKills = BGHistoryCharDB.AlteracValley.honorableKills + honorableKills
        BGHistoryCharDB.AlteracValley.deaths = BGHistoryCharDB.AlteracValley.deaths + deaths

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
        BGHistoryAccountDB.EyeOfTheStorm.killingBlows = BGHistoryAccountDB.EyeOfTheStorm.killingBlows + killingBlows
        BGHistoryAccountDB.EyeOfTheStorm.honorableKills = BGHistoryAccountDB.EyeOfTheStorm.honorableKills + honorableKills
        BGHistoryAccountDB.EyeOfTheStorm.deaths = BGHistoryAccountDB.EyeOfTheStorm.deaths + deaths
        BGHistoryCharDB.EyeOfTheStorm.killingBlows = BGHistoryCharDB.EyeOfTheStorm.killingBlows + killingBlows
        BGHistoryCharDB.EyeOfTheStorm.honorableKills = BGHistoryCharDB.EyeOfTheStorm.honorableKills + honorableKills
        BGHistoryCharDB.EyeOfTheStorm.deaths = BGHistoryCharDB.EyeOfTheStorm.deaths + deaths

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
        BGHistoryAccountDB.IsleOfConquest.killingBlows = BGHistoryAccountDB.IsleOfConquest.killingBlows + killingBlows
        BGHistoryAccountDB.IsleOfConquest.honorableKills = BGHistoryAccountDB.IsleOfConquest.honorableKills + honorableKills
        BGHistoryAccountDB.IsleOfConquest.deaths = BGHistoryAccountDB.IsleOfConquest.deaths + deaths
        BGHistoryCharDB.IsleOfConquest.killingBlows = BGHistoryCharDB.IsleOfConquest.killingBlows + killingBlows
        BGHistoryCharDB.IsleOfConquest.honorableKills = BGHistoryCharDB.IsleOfConquest.honorableKills + honorableKills
        BGHistoryCharDB.IsleOfConquest.deaths = BGHistoryCharDB.IsleOfConquest.deaths + deaths

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
        BGHistoryAccountDB.BattleForGilneas.killingBlows = BGHistoryAccountDB.BattleForGilneas.killingBlows + killingBlows
        BGHistoryAccountDB.BattleForGilneas.honorableKills = BGHistoryAccountDB.BattleForGilneas.honorableKills + honorableKills
        BGHistoryAccountDB.BattleForGilneas.deaths = BGHistoryAccountDB.BattleForGilneas.deaths + deaths
        BGHistoryCharDB.BattleForGilneas.killingBlows = BGHistoryCharDB.BattleForGilneas.killingBlows + killingBlows
        BGHistoryCharDB.BattleForGilneas.honorableKills = BGHistoryCharDB.BattleForGilneas.honorableKills + honorableKills
        BGHistoryCharDB.BattleForGilneas.deaths = BGHistoryCharDB.BattleForGilneas.deaths + deaths
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
        BGHistoryAccountDB.BattleForWintergrasp.killingBlows = BGHistoryAccountDB.BattleForWintergrasp.killingBlows + killingBlows
        BGHistoryAccountDB.BattleForWintergrasp.honorableKills = BGHistoryAccountDB.BattleForWintergrasp.honorableKills + honorableKills
        BGHistoryAccountDB.BattleForWintergrasp.deaths = BGHistoryAccountDB.BattleForWintergrasp.deaths + deaths
        BGHistoryCharDB.BattleForWintergrasp.killingBlows = BGHistoryCharDB.BattleForWintergrasp.killingBlows + killingBlows
        BGHistoryCharDB.BattleForWintergrasp.honorableKills = BGHistoryCharDB.BattleForWintergrasp.honorableKills + honorableKills
        BGHistoryCharDB.BattleForWintergrasp.deaths = BGHistoryCharDB.BattleForWintergrasp.deaths + deaths
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
        BGHistoryAccountDB.Ashran.killingBlows = BGHistoryAccountDB.Ashran.killingBlows + killingBlows
        BGHistoryAccountDB.Ashran.honorableKills = BGHistoryAccountDB.Ashran.honorableKills + honorableKills
        BGHistoryAccountDB.Ashran.deaths = BGHistoryAccountDB.Ashran.deaths + deaths
        BGHistoryCharDB.Ashran.killingBlows = BGHistoryCharDB.Ashran.killingBlows + killingBlows
        BGHistoryCharDB.Ashran.honorableKills = BGHistoryCharDB.Ashran.honorableKills + honorableKills
        BGHistoryCharDB.Ashran.deaths = BGHistoryCharDB.Ashran.deaths + deaths
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
        BGHistoryAccountDB.TwinPeaks.killingBlows = BGHistoryAccountDB.TwinPeaks.killingBlows + killingBlows
        BGHistoryAccountDB.TwinPeaks.honorableKills = BGHistoryAccountDB.TwinPeaks.honorableKills + honorableKills
        BGHistoryAccountDB.TwinPeaks.deaths = BGHistoryAccountDB.TwinPeaks.deaths + deaths
        BGHistoryCharDB.TwinPeaks.killingBlows = BGHistoryCharDB.TwinPeaks.killingBlows + killingBlows
        BGHistoryCharDB.TwinPeaks.honorableKills = BGHistoryCharDB.TwinPeaks.honorableKills + honorableKills
        BGHistoryCharDB.TwinPeaks.deaths = BGHistoryCharDB.TwinPeaks.deaths + deaths
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
        BGHistoryAccountDB.SilvershardMines.killingBlows = BGHistoryAccountDB.SilvershardMines.killingBlows + killingBlows
        BGHistoryAccountDB.SilvershardMines.honorableKills = BGHistoryAccountDB.SilvershardMines.honorableKills + honorableKills
        BGHistoryAccountDB.SilvershardMines.deaths = BGHistoryAccountDB.SilvershardMines.deaths + deaths
        BGHistoryCharDB.SilvershardMines.killingBlows = BGHistoryCharDB.SilvershardMines.killingBlows + killingBlows
        BGHistoryCharDB.SilvershardMines.honorableKills = BGHistoryCharDB.SilvershardMines.honorableKills + honorableKills
        BGHistoryCharDB.SilvershardMines.deaths = BGHistoryCharDB.SilvershardMines.deaths + deaths
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
        BGHistoryAccountDB.TempleOfKotmogu.killingBlows = BGHistoryAccountDB.TempleOfKotmogu.killingBlows + killingBlows
        BGHistoryAccountDB.TempleOfKotmogu.honorableKills = BGHistoryAccountDB.TempleOfKotmogu.honorableKills + honorableKills
        BGHistoryAccountDB.TempleOfKotmogu.deaths = BGHistoryAccountDB.TempleOfKotmogu.deaths + deaths
        BGHistoryCharDB.TempleOfKotmogu.killingBlows = BGHistoryCharDB.TempleOfKotmogu.killingBlows + killingBlows
        BGHistoryCharDB.TempleOfKotmogu.honorableKills = BGHistoryCharDB.TempleOfKotmogu.honorableKills + honorableKills
        BGHistoryCharDB.TempleOfKotmogu.deaths = BGHistoryCharDB.TempleOfKotmogu.deaths + deaths
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
        BGHistoryAccountDB.SeethingShore.killingBlows = BGHistoryAccountDB.SeethingShore.killingBlows + killingBlows
        BGHistoryAccountDB.SeethingShore.honorableKills = BGHistoryAccountDB.SeethingShore.honorableKills + honorableKills
        BGHistoryAccountDB.SeethingShore.deaths = BGHistoryAccountDB.SeethingShore.deaths + deaths
        BGHistoryCharDB.SeethingShore.killingBlows = BGHistoryCharDB.SeethingShore.killingBlows + killingBlows
        BGHistoryCharDB.SeethingShore.honorableKills = BGHistoryCharDB.SeethingShore.honorableKills + honorableKills
        BGHistoryCharDB.SeethingShore.deaths = BGHistoryCharDB.SeethingShore.deaths + deaths
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
        BGHistoryAccountDB.DeepwindGorge.killingBlows = BGHistoryAccountDB.DeepwindGorge.killingBlows + killingBlows
        BGHistoryAccountDB.DeepwindGorge.honorableKills = BGHistoryAccountDB.DeepwindGorge.honorableKills + honorableKills
        BGHistoryAccountDB.DeepwindGorge.deaths = BGHistoryAccountDB.DeepwindGorge.deaths + deaths
        BGHistoryCharDB.DeepwindGorge.killingBlows = BGHistoryCharDB.DeepwindGorge.killingBlows + killingBlows
        BGHistoryCharDB.DeepwindGorge.honorableKills = BGHistoryCharDB.DeepwindGorge.honorableKills + honorableKills
        BGHistoryCharDB.DeepwindGorge.deaths = BGHistoryCharDB.DeepwindGorge.deaths + deaths
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



-- function Handler:getBattlegroundStats()
--     local guid = UnitGUID("player")
--     local battlegroundData = C_PvP.GetScoreInfoByPlayerGuid(guid)
--     if(battlegroundData ~= nil) then
--         print(battlegroundData.killingBlows)
--         print(battlegroundData.honorableKills)
--         print(battlegroundData.damageDone)
--         print(battlegroundData.healingDone)
--         print(battlegroundData.deaths)
--     end
-- end