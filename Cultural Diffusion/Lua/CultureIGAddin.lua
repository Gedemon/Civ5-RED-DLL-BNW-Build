-- CultureUIAddin
-- Author: Gedemon
-- DateCreated: 18-Mar-14 03:12:09
--------------------------------------------------------------

print("---------------------------------------------------------------------------------------------------------------")
print("-------------------------------------- Cultural Diffusion script started --------------------------------------")
print("---------------------------------------------------------------------------------------------------------------")

if (GameDefines.CULTURE_DIFFUSION_ENABLED > 0) or Game.IsOption("GAMEOPTION_CULTURE_DIFFUSION") then
	include ("CultureMain")
else
	print ("- Culture Diffusion is Disabled (GameDefines.CULTURE_DIFFUSION_ENABLED = 0 and GAMEOPTION_CULTURE_DIFFUSION = false)")	
	print("---------------------------------------------------------------------------------------------------------------")
	print("------------------------------------ Cultural Diffusion script not loaded ! -----------------------------------")
	print("---------------------------------------------------------------------------------------------------------------")
end
