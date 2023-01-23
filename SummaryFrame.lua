local UI = BGHistory.UI

local SummaryFrame = CreateFrame("Frame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
SummaryFrame:SetSize(535, 100)
SummaryFrame:SetPoint("TOPRIGHT", -25, -37)
SummaryFrame.title = SummaryFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
SummaryFrame.title:SetText("Summary")
SummaryFrame.title:SetPoint("TOP", 0, -13)
SummaryFrame.title:SetHeight(5)


