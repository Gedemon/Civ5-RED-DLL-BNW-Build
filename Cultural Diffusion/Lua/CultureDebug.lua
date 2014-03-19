-- Debug
-- Author: Gedemon
-- DateCreated: 1/30/2011 8:03:25 PM
--------------------------------------------------------------

print("Loading Culture Debug Functions...")
print("-------------------------------------")

-- Output debug text
function Dprint ( str, bOutput )
  if bOutput == nil then
    bOutput = true
  end
  if ( DEBUG_CULTURE and bOutput ) then
    print (str)
  end
end

