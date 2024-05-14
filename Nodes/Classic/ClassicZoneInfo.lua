local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadClassicZoneInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

    --#####################################################################################################
    --##########################        function to hide all nodes below         ##########################
    --#####################################################################################################
    if not db.show.HideMapNote then


        --##################################################################################################
        --####################################         Zone         ###################################
        --##################################################################################################
		if db.show.ZoneMap then
            
            
            --###################
            --##### Kalimdor ####
            --###################
            
			if self.db.profile.showZoneKalimdor then


            -- Raids

                if self.db.profile.showZoneRaids then

                    nodes[1451][25239137] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    				nodes[1451][29049322] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1445][52877752] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }

                end


            -- Dungeons

                if self.db.profile.showZoneDungeons then

                    nodes[1440][13961306] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1444][59034298] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1444][76883670] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1443][28986219] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1413][49189322] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1413][41798934] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1413][45973633] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1446][38712008] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1454][56294119] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1454][39775294] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }

                end


            -- Blizz Pois

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                    
                        nodes[1438][27385702] = { mnID = 1457, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE }
                    
                    end

                    if self.faction == "Horde" or db.show.EnemyFaction then

                        nodes[1411][45600899] = { mnID = 1454, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } 
                        nodes[1412][41112765] = { mnID = 1456, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE } 

                    end

                end


            -- Portal
                if self.db.profile.showZonePortals then

                    nodes[1438][23285521] = { mnID = 1438, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] }
                    nodes[1438][55639075] = { mnID = 1438, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. L["Darnassus"] }
                
                end


            -- Zeppelin
                if self.db.profile.showZoneZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then

                        nodes[1411][50281195] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] }
                        nodes[1411][50771406] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }

                    end
                    
                end


            -- Ships
                if self.db.profile.showZoneShips then

                    nodes[1413][63803771] = { mnID = 1434, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- 
                

                    if self.faction == "Alliance" or db.show.EnemyFaction then

                        nodes[1439][33273982] = { mnID = 1438, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Auberdine"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Teldrassil"] } -- 
                        nodes[1439][32294340] = { mnID = 1437, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Auberdine"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- 
                        nodes[1438][55039414] = { mnID = 1439, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Teldrassil"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Auberdine"] } -- 
                        nodes[1445][71835683] = { mnID = 1437, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Theramore Isle"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor

                    end

                end

            end


            --##########################
            --##### Eastern Kingdom ####
            --##########################

            if self.db.profile.showZoneEasternKingdom then


            -- Raids            

                if self.db.profile.showZoneRaids then

                    nodes[1427][34958438] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1428][29383823] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1434][53731730] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1423][38962562] = { mnID = 1423, name = L["Naxxramas"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }


                end


            -- Dungeons

                if self.db.profile.showZoneDungeons then

                    nodes[1421][44746773] = { mnID = 1421, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1422][68887290] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1420][82603359] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1423][31231582] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1423][47942391] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1435][69195221] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1418][44441195] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1418][64884316] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1426][24243984] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1436][42407161] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1453][40255517] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }

                end

                if self.db.profile.showZoneMultiple then

				    nodes[1427][34958438] = { mnID = 1427, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1428][29383823] = { mnID = 1428, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true, hideOnContinent = true, hideOnMinimap = true }

                end


            -- Blizz POIS

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                      nodes[1420][61806939] = { mnID = 1458, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE }
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                      nodes[1426][54353411] = { mnID = 1455, name = "", type = "AIcon", showInZone = true, hideOnZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                      nodes[1429][24793263] = { mnID = 1453, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
                    end

                end

            -- Dungeons and not Blizz for Stockade

                if self.db.profile.showZoneDungeons and not self.db.profile.show.RemoveBlizzPOIs then
                
                    if self.db.profile.showZoneDungeons then
                        nodes[1429][24793263] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    end
                end


            -- Zeppelin
                if self.db.profile.showZoneZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then

                        nodes[1420][60565871] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Durotar"] }
                        nodes[1420][62025913] = { mnID = 1415, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"]}
                        nodes[1434][31552891] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        nodes[1434][31223030] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }

                    end

                end


            -- Zone Eastern Kingdom Transport and not RemoveBlizzPOIs
                if self.db.profile.showZoneTransport then

                    if self.faction == "Alliance" or db.show.EnemyFaction then

                        nodes[1455][73375055] = { mnID = 1453, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                        nodes[1453][60941195] = { mnID = 1455, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 

                    end

                end


            -- Ships
                if self.db.profile.showZoneShips then

                    nodes[1434][25677301] = { mnID = 1413, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- 
                    
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1437][04896329] = { mnID = 1445, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Theramore Isle"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                        nodes[1437][04455693] = { mnID = 1445, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Auberdine"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh

                    end

                end

            end
        end
    end
end