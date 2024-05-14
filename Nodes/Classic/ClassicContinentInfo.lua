local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadClassicContinentInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

    --#####################################################################################################
    --##########################        function to hide all nodes below         ##########################
    --#####################################################################################################
    if not db.show.HideMapNote then


        --##################################################################################################
        --####################################         Continent         ###################################
        --##################################################################################################
		if db.show.Continent then
            
            
            --###################
            --##### Kalimdor ####
            --###################
            
			if self.db.profile.showContinentKalimdor then


            -- Raids

                if self.db.profile.showContinentRaids then

                    nodes[1414][40808546] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
    				nodes[1414][42408638] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
    			    nodes[1414][56327161] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}

                end


            -- Dungeons

                if self.db.profile.showContinentDungeons then

                    nodes[1414][43763504] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}
    			    nodes[1414][42537013] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
                    nodes[1414][45976847] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
                    nodes[1414][38225775] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
    			    nodes[1414][52757105] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true}
                    nodes[1414][50657013] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = true}
    			    nodes[1414][51885554] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true}
                    nodes[1414][54107955] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true}
    			    --nodes[1414][58164464] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true}
    			    
                end


            -- Blizz Pois

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                    
                        nodes[1414][39941176] = { mnID = 1457, name = "", type = "AIcon", showInZone = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } 
                    
                    end

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1414][58164464] = { mnID = 1454, name = "", type = "HIcon", showInZone = true, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } 
                        nodes[1414][46965720] = { mnID = 1456, name = "", type = "HIcon", showInZone = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE } 
                    end

                end


            -- Dungeons and not Blizz for Ragefire

                if self.db.profile.showContinentDungeons and not self.db.profile.show.RemoveBlizzPOIs then
                
                    if self.db.profile.showContinentDungeons then
                        nodes[1414][58164464] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true}
                    end
                end

            -- Zeppelin
                if self.db.profile.showContinentZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1414][59154686] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Durotar"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                    end
                    
                end


            -- Ships
                if self.db.profile.showContinentShips then

                    nodes[1414][57305757] = { mnID = 1413, name = "", type = "Ship", showInZone = true, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Booty Bay to Ratchet
                

                    if self.faction == "Alliance" or db.show.EnemyFaction then

                        nodes[1414][44132395] = { mnID = 1439, name = "", type = "AShip", showInZone = true, TransportName = L["Auberdine"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Teldrassil"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Booty Bay to Ratchet
                        nodes[1414][43761657] = { mnID = 1438, name = "", type = "AShip", showInZone = true, TransportName = L["Teldrassil"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Auberdine"] } -- Ship from Booty Bay to Ratchet
                        nodes[1414][59036699] = { mnID = 1445, name = "", type = "AShip", showInZone = true, TransportName = L["Theramore Isle"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor

                    end

                end

            -- Flight Point
                if self.db.profile.showContinentFP then
                    nodes[1414][56535547] = { mnID = 1413, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_NEUTRAL, type = "TravelL", showInZone = true } -- Barrens
                    nodes[1414][49377682] = { mnID = 1449, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_NEUTRAL, type = "TravelL", showInZone = true } -- Un'Goro

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1414][58732404] = { mnID = 1452, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Winterquell
                        nodes[1414][52012152] = { mnID = 1450, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Moonglade
                        nodes[1414][47163133] = { mnID = 1448, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Felwood
                        nodes[1414][53174261] = { mnID = 1440, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Ashenvale
                        nodes[1414][58303690] = { mnID = 1447, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Azshara
                        nodes[1414][43534767] = { mnID = 1442, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Stonetalon Mountains
                        nodes[1414][53505339] = { mnID = 1413, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Barrens
                        nodes[1414][51416133] = { mnID = 1413, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Barrens
                        nodes[1414][45995653] = { mnID = 1412, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Thunder Bluff
                        nodes[1414][37375893] = { mnID = 1443, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Desolace
                        nodes[1414][45746965] = { mnID = 1444, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Feralas
                        nodes[1414][44027925] = { mnID = 1451, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Silithus
                        nodes[1414][54126447] = { mnID = 1445, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Dustwood
                        nodes[1414][52767389] = { mnID = 1441, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Thousend Needles
                        nodes[1414][56468017] = { mnID = 1446, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Tanaris
                    end

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1414][59412402] = { mnID = 1452, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Winterquell
                        nodes[1414][53252125] = { mnID = 1450, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Moonglade
                        nodes[1414][44632569] = { mnID = 1439, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Auberdine
                        nodes[1414][51652642] = { mnID = 1448, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Felwood
                        nodes[1414][47164028] = { mnID = 1440, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Ashenvale
                        nodes[1414][56894065] = { mnID = 1447, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Azshara
                        nodes[1414][42364083] = { mnID = 1442, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Stonetalon Mountains
                        nodes[1414][42855117] = { mnID = 1443, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Desolace
                        nodes[1414][48497019] = { mnID = 1444, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Feralas
                        nodes[1414][37266966] = { mnID = 1444, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Feralas
                        nodes[1414][44517888] = { mnID = 1451, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Silithus
                        nodes[1414][58676743] = { mnID = 1445, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Dustwood
                        nodes[1414][56468147] = { mnID = 1446, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Tanaris
                        nodes[1414][44141645] = { mnID = 1438, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Teldrassil
                    end

                end

            end


            --##########################
            --##### Eastern Kingdom ####
            --##########################

            if self.db.profile.showContinentEasternKingdom then


            -- Raids            

                if self.db.profile.showContinentRaids then

				    nodes[1415][48756588] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
                    nodes[1415][48878251] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
                    nodes[1415][56011841] = { mnID = 1423, name = L["Naxxramas"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}


                end


            -- Dungeons

                if self.db.profile.showContinentDungeons then

                    nodes[1415][40993282] = { mnID = 1421, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = true}
				    nodes[1415][52562617] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
				    nodes[1415][47641934] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = true}
				    nodes[1415][54781712] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
				    nodes[1415][56267604] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
				    nodes[1415][54415757] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
				    nodes[1415][55775979] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
                    nodes[1415][43825369] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = true}
                    nodes[1415][40997918] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true}
                    --nodes[1415][42966902] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}

                end

                if self.db.profile.showContinentMultiple then

				    nodes[1415][48756588] = { mnID = 1428, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true}

                end


            -- Blizz POIS

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                      nodes[1415][43592454] = { mnID = 1458, name = "", type = "HIcon", showInZone = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE }
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                      nodes[1415][47765166] = { mnID = 1455, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                      nodes[1415][42966902] = { mnID = 1453, name = "", type = "AIcon", showInZone = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
                    end

                end

            -- Dungeons and not Blizz for Stockade

                if self.db.profile.showContinentDungeons and not self.db.profile.show.RemoveBlizzPOIs then
                
                    if self.db.profile.showContinentDungeons then
                        nodes[1415][42966902] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}
                    end
                end


            -- Zeppelin
                if self.db.profile.showContinentZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then

                        nodes[1415][43572229] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Tirisfal Glades"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Durotar"] }
                        nodes[1415][44818417] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0.. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                    
                    end

                end


            -- Continent Eastern Kingdom Transport and not RemoveBlizzPOIs
                if self.db.profile.showContinentTransport and not self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.show.EnemyFaction then

                        nodes[1415][47765351] = { mnID = 1455, name = "", type = "Carriage", showInZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                        nodes[1415][45187037] = { mnID = 1429, name = "", type = "Carriage", showInZone = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 

                    end

                end


            -- Ships
                if self.db.profile.showContinentShips then

                    nodes[1415][41979266] = { mnID = 1434, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
                    
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1415][47644723] = { mnID = 1437, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. L["Theramore Isle"] .. "\n" .. " => " .. L["Auberdine"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                    end

                end


            -- Flight Point
                if self.db.profile.showContinentFP then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1415][44942457] = { mnID = 1458, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Undercity
                        nodes[1415][60412152] = { mnID = 1423, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Eastern Plaquelands
                        nodes[1415][41052961] = { mnID = 1421, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Silverwood
                        nodes[1415][58733425] = { mnID = 1425, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Hinterlands
                        nodes[1415][55373558] = { mnID = 1417, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Arathi Highlands
                        nodes[1415][47853133] = { mnID = 1424, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Hillsb
                        nodes[1415][48215945] = { mnID = 1427, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Sengende Schlucht
                        nodes[1415][51665985] = { mnID = 1418, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Badlands
                        nodes[1415][51666356] = { mnID = 1428, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Burning Stepps
                        nodes[1415][54757616] = { mnID = 1435, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Swamp of 
                        nodes[1415][45038451] = { mnID = 1434, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Stranglethorn Vale
                        nodes[1415][43969300] = { mnID = 1434, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = true } -- Stranglethorn Vale
                    end

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1415][47475262] = { mnID = 1455, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Ironfrge
                        nodes[1415][43336816] = { mnID = 1453, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Stormwind
                        nodes[1415][49472771] = { mnID = 1422, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- W-Plaquelands
                        nodes[1415][60582201] = { mnID = 1423, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Eastern Plaquelands
                        nodes[1415][51123044] = { mnID = 1425, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Hinterlands
                        nodes[1415][52573700] = { mnID = 1417, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Arathi Highlands
                        nodes[1415][46873477] = { mnID = 1424, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Hillsb
                        nodes[1415][47654791] = { mnID = 1437, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Wetlands
                        nodes[1415][53795482] = { mnID = 1432, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Loch Modan
                        nodes[1415][47515272] = { mnID = 1426, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Dun Morogh
                        nodes[1415][48875966] = { mnID = 1427, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Sengende Schlucht
                        nodes[1415][53216728] = { mnID = 1428, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Burning Stepps
                        nodes[1415][43466877] = { mnID = 1429, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Elwynn
                        nodes[1415][51817193] = { mnID = 1433, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Redridge Mountains
                        nodes[1415][48937642] = { mnID = 1431, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Dämmerwood
                        nodes[1415][42477682] = { mnID = 1436, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Westfall
                        nodes[1415][55217894] = { mnID = 1419, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Blasted Lands
                        nodes[1415][44079353] = { mnID = 1434, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = true } -- Stranglethorn Vale
                    end

                end

            end
        end
    end
end