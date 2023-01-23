local UI = BGHistory.UI

local historyFrame = CreateFrame("ScrollFrame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
historyFrame:SetSize(535, 325)
historyFrame:SetPoint("BOTTOMRIGHT", -25, 37)
historyFrame.title = historyFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
historyFrame.title:SetText("History")
historyFrame.title:SetPoint("TOP", 0, -13)
historyFrame.title:SetHeight(5)

local historyScrollFrame = CreateFrame("ScrollFrame", nil, historyFrame, "UIPanelScrollFrameTemplate")
    historyScrollFrame:SetPoint("TOPLEFT", 15, -22)
    historyScrollFrame:SetPoint("BOTTOMRIGHT", -40, 25)
