/*
	Revolutions (DLL version)
	by Gedemon (2014)
	
	to do: move everything from RevolutionDefines.lua
*/

------------------------------------------------------------------------------------------------------------------------
-- 
-- General settings
INSERT INTO Defines (Name, Value) VALUES ('REVOLUTION_ENABLED',		0);	-- Culture diffusion ON/OFF (checked with GAMEOPTION_CULTURE_DIFFUSION, if any is true, then Culture diffusion is activated)

------------------------------------------------------------------------------------------------------------------------
-- 
--  
INSERT OR REPLACE INTO Defines (Name, Value) VALUES ('THRESHOLD_JOYFUL', 200); -- Relation thresholds (max value, ex: 95 = Joyful, -60 = Unhappy)
INSERT OR REPLACE INTO Defines (Name, Value) VALUES ('THRESHOLD_HAPPY', 75);
INSERT OR REPLACE INTO Defines (Name, Value) VALUES ('THRESHOLD_CONTENT', 10);
INSERT OR REPLACE INTO Defines (Name, Value) VALUES ('THRESHOLD_UNHAPPY', -10);
INSERT OR REPLACE INTO Defines (Name, Value) VALUES ('THRESHOLD_WOEFUL', -125);
INSERT OR REPLACE INTO Defines (Name, Value) VALUES ('THRESHOLD_EXASPERATED', -300);

------------------------------------------------------------------------------------------------------------------------
-- 
-- remove Rebels from vanilla game
UPDATE Defines set Value = -999		WHERE Name = 'VERY_UNHAPPY_THRESHOLD';	-- 10
UPDATE Defines set Value = -1000	WHERE Name = 'SUPER_UNHAPPY_THRESHOLD'; -- 20
