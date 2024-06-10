local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCataWorldMapInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

    --#####################################################################################################
    --##########################        function to hide all nodes below         ##########################
    --#####################################################################################################
    if not db.activate.HideMapNote then

    --##################################################################################################
    --####################################         WorldMap         ####################################
    --##################################################################################################
        if db.activate.Azeroth then
            
            
        --###################
        --##### Kalimdor ####
        --###################
            if self.db.profile.showAzerothKalimdor then


            -- Raids
                if self.db.profile.showAzerothRaids then
                    nodes[947][23854503] = { mnID = 198, name = DUNGEON_FLOOR_FIRELANDS0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true} -- Firelands
                    nodes[947][17489313] = { id = 74, name = "",  dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true} -- Throne of the Four Winds
                    nodes[947][13538306] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
    				nodes[947][15138454] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
    			    nodes[947][25357253] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
                    nodes[947][27508306] = { mnID = 1446, name = DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true}
                end

            -- Dungeons
                if self.db.profile.showAzerothDungeons then
                    nodes[947][51495137] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
                    nodes[947][20489099] = { id = 69, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = true} -- Lost City of Tol'Vir
                    nodes[947][21928943] = { id = 70, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = true} -- Halls of Origination
                    nodes[947][22639361] = { id = 68, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "81-85]", type = "Dungeon", showInZone = true} -- The Vortex Pinnacle
                    nodes[947][15934466] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}
    			    nodes[947][17536995] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
                    nodes[947][15096950] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
                    nodes[947][11626200] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
    			    nodes[947][22417260] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true}
                    nodes[947][21227142] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = true}
    			    nodes[947][21965997] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true}
                    nodes[947][23817826] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true}
    			    --nodes[947][26765129] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true}
                end

            -- Multi

                if self.db.profile.showAzerothMultiple then
                    nodes[947][27508306] = { mnID = 1446, name = "", dnID = DUNGEON_FLOOR_DRAGONBLIGHTCHROMIESCENARIO4 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]" .. "\n" .. L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HOUROFTWILIGHT0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. "Endtime" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. "Dragonsoul" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "MultipleM", showInZone = true}
                end

            -- Blizz Pois
                if self.db.profile.activate.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        nodes[947][12972653] = { mnID = 1438, name = "", type = "AIcon", showInZone = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"]}
                        nodes[947][04853818] = { mnID = 1943, name = "", type = "AIcon", showInZone = true, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"]}
                    end

                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        nodes[947][26765129] = { mnID = 1411, name = "", type = "HIcon", showInZone = true, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Blasted Lands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. "\n" ..CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } 
                        nodes[947][18276145] = { mnID = 1412, name = "", type = "HIcon", showInZone = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Durotar"] } 
                    end

                end


            -- Dungeons and not Blizz for Ragefire
                if self.db.profile.showAzerothDungeons and not self.db.profile.activate.RemoveBlizzPOIs then
                
                    if self.db.profile.showAzerothDungeons then
                        nodes[947][26765129] = { mnID = 86, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true}
                    end

                end

            -- Zeppelin
                if self.db.profile.showAzerothZeppelins then   

                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        nodes[947][27635332] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Durotar"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        nodes[947][26345369] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. " => " .. L["Thunder Bluff"] }
                    end
                    
                end


            -- Ships
                if self.db.profile.showAzerothShips then
                    nodes[947][25786034] = { mnID = 1413, name = "", type = "Ship", showInZone = true, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Booty Bay to Ratchet
                
                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        --nodes[947][16183559] = { mnID = 1439, name = "", type = "AShip", showInZone = true, TransportName = L["Auberdine"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Teldrassil"] .. "\n" .. " => " .. L["Azuremyst Isle"]} -- Ship from Booty Bay to Ratchet
                        nodes[947][15813005] = { mnID = 1438, name = "", type = "AShip", showInZone = true, TransportName = L["Teldrassil"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. L["Azuremyst Isle"] .. "\n" .. " => " .. L["Stormwind"] } -- Ship from Booty Bay to Ratchet
                        nodes[947][27506847] = { mnID = 1445, name = "", type = "AShip", showInZone = true, TransportName = L["Theramore Isle"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor
                        nodes[947][04484058] = { mnID = 1943, name = "", type = "AShip", showInZone = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Rut'theran"]  } --
                    end

                end

            end -- if self.db.profile.showAzerothKalimdor then


        --##########################
        --##### Eastern Kingdom ####
        --##########################
            if self.db.profile.showAzerothEasternKingdom then

            -- Raids            
                if self.db.profile.showAzerothRaids then
				    nodes[947][79047087] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true}
                    nodes[947][85191380] = { mnID = 1957, name = DUNGEON_FLOOR_SUNWELLPLATEAU0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true}
                    nodes[947][81018047] = { mnID = 1430, name = L["Karazhan"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true}
                    nodes[947][68405458] = { id = 75, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true} -- Baradin Hold
                    nodes[947][85356139] = { id = 72, name ="", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true} -- Bastion
                end


            -- Dungeons
                if self.db.profile.showAzerothDungeons then
                    nodes[947][83765864] = { id = 71, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = true} -- Grim Batol
                    nodes[947][65466365] = { id = 65, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "80-85]", type = "Dungeon", showInZone = true} -- Throne of Tides
                    nodes[947][79228343] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Dungeon", showInZone = true} -- Zul Gurub
                    nodes[947][73374686] = { id = 64, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = true}
				    nodes[947][82004187] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
				    nodes[947][78303707] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = true}
				    nodes[947][84213577] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-52]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
                    nodes[947][84963620] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true}
                    nodes[947][84707844] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true}
				    nodes[947][83226496] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
				    nodes[947][84466699] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true}
                    nodes[947][75476237] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = true}
                    nodes[947][73378066] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true}
                    nodes[947][88033227] = { mnID = 1942, name = DUNGEON_FLOOR_ZULAMAN1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = true}
                    nodes[947][86921324] = { mnID = 1957, name = L["Magisters' Terrace"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = true}
                end

            -- Multi

                if self.db.profile.showAzerothMultiple then
				    nodes[947][79047087] = { id = { 73 }, mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80-85]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true}
                end

            -- Blizz POIS

                if self.db.profile.activate.RemoveBlizzPOIs then

                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        nodes[947][75714169] = { mnID = 1420, name = "", type = "HIcon", showInZone = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Silvermoon City"] }
                        nodes[947][86242303] = { mnID = 1941, name = "", type = "HIcon", showInZone = true, TransportName = L["Silvermoon City"] .. " - " .. FACTION_HORDE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Undercity"] .. "\n" .. " => " .. L["Blasted Lands"]  }
                    end
        
                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        nodes[947][78426182] = { mnID = 1426, name = "", type = "AIcon", showInZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] } -- Transport to Ironforge Carriage 
                        nodes[947][75227327] = { mnID = 1429, name = "", type = "AIcon", showInZone = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. "\n" ..  CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
                    end

                end

            -- Dungeons and not Blizz for Stockade

                if self.db.profile.showAzerothDungeons and not self.db.profile.activate.RemoveBlizzPOIs then
                
                    if self.db.profile.showAzerothDungeons then
                        nodes[947][75227327] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true}
                    end

                end


            -- Zeppelin
                if self.db.profile.showAzerothZeppelins then   

                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        nodes[947][75813873] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Durotar"] }
                        nodes[947][76218472] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0.. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                    end

                end


            -- Azeroth Eastern Kingdom Transport and not RemoveBlizzPOIs
                if self.db.profile.showAzerothTransport and not self.db.profile.activate.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        nodes[947][78486163] = { mnID = 1455, name = "", type = "Carriage", showInZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                        nodes[947][75537419] = { mnID = 1429, name = "", type = "Carriage", showInZone = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 
                    end

                end


            -- Ships
                if self.db.profile.showAzerothShips then
                    nodes[947][75479082] = { mnID = 1434, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
                    
                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        nodes[947][78305794] = { mnID = 1437, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. L["Theramore Isle"] .. "\n" .. " => " .. L["Howling Fjord"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                    end

                end


            -- Portals
                if self.db.profile.showContinentPortals then
                    nodes[947][83478343] = { mnID = 1419, name = "", type = "Portal", showInZone = true, TransportName = SPLASH_BASE_90_RIGHT_TITLE .. " => " .. L["Hellfire Peninsula"] }
                end

            end -- if self.db.profile.showAzerothEasternKingdom then


        --############################
        --##### Azeroth Northrend ####
        --############################
            if self.db.profile.showAzerothNorthrend then
    
            -- Azeroth Northrend Dungeons
                if self.db.profile.showAzerothDungeons then
                    nodes[947][63033042] = { showInZone = true, mnID = 117, name ="", dnID = L["Utgarde Pinnacle"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. L["Utgarde Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70-72]", type = "Dungeon" , type = "Dungeon" } -- Utgarde Pinnacle 
                    nodes[947][56130604] = { showInZone = true, mnID = 120, name = DUNGEON_FLOOR_HALLSOFORIGINATION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Halls of Lightning 
                    nodes[947][54160733] = { showInZone = true, mnID = 120, name = DUNGEON_FLOOR_ULDUAR771 .. " " .. "[" .. GARRISON_TIER .. ": " .. "77-79]", type = "Dungeon" } -- Halls of Stone 
                    nodes[947][57121952] = { showInZone = true, mnID = 121, name = L["Drak'Tharon Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "74-76]", type = "Dungeon" } -- Drak'Tharon Keep 
                    nodes[947][61801195] = { showInZone = true, mnID = 121, name = DUNGEON_FLOOR_GUNDRAK1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "76-78]", type = "Dungeon" } -- Gundrak Left Entrance 
                    nodes[947][62541398] = { showInZone = true, mnID = 121, name = DUNGEON_FLOOR_GUNDRAK1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "76-78]", type = "Dungeon" } -- Gundrak Right Entrance 
                    nodes[947][52321712] = { showInZone = true, mnID = 127, name = DUNGEON_FLOOR_VIOLETHOLD1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "75-77]", type = "Dungeon" } -- Violet Hold
                    nodes[947][48751767] = { showInZone = true, mnID = 118, name = "", dnID = DUNGEON_FLOOR_THEFORGEOFSOULS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HALLSOFREFLECTION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_PITOFSARON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
                    nodes[947][48752248] = { showInZone = true, mnID = 115, name = "", dnID = DUNGEON_FLOOR_AHNKAHET1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "73-75]" .. "\n" .. L["Azjol-Nerub"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "72-74]", type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub 
                end
        
        
            -- Azeroth Northrend Raids
                if self.db.profile.showAzerothRaids then
                    nodes[947][55212303] = { showInZone = true, mnID = 115, name = L["Naxxramas"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Naxxramas 
                    nodes[947][48441601] = { showInZone = true, mnID = 118, name = DUNGEON_FLOOR_ICECROWNCITADELDEATHKNIGHT3 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Icecrown Citadel 
                    nodes[947][55090456] = { showInZone = true, mnID = 120, name = L["Ulduar"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]",type = "Raid" } -- Ulduar
                    nodes[947][46711694] = { showInZone = true, mnID = 123, name = DUNGEON_FLOOR_VAULTOFARCHAVON1  .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Vault of Archavon
                    nodes[947][52382340] = { showInZone = true, mnID = 115, name = "", dnID = DUNGEON_FLOOR_THEOBSIDIANSANCTUM1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. L["The Ruby Sanctum"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Ruby Sanctum, The Obsidian Sanctum 
                    nodes[947][38222229] = { showInZone = true, mnID = 114, name = "", dnID = DUNGEON_FLOOR_THEEYEOFETERNITY1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Eye of Eternity, The Nexus, The Oculus
                    nodes[947][51390770] = { showInZone = true, mnID = 118, name = "", dnID = L["Trial of the Crusader"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Trial of the Crusader, Trial of the Champion 
                end
        
        
            -- Azeroth Northrend Multiple
                if self.db.profile.showAzerothMultiple then
                    nodes[947][48752248] = { showInZone = true, mnID = 115, name = "", dnID = DUNGEON_FLOOR_AHNKAHET1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "73-75]" .. "\n" .. L["Azjol-Nerub"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "72-74]", type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub        
                    nodes[947][48751767] = { showInZone = true, mnID = 118, name = "", dnID = DUNGEON_FLOOR_THEFORGEOFSOULS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HALLSOFREFLECTION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_PITOFSARON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
                    nodes[947][51390770] = { showInZone = true, mnID = 118, name = "", dnID = L["Trial of the Champion"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. L["Trial of the Crusader"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "MultipleM" } -- Trial of the Crusader, Trial of the Champion 
                    nodes[947][38222229] = { showInZone = true, mnID = 114, name = "", dnID = DUNGEON_FLOOR_THEEYEOFETERNITY1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. DUNGEON_FLOOR_THENEXUS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "71-73]" .. "\n" .. L["The Oculus"]  .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
                    nodes[947][52382340] = { showInZone = true, mnID = 115, name = "", dnID = DUNGEON_FLOOR_THEOBSIDIANSANCTUM1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. L["The Ruby Sanctum"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "MultipleR" } -- The Ruby Sanctum, The Obsidian Sanctum 
                end
        
        
            -- Azeroth Northrend Portals
                if self.db.profile.showAzerothPortals then
                    nodes[947][47211823] = { mnID = 123, name = "", type = "Portal", showInZone = true, TransportName = L["Wintergrasp"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- LakeWintergrasp to Dalaran Portal
                    nodes[947][51391601] = { mnID = 125, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_DALARANCITY1 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0  .. "\n" .. " => " .. L["Stormwind"] } -- Portal from Old Dalaran to Orgrimmar and Stormwind
                end
    
            -- Azeroth Northrend Zeppelins
                if self.db.profile.showAzerothZeppelins then
        
                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        nodes[947][65542832] = { mnID = 117, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Howling Fjord"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] } -- Zeppelin from Borean Tundra to Ogrimmar
                        nodes[947][40562525] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, TransportName = POSTMASTER_LETTER_WARSONGHOLD .. " " .. L["Zeppelin"] .. "\n" .. " => " .. L["Durotar"] } -- Zeppelin from Borean Tundra to Ogrimmar
                    end

                end
        
        
            -- Azeroth Northrend Ships
                if self.db.profile.showAzerothShips then
                    nodes[947][57823190] = { mnID = 117, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_KAMAGUA .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
                    nodes[947][51522635] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Kamagua to Moaki
                    nodes[947][50282635] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_KAMAGUA .. "\n" .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Kamagua
                    nodes[947][44872599] = { mnID = 114, name = "", type = "Ship", showInZone = true, TransportName = L["Borean Tundra"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki
                    
                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        nodes[947][43022728] = { mnID = 114, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_VALIANCEKEEP .. " " ..  L["Ship"] .. "\n" .. " => " .. L["Stormwind"] } -- Ship from Borean Tundra to Stormwind
                        nodes[947][63463227] = { mnID = 117, name = "", type = "AShip", showInZone = true, TransportName = L["Howling Fjord"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Howling Fjord to Wetlands
                    end

                end

            end -- if self.db.profile.showAzerothNorthrend then

        end -- if db.activate.Azeroth then
    end -- if not db.activate.HideMapNote then
end -- function ns.LoadCataWorldMapInfo(self)