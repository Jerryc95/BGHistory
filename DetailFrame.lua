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

local kbChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kbChar:SetPoint("top", 0, -65)
kbChar:SetText(0)

local kbAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kbAccount:SetPoint("top", 150, -65)
kbAccount:SetText(0)

-- HONORABLE KILLS
local hkText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
hkText:SetPoint("top", -205, -95)
hkText:SetText("Honorable Kills:")

local hkChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
hkChar:SetPoint("top", 0, -95)
hkChar:SetText(0)

local hkAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
hkAccount:SetPoint("top", 150, -95)
hkAccount:SetText(0)

-- DEATHS
local deathsText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
deathsText:SetPoint("top", -208, -125)
deathsText:SetText("Deaths:")

local deathsChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
deathsChar:SetPoint("top", 0, -125)
deathsChar:SetText(0)

local deathsAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
deathsAccount:SetPoint("top", 150, -125)
deathsAccount:SetText(0)

-- KILL DEATH RATIO
local kdText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kdText:SetPoint("top", -209, -155)
kdText:SetText("Kill/Death Ratio:")

local kdChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kdChar:SetPoint("top", 0, -155)
kdChar:SetText(0)

-- kills / deaths 

local kdAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
kdAccount:SetPoint("top", 150, -155)
kdAccount:SetText(0)

-- DAMAGE DONE
-- local ddText = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
-- ddText:SetPoint("top", -225, -245)
-- deathsText:SetText("Damage Done:")

-- local ddChar = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
-- ddChar:SetPoint("top", 0, -245)
-- deathsChar:SetText(0)

-- local ddAccount = DetailFrame:CreateFontString(nil, "OVERLAY", "GameTooltipHeaderText")
-- ddAccount:SetPoint("top", 150, -245)
-- ddAccount:SetText(0)
