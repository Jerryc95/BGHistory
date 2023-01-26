local UI = BGHistory.UI

local SummaryFrame = CreateFrame("Frame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
SummaryFrame:SetSize(535, 100)
SummaryFrame:SetPoint("TOPRIGHT", -25, -37)
SummaryFrame.title = SummaryFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
SummaryFrame.title:SetText("Win Overview")
SummaryFrame.title:SetPoint("TOP", 0, -13)
SummaryFrame.title:SetHeight(5)


local char = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
char:SetPoint("top", -150, -20)
char:SetText("Character")

local charAlliance = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
charAlliance:SetPoint("top", -210, -35)
charAlliance:SetText("Alliance")
charAlliance:SetTextColor(0,0,255,1)

CharAllianceWins = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
CharAllianceWins:SetPoint("top", -210, -55)

local charHorde = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
charHorde:SetPoint("top", -90, -35)
charHorde:SetText("Horde")
charHorde:SetTextColor(255,0,0,1)

CharHordeWins = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
CharHordeWins:SetPoint("top", -90, -55)

local account = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
account:SetPoint("TOP", 150, -20)
account:SetText("Account")

local accountAlliance = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
accountAlliance:SetPoint("top", 90, -35)
accountAlliance:SetText("Alliance")
accountAlliance:SetTextColor(0,0,255,1)

AccountAllianceWins = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
AccountAllianceWins:SetPoint("top", 90, -55)


local accountHorde = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
accountHorde:SetPoint("top", 210, -35)
accountHorde:SetText("Horde")
accountHorde:SetTextColor(255,0,0,1)

AccountHordeWins = SummaryFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
AccountHordeWins:SetPoint("top", 210, -55)





