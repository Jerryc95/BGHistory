Handler = BGHistory.BGHistoryHandlers

function Handler:UpdateFrame()
    -- SUMMARY METRICS
    AccountAllianceWins:SetText(BGHistory.battlegroundScores.accountAllianceWin)
    AccountHordeWins:SetText(BGHistory.battlegroundScores.accountHordeWin)
    CharHordeWins:SetText(BGHistory.battlegroundScores.charHordeWin)
    CharAllianceWins:SetText(BGHistory.battlegroundScores.charAllianceWin)

    -- DETAILS METRICS
    KbChar:SetText(BGHistory.battlegroundStats.charKillingBlows)
    KbAccount:SetText(BGHistory.battlegroundStats.accountKillingBlows)
    HkChar:SetText(BGHistory.battlegroundStats.charHonorableKills)
    HkAccount:SetText(BGHistory.battlegroundStats.accountHonorableKills)
    DeathsChar:SetText(BGHistory.battlegroundStats.charDeaths)
    DeathsAccount:SetText(BGHistory.battlegroundStats.accountDeaths)

    local function verifyKD (arg1, arg2)
       if (arg1 == 0 and arg2 == 0) then
            return 0
       else
        local kdFormatted = string.format("%.2f", arg1 / arg2)
        return kdFormatted
       end
    end

    local function verifyPercent(arg1, arg2)
        if (arg1 == 0 and arg2 == 0) then
            return string.format( "%.2f %%", 0)
        else
            local percentFormatted = string.format( "%.2f %%", arg1 / (arg1 + arg2) * 100)
            return percentFormatted
        end
    end



    KdChar:SetText(verifyKD(BGHistory.battlegroundStats.charKillingBlows, BGHistory.battlegroundStats.charDeaths))
    KdAccount:SetText(verifyKD(BGHistory.battlegroundStats.accountKillingBlows, BGHistory.battlegroundStats.accountDeaths))
    ApChar:SetText(verifyPercent(BGHistory.battlegroundScores.charAllianceWin, BGHistory.battlegroundScores.charHordeWin))
    ApAccount:SetText(verifyPercent(BGHistory.battlegroundScores.accountAllianceWin, BGHistory.battlegroundScores.accountHordeWin))
    HpChar:SetText(verifyPercent(BGHistory.battlegroundScores.charHordeWin, BGHistory.battlegroundScores.charAllianceWin))
    HpAccount:SetText(verifyPercent(BGHistory.battlegroundScores.accountHordeWin, BGHistory.battlegroundScores.accountAllianceWin))
end