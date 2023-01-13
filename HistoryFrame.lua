local UI = BGHistory.UI

local historyFrame = CreateFrame("ScrollFrame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
historyFrame:SetSize(500, 425)
historyFrame:SetPoint("RIGHT", -25, 0)
historyFrame.title = historyFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
historyFrame.title:SetText("History")
historyFrame.title:SetPoint("TOP", 0, 10)
historyFrame.title:SetHeight(5)

local historyScrollFrame = CreateFrame("ScrollFrame", nil, historyFrame, "UIPanelScrollFrameTemplate")
    historyScrollFrame:SetPoint("TOPLEFT", 15, -22)
    historyScrollFrame:SetPoint("BOTTOMRIGHT", -40, 25)
