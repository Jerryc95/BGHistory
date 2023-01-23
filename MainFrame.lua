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
local function updateScore(accountScore, characterScore)
    accountScore = accountScore + 1
    characterScore = characterScore + 1
end

local function updateDB(battleground, winner)
    print(battleground)
    print(winner)
    local score

    if(battleground == "Warsong Gulch") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.Warsong.Horde, BGHistoryCharDB.Warsong.Horde)
            score = BGHistoryAccountDB.Warsong.Horde
            print("The Horde won Warsong", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.Warsong.Alliance, BGHistoryCharDB.Warsong.Alliance)
            score = BGHistoryAccountDB.Warsong.Alliance
            print("The Alliance won Warsong", score, "times")
        end
    elseif (battleground == "Arathi Basin") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.ArathiBasin.Horde, BGHistoryCharDB.ArathiBasin.Horde)
            score = BGHistoryAccountDB.ArathiBasin.Horde
            print("The Horde won Warsong", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.ArathiBasin.Alliance, BGHistoryCharDB.ArathiBasin.Alliance)
            score = BGHistoryAccountDB.ArathiBasin.Alliance
            print("The Alliance won Warsong", score, "times")
        end
    elseif (battleground == "Alterac Valley") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.AlteracValley.Horde, BGHistoryCharDB.AlteracValley.Horde)
            score = BGHistoryAccountDB.AlteracValley.Horde
            print("The Horde won AV", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.AlteracValley.Alliance, BGHistoryCharDB.AlteracValley.Alliance)
            print()
        end
    elseif (battleground == "Eye of the Storm") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.EyeOfTheStorm.Horde, BGHistoryCharDB.EyeOfTheStorm.Horde)
            score = BGHistoryAccountDB.EyeOfTheStorm.Horde
            print("The Horde won Eye", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.EyeOfTheStorm.Alliance, BGHistoryCharDB.EyeOfTheStorm.Alliance)
            print()
        end
    elseif (battleground == "Isle of Conquest") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.IsleOfConquest.Horde, BGHistoryCharDB.IsleOfConquest.Horde)
            score = BGHistoryAccountDB.IsleOfConquest.Horde
            print("The Horde won IOC", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.IsleOfConquest.Alliance, BGHistoryCharDB.IsleOfConquest.Alliance)
            print()
        end
    elseif (battleground == "The Battle for Gilneas") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.BattleForGilneas.Horde, BGHistoryCharDB.BattleForGilneas.Horde)
            score = BGHistoryAccountDB.BattleForGilneas.Horde
            print("The Horde won Gilneas", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.BattleForGilneas.Alliance, BGHistoryCharDB.BattleForGilneas.Alliance)
            print()
        end
    elseif (battleground == "Battle for Wintergrasp") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.BattleForWintergrasp.Horde, BGHistoryCharDB.BattleForWintergrasp.Horde)
            score = BGHistoryAccountDB.BattleForWintergrasp.Horde
            print("The Horde won wintergrap", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.BattleForWintergrasp.Alliance, BGHistoryCharDB.BattleForWintergrasp.Alliance)
            print()
        end
    elseif (battleground == "Ashran") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.Ashran.Horde, BGHistoryCharDB.Ashran.Horde)
            print()
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.Ashran.Alliance, BGHistoryCharDB.Ashran.Alliance)
            print()
        end
    elseif (battleground == "Twin Peaks") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.TwinPeaks.Horde, BGHistoryCharDB.TwinPeaks.Horde)
            print()
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.TwinPeaks.Alliance, BGHistoryCharDB.TwinPeaks.Alliance)
            print()
        end
    elseif (battleground == "Silvershard Mines") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.SilvershardMines.Horde, BGHistoryCharDB.SilvershardMines.Horde)
            print()
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.SilvershardMines.Alliance, BGHistoryCharDB.SilvershardMines.Alliance)
            print()
        end
    elseif (battleground == "Temple of Kotmogu") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.TempleOfKotmogu.Horde, BGHistoryCharDB.TempleOfKotmogu.Horde)
            score = BGHistoryAccountDB.TempleOfKotmogu.Horde
            print("The Horde won Temple of Kotmogu", score, "times")
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.TempleOfKotmogu.Alliance, BGHistoryCharDB.TempleOfKotmogu.Alliance)
            score = BGHistoryAccountDB.TempleOfKotmogu.Alliance + 1
            print("The Alliance won Temple of Kotmogu", score, "times")
        end
    elseif (battleground == "Seething Shore") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.SeethingShore.Horde, BGHistoryCharDB.SeethingShore.Horde)
            print()
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.SeethingShore.Alliance, BGHistoryCharDB.SeethingShore.Alliance)
            print()
        end
    elseif (battleground == "Deepwind Gorge") then
        if(winner == 0) then
            updateScore(BGHistoryAccountDB.DeepwindGorge.Horde, BGHistoryCharDB.DeepwindGorge.Horde)
            print()
        elseif (winner == 1)  then
            updateScore(BGHistoryAccountDB.DeepwindGorge.Alliance, BGHistoryCharDB.DeepwindGorge.Alliance)
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