Handler = BGHistory.BGHistoryHandlers

function Handler:LoadBGHistory()
    if (BGHistoryAccountDB.Warsong == nil) then
        BGHistoryAccountDB.Warsong = {}
        BGHistoryAccountDB.ArathiBasin = {}
        BGHistoryAccountDB.AlteracValley = {}
        BGHistoryAccountDB.EyeOfTheStorm = {}
        BGHistoryAccountDB.IsleOfConquest = {}
        BGHistoryAccountDB.BattleForGilneas = {}
        BGHistoryAccountDB.BattleForWintergrasp = {}
        BGHistoryAccountDB.Ashran = {}
        BGHistoryAccountDB.TwinPeaks = {}
        BGHistoryAccountDB.SilvershardMines = {}
        BGHistoryAccountDB.TempleOfKotmogu = {}
        BGHistoryAccountDB.SeethingShore = {}
        BGHistoryAccountDB.DeepwindGorge = {}
        end

    if (BGHistoryCharDB.Warsong == nil) then
        BGHistoryCharDB.Warsong = {}
        BGHistoryCharDB.ArathiBasin = {}
        BGHistoryCharDB.AlteracValley = {}
        BGHistoryCharDB.EyeOfTheStorm = {}
        BGHistoryCharDB.IsleOfConquest = {}
        BGHistoryCharDB.BattleForGilneas = {}
        BGHistoryCharDB.BattleForWintergrasp = {}
        BGHistoryCharDB.Ashran = {}
        BGHistoryCharDB.TwinPeaks = {}
        BGHistoryCharDB.SilvershardMines = {}
        BGHistoryCharDB.TempleOfKotmogu = {}
        BGHistoryCharDB.SeethingShore = {}
        BGHistoryCharDB.DeepwindGorge = {}
        end

    if(BGHistoryAccountDB.Warsong.Horde == nil) then
        BGHistoryAccountDB.Warsong.Horde = 0
        BGHistoryAccountDB.Warsong.Alliance = 0
        BGHistoryAccountDB.Warsong.killingBlows = 0
        BGHistoryAccountDB.Warsong.honorableKills = 0
        BGHistoryAccountDB.Warsong.deaths = 0

        BGHistoryAccountDB.ArathiBasin.Horde = 0
        BGHistoryAccountDB.ArathiBasin.Alliance = 0
        BGHistoryAccountDB.ArathiBasin.killingBlows = 0
        BGHistoryAccountDB.ArathiBasin.honorableKills = 0
        BGHistoryAccountDB.ArathiBasin.deaths = 0

        BGHistoryAccountDB.AlteracValley.Horde = 0
        BGHistoryAccountDB.AlteracValley.Alliance = 0
        BGHistoryAccountDB.AlteracValley.killingBlows = 0
        BGHistoryAccountDB.AlteracValley.honorableKills = 0
        BGHistoryAccountDB.AlteracValley.deaths = 0

        BGHistoryAccountDB.EyeOfTheStorm.Horde = 0
        BGHistoryAccountDB.EyeOfTheStorm.Alliance = 0
        BGHistoryAccountDB.EyeOfTheStorm.killingBlows = 0
        BGHistoryAccountDB.EyeOfTheStorm.honorableKills = 0
        BGHistoryAccountDB.EyeOfTheStorm.deaths = 0

        BGHistoryAccountDB.IsleOfConquest.Horde = 0
        BGHistoryAccountDB.IsleOfConquest.Alliance = 0
        BGHistoryAccountDB.IsleOfConquest.killingBlows = 0
        BGHistoryAccountDB.IsleOfConquest.honorableKills = 0
        BGHistoryAccountDB.IsleOfConquest.deaths = 0

        BGHistoryAccountDB.BattleForGilneas.Horde = 0
        BGHistoryAccountDB.BattleForGilneas.Alliance = 0
        BGHistoryAccountDB.BattleForGilneas.killingBlows = 0
        BGHistoryAccountDB.BattleForGilneas.honorableKills = 0
        BGHistoryAccountDB.BattleForGilneas.deaths = 0

        BGHistoryAccountDB.BattleForWintergrasp.Horde = 0
        BGHistoryAccountDB.BattleForWintergrasp.Alliance = 0
        BGHistoryAccountDB.BattleForWintergrasp.killingBlows = 0
        BGHistoryAccountDB.BattleForWintergrasp.honorableKills = 0
        BGHistoryAccountDB.BattleForWintergrasp.deaths = 0

        BGHistoryAccountDB.Ashran.Horde = 0
        BGHistoryAccountDB.Ashran.Alliance = 0
        BGHistoryAccountDB.Ashran.killingBlows = 0
        BGHistoryAccountDB.Ashran.honorableKills = 0
        BGHistoryAccountDB.Ashran.deaths = 0

        BGHistoryAccountDB.TwinPeaks.Horde = 0
        BGHistoryAccountDB.TwinPeaks.Alliance = 0
        BGHistoryAccountDB.TwinPeaks.killingBlows = 0
        BGHistoryAccountDB.TwinPeaks.honorableKills = 0
        BGHistoryAccountDB.TwinPeaks.deaths = 0

        BGHistoryAccountDB.SilvershardMines.Horde = 0
        BGHistoryAccountDB.SilvershardMines.Alliance = 0
        BGHistoryAccountDB.SilvershardMines.killingBlows = 0
        BGHistoryAccountDB.SilvershardMines.honorableKills = 0
        BGHistoryAccountDB.SilvershardMines.deaths = 0

        BGHistoryAccountDB.TempleOfKotmogu.Horde = 0
        BGHistoryAccountDB.TempleOfKotmogu.Alliance = 0
        BGHistoryAccountDB.TempleOfKotmogu.killingBlows = 0
        BGHistoryAccountDB.TempleOfKotmogu.honorableKills = 0
        BGHistoryAccountDB.TempleOfKotmogu.deaths = 0
        
        BGHistoryAccountDB.SeethingShore.Horde = 0
        BGHistoryAccountDB.SeethingShore.Alliance = 0
        BGHistoryAccountDB.SeethingShore.killingBlows = 0
        BGHistoryAccountDB.SeethingShore.honorableKills = 0
        BGHistoryAccountDB.SeethingShore.deaths = 0

        BGHistoryAccountDB.DeepwindGorge.Horde = 0
        BGHistoryAccountDB.DeepwindGorge.Alliance = 0
        BGHistoryAccountDB.DeepwindGorge.killingBlows = 0
        BGHistoryAccountDB.DeepwindGorge.honorableKills = 0
        BGHistoryAccountDB.DeepwindGorge.deaths = 0
    end

    
    if(BGHistoryCharDB.Warsong.Horde == nil) then
        BGHistoryCharDB.Warsong.Horde = 0
        BGHistoryCharDB.Warsong.Alliance = 0
        BGHistoryCharDB.Warsong.killingBlows = 0
        BGHistoryCharDB.Warsong.honorableKills = 0
        BGHistoryCharDB.Warsong.deaths = 0

        BGHistoryCharDB.ArathiBasin.Horde = 0
        BGHistoryCharDB.ArathiBasin.Alliance = 0
        BGHistoryCharDB.ArathiBasin.killingBlows = 0
        BGHistoryCharDB.ArathiBasin.honorableKills = 0
        BGHistoryCharDB.ArathiBasin.deaths = 0

        BGHistoryCharDB.AlteracValley.Horde = 0
        BGHistoryCharDB.AlteracValley.Alliance = 0
        BGHistoryCharDB.AlteracValley.killingBlows = 0
        BGHistoryCharDB.AlteracValley.honorableKills = 0
        BGHistoryCharDB.AlteracValley.deaths = 0

        BGHistoryCharDB.EyeOfTheStorm.Horde = 0
        BGHistoryCharDB.EyeOfTheStorm.Alliance = 0
        BGHistoryCharDB.EyeOfTheStorm.killingBlows = 0
        BGHistoryCharDB.EyeOfTheStorm.honorableKills = 0
        BGHistoryCharDB.EyeOfTheStorm.deaths = 0

        BGHistoryCharDB.IsleOfConquest.Horde = 0
        BGHistoryCharDB.IsleOfConquest.Alliance = 0
        BGHistoryCharDB.IsleOfConquest.killingBlows = 0
        BGHistoryCharDB.IsleOfConquest.honorableKills = 0
        BGHistoryCharDB.IsleOfConquest.deaths = 0

        BGHistoryCharDB.BattleForGilneas.Horde = 0
        BGHistoryCharDB.BattleForGilneas.Alliance = 0
        BGHistoryCharDB.BattleForGilneas.killingBlows = 0
        BGHistoryCharDB.BattleForGilneas.honorableKills = 0
        BGHistoryCharDB.BattleForGilneas.deaths = 0

        BGHistoryCharDB.BattleForWintergrasp.Horde = 0
        BGHistoryCharDB.BattleForWintergrasp.Alliance = 0
        BGHistoryCharDB.BattleForWintergrasp.killingBlows = 0
        BGHistoryCharDB.BattleForWintergrasp.honorableKills = 0
        BGHistoryCharDB.BattleForWintergrasp.deaths = 0

        BGHistoryCharDB.Ashran.Horde = 0
        BGHistoryCharDB.Ashran.Alliance = 0
        BGHistoryCharDB.Ashran.killingBlows = 0
        BGHistoryCharDB.Ashran.honorableKills = 0
        BGHistoryCharDB.Ashran.deaths = 0

        BGHistoryCharDB.TwinPeaks.Horde = 0
        BGHistoryCharDB.TwinPeaks.Alliance = 0
        BGHistoryCharDB.TwinPeaks.killingBlows = 0
        BGHistoryCharDB.TwinPeaks.honorableKills = 0
        BGHistoryCharDB.TwinPeaks.deaths = 0

        BGHistoryCharDB.SilvershardMines.Horde = 0
        BGHistoryCharDB.SilvershardMines.Alliance = 0
        BGHistoryCharDB.SilvershardMines.killingBlows = 0
        BGHistoryCharDB.SilvershardMines.honorableKills = 0
        BGHistoryCharDB.SilvershardMines.deaths = 0

        BGHistoryCharDB.TempleOfKotmogu.Horde = 0
        BGHistoryCharDB.TempleOfKotmogu.Alliance = 0
        BGHistoryCharDB.TempleOfKotmogu.killingBlows = 0
        BGHistoryCharDB.TempleOfKotmogu.honorableKills = 0
        BGHistoryCharDB.TempleOfKotmogu.deaths = 0
        
        BGHistoryCharDB.SeethingShore.Horde = 0
        BGHistoryCharDB.SeethingShore.Alliance = 0
        BGHistoryCharDB.SeethingShore.killingBlows = 0
        BGHistoryCharDB.SeethingShore.honorableKills = 0
        BGHistoryCharDB.SeethingShore.deaths = 0

        BGHistoryCharDB.DeepwindGorge.Horde = 0
        BGHistoryCharDB.DeepwindGorge.Alliance = 0
        BGHistoryCharDB.DeepwindGorge.killingBlows = 0
        BGHistoryCharDB.DeepwindGorge.honorableKills = 0
        BGHistoryCharDB.DeepwindGorge.deaths = 0
    end
end