local UI = BGHistory.UI
local battleground = BGHistory.battleground


local offset = 198

Battlegrounds = {
    "Warsong Gulch",
    "Arathi Basin",
    "Alterac Valley",
    "Eye of the Storm",
    "Isle of Conquest",
    "The Battle for Gilneas",
    "Battle for Wintergrasp",
    "Ashran",
    "Twin Peaks",
    "Silvershard Mines",
    "Temple of Kotmogu",
    "Seething Shore",
    "Deepwind Gorge"
}

local bgListFrame = CreateFrame("Frame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
bgListFrame:SetSize(200, 425)
bgListFrame:SetPoint("LEFT", 25, 0)
bgListFrame.title = bgListFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
bgListFrame.title:SetText("Battlegrounds")
bgListFrame.title:SetPoint("TOP", 0, -13)
bgListFrame.title:SetHeight(5)

function GetBattlegroundWins(battleground)
    if(battleground == "Warsong Gulch") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.Warsong.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.Warsong.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.Warsong.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.Warsong.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.Warsong.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.Warsong.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.Warsong.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.Warsong.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.Warsong.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.Warsong.deaths
    
    elseif (battleground == "Arathi Basin") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.ArathiBasin.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.ArathiBasin.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.ArathiBasin.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.ArathiBasin.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.ArathiBasin.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.ArathiBasin.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.ArathiBasin.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.ArathiBasin.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.ArathiBasin.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.ArathiBasin.deaths
 
    elseif (battleground == "Alterac Valley") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.AlteracValley.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.AlteracValley.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.AlteracValley.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.AlteracValley.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.AlteracValley.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.AlteracValley.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.AlteracValley.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.AlteracValley.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.AlteracValley.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.AlteracValley.deaths
      
    elseif (battleground == "Eye of the Storm") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.EyeOfTheStorm.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.EyeOfTheStorm.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.EyeOfTheStorm.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.EyeOfTheStorm.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.EyeOfTheStorm.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.EyeOfTheStorm.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.EyeOfTheStorm.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.EyeOfTheStorm.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.EyeOfTheStorm.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.EyeOfTheStorm.deaths
     
    elseif (battleground == "Isle of Conquest") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.IsleOfConquest.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.IsleOfConquest.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.IsleOfConquest.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.IsleOfConquest.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.IsleOfConquest.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.IsleOfConquest.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.IsleOfConquest.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.IsleOfConquest.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.IsleOfConquest.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.IsleOfConquest.deaths

    elseif (battleground == "The Battle for Gilneas") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.BattleForGilneas.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.BattleForGilneas.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.BattleForGilneas.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.BattleForGilneas.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.BattleForGilneas.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.BattleForGilneas.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.BattleForGilneas.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.BattleForGilneas.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.BattleForGilneas.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.BattleForGilneas.deaths

    elseif (battleground == "Battle for Wintergrasp") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.BattleForWintergrasp.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.BattleForWintergrasp.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.BattleForWintergrasp.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.BattleForWintergrasp.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.BattleForWintergrasp.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.BattleForWintergrasp.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.BattleForWintergrasp.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.BattleForWintergrasp.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.BattleForWintergrasp.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.BattleForWintergrasp.deaths


    elseif (battleground == "Ashran") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.Ashran.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.Ashran.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.Ashran.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.Ashran.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.Ashran.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.Ashran.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.Ashran.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.Ashran.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.Ashran.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.Ashran.deaths


    elseif (battleground == "Twin Peaks") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.TwinPeaks.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.TwinPeaks.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.TwinPeaks.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.TwinPeaks.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.TwinPeaks.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.TwinPeaks.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.TwinPeaks.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.TwinPeaks.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.TwinPeaks.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.TwinPeaks.deaths


    elseif (battleground == "Silvershard Mines") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.SilvershardMines.Alliance
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryAccountDB.SilvershardMines.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.SilvershardMines.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.SilvershardMines.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.SilvershardMines.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.SilvershardMines.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.SilvershardMines.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.SilvershardMines.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.SilvershardMines.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.SilvershardMines.deaths


    elseif (battleground == "Temple of Kotmogu") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.TempleOfKotmogu.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.TempleOfKotmogu.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.TempleOfKotmogu.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.TempleOfKotmogu.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.TempleOfKotmogu.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.TempleOfKotmogu.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.TempleOfKotmogu.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.TempleOfKotmogu.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.TempleOfKotmogu.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.TempleOfKotmogu.deaths


    elseif (battleground == "Seething Shore") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.SeethingShore.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.SeethingShore.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.SeethingShore.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.SeethingShore.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.SeethingShore.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.SeethingShore.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.SeethingShore.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.SeethingShore.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.SeethingShore.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.SeethingShore.deaths


    elseif (battleground == "Deepwind Gorge") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.DeepwindGorge.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.DeepwindGorge.Horde

        BGHistory.battlegroundStats.accountKillingBlows = BGHistoryAccountDB.DeepwindGorge.killingBlows
        BGHistory.battlegroundStats.accountHonorableKills = BGHistoryAccountDB.DeepwindGorge.honorableKills
        BGHistory.battlegroundStats.accountDeaths = BGHistoryAccountDB.DeepwindGorge.deaths

        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.DeepwindGorge.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.DeepwindGorge.Horde

        BGHistory.battlegroundStats.charKillingBlows = BGHistoryCharDB.DeepwindGorge.killingBlows
        BGHistory.battlegroundStats.charHonorableKills = BGHistoryCharDB.DeepwindGorge.honorableKills
        BGHistory.battlegroundStats.charDeaths = BGHistoryCharDB.DeepwindGorge.deaths
    end
end

bgListFrame.buttons = {}

for i = 1, 13 do
    offset = offset - 28
    bgListFrame.buttons[i] = CreateFrame("Button", Battlegrounds[i], bgListFrame)
    local button = bgListFrame.buttons[i]
    button:SetPoint("CENTER", bgListFrame, 0, offset)
    button:SetWidth(115)
    button:SetHeight(20)
    button:SetText(Battlegrounds[i])
    button:SetNormalFontObject("GameFontHighlightLeft")
    button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
    button:SetScript("OnClick", function (self)  
        for j = 1, 13 do
            if(button == bgListFrame.buttons[j]) then
                bgListFrame.buttons[j]:SetNormalFontObject("GameFontNormal")
            else
                bgListFrame.buttons[j]:SetNormalFontObject("GameFontHighlightLeft")
            end
        end
       
        battleground = button.GetText(self)
        GetBattlegroundWins(battleground)
        Handler:UpdateFrame()
    end)
end