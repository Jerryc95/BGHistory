local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PVP_MATCH_COMPLETE")
f:RegisterEvent("PLAYER_STARTED_MOVING")

f:SetScript("OnEvent", function(self, event, arg1)
	if (event == "ADDON_LOADED" and arg1 == "Battleground-Stat-History") then
		print("bg history loaded")
		local AceGUI = LibStub("AceGUI-3.0")
        local frame = AceGUI:Create("Frame")

        frame:SetTitle("Battleground Stat History")
        frame:SetStatusText("See history of each teams wins")

		if(TotalStats == nil) then
			TotalStats = {}
			TotalStats.WSGHordeWins = 0
			TotalStats.ABHordeWins = 0
			TotalStats.AVHordeWins = 0
			TotalStats.EOTSHordeWins = 0
			TotalStats.IOCHordeWins = 0
			TotalStats.GilneasHordeWins = 0
			TotalStats.WintergraspHordeWins = 0
			TotalStats.AshranHordeWins = 0
			TotalStats.TwinPeaksHordeWins = 0
			TotalStats.SilvershardHordeWins = 0
			TotalStats.TempleHordeWins = 0
			TotalStats.SeethingShoreHordeWins = 0
			TotalStats.DeepwindHordeWins = 0

			TotalStats.WSGAllianceWins = 0
			TotalStats.ABAllianceWins = 0
			TotalStats.AVAllianceWins = 0
			TotalStats.EOTSAllianceWins = 0
			TotalStats.IOCAllianceWins = 0
			TotalStats.GilneasAllianceWins = 0
			TotalStats.WintergraspAllianceWWins = 0
			TotalStats.AshranAllianceWins = 0
			TotalStats.TwinPeaksAllianceWins = 0
			TotalStats.SilvershardAllianceWins = 0
			TotalStats.TempleAllianceWins = 0
			TotalStats.SeethingShoreAllianceWins = 0
			TotalStats.DeepwindAllianceWins = 0
		end

		if(CharacterStats == nil) then
			CharacterStats = {}
			CharacterStats.WSGHordeWins = 0
			CharacterStats.ABHordeWins = 0
			CharacterStats.AVHordeWins = 0
			CharacterStats.EOTSHordeWins = 0
			CharacterStats.IOCHordeWins = 0
			CharacterStats.GilneasHordeWins = 0
			CharacterStats.WintergraspHordeWins = 0
			CharacterStats.AshranHordeWins = 0
			CharacterStats.TwinPeaksHordeWins = 0
			CharacterStats.SilvershardHordeWins = 0
			CharacterStats.TempleHordeWins = 0
			CharacterStats.SeethingShoreHordeWins = 0
			CharacterStats.DeepwindHordeWins = 0

			CharacterStats.WSGAllianceWins = 0
			CharacterStats.ABAllianceWins = 0
			CharacterStats.AVAllianceWins = 0
			CharacterStats.EOTSAllianceWins = 0
			CharacterStats.IOCAllianceWins = 0
			CharacterStats.GilneasAllianceWins = 0
			CharacterStats.WintergraspAllianceWWins = 0
			CharacterStats.AshranAllianceWins = 0
			CharacterStats.TwinPeaksAllianceWins = 0
			CharacterStats.SilvershardAllianceWins = 0
			CharacterStats.TempleAllianceWins = 0
			CharacterStats.SeethingShoreAllianceWins = 0
			CharacterStats.DeepwindAllianceWins = 0
		end

		if(Battlegrounds == nil) then
			Battlegrounds = {}
			Battlegrounds.WSG = "Warsong Gultch"
			Battlegrounds.AB = "Arathi Basin"
			Battlegrounds.AV = "Alterac Valley"
			Battlegrounds.EOTS = "Eye of The Storm"
			Battlegrounds.IOC = "Isle of Conquest"
			Battlegrounds.Gilneas = "The Battle For Gilneas"
			Battlegrounds.Wintergrasp = "Battle for Wintergrasp"
			Battlegrounds.Ashran = "Ashran"
			Battlegrounds.TwinPeaks = "Twin Peaks"
			Battlegrounds.Silvershard = "Silvershard Mines"
			Battlegrounds.Temple = "Temple of Kotmogu"
			Battlegrounds.SeethingShore = "Seething Shore"
			Battlegrounds.Deepwind = "Deepwind Gorge"
		end

		
	end

	local function getGameWinner()
		local winnerIndex = GetBattlefieldWinner()
		if(winnerIndex == 0) then
			return "Horde"
		elseif (winnerIndex == 1) then
			return "Alliance"
		end

	end

	local function getBattleground()
		local battleground
		local id = C_Map.GetBestMapForUnit("player")
		local mapID
			if (id ~= nil) then
			mapID = id
		end
		local area = C_Map.GetMapInfo(mapID)

		for i = 1 ,13,1 do	
   			local name, canEnter, isHoliday, isRandom, battleGroundID, info = GetBattlegroundInfo(i)
				if(name == area.name) then
				battleground = name
				break
			end
 		end
		return battleground
	end

	local function updateScore(accountScore, characterScore)
		accountScore = accountScore + 1
		characterScore = characterScore + 1
	end

	local function updateScoreForBattleground()
		local battleground = getBattleground()
		local winner = getGameWinner()
		local winnerScore

		if(battleground == Battlegrounds.WSG) then
			if (winner == "Horde") then
				updateScore(TotalStats.WSGHordeWins, CharacterStats.WSGHordeWins)
				winnerScore = CharacterStats.WSGHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.WSGAllianceWins, CharacterStats.WSGAllianceWins)
				winnerScore = CharacterStats.WSGAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.AB) then
			if (winner == "Horde") then
				updateScore(TotalStats.ABHordeWins, CharacterStats.ABHordeWins)
				winnerScore = CharacterStats.ABHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.ABAllianceWins, CharacterStats.ABAllianceWins)
				winnerScore = CharacterStats.ABAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.AV) then
			if (winner == "Horde") then
				updateScore(TotalStats.AVHordeWins, CharacterStats.AVHordeWins)
				winnerScore = CharacterStats.AVHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.AVAllianceWins, CharacterStats.AVAllianceWins)
				winnerScore = CharacterStats.AVAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.EOTS) then
			if (winner == "Horde") then
				updateScore(TotalStats.EOTSHordeWins, CharacterStats.EOTSHordeWins)
				winnerScore = CharacterStats.EOTSHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.EOTSAllianceWins, CharacterStats.EOTSAllianceWins)
				winnerScore = CharacterStats.EOTSAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.IOC) then
			if (winner == "Horde") then
				updateScore(TotalStats.IOCHordeWins, CharacterStats.IOCHordeWins)
				winnerScore = CharacterStats.IOCHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.IOCAllianceWins, CharacterStats.IOCAllianceWins)
				winnerScore = CharacterStats.IOCAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.Gilneas) then
			if (winner == "Horde") then
				updateScore(TotalStats.GilneasHordeWins, CharacterStats.GilneasHordeWins)
				winnerScore = CharacterStats.GilneasHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.GIlneasAllianceWins, CharacterStats.GilneasAllianceWins)
				winnerScore = CharacterStats.GilneasAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.Wintergrasp) then
			if (winner == "Horde") then
				updateScore(TotalStats.WintergraspHordeWins, CharacterStats.WintergraspHordeWins)
				winnerScore = CharacterStats.WintergraspHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.WintergraspAllianceWins, CharacterStats.WintergraspAllianceWins)
				winnerScore = CharacterStats.WintergraspAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.Ashran) then
			if (winner == "Horde") then
				updateScore(TotalStats.AshranHordeWins, CharacterStats.AshranHordeWins)
				winnerScore = CharacterStats.AshranHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.AshranAllianceWins, CharacterStats.AshranAllianceWins)
				winnerScore = CharacterStats.AshranAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.TwinPeaks) then
			if (winner == "Horde") then
				updateScore(TotalStats.TwinPeaksHordeWins, CharacterStats.TwinPeaksHordeWins)
				winnerScore = CharacterStats.TwinPeaksHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.TwinPeaksAllianceWins, CharacterStats.TwinPeaksAllianceWins)
				winnerScore = CharacterStats.TwinPeaksAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.Silvershard) then
			if (winner == "Horde") then
				updateScore(TotalStats.SilvershardHordeWins, CharacterStats.SilvershardHordeWins)
				winnerScore = CharacterStats.SilvershardHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.SilvershardAllianceWins, CharacterStats.SilvershardAllianceWins)
				winnerScore = CharacterStats.SilvershardAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.Temple) then
			if (winner == "Horde") then
				updateScore(TotalStats.TempleHordeWins, CharacterStats.TempleHordeWins)
				winnerScore = CharacterStats.TempleHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.TempleAllianceWins, CharacterStats.TempleAllianceWins)
				winnerScore = CharacterStats.TempleAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.SeethingShore) then
			if (winner == "Horde") then
				updateScore(TotalStats.SeethingShoreHordeWins, CharacterStats.SeethingShoreHordeWins)
				winnerScore = CharacterStats.SeethingShoreHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.SeethingShoreAllianceWins, CharacterStats.SeethingShoreAllianceWins)
				winnerScore = CharacterStats.SeethingShoreAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		elseif (battleground == Battlegrounds.Deepwind) then
			if (winner == "Horde") then
				updateScore(TotalStats.DeepwindHordeWins, CharacterStats.DeepwindHordeWins)
				winnerScore = CharacterStats.DeepwindHordeWins
			elseif (winner == "Alliance") then
				updateScore(TotalStats.DeepwindAllianceWins, CharacterStats.DeepwindAllianceWins)
				winnerScore = CharacterStats.DeepwindAllianceWins
			end
			return "The", winner, "has won", battleground, "They now have", winnerScore, "wins!"
		else
			return "you are currently in", battleground, "which is not a battleground."
		end
	end
	


	if (event == "PVP_MATCH_COMPLETE") then
		print(updateScoreForBattleground())

	-- elseif (event == "PLAYER_STARTED_MOVING") then
	-- 	print(updateScoreForBattleground())
	end
end)
