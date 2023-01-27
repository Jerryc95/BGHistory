local UI = BGHistory.UI

local DetailFrame = CreateFrame("ScrollFrame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
DetailFrame:SetSize(535, 325)
DetailFrame:SetPoint("BOTTOMRIGHT", -25, 37)
DetailFrame.title = DetailFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
DetailFrame.title:SetText("Details")
DetailFrame.title:SetPoint("TOP", 0, -13)
DetailFrame.title:SetHeight(5)


local statsText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
statsText:SetPoint("top", -210, -40)
statsText:SetText("Stats")
statsText:SetTextColor(1,0.84,0.09,1)

local char = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
char:SetPoint("top", 0, -40)
char:SetText("Character")

local account = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
account:SetPoint("TOP", 150, -40)
account:SetText("Account")


-- KILLING BLOWS
local kbText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kbText:SetPoint("top", -210, -65)
kbText:SetText("Killing Blows:")

KbChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
KbChar:SetPoint("top", 0, -65)


KbAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
KbAccount:SetPoint("top", 150, -65)


-- HONORABLE KILLS
local hkText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
hkText:SetPoint("top", -210, -95)
hkText:SetText("Honorable Kills:")

HkChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
HkChar:SetPoint("top", 0, -95)


HkAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
HkAccount:SetPoint("top", 150, -95)


-- DEATHS
local deathsText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
deathsText:SetPoint("top", -210, -125)
deathsText:SetText("Deaths:")

DeathsChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
DeathsChar:SetPoint("top", 0, -125)


DeathsAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
DeathsAccount:SetPoint("top", 150, -125)


-- KILL DEATH RATIO
local kdText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kdText:SetPoint("top", -210, -155)
kdText:SetText("Kill/Death Ratio:")

KdChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
KdChar:SetPoint("top", 0, -155)


KdAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
KdAccount:SetPoint("top", 150, -155)


-- PERCENTS
local percentText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
percentText:SetPoint("top", -210, -195)
percentText:SetText("Win Percentage")
percentText:SetTextColor(1,0.84,0.09,1)

local AlliancePercentText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
AlliancePercentText:SetPoint("top", -210, -225)
AlliancePercentText:SetText("Alliance:")
AlliancePercentText:SetTextColor(0,0,255,1)

ApChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
ApChar:SetPoint("top", 0, -225)


ApAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
ApAccount:SetPoint("top", 150, -225)


local HordePercentText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
HordePercentText:SetPoint("top", -210, -255)
HordePercentText:SetText("Horde:")
HordePercentText:SetTextColor(255,0,0,1)

HpChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
HpChar:SetPoint("top", 0, -255)


HpAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
HpAccount:SetPoint("top", 150, -255)

