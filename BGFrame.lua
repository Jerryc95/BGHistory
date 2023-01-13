local UI = BGHistory.UI

local numBGs = 13

local bgListFrame = CreateFrame("Frame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
bgListFrame:SetSize(225, 425)
bgListFrame:SetPoint("LEFT", 25, 0)
bgListFrame.title = bgListFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
bgListFrame.title:SetText("Battlegrounds")
bgListFrame.title:SetPoint("TOP", 0, 10)
bgListFrame.title:SetHeight(5)