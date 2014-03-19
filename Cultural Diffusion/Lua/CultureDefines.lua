-- Culture Defines
-- Author: Gedemon
-- DateCreated: 1/29/2011 4:22:38 PM
--------------------------------------------------------------

print("Loading Culture Defines...")
print("-------------------------------------")

-------------------------------------------------------------------------------------------------
-- Debug settings
--
DEBUG_CULTURE			= (GameDefines.CULTURE_DEBUG > 0)				-- if true will output debug text in the lua.log / firetuner console.
DEBUG_SHOW_PLOT_CULTURE = (GameDefines.CULTURE_DEBUG_SHOW_PLOT > 0)		-- if true will show the culture value and coordinate of a plot
DEBUG_PERFORMANCE		= (GameDefines.CULTURE_DEBUG_PERFORMANCE > 0)	-- if true will outpout time taken by some functions to the lua.log / firetuner console.

-------------------------------------------------------------------------------------------------
-- General settings
--
CULTURE_MAX_LINE_UI		= GameDefines.CULTURE_MAX_LINES_UI			-- Maximum culture entries shown on tooltip
CULTURE_SHOW_VARIATION	= (GameDefines.CULTURE_SHOW_VARIATION > 0)	-- if true will show the culture variation for each civilization on tooltip
BARBARIAN_PLAYER		= GameDefines.MAX_CIV_PLAYERS

-------------------------------------------------------------------------------------------------
-- Revolution Mod
--
SEPARATIST_TYPE = "SEPARATIST" -- culture type used for separatist

THRESHOLD_JOYFUL		= GameDefines.THRESHOLD_JOYFUL
THRESHOLD_HAPPY			= GameDefines.THRESHOLD_HAPPY
THRESHOLD_CONTENT		= GameDefines.THRESHOLD_CONTENT
THRESHOLD_UNHAPPY		= GameDefines.THRESHOLD_UNHAPPY
THRESHOLD_WOEFUL		= GameDefines.THRESHOLD_WOEFUL
THRESHOLD_EXASPERATED	= GameDefines.THRESHOLD_EXASPERATED