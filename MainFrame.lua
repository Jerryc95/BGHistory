local UI = BGHistory.UI
local eventHandler = BGHistory.BGCompleteHandler
local accountDB = BGHistory.AccountDB
local charDB = BGHistory.CharDB

UI.mainFrame = CreateFrame("Frame", "BGHistoryMainFrame", UIParent, "TooltipBorderedFrameTemplate")

-- Get BG Info fuction
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

-- Add to DB
local function updateDB(battleground, winner)
    print(battleground)
    print(winner)
    local score 
    if(battleground == "Warsong Gulch" and winner == 0) then
        BGHistory.AccountDB.Warsong.Horde = BGHistory.AccountDB.Warsong.Horde + 1
        BGHistory.CharDB.Warsong.Horde = BGHistory.CharDB.Warsong.Horde + 1
        score = BGHistory.CharDB.Warsong.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Warsong Gulch" and winner == 1) then
        BGHistory.AccountDB.Warsong.Alliance = BGHistory.AccountDB.Warsong.Alliance + 1
        BGHistory.CharDB.Warsong.Alliance = BGHistory.CharDB.Warsong.Alliance + 1
        score = BGHistory.CharDB.Warsong.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Arathi Basin" and winner == 0) then
        BGHistory.AccountDB.ArathiBasin.Horde = BGHistory.AccountDB.ArathiBasin.Horde + 1
        BGHistory.CharDB.ArathiBasin.Horde = BGHistory.CharDB.ArathiBasin.Horde + 1
        score = BGHistory.CharDB.ArathiBasin.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Arathi Basin" and winner == 1) then
        BGHistory.AccountDB.ArathiBasin.Alliance = BGHistory.AccountDB.ArathiBasin.Alliance + 1
        BGHistory.CharDB.ArathiBasin.Alliance = BGHistory.CharDB.ArathiBasin.Alliance + 1
        score = BGHistory.CharDB.ArathiBasin.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Alterac Valley" and winner == 0) then
        BGHistory.AccountDB.AlteracValley.Horde = BGHistory.AccountDB.AlteracValley.Horde + 1
        BGHistory.CharDB.AlteracValley.Horde = BGHistory.CharDB.AlteracValley.Horde + 1
        score = BGHistory.CharDB.AlteracValley.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Alterac Valley" and winner == 1) then
        BGHistory.AccountDB.AlteracValley.Alliance = BGHistory.AccountDB.AlteracValley.Alliance + 1
        BGHistory.CharDB.AlteracValley.Alliance = BGHistory.CharDB.AlteracValley.Alliance + 1
        score = BGHistory.CharDB.AlteracValley.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Eye of the Storm" and winner == 0) then
        BGHistory.AccountDB.EyeOfTheStorm.Horde = BGHistory.AccountDB.EyeOfTheStorm.Horde + 1
        BGHistory.CharDB.EyeOfTheStorm.Horde = BGHistory.CharDB.EyeOfTheStorm.Horde + 1
        score = BGHistory.CharDB.EyeOfTheStorm.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Eye of the Storm" and winner == 1) then
        BGHistory.AccountDB.EyeOfTheStorm.Alliance = BGHistory.AccountDB.EyeOfTheStorm.Alliance + 1
        BGHistory.CharDB.EyeOfTheStorm.Alliance = BGHistory.CharDB.EyeOfTheStorm.Alliance + 1
        score = BGHistory.CharDB.EyeOfTheStorm.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Isle of Conquest" and winner == 0) then
        BGHistory.AccountDB.IsleOfConquest.Horde = BGHistory.AccountDB.IsleOfConquest.Horde + 1
        BGHistory.CharDB.IsleOfConquest.Horde = BGHistory.CharDB.IsleOfConquest.Horde + 1
        score = BGHistory.CharDB.IsleOfConquest.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Isle of Conquest" and winner == 1) then
        BGHistory.AccountDB.IsleOfConquest.Alliance = BGHistory.AccountDB.IsleOfConquest.Alliance + 1
        BGHistory.CharDB.IsleOfConquest.Alliance = BGHistory.CharDB.IsleOfConquest.Alliance + 1
        score =  BGHistory.CharDB.IsleOfConquest.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "The Battle for Gilneas" and winner == 0) then
        BGHistory.AccountDB.BattleForGilneas.Horde = BGHistory.AccountDB.BattleForGilneas.Horde + 1
        BGHistory.CharDB.BattleForGilneas.Horde = BGHistory.CharDB.BattleForGilneas.Horde + 1
        score = BGHistory.CharDB.BattleForGilneas.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "The Battle for Gilneas" and winner == 1) then
        BGHistory.AccountDB.BattleForGilneas.Alliance = BGHistory.AccountDB.BattleForGilneas.Alliance + 1
        BGHistory.CharDB.BattleForGilneas.Alliance = BGHistory.CharDB.BattleForGilneas.Alliance + 1
        score = BGHistory.CharDB.BattleForGilneas.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Battle for Wintergrasp" and winner == 0) then
        BGHistory.AccountDB.BattleForWintergrasp.Horde = BGHistory.AccountDB.BattleForWintergrasp.Horde + 1
        BGHistory.CharDB.BattleForWintergrasp.Horde = BGHistory.CharDB.BattleForWintergrasp.Horde + 1
        score = BGHistory.CharDB.BattleForWintergrasp.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Battle for Wintergrasp" and winner == 1) then
        BGHistory.AccountDB.BattleForWintergrasp.Alliance = BGHistory.AccountDB.BattleForWintergrasp.Alliance + 1
        BGHistory.CharDB.BattleForWintergrasp.Alliance = BGHistory.CharDB.BattleForWintergrasp.Alliance + 1
        score = BGHistory.CharDB.BattleForWintergrasp.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Ashran" and winner == 0) then
        BGHistory.AccountDB.Ashran.Horde = BGHistory.AccountDB.Ashran.Horde + 1
        BGHistory.CharDB.Ashran.Horde = BGHistory.CharDB.Ashran.Horde + 1
        score =  BGHistory.CharDB.Ashran.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Ashran" and winner == 1) then
        BGHistory.AccountDB.Ashran.Alliance = BGHistory.AccountDB.Ashran.Alliance + 1
        BGHistory.CharDB.Ashran.Alliance = BGHistory.CharDB.Ashran.Alliance + 1
        score = BGHistory.CharDB.Ashran.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Twin Peaks" and winner == 0) then
        BGHistory.AccountDB.TwinPeaks.Horde = BGHistory.AccountDB.TwinPeaks.Horde + 1
        BGHistory.CharDB.TwinPeaks.Horde = BGHistory.CharDB.TwinPeaks.Horde + 1
        score = BGHistory.CharDB.TwinPeaks.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Twin Peaks" and winner == 1) then
        BGHistory.AccountDB.TwinPeaks.Alliance = BGHistory.AccountDB.TwinPeaks.Alliance + 1
        BGHistory.CharDB.TwinPeaks.Alliance = BGHistory.CharDB.TwinPeaks.Alliance + 1
        score = BGHistory.CharDB.TwinPeaks.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Silvershard Mines" and winner == 0) then
        BGHistory.AccountDB.SilvershardMines.Horde = BGHistory.AccountDB.SilvershardMines.Horde + 1
        BGHistory.CharDB.SilvershardMines.Horde = BGHistory.CharDB.SilvershardMines.Horde + 1
        score = BGHistory.CharDB.SilvershardMines.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Silvershard Mines" and winner == 1) then
        BGHistory.AccountDB.SilvershardMines.Alliance = BGHistory.AccountDB.SilvershardMines.Alliance + 1
        BGHistory.CharDB.SilvershardMines.Alliance = BGHistory.CharDB.SilvershardMines.Alliance + 1
        score = BGHistory.CharDB.SilvershardMines.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Temple of Kotmogu" and winner == 0) then
        BGHistory.AccountDB.TempleOfKotmogu.Horde = BGHistory.AccountDB.TempleOfKotmogu.Horde + 1
        BGHistory.CharDB.TempleOfKotmogu.Horde = BGHistory.CharDB.TempleOfKotmogu.Horde + 1
        score = BGHistory.CharDB.TempleOfKotmogu.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Temple of Kotmogu" and winner == 1) then
        BGHistory.AccountDB.TempleOfKotmogu.Alliance = BGHistory.AccountDB.TempleOfKotmogu.Alliance + 1
        BGHistory.CharDB.TempleOfKotmogu.Alliance = BGHistory.CharDB.TempleOfKotmogu.Alliance + 1
        score = BGHistory.CharDB.TempleOfKotmogu.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Seething Shore" and winner == 0) then
        BGHistory.AccountDB.SeethingShore.Horde = BGHistory.AccountDB.SeethingShore.Horde + 1
        BGHistory.CharDB.SeethingShore.Horde = BGHistory.CharDB.SeethingShore.Horde + 1
        score = BGHistory.CharDB.SeethingShore.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Seething Shore" and winner == 1) then
        BGHistory.AccountDB.SeethingShore.Alliance = BGHistory.AccountDB.SeethingShore.Alliance + 1
        BGHistory.CharDB.SeethingShore.Alliance = BGHistory.CharDB.SeethingShore.Alliance + 1
        score = BGHistory.CharDB.SeethingShore.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Deepwind Gorge" and winner == 0) then
        BGHistory.AccountDB.DeepwindGorge.Horde = BGHistory.AccountDB.DeepwindGorge.Horde + 1
        BGHistory.CharDB.DeepwindGorge.Horde = BGHistory.CharDB.DeepwindGorge.Horde + 1
        score = BGHistory.CharDB.DeepwindGorge.Horde
        print("The", winner, "have won", battleground, score "times now!")
    elseif (battleground == "Deepwind Gorge" and winner == 1) then
        BGHistory.AccountDB.DeepwindGorge.Alliance = BGHistory.AccountDB.DeepwindGorge.Alliance + 1
        BGHistory.CharDB.DeepwindGorge.Alliance = BGHistory.CharDB.DeepwindGorge.Alliance + 1
        score = BGHistory.CharDB.DeepwindGorge.Alliance
        print("The", winner, "have won", battleground, score "times now!")
    end
