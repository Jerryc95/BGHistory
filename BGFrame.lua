local UI = BGHistory.UI
local AccountDB = BGHistoryAccountDB
local offset = 198


local bgListFrame = CreateFrame("Frame", nil, UI.mainFrame, "TooltipBorderBackdropTemplate")
bgListFrame:SetSize(200, 425)
bgListFrame:SetPoint("LEFT", 25, 0)
bgListFrame.title = bgListFrame:CreateFontString(nil,"OVERLAY", "GameFontNormal")
bgListFrame.title:SetText("BATTLEGROUNDS")
bgListFrame.title:SetPoint("TOP", 0, -13)
bgListFrame.title:SetHeight(5)


for i in pairs(AccountDB) do
    offset = offset - 28
    local button = CreateFrame("Button", i, bgListFrame)
    button:SetPoint("CENTER", bgListFrame, 0, offset)
    button:SetWidth(50)
    button:SetHeight(20)
    button:SetText(i)
    button:SetNormalFontObject("GameFontHighlightLeft")
    button:SetPushedTexture("Interface/Buttons/UI-Panel-Button-Down")
end
