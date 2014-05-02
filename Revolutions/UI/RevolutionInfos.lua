
-- Lua Revolution Infos
-- Author: Gedemon
-- DateCreated: 4/15/2012 4:15:02 PM
--------------------------------------------------------------

print("--------------------------------------------------------------------------------------------------------------")
print("-------------------------------------- Loading Revolutions Infos Screen --------------------------------------")
print("--------------------------------------------------------------------------------------------------------------")
if (GameDefines.REVOLUTION_ENABLED > 0) or Game.IsOption("GAMEOPTION_REVOLUTION") then
	include ("RevolutionInfosMain")
else
	print ("- Revolution is Disabled (GameDefines.REVOLUTION_ENABLED = 0 and GAMEOPTION_REVOLUTION = false)")	
	print("---------------------------------------------------------------------------------------------------------------")
	print("------------------------------------- Revolutions Info Screen not loaded ! ------------------------------------")
	print("---------------------------------------------------------------------------------------------------------------")
end