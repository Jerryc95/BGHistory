local UI = BGHistory.UI

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
        elseif (area.name == "Wintergrasp") then
            battlegroundName = name
            break
        end
     end
    return battlegroundName
end

-- Main Frame
local frame = UI.mainFrame
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PVP_MATCH_COMPLETE")
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
            Handler:LoadBGHistory()
            BGHistory.loaded = true
            frame:UnregisterEvent("ADDON_LOADED")
        end
    end,

    ["PVP_MATCH_COMPLETE"] = function (...)
        local battleground = getBattleground()
        local winner, duration = ...

        -- updateDB(battleground, winner)
        -- Handler:getBattlegroundStats()
        Handler:updateDB(battleground, winner)
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