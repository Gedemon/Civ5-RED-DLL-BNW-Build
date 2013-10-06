/*
	R.E.D. DLL Configuration	
	by Gedemon (2013)	

*/

/*****************************\
     DLL MANDATORY SECTION
    Do not remove any line !
\*****************************/

-- Unit stack Class
-- StackClass: can be any string, each different class can stack with another class, but not units of the same class
-- MaxStack: 0 means use plots limit, -1 means no stacking limit, values above 0 means a specific limit for this unit type. Can be combined with StackClass
ALTER TABLE Units ADD COLUMN StackClass text DEFAULT 'DEFAULT';
ALTER TABLE Units ADD COLUMN MaxStack integer DEFAULT '0';

/* City Stacking Base Limit (for unit of same type in a domain) 0 = use PLOT_UNIT_LIMIT, -1 = unlimited */
INSERT INTO Defines (Name, Value) VALUES ('CITY_LAND_UNIT_LIMIT', 0);
INSERT INTO Defines (Name, Value) VALUES ('CITY_SEA_UNIT_LIMIT', 0);
INSERT INTO Defines (Name, Value) VALUES ('CITY_AIR_UNIT_LIMIT', -1);



/*****************************************************\
               OPTION/EXAMPLE SECTION
        Remove the -- at the beggining of a line
                to activate the code 
\*****************************************************/

/* Scout as a separate stacking class, will stack with civilian and military units */
--UPDATE Units SET StackClass ='RECON' WHERE Type = 'UNIT_SCOUT';

/* Worker as a separate stacking class, will stack with settlers, great people and military units */
--UPDATE Units SET StackClass ='WORKER' WHERE Type = 'UNIT_WORKER';

/* Unlimited stacking for Great People, any number of GP will stack with any other units */
--UPDATE Units SET MaxStack ='-1', StackClass ='GREAT_PEOPLE' WHERE Special = 'SPECIALUNIT_PEOPLE';

/* Ranged land units as support class (stack with other units) */
--UPDATE Units SET StackClass ='RANGED' WHERE RangedCombat > 0 AND Domain = 'DOMAIN_LAND';