end

-- Main Frame
local frame = UI.mainFrame
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PVP_MATCH_COMPLETE")
frame:RegisterEvent("PLAYER_STARTED_MOVING")
frame:SetSize(800, 500)
frame:EnableMouse(true)
frame:SetMovable(true)
frame:RegisterForDrag("leftButton")
frame:SetPoint("CENTER")
frame:Hide()
frame:SetScript("OnDragStart",frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
frame.eventHandlers = {
    ["ADDON_LOADED"] = function (...)
        local name = ...
        if name == "BGHistory" then
            BGHistory.loaded = true
            BGHistory.BGCompleteHandler = {}
            if (BGHistory.AccountDB == nil) then
                BGHistory.AccountDB = {}
                     BGHistory.AccountDB.Warsong = {}
                        BGHistory.AccountDB.Warsong.Horde = 0
                        BGHistory.AccountDB.Warsong.Alliance = 0
                    BGHistory.AccountDB.ArathiBasin = {}
                        BGHistory.AccountDB.ArathiBasin.Horde = 0
                        BGHistory.AccountDB.ArathiBasin.Alliance = 0
                    BGHistory.AccountDB.AlteracValley = {}
                        BGHistory.AccountDB.AlteracValley.Horde = 0
                        BGHistory.AccountDB.AlteracValley.Alliance = 0
                    BGHistory.AccountDB.EyeOfTheStorm = {}
                        BGHistory.AccountDB.AlteracValley.Horde = 0
                        BGHistory.AccountDB.AlteracValley.Alliance = 0
                    BGHistory.AccountDB.IsleOfConquest = {}
                        BGHistory.AccountDB.IsleOfConquest.Horde = 0
                        BGHistory.AccountDB.IsleOfConquest.Alliance = 0
                    BGHistory.AccountDB.BattleForGilneas = {}
                        BGHistory.AccountDB.BattleForGilneas.Horde = 0
                        BGHistory.AccountDB.BattleForGilneas.Alliance = 0
                    BGHistory.AccountDB.BattleForWintergrasp = {}
                        BGHistory.AccountDB.BattleForWintergrasp.Horde = 0
                        BGHistory.AccountDB.BattleForWintergrasp.Alliance = 0
                    BGHistory.AccountDB.Ashran = {}
                        BGHistory.AccountDB.Ashran.Horde = 0
                        BGHistory.AccountDB.Ashran.Alliance = 0
                    BGHistory.AccountDB.TwinPeaks = {}
                        BGHistory.AccountDB.TwinPeaks.Horde = 0
                        BGHistory.AccountDB.TwinPeaks.Alliance = 0
                    BGHistory.AccountDB.SilvershardMines = {}
                        BGHistory.AccountDB.SilvershardMines.Horde = 0
                        BGHistory.AccountDB.SilvershardMines.Alliance = 0
                    BGHistory.AccountDB.TempleOfKotmogu = {}
                        BGHistory.AccountDB.TempleOfKotmogu.Horde = 0
                        BGHistory.AccountDB.TempleOfKotmogu.Alliance = 0
                    BGHistory.AccountDB.SeethingShore = {}
                        BGHistory.AccountDB.SeethingShore.Horde = 0
                        BGHistory.AccountDB.SeethingShore.Alliance = 0
                    BGHistory.AccountDB.DeepwindGorge = {}
                        BGHistory.AccountDB.DeepwindGorge.Horde = 0
                        BGHistory.AccountDB.DeepwindGorge.Alliance = 0

            end
            if (BGHistory.CharDB == nil) then
                    BGHistory.CharDB = {}
                    BGHistory.CharDB.Warsong = {}
                        BGHistory.CharDB.Warsong.Horde = 0
                        BGHistory.CharDB.Warsong.Alliance = 0
                    BGHistory.CharDB.ArathiBasin = {}
                        BGHistory.CharDB.ArathiBasin.Horde = 0
                        BGHistory.CharDB.ArathiBasin.Alliance = 0
                    BGHistory.CharDB.AlteracValley = {}
                        BGHistory.CharDB.AlteracValley.Horde = 0
                        BGHistory.CharDB.AlteracValley.Alliance = 0
                    BGHistory.CharDB.EyeOfTheStorm = {}
                        BGHistory.CharDB.AlteracValley.Horde = 0
                        BGHistory.CharDB.AlteracValley.Alliance = 0
                    BGHistory.CharDB.IsleOfConquest = {}
                        BGHistory.CharDB.IsleOfConquest.Horde = 0
                        BGHistory.CharDB.IsleOfConquest.Alliance = 0
                    BGHistory.CharDB.BattleForGilneas = {}
                        BGHistory.CharDB.BattleForGilneas.Horde = 0
                        BGHistory.CharDB.BattleForGilneas.Alliance = 0
                    BGHistory.CharDB.BattleForWintergrasp = {}
                        BGHistory.CharDB.BattleForWintergrasp.Horde = 0
                        BGHistory.CharDB.BattleForWintergrasp.Alliance = 0
                    BGHistory.CharDB.Ashran = {}
                        BGHistory.CharDB.Ashran.Horde = 0
                        BGHistory.CharDB.Ashran.Alliance = 0
                    BGHistory.CharDB.TwinPeaks = {}
                        BGHistory.CharDB.TwinPeaks.Horde = 0
                        BGHistory.CharDB.TwinPeaks.Alliance = 0
                    BGHistory.CharDB.SilvershardMines = {}
                        BGHistory.CharDB.SilvershardMines.Horde = 0
                        BGHistory.CharDB.SilvershardMines.Alliance = 0
                    BGHistory.CharDB.TempleOfKotmogu = {}
                        BGHistory.CharDB.TempleOfKotmogu.Horde = 0
                        BGHistory.CharDB.TempleOfKotmogu.Alliance = 0
                    BGHistory.CharDB.SeethingShore = {}
                        BGHistory.CharDB.SeethingShore.Horde = 0
                        BGHistory.CharDB.SeethingShore.Alliance = 0
                    BGHistory.CharDB.DeepwindGorge = {}
                        BGHistory.CharDB.DeepwindGorge.Horde = 0
                        BGHistory.CharDB.DeepwindGorge.Alliance = 0
            end
            
            frame:UnregisterEvent("ADDON_LOADED")
        end
    end,
    ["PLAYER_STARTED_MOVING"] = function () 
        print(accountDB)
        print(accountDB.AlteracValley)
        print("moved")
        
    
    end,
    ["PVP_MATCH_COMPLETE"] = function (...)
        local battleground = getBattleground()
        local winner, duration = ...

        updateDB(battleground, winner)

        eventHandler:handleBGComplete(winner, duration)
    end
}

frame.title = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
frame.title:SetText("BGHistory")
frame.title:SetPoint("TOP", 0, -13)
frame.title:SetHeight(5)


-- Close Button
local close = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
		close:SetPoint("BOTTOMRIGHT", -10,10)
		close:SetFrameLevel(close:GetFrameLevel() + 1)
		close:SetSize(100, 20)
		close:SetText(CLOSE)
		close:SetScript("OnClick", function ()
			frame:Hide()
		end)


-- Slash commands
function frame:toggle()
    if self:IsShown() then
        self:Hide()
    else
        self:Show()
    end
end

SLASH_BGHISTORY1 = "/bghistory"
SLASH_BGHISTORY2 = "/bgh"
SlashCmdList["BGHISTORY"] = function(bg) frame:toggle() end


-- Addon Events
frame:SetScript("OnEvent", function (self, event, ...) self.eventHandlers[event](...) end)