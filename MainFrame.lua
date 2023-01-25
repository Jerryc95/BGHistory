local UI = BGHistory.UI
local eventHandler = BGHistory.BGCompleteHandler


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
    print(area.name)
    
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
    -- print(battleground)
    print(winner)
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
            print("The Horde won Warsong", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.ArathiBasin.Alliance = BGHistoryAccountDB.ArathiBasin.Alliance + 1
            BGHistoryCharDB.ArathiBasin.Alliance = BGHistoryCharDB.ArathiBasin.Alliance + 1
            score = BGHistoryAccountDB.ArathiBasin.Alliance
            print("The Alliance won Warsong", score, "times")
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
            score = BGHistoryAccountDB.TempleOfKotmogu.Alliance + 1
            print("The Alliance won Temple of Kotmogu", score, "times")
        end
    elseif (battleground == "Seething Shore") then
        if(winner == 0) then
            BGHistoryAccountDB.SeethingShore.Horde = BGHistoryAccountDB.SeethingShore.Horde + 1
            BGHistoryCharDB.SeethingShore.Horde = BGHistoryCharDB.SeethingShore.Horde + 1
            score = BGHistoryAccountDB.TempleOfKotmogu.Horde + 1
            print("The Horde won Seething shore", score, "times")
        elseif (winner == 1)  then
            BGHistoryAccountDB.SeethingShore.Alliance = BGHistoryAccountDB.SeethingShore.Alliance + 1
            BGHistoryCharDB.SeethingShore.Alliance = BGHistoryCharDB.SeethingShore.Alliance + 1
            score = BGHistoryAccountDB.TempleOfKotmogu.Alliance + 1
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
            if(BGHistoryAccountDB.Warsong.Horde == nil) then
            BGHistoryAccountDB.Warsong.Horde = 0
                BGHistoryAccountDB.Warsong.Alliance = 0
                BGHistoryAccountDB.ArathiBasin.Horde = 0
                BGHistoryAccountDB.ArathiBasin.Alliance = 0
                BGHistoryAccountDB.AlteracValley.Horde = 0
                BGHistoryAccountDB.AlteracValley.Alliance = 0
                BGHistoryAccountDB.EyeOfTheStorm.Horde = 0
                BGHistoryAccountDB.EyeOfTheStorm.Alliance = 0
                BGHistoryAccountDB.IsleOfConquest.Horde = 0
                BGHistoryAccountDB.IsleOfConquest.Alliance = 0
                BGHistoryAccountDB.BattleForGilneas.Horde = 0
                BGHistoryAccountDB.BattleForGilneas.Alliance = 0
                BGHistoryAccountDB.BattleForWintergrasp.Horde = 0
                BGHistoryAccountDB.BattleForWintergrasp.Alliance = 0
                BGHistoryAccountDB.Ashran.Horde = 0
                BGHistoryAccountDB.Ashran.Alliance = 0
                BGHistoryAccountDB.TwinPeaks.Horde = 0
                BGHistoryAccountDB.TwinPeaks.Alliance = 0
                BGHistoryAccountDB.SilvershardMines.Horde = 0
                BGHistoryAccountDB.SilvershardMines.Alliance = 0
                BGHistoryAccountDB.TempleOfKotmogu.Horde = 0
                BGHistoryAccountDB.TempleOfKotmogu.Alliance = 0
                BGHistoryAccountDB.SeethingShore.Horde = 0
                BGHistoryAccountDB.SeethingShore.Alliance = 0
                BGHistoryAccountDB.DeepwindGorge.Horde = 0
                BGHistoryAccountDB.DeepwindGorge.Alliance = 0
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
                
            if (BGHistoryCharDB.EyeOfTheStorm.Horde == nil) then
                BGHistoryCharDB.Warsong.Horde = 0
                BGHistoryCharDB.Warsong.Alliance = 0
                BGHistoryCharDB.ArathiBasin.Horde = 0
                BGHistoryCharDB.ArathiBasin.Alliance = 0
                BGHistoryCharDB.AlteracValley.Horde = 0
                BGHistoryCharDB.AlteracValley.Alliance = 0
                BGHistoryCharDB.AlteracValley.Horde = 0
                BGHistoryCharDB.AlteracValley.Alliance = 0
                BGHistoryCharDB.EyeOfTheStorm.Horde = 0
                BGHistoryCharDB.EyeOfTheStorm.Alliance = 0
                BGHistoryCharDB.IsleOfConquest.Horde = 0
                BGHistoryCharDB.IsleOfConquest.Alliance = 0
                BGHistoryCharDB.BattleForGilneas.Horde = 0
                BGHistoryCharDB.BattleForGilneas.Alliance = 0
                BGHistoryCharDB.BattleForWintergrasp.Horde = 0
                BGHistoryCharDB.BattleForWintergrasp.Alliance = 0
                BGHistoryCharDB.Ashran.Horde = 0
                BGHistoryCharDB.Ashran.Alliance = 0
                BGHistoryCharDB.TwinPeaks.Horde = 0
                BGHistoryCharDB.TwinPeaks.Alliance = 0
                BGHistoryCharDB.SilvershardMines.Horde = 0
                BGHistoryCharDB.SilvershardMines.Alliance = 0
                BGHistoryCharDB.TempleOfKotmogu.Horde = 0
                BGHistoryCharDB.TempleOfKotmogu.Alliance = 0
                BGHistoryCharDB.SeethingShore.Horde = 0
                BGHistoryCharDB.SeethingShore.Alliance = 0
                BGHistoryCharDB.DeepwindGorge.Horde = 0
                BGHistoryCharDB.DeepwindGorge.Alliance = 0
            end
            BGHistory.loaded = true
            frame:UnregisterEvent("ADDON_LOADED")
        end
    end,

    ["PLAYER_STARTED_MOVING"] = function ()
        -- local battleground = getBattleground()
    end,

    ["PVP_MATCH_COMPLETE"] = function (...)
        local battleground = getBattleground()
        local winner, duration = ...

        updateDB(battleground, winner)
        
        -- eventHandler:handleBGComplete(winner, duration)
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
SlashCmdList["BGHISTORY"] = function() frame:toggle() end


-- Addon Events
frame:SetScript("OnEvent", function (self, event, ...) self.eventHandlers[event](...) end)