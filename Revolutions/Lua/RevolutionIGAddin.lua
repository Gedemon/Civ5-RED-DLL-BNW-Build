-- RevolutionIGAddin
-- Author: Gedemon
-- DateCreated: 01-May-14 17:59:52
--------------------------------------------------------------

print("---------------------------------------------------------------------------------------------------------------")
print("------------------------------------------ Revolution script started ------------------------------------------")
print("---------------------------------------------------------------------------------------------------------------")

if (GameDefines.REVOLUTION_ENABLED > 0) or Game.IsOption("GAMEOPTION_REVOLUTION") then
	include ("RevolutionMain")
else
	print ("- Revolution is Disabled (GameDefines.REVOLUTION_ENABLED = 0 and GAMEOPTION_REVOLUTION = false)")	
	print("---------------------------------------------------------------------------------------------------------------")
	print("------------------------------------ Revolution script not loaded ! -----------------------------------")
	print("---------------------------------------------------------------------------------------------------------------")
end