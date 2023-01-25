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
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.Warsong.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.Warsong.Horde
    
    elseif (battleground == "Arathi Basin") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.ArathiBasin.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.ArathiBasin.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.ArathiBasin.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.ArathiBasin.Horde
 
    elseif (battleground == "Alterac Valley") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.AlteracValley.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.AlteracValley.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.AlteracValley.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.AlteracValley.Horde
      
    elseif (battleground == "Eye of the Storm") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.EyeOfTheStorm.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.EyeOfTheStorm.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.EyeOfTheStorm.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.EyeOfTheStorm.Horde
     
    elseif (battleground == "Isle of Conquest") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.IsleOfConquest.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.IsleOfConquest.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.IsleOfConquest.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.IsleOfConquest.Horde

    elseif (battleground == "The Battle for Gilneas") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.BattleForGilneas.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.BattleForGilneas.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.BattleForGilneas.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.BattleForGilneas.Horde

    elseif (battleground == "Battle for Wintergrasp") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.BattleForWintergrasp.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.BattleForWintergrasp.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.BattleForWintergrasp.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.BattleForWintergrasp.Horde

    elseif (battleground == "Ashran") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.Ashran.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.Ashran.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.Ashran.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.Ashran.Horde

    elseif (battleground == "Twin Peaks") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.TwinPeaks.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.TwinPeaks.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.TwinPeaks.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.TwinPeaks.Horde

    elseif (battleground == "Silvershard Mines") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.SilvershardMines.Alliance
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryAccountDB.SilvershardMines.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.SilvershardMines.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.SilvershardMines.Horde

    elseif (battleground == "Temple of Kotmogu") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.TempleOfKotmogu.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.TempleOfKotmogu.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.TempleOfKotmogu.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.TempleOfKotmogu.Horde

    elseif (battleground == "Seething Shore") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.SeethingShore.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.SeethingShore.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.SeethingShore.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.SeethingShore.Horde

    elseif (battleground == "Deepwind Gorge") then
        BGHistory.battlegroundScores.accountAllianceWin = BGHistoryAccountDB.DeepwindGorge.Alliance
        BGHistory.battlegroundScores.accountHordeWin = BGHistoryAccountDB.DeepwindGorge.Horde
        BGHistory.battlegroundScores.charAllianceWin = BGHistoryCharDB.DeepwindGorge.Alliance
        BGHistory.battlegroundScores.charHordeWin = BGHistoryCharDB.DeepwindGorge.Horde
    end
end

bgListFrame.buttons = {}

for i = 1, 13 do
    offset = offset - 28
    bgListFrame.buttons[i] = CreateFrame("Button", Battlegrounds[i], bgListFrame)
    local button = bgListFrame.buttons[i]
    -- local button = CreateFrame("Button", Battlegrounds[i], bgListFrame)
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

        AccountAllianceWins:SetText(BGHistory.battlegroundScores.accountAllianceWin)
        AccountHordeWins:SetText(BGHistory.battlegroundScores.accountHordeWin)
        CharHordeWins:SetText(BGHistory.battlegroundScores.charHordeWin)
        CharAllianceWins:SetText(BGHistory.battlegroundScores.charAllianceWin)
    end)
end