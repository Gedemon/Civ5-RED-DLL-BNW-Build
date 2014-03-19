-- Dynamic History Main
-- Author: Gedemon
-- DateCreated: 1/29/2011 10:32:50 PM
--------------------------------------------------------------



--------------------------------------------------------------
-- Mod related initialization (before include)
--------------------------------------------------------------

DynHistModID = "97837c72-d198-49d2-accd-31101cfc048a"
bDynHist = false

RevolutionModID = "cbda59cb-f254-41ad-8d69-ea5053e048f8"
bRevolution = false

local unsortedInstalledMods = Modding.GetInstalledMods()
for key, modInfo in pairs(unsortedInstalledMods) do
	if modInfo.Enabled then
		if (modInfo.Name) then
			if ( modInfo.ID == DynHistModID) then
				bDynHist = true
			end
			if ( modInfo.ID == RevolutionModID) then
				bRevolution = true
			end
		end
	end
end

--------------------------------------------------------------
--------------------------------------------------------------
include ("CultureDefines")
include ("CultureUtils")
include ("CultureDebug")
include ("CultureUIFunctions")

--------------------------------------------------------------

local bWaitBeforeInitialize = true

local endTurnTime = 0
local startTurnTime = 0

function NewTurnSummary()
	local year = Game.GetGameTurnYear()
	startTurnTime = os.clock()
	Dprint("------------- NEW TURN --------------")
	Dprint ("Game year = " .. year)
	if endTurnTime > 0 then
		Dprint ("AI turn execution time = " .. startTurnTime - endTurnTime )	
	end
	Dprint("-------------------------------------")
end

function EndTurnsummary()
	endTurnTime = os.clock()
	Dprint("-------------------------------------")
	Dprint ("Your turn execution time = " .. endTurnTime - startTurnTime )
	Dprint("-------------------------------------")
end

-----------------------------------------
-- Initializing functions
-----------------------------------------

-- functions to call at beginning of turn
function OnNewTurn ()
	NewTurnSummary()
end
Events.ActivePlayerTurnStart.Add( OnNewTurn )

-- functions to call at end of turn
function OnEndTurn ()
	EndTurnsummary()
end
Events.ActivePlayerTurnEnd.Add( OnEndTurn )

-- functions to call at first turn
function OnFirstTurn ()
	NewTurnSummary()
end

-- functions to call after loading a game
function OnLoading ()
end

-- Initialize when DynHistMain is loaded
if ( bWaitBeforeInitialize ) then
	bWaitBeforeInitialize = false
	if Game.GetGameTurn() == 0 then
		OnFirstTurn()
	else
		OnLoading()
	end
end

-----------------------------------------
-- Register events
-----------------------------------------

--LuaEvents.OnEmigration.Add(UpdateCultureOnEmigration)

print("---------------------------------------------------------------------------------------------------------------")
print("-------------------------------------- Cultural Diffusion script loaded ! -------------------------------------")
print("---------------------------------------------------------------------------------------------------------------")
 