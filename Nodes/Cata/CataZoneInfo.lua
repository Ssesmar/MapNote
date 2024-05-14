local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCataZoneInfo(self)
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
                    nodes[198][47167809] = { mnID = 198, name = DUNGEON_FLOOR_FIRELANDS0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Firelands
                    nodes[249][38258048] = { id = 74, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Throne of the Four Winds
                    nodes[1451][24228729] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    				nodes[1451][36489385] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1445][52877752] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[327][46900756] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true}
                    nodes[327][58761412] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true}
                end


            -- Dungeons

                if self.db.profile.showZoneDungeons then
                    nodes[86][69844921] = { mnID = 86, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[207][47465196] = { id = 67, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "81-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Stonecore
                    nodes[249][60536425] = { id = 69, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Lost City of Tol'Vir
                    nodes[249][71515208] = { id = 70, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Halls of Origination
                    nodes[249][76688430] = { id = 68, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "81-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Vortex Pinnacle
                    nodes[1440][13961306] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1444][60133119] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1444][76883670] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1443][28986219] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1441][41412940] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[199][40859457] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1413][38806902] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1446][39121973] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
    			    nodes[1454][55125124] = { mnID = 86, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "PassageDungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                end


             -- Multi
                if self.db.profile.showZoneMultiple then
                    nodes[1446][64774996] = { mnID = 1446, name = "", dnID = DUNGEON_FLOOR_DRAGONBLIGHTCHROMIESCENARIO4 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]" .. "\n" .. L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HOUROFTWILIGHT0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. "Endtime" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. "Dragonsoul" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "MultipleM", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                end


            -- Blizz Pois

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1438][31334778] = { mnID = 1457, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] }
                        nodes[1943][24734852] = { mnID = 1947, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] }
                        nodes[1943][34034427] = { mnID = 1947, name = "", type = "PassageLeftL", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] }
                    end

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1411][45600899] = { mnID = 1454, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Blasted Lands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. "\n" ..CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } 
                        nodes[1412][41112765] = { mnID = 1456, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } 
                    end

                end


            -- Zeppelin
                if self.db.profile.showZoneZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1454][52175279] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] }
                        nodes[1454][50905566] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        nodes[1454][44696222] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD }
                        nodes[1454][42946497] = { mnID = 1456, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Thunder Bluff"] }
                        nodes[1456][13962525] = { mnID = 1454, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }
                    end
                    
                end


            -- Ships
                if self.db.profile.showZoneShips then
                    nodes[1413][70557332] = { mnID = 1434, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Booty Bay to Ratchet
                
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        --nodes[1439][33263980] = { mnID = 1438, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Teldrassil"] } -- Ship from Booty Bay to Ratchet
                        nodes[1438][51938943] = { mnID = 1943, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Azuremyst Isle"] } -- Ship from Booty Bay to Ratchet
                        nodes[1438][54969385] = { mnID = 1453, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Stormwind"] } -- Ship from Booty Bay to Ratchet
                        nodes[1445][71835683] = { mnID = 1437, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor
                        --nodes[1439][32414383] = { mnID = 1453, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Stormwind"] } --
                        --nodes[1439][30544094] = { mnID = 1943, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Azuremyst Isle"] } --
                        nodes[1943][20065421] = { mnID = 1439, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Rut'theran"] } --
                    end

                end


            -- Portals
                if self.db.profile.showZonePortals then
                    nodes[1457][36565040] = { mnID = 1438, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Teldrassil"] }
                    nodes[1438][54888788] = { mnID = 1457, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Darnassus"] }
                    nodes[1438][27725076] = { mnID = 1457, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Darnassus"] }

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1454][39725075] = { mnID = 198, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        nodes[86][44756784] = { mnID = 1419, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        nodes[1456][23121355] = { mnID = 1419, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        nodes[1454][47393928] = { mnID = 245, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                        nodes[1454][48863851] = { mnID = 249, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                        nodes[1454][50243944] = { mnID = 241, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                        nodes[1454][51203832] = { mnID = 198, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        nodes[1454][50863628] = { mnID = 207, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                        nodes[1454][49203647] = { mnID = 203, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        nodes[1454][45856689] = { mnID = 86, name = "", type = "PassageHPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] .. "\n" .. "(" .. DUNGEON_FLOOR_ORGRIMMAR1 .. ")" } -- Portal from TB
                        nodes[1454][41966110] = { mnID = 86, name = "", type = "PassageHPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] .. "\n" .. "(" .. DUNGEON_FLOOR_ORGRIMMAR1 .. ")" } -- Portal from TB
                    end

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1457][40568164] = { mnID = 1419, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        nodes[1438][30935458] = { mnID = 1457, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        nodes[1947][48196282] = { mnID = 1453, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Stormwind"] }
                    end

                end

            end -- if self.db.profile.showZoneKalimdor then


        --##########################
        --##### Eastern Kingdom ####
        --##########################

            if self.db.profile.showZoneEasternKingdom then


            -- Raids            
                if self.db.profile.showZoneRaids then
                    nodes[241][34017786] = { id = 72, name ="", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Bastion of Twilight
				    nodes[1428][20663704] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1957][44134538] = { mnID = 1957, name = DUNGEON_FLOOR_SUNWELLPLATEAU0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1430][46847438] = { mnID = 1430, name = L["Karazhan"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1942][82156413] = { mnID = 1942, name = DUNGEON_FLOOR_ZULAMAN1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[244][46204766] = { id = 75, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                end


            -- Dungeons
                if self.db.profile.showZoneDungeons then
                    nodes[204][70772892] = { id = 65, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "80-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Throne of the Tides
                    nodes[203][48994229] = { id = 65, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "80-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Throne of the Tides
                    nodes[1434][71883274] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[224][61782260] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[241][19155399] = { id = 71, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Grim Batol
                    nodes[1421][44746773] = { mnID = 1421, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "18-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1422][68887290] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1420][82413334] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "26-45]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1423][27591150] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-52]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1423][43401925] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1435][69585363] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1418][41651150] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1418][58523704] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1426][31093775] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1436][42407161] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1453][50356644] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                    nodes[1957][61243079] = { mnID = 1957, name = L["Magisters' Terrace"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                end

            -- Multi    
                if self.db.profile.showZoneMultiple then
				    nodes[1428][20663704] = { id = { 73 }, mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80-85]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
				    nodes[1427][34818514] = { mnID = 1427, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = true, hideOnContinent = true, hideOnMinimap = true }
                end


            -- Blizz POIS

                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1941][56564002] = { mnID = 1954, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Silvermoon City"] .. " - " .. FACTION_HORDE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Undercity"] .. "\n" .. " => " .. L["Blasted Lands"] }
                        nodes[1420][61806939] = { mnID = 1458, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE }
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1426][59573083] = { mnID = 1455, name = "", type = "AIcon", showInZone = true, hideOnZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] } -- Transport to Ironforge Carriage 
                        nodes[1429][24793263] = { mnID = 1453, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. "\n" ..  CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
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
                        nodes[224][42073346] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"]}
                        nodes[1420][58845864] = { mnID = 117, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Howling Fjord"] }
                        nodes[1420][60565871] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }
                        nodes[1420][62025913] = { mnID = 1415, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"]}
                        nodes[1434][37515098] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        nodes[1434][37035237] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }
                    end

                end


            -- Zone Eastern Kingdom Transport and not RemoveBlizzPOIs
                if self.db.profile.showZoneTransport then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1455][73375055] = { mnID = 1453, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                        nodes[1453][66723356] = { mnID = 1455, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 
                    end

                end


            -- Ships
                if self.db.profile.showZoneShips then
                    nodes[210][38556688] = { mnID = 1413, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
                    nodes[224][36427571] = { mnID = 1413, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1437][04896341] = { mnID = 1445, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Theramore Isle"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                        nodes[1437][04415697] = { mnID = 117, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Howling Fjord"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                        nodes[1453][20675628] = { mnID = 1439, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. L["Rut'theran"] } --
                        nodes[1453][16732506] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } --
                    end

                end


            --Eastern Kingdom Portals
                if self.db.profile.showZonePortals then

                    nodes[1419][54885482] = { mnID = 1944, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = SPLASH_BASE_90_RIGHT_TITLE .. " => " .. L["Hellfire Peninsula"] }

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1420][59526699] = { mnID = 1954, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
                        nodes[1458][55011129] = { mnID = 1954, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] .. "\n" .. "(" .. DUNGEON_FLOOR_GILNEAS3 .. ")" } -- Portal to Silvermoon from Tirisfal
                        nodes[1458][85191687] = { mnID = 1419, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } -- Portal to Silvermoon 
                        nodes[1954][49401484] = { mnID = 1458, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Undercity"] } -- Portal to Undercity
                        nodes[1954][58412106] = { mnID = 1458, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } -- Portal from TB
                    end

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1453][82512804] = { mnID = 198, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        nodes[1453][18472650] = { mnID = 114, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- 
                        nodes[1453][22575571] = { mnID = 114, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- 
                        nodes[1453][73221836] = { mnID = 245, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                        nodes[1453][75232055] = { mnID = 249, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                        nodes[1453][75351649] = { mnID = 241, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                        nodes[1453][76211869] = { mnID = 198, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        nodes[1453][73171966] = { mnID = 207, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                        nodes[1453][73301687] = { mnID = 203, name = "", type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        nodes[1453][48838705] = { mnID = 1458, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } 
                        nodes[1455][27030696] = { mnID = 1458, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } 
                    end

                end

            end -- if self.db.profile.showZoneEasternKingdom then


        --###################
        --##### Outland ####
        --###################
            
            if self.db.profile.showZoneOutland then
    
            -- Outland Dungeons
                if self.db.profile.showZoneDungeons then
                    nodes[1952][34306560] = { mnID = 1952, name = L["Auchenai Crypts"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "65-67]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Auchenai Crypts 
                    nodes[1952][39705770] = { mnID = 1952, name = DUNGEON_FLOOR_MANATOMBS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "64-66]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Mana-Tombs 
                    nodes[1952][44906560] = { mnID = 1952, name = L["Sethekk Halls"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "67-69]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Sethekk Halls 
                    nodes[1952][39607360] = { mnID = 1952, name = DUNGEON_FLOOR_SHADOWLABYRINTH1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "69-70]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Shadow Labyrinth 
                    nodes[1953][71705500] = { mnID = 1953, name = DUNGEON_FLOOR_THEBOTANICA1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Botanica 
                    nodes[1953][70606980] = { mnID = 1953, name = DUNGEON_FLOOR_THEMECHANAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Mechanar  
                    nodes[1953][74405770] = { mnID = 1953, name = L["The Arcatraz"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Arcatraz
                    nodes[1944][45985183] = { mnID = 1944, name = DUNGEON_FLOOR_THEBLOODFURNACE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "61-63]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Blood Furnace 
                    nodes[1944][47575360] = { mnID = 1944, name = DUNGEON_FLOOR_HELLFIRERAMPARTS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60-62]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Hellfire Ramoarts
                    nodes[1944][47025203] = { mnID = 1944, name = DUNGEON_FLOOR_THESHATTEREDHALLS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "69-70]", type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Shattered Halls  
                end

            
            -- Outland Raids
                if self.db.profile.showZoneRaids then
                    nodes[1953][73806380] = { mnID = 1953, name = DUNGEON_FLOOR_TEMPESTKEEP1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70-72]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- The Eye  
                    nodes[1948][71004660] = { mnID = 1948, name = L["Black Temple"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Black Temple 
                    nodes[1949][69302370] = { mnID = 1949, name = DUNGEON_FLOOR_GRUULSLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Gruul's Lairend
                    nodes[1944][46555286] = { mnID = 1944, name = DUNGEON_FLOOR_MAGTHERIDONSLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
                end
            
            
                -- Outland Multiple
                if self.db.profile.showZoneMultiple then
                    nodes[1946][50104095] = { mnID = 1946, name = "", dnID = DUNGEON_FLOOR_COILFANGRESERVOIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_THESTEAMVAULT1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "68-70]" .. "\n" .. DUNGEON_FLOOR_THESLAVEPENS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "62-64]" .. "\n" .. DUNGEON_FLOOR_THEUNDERBOG1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "63-65]", type = "MultipleM", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
                end
            
            
                -- Outland Portals
                  if self.db.profile.showZonePortals then
                    nodes[1952][29602266] = { mnID = 1955, name = "", type = "Portal", TransportName = L["Shattrath City"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Undercity"] .. "\n" .. " => " .. L["Thunder Bluff"]  .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. " => " .. L["Darnassus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. "\n" .. " => " .. L["Isle of Quel'Danas"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Shattrath to Orgrimmar
                    nodes[1955][48624205] = { mnID = 1957, name = "", type = "Portal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" ..  "\n" .. " => " .. L["Isle of Quel'Danas"] , showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Shattrath to Orgrimmar

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[1945][69025178] = { mnID = 1454, name = "", type = "HPortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0, showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Orgrimmar 
                        nodes[1955][52185288] = { mnID = 1454, name = "", type = "HPortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Undercity"] .. "\n" .. " => " .. L["Thunder Bluff"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Orgrimmar 
                        nodes[1955][59214836] = { mnID = 1954, name = "", type = "HPortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Silvermoon City"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Orgrimmar 
                        nodes[1944][88574770] = { mnID = 1454, name = "", type = "HPortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0, showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Orgrimmar 
                    end
            
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[1945][68905259] = { mnID = 1453,  name = "" , type = "APortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Stormwind
                        nodes[1955][55763666] = { mnID = 1453,  name = "" , type = "APortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. " => " .. L["Darnassus"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Stormwind
                        nodes[1955][59504662] = { mnID = 1947,  name = "" , type = "APortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Exodar"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Stormwind
                        nodes[1944][88615281] = { mnID = 1453,  name = "" , type = "APortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"], showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Hellfire to Stormwind
                    end

                  end

              end -- if self.db.profile.showZoneOutland then


        --##############################
        --##### Continent Northrend ####
        --##############################
            if self.db.profile.showZoneNorthrend then


            -- Northrend Dungeon
                if self.db.profile.showZoneDungeons then
                    nodes[117][57804981] = { mnID = 117, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Utgarde Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70-72]", type = "Dungeon" } -- Utgarde Keep, at doorway entrance 
                    nodes[117][57064649] = { mnID = 117, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Utgarde Pinnacle"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Utgarde Pinnacle 
                    nodes[120][45362137] = { mnID = 120, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_HALLSOFORIGINATION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Halls of Lightning 
                    nodes[120][39452672] = { mnID = 120, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_ULDUAR771 .. " " .. "[" .. GARRISON_TIER .. ": " .. "77-79]", type = "Dungeon" } -- Halls of Stone 
                    nodes[121][28378694] = { mnID = 121, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Drak'Tharon Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "74-76]", type = "Dungeon" } -- Drak'Tharon Keep 
                    nodes[121][76022081] = { mnID = 121, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_GUNDRAK1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "76-78]", type = "Dungeon" } -- Gundrak Left Entrance 
                    nodes[121][81192876] = { mnID = 121, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_GUNDRAK1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "76-78]", type = "Dungeon" } -- Gundrak Right Entrance 
                    nodes[127][28003633] = { mnID = 125, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_VIOLETHOLD1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "75-77]", type = "Dungeon" } -- Violet Hold
                    nodes[125][66976828] = { mnID = 125, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_VIOLETHOLD1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "75-77]", type = "Dungeon" } -- Violet Hold
                    nodes[118][54359082] = { mnID = 118, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_THEFORGEOFSOULS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HALLSOFREFLECTION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_PITOFSARON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
                    nodes[115][28375147] = { mnID = 115, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_AHNKAHET1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "73-75]", type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub 
                    nodes[115][25905055] = { mnID = 115, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = L["Azjol-Nerub"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "72-74]", type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub 
                    nodes[118][74172026] = { mnID = 118, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = L["Trial of the Champion"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Trial of the Crusader, Trial of the Champion 
                end
          
                -- Northrend Raids
                if self.db.profile.showZoneRaids then
                    nodes[115][87355092] = { mnID = 115, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Naxxramas"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Naxxramas 
                    nodes[118][53618694] = { mnID = 118, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_ICECROWNCITADELDEATHKNIGHT3 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Icecrown Citadel 
                    nodes[120][41291730] = { mnID = 120, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Ulduar"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]",type = "Raid" } -- Ulduar
                    nodes[123][49911139] = { mnID = 123, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = DUNGEON_FLOOR_VAULTOFARCHAVON1  .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Vault of Archavon
                    nodes[115][61355259] = { mnID = 115, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = L["The Ruby Sanctum"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Ruby Sanctum, The Obsidian Sanctum 
                    nodes[115][60025701] = { mnID = 115, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_THEOBSIDIANSANCTUM1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Ruby Sanctum, The Obsidian Sanctum 
                    nodes[114][27502635] = { mnID = 114, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_THEEYEOFETERNITY1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Eye of Eternity, The Nexus, The Oculus
                    nodes[118][75162155] = { mnID = 118, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = L["Trial of the Crusader"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Trial of the Crusader, Trial of the Champion 
                end
          
            -- Northrend Multiple
                if self.db.profile.showZoneMultiple then
                    nodes[118][54359082] = { mnID = 118, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_THEFORGEOFSOULS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HALLSOFREFLECTION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_PITOFSARON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
                    nodes[114][27502635] = { mnID = 114, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_THEEYEOFETERNITY1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. DUNGEON_FLOOR_THENEXUS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "71-73]" .. "\n" .. L["The Oculus"]  .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
                    --nodes[115][60265443] = { mnID = 115, showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = "", dnID = DUNGEON_FLOOR_THEOBSIDIANSANCTUM1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. L["The Ruby Sanctum"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "MultipleR" } -- The Ruby Sanctum, The Obsidian Sanctum 
                end

            -- Northrend Portal
                if self.db.profile.showZonePortals then
                    nodes[127][27744002] = { mnID = 125, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = DUNGEON_FLOOR_DALARANCITY1 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0  .. "\n" .. " => " .. L["Stormwind"] } -- Portal from Old Dalaran to Orgrimmar and Stormwind
                    nodes[125][55814682] = { mnID = 127, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. BINDING_NAME_PITCHDOWN  } -- LakeWintergrasp to Dalaran Portal 
                    nodes[123][49111534] = { mnID = 125, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1  } -- LakeWintergrasp to Dalaran Portal 
                    nodes[127][15724250] = { mnID = 125, TransportName = BATTLE_PET_SOURCE_2 .. " " .. REQUIRES_LABEL .. " " .. "The Magical Kingdom of Dalaran" .. "\n" .. "\n" .. "Or \n \n => Find a mage to take you to Dalaran, then use the crystal in Dalaran to teleport down to Crystalsong Forest. \n You can then use the crystal under Dalaran permanently to return to Dalaran without having to complete the quest.", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1, showWWW = true, www = "https://www.wowhead.com/wotlk/quest=12791/the-magical-kingdom-of-dalaran"} -- LakeWintergrasp to Dalaran Portal 

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[125][55322545] = { mnID = 1454, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } -- Dalaran to Orgrimmar Portal 
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[125][40796326] = { mnID = 1453,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. L["Stormwind"] } -- Dalaran to Stormwind City Portal
                        nodes[114][59706926] = { mnID = 1453, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Stormwind"] } -- Portal to Stormwind from Borean Tundra
                    end

                end
        
            -- Northrend Zeppelin
                if self.db.profile.showZoneZeppelins then 
        
                    if self.faction == "Horde" or db.show.EnemyFaction then
                        nodes[117][77612820] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        nodes[114][41365356] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } -- Zeppelin from Borean Tundra to Ogrimmar
                    end
                end
        
            -- Northrend Ships
                if self.db.profile.showZoneShips then
                    nodes[117][23245780] = { mnID = 115, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
                    nodes[115][49977858] = { mnID = 117, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
                    nodes[115][47597897] = { mnID = 114, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe
                    nodes[114][79075395] = { mnID = 115, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        nodes[114][60056959] = { mnID = 1453, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Stormwind"] } -- Ship to Stormwind from Borean Tundra
                        nodes[117][61366271] = { mnID = 1437, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship to Wetlands from Borean Tundra
                    end

                end

            end -- if self.db.profile.showZoneNorthrend then

        end -- if db.show.ZoneMap then
    end -- if not db.show.HideMapNote then
end -- function ns.LoadCataZoneInfo(self)