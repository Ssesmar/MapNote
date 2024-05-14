local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadCataMiniMapInfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

    --#####################################################################################################
    --##########################        function to hide all minimap below         ##########################
    --#####################################################################################################
    if not db.show.HideMapNote then


    --##################################################################################################
    --####################################         MiniMap         ###################################
    --##################################################################################################
		if db.show.MiniMap then
            
            
        --###################
        --##### Kalimdor ####
        --###################
            
			if self.db.profile.showMiniMapKalimdor then


            -- Raids
                if self.db.profile.showMiniMapRaids then
                    minimap[198][47167809] = { mnID = 198, name = DUNGEON_FLOOR_FIRELANDS0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Firelands
                    minimap[249][38258048] = { id = 74, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of the Four Winds
                    minimap[1451][24228729] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    				minimap[1451][36489385] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1445][52877752] = { mnID = 1445, name = DUNGEON_FLOOR_ONYXIASLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[327][46900756] = { mnID = 1451, name = L["Temple of Ahn'Qiraj"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[327][58761412] = { mnID = 1451, name = DUNGEON_FLOOR_RUINSOFAHNQIRAJ1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][57055860] = { mnID = 1446, name = DUNGEON_FLOOR_DRAGONBLIGHTCHROMIESCENARIO4 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][61685175] = { mnID = 1446, name = "Dragonsoul" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][59475228] = { mnID = 1446, name = DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                end

            -- Dungeons
                if self.db.profile.showMiniMapDungeons then
                    minimap[86][69844921] = { mnID = 86, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[207][47465196] = { id = 67, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "81-85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stonecore
                    minimap[249][60536425] = { id = 69, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Lost City of Tol'Vir
                    minimap[249][71515208] = { id = 70, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Origination
                    minimap[249][76688430] = { id = 68, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "81-85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Vortex Pinnacle
                    minimap[1440][13961306] = { mnID = 1440, name = L["Blackfathom Deeps"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "24-32]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1444][60133119] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1444][76883670] = { mnID = 1444, name = L["Dire Maul"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1443][28986219] = { mnID = 1443, name = DUNGEON_FLOOR_MARAUDON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-55]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1441][41412940] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENDOWNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "37-46]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[199][40859457] = { mnID = 1413, name = DUNGEON_FLOOR_RAZORFENKRAUL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1413][45973633] = { mnID = 1413, name = DUNGEON_FLOOR_WAILINGCAVERNS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-24]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][39121973] = { mnID = 1446, name = DUNGEON_FLOOR_ZULFARRAK .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-56", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "35", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1454][55125124] = { mnID = 1454, name = DUNGEON_FLOOR_RAGEFIRE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "13-18]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][58576063] = { mnID = 1446, name = DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "25", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1446][57105594] = { mnID = 1446, name = L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
    			    minimap[1446][60406015] = { mnID = 1446, name = L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "8", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][62835245] = { mnID = 1446, name = DUNGEON_FLOOR_HOUROFTWILIGHT0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][60895232] = { mnID = 1446, name = "Endtime" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }

                end

            -- Multi
                if self.db.profile.showMiniMapMultiple then
                    minimap[1446][64774996] = { mnID = 1446, name = "", dnID = DUNGEON_FLOOR_DRAGONBLIGHTCHROMIESCENARIO4 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. DUNGEON_FLOOR_COTMOUNTHYJAL1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_COTTHEBLACKMORASS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. L["Old Hillsbrad Foothills"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "66-68]" .. "\n" .. L["The Culling of Stratholme"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1446][60485409] = { mnID = 1446, name = "", dnID = "Dragonsoul" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. DUNGEON_FLOOR_HOUROFTWILIGHT0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]" .. "\n" .. "Endtime" .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false }

                end

            -- Blizz Pois
                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1438][31334778] = { mnID = 1457, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"]}
                        minimap[1943][24734852] = { mnID = 1947, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] }
                        minimap[1943][34034427] = { mnID = 1947, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] }
                        minimap[1947][74635405] = { mnID = 1947, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE  .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] }
                    end

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1411][45600899] = { mnID = 1454, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_ORGRIMMAR0 .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Blasted Lands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. "\n" ..CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } 
                        minimap[1412][41112765] = { mnID = 1456, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } 
                    end

                end

            -- Zeppelin
                if self.db.profile.showMiniMapZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1454][52175279] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] }
                        minimap[1454][50905566] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        minimap[1454][44696222] = { mnID = 114, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD }
                        minimap[1454][42946497] = { mnID = 1456, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. L["Thunder Bluff"] }
                        minimap[1456][13962525] = { mnID = 1454, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " - " .. FACTION_HORDE .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }
                    end
                    
                end

            -- Ships
                if self.db.profile.showMiniMapShips then
                    minimap[1413][70557332] = { mnID = 1434, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ratchet"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Booty Bay to Ratchet

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        --minimap[1439][33263980] = { mnID = 1438, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Teldrassil"] } -- Ship from Booty Bay to Ratchet
                        minimap[1438][51938943] = { mnID = 1943, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Azuremyst Isle"] } -- Ship from Booty Bay to Ratchet
                        minimap[1438][54969385] = { mnID = 1453, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Stormwind"] } -- Ship from Booty Bay to Ratchet
                        minimap[1445][71835683] = { mnID = 1437, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor
                        --minimap[1439][32414383] = { mnID = 1453, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Stormwind"] } --
                        --minimap[1439][30544094] = { mnID = 1943, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Azuremyst Isle"] } --
                        minimap[1943][20065421] = { mnID = 1439, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Rut'theran"] } --
                    end

                end


            -- Portals
                if self.db.profile.showZonePortals then
                    minimap[1457][36565040] = { mnID = 1438, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Teldrassil"] }
                    minimap[1438][54888788] = { mnID = 1457, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Darnassus"] }
                    minimap[1438][27725076] = { mnID = 1457, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Darnassus"] }

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1454][39725075] = { mnID = 198, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        minimap[86][44756784] = { mnID = 1419, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        minimap[1456][23121355] = { mnID = 1419, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        minimap[1454][47393928] = { mnID = 245, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                        minimap[1454][48863851] = { mnID = 249, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                        minimap[1454][50243944] = { mnID = 241, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                        minimap[1454][51203832] = { mnID = 198, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        minimap[1454][50863628] = { mnID = 207, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                        minimap[1454][49203647] = { mnID = 203, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        minimap[1454][47226139] = { mnID = 1458, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                    end

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1457][40568164] = { mnID = 1419, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        minimap[1438][30935458] = { mnID = 1457, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }         
                        minimap[1947][48196282] = { mnID = 1453, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Stormwind"] }
                    end

                end

            end -- if self.db.profile.showMiniMapKalimdor then


        --##########################
        --##### Eastern Kingdom ####
        --##########################

            if self.db.profile.showMiniMapEasternKingdom then


            -- Raids            
                if self.db.profile.showMiniMapRaids then
                    minimap[241][34017786] = { id = 72, name ="", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Bastion of Twilight
				    minimap[1428][20663704] = { mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1957][44134538] = { mnID = 1957, name = DUNGEON_FLOOR_SUNWELLPLATEAU0 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1430][46847438] = { mnID = 1430, name = L["Karazhan"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1942][82156413] = { mnID = 1942, name = DUNGEON_FLOOR_ZULAMAN1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[244][46204766] = { id = 75, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "85]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                end

            -- Dungeons
                if self.db.profile.showMiniMapDungeons then
                    minimap[203][48994229] = { id = 65, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "80-85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of the Tides
                    minimap[1434][71883274] = { mnID = 1434, name = DUNGEON_FLOOR_ZULGURUB1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[241][19155399] = { id = 71, name = "", dnID = "[" .. GARRISON_TIER .. ": " .. "84-85]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Grim Batol
                    minimap[1421][44746773] = { mnID = 1421, name = L["Shadowfang Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "18-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "14", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1422][68887290] = { mnID = 1422, name = L["Scholomance"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "58-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1420][82413334] = { mnID = 1420, name = DUNGEON_FLOOR_TIRISFAL13 .. " " .. "[" .. GARRISON_TIER .. ": " .. "26-45]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "21", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1423][27591150] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "42-52]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1423][43401925] = { mnID = 1423, name = DUNGEON_FLOOR_COTSTRATHOLME1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "46-56]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "48", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1435][69585363] = { mnID = 1435, name = DUNGEON_FLOOR_THETEMPLEOFATALHAKKAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "50-60]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "45", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1418][41651150] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1418][58523704] = { mnID = 1418, name = DUNGEON_FLOOR_BADLANDS18 .. " " .. "[" .. GARRISON_TIER .. ": " .. "41-51]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "30", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1426][31093775] = { mnID = 1426, name = DUNGEON_FLOOR_DUNMOROGH10 .. " " .. "[" .. GARRISON_TIER .. ": " .. "29-38]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "19", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1436][42407161] = { mnID = 1436, name = DUNGEON_FLOOR_THEDEADMINES1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "17-26]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "10", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1453][50356644] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    minimap[1957][61243079] = { mnID = 1957, name = L["Magisters' Terrace"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "70", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                end

            -- Multi
                if self.db.profile.showMiniMapMultiple then
                    minimap[1428][20663704] = { id = { 73 }, mnID = 1428, name = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80-85]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
				    minimap[1427][34818514] = { mnID = 1427, name = "", dnID = DUNGEON_FLOOR_MOLTENCORE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES15 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60+]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES14 .. " " .. "[" .. GARRISON_TIER .. ": " .. "55-60]" .. "\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16 .. " " .. "[" .. GARRISON_TIER .. ": " .. "52-60]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                end

            -- Blizz POIS
                if self.db.profile.show.RemoveBlizzPOIs then

                    if self.faction == "Horde" or db.show.EnemyFaction then
                      minimap[1420][61806939] = { mnID = 1458, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE }
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                      minimap[1426][59573083] = { mnID = 1455, name = "", type = "AIcon", showInMiniMap = true, hideOnMinimap = false, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Blasted Lands"] } -- Transport to Ironforge Carriage 
                      minimap[1429][24793263] = { mnID = 1453, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. "\n" ..  CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
                    end

                end

            -- Dungeons and not Blizz for Stockade
                if self.db.profile.showMiniMapDungeons and not self.db.profile.show.RemoveBlizzPOIs then
                
                    if self.db.profile.showMiniMapDungeons then
                        minimap[1429][24793263] = { mnID = 1453, name = DUNGEON_FLOOR_THESTOCKADE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "22-30]", dnID = REQUIRES_LABEL .. " " .. MINIMUM .. " " .. GARRISON_TIER .. " " .. "15", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
                    end
                end

            -- Zeppelin
                if self.db.profile.showMiniMapZeppelins then   

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[224][42073346] = { mnID = 1434, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"]}
                        minimap[1420][58845864] = { mnID = 117, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Howling Fjord"] }
                        minimap[1420][60565871] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }
                        minimap[1420][62025913] = { mnID = 1415, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Tirisfal Glades"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"]}
                        minimap[1434][37515098] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        minimap[1434][37035237] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 }
                    end

                end

            -- MiniMap Eastern Kingdom Transport and not RemoveBlizzPOIs
                if self.db.profile.showMiniMapTransport then

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1455][73375055] = { mnID = 1455, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Stormwind"] } -- Transport to Ironforge Carriage 
                        minimap[1453][60941195] = { mnID = 1453, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Stormwind"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 
                    end

                end

            -- Ships
                if self.db.profile.showMiniMapShips then
                    minimap[210][38556688] = { mnID = 1413, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
                    minimap[224][36427571] = { mnID = 1413, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1437][04896341] = { mnID = 1445, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Theramore Isle"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                        minimap[1437][04415697] = { mnID = 117, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = POSTMASTER_LETTER_WETLANDS .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Howling Fjord"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
                        minimap[1453][20675628] = { mnID = 1439, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. L["Auberdine"] } --
                        minimap[1453][16732506] = { mnID = 114, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } --
                    end

                end


            --Eastern Kingdom Portals
                if self.db.profile.showZonePortals then
                    minimap[1419][54885482] = { mnID = 1944, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = SPLASH_BASE_90_RIGHT_TITLE .. " => " .. L["Hellfire Peninsula"] }

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1420][59526699] = { mnID = 1954, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
                        minimap[1458][55011129] = { mnID = 1954, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] .. "\n" .. "(" .. DUNGEON_FLOOR_GILNEAS3 .. ")" } -- Portal to Silvermoon from Tirisfal
                        minimap[1954][49401484] = { mnID = 1458, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Undercity"] } -- Portal to Undercity
                        minimap[1954][58412106] = { mnID = 1458, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] }
                        minimap[1458][85191687] = { mnID = 1419, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } -- Portal to Silvermoon 
                    end

                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1453][82512804] = { mnID = 198, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        minimap[1453][18472650] = { mnID = 114, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- 
                        minimap[1453][22575571] = { mnID = 114, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- 
                        minimap[1453][73221836] = { mnID = 245, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
                        minimap[1453][75232055] = { mnID = 249, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
                        minimap[1453][75351649] = { mnID = 241, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
                        minimap[1453][76211869] = { mnID = 198, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
                        minimap[1453][73171966] = { mnID = 207, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
                        minimap[1453][73301687] = { mnID = 203, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
                        minimap[1453][48838705] = { mnID = 1458, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } 
                        minimap[1455][27030696] = { mnID = 1458, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Blasted Lands"] } 
                    end
                
                end

            end -- if self.db.profile.showMiniMapEasternKingdom then


        --###################
        --##### Outland ####
        --###################
            
            if self.db.profile.showZoneOutland then
    
            -- Outland Dungeons
                if self.db.profile.showZoneDungeons then
                    minimap[1952][34306560] = { mnID = 1952, name = L["Auchenai Crypts"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "65-67]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Auchenai Crypts 
                    minimap[1952][39705770] = { mnID = 1952, name = DUNGEON_FLOOR_MANATOMBS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "64-66]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mana-Tombs 
                    minimap[1952][44906560] = { mnID = 1952, name = L["Sethekk Halls"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "67-69]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sethekk Halls 
                    minimap[1952][39607360] = { mnID = 1952, name = DUNGEON_FLOOR_SHADOWLABYRINTH1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "69-70]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shadow Labyrinth 
                    minimap[1953][71705500] = { mnID = 1953, name = DUNGEON_FLOOR_THEBOTANICA1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Botanica 
                    minimap[1953][70606980] = { mnID = 1953, name = DUNGEON_FLOOR_THEMECHANAR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Mechanar  
                    minimap[1953][74405770] = { mnID = 1953, name = L["The Arcatraz"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Arcatraz
                    minimap[1944][45985183] = { mnID = 1944, name = DUNGEON_FLOOR_THEBLOODFURNACE1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "61-63]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blood Furnace 
                    minimap[1944][47575360] = { mnID = 1944, name = DUNGEON_FLOOR_HELLFIRERAMPARTS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "60-62]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hellfire Ramoarts
                    minimap[1944][47025203] = { mnID = 1944, name = DUNGEON_FLOOR_THESHATTEREDHALLS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "69-70]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Shattered Halls  
                    minimap[1946][48903570] = { mnID = 1946, name = DUNGEON_FLOOR_THESLAVEPENS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "62-64]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Arcatraz
                    minimap[1946][50303330] = { mnID = 1946, name = DUNGEON_FLOOR_THESTEAMVAULT1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "68-70]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blood Furnace 
                    minimap[1946][54203450] = { mnID = 1946, name = DUNGEON_FLOOR_THEUNDERBOG1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "63-65]", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hellfire Ramoarts
                end
            
            -- Outland Raids
                if self.db.profile.showZoneRaids then
                    minimap[1953][73806380] = { mnID = 1953, name = DUNGEON_FLOOR_TEMPESTKEEP1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70-72]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Eye  
                    minimap[1948][71004660] = { mnID = 1948, name = L["Black Temple"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Black Temple 
                    minimap[1949][69302370] = { mnID = 1949, name = DUNGEON_FLOOR_GRUULSLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gruul's Lairend
                    minimap[1944][46555286] = { mnID = 1944, name = DUNGEON_FLOOR_MAGTHERIDONSLAIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
                    minimap[1946][51903280] = { mnID = 1946, name = DUNGEON_FLOOR_COILFANGRESERVOIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]", type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Shattered Halls  
                end
            
            
            -- Outland Multiple
                if self.db.profile.showZoneMultiple then
                    minimap[1946][50104095] = { mnID = 1946, name = "", dnID = DUNGEON_FLOOR_COILFANGRESERVOIR1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "70+]" .. "\n" .. DUNGEON_FLOOR_THESTEAMVAULT1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "68-70]" .. "\n" .. DUNGEON_FLOOR_THESLAVEPENS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "62-64]" .. "\n" .. DUNGEON_FLOOR_THEUNDERBOG1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "63-65]", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
                end
            
            -- Outland Portals
                if self.db.profile.showZonePortals then
                    minimap[1952][29602266] = { mnID = 1955, name = "", type = "Portal", TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Isle of Quel'Danas"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Shattrath to Orgrimmar
                    minimap[1955][48624205] = { mnID = 1957, name = "", type = "Portal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" ..  "\n" .. " => " .. L["Isle of Quel'Danas"] , showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Shattrath to Orgrimmar

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[1945][69025178] = { mnID = 1454, name = "", type = "HPortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0, showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Orgrimmar 
                        minimap[1955][52185288] = { mnID = 1454, name = "", type = "HPortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 .. "\n" .. " => " .. L["Undercity"] .. "\n" .. " => " .. L["Thunder Bluff"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Orgrimmar 
                        minimap[1955][59214836] = { mnID = 1954, name = "", type = "HPortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Silvermoon City"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Orgrimmar 
                        minimap[1944][88574770] = { mnID = 1454, name = "", type = "HPortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0, showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Orgrimmar 
                    end
            
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[1945][68905259] = { mnID = 1453,  name = "" , type = "APortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Stormwind
                        minimap[1955][55763666] = { mnID = 1453,  name = "" , type = "APortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. " => " .. L["Darnassus"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Stormwind
                        minimap[1955][59504662] = { mnID = 1947,  name = "" , type = "APortal", TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Exodar"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Stormwind
                        minimap[1944][88615281] = { mnID = 1453,  name = "" , type = "APortal", TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Stormwind"], showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Hellfire to Stormwind                   
                    end

                end
        
            end -- if self.db.profile.showZoneOutland then


        --##############################
        --##### Continent Northrend ####
        --##############################
            if self.db.profile.showZoneNorthrend then


            -- Northrend Dungeon
                if self.db.profile.showZoneDungeons then
                    minimap[117][57804981] = { mnID = 117, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = L["Utgarde Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "70-72]", type = "Dungeon" } -- Utgarde Keep, at doorway entrance 
                    minimap[117][57064649] = { mnID = 117, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = L["Utgarde Pinnacle"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Utgarde Pinnacle 
                    minimap[120][45362137] = { mnID = 120, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_HALLSOFORIGINATION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Halls of Lightning 
                    minimap[120][39452672] = { mnID = 120, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_ULDUAR771 .. " " .. "[" .. GARRISON_TIER .. ": " .. "77-79]", type = "Dungeon" } -- Halls of Stone 
                    minimap[121][28378694] = { mnID = 121, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = L["Drak'Tharon Keep"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "74-76]", type = "Dungeon" } -- Drak'Tharon Keep 
                    minimap[121][76022081] = { mnID = 121, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_GUNDRAK1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "76-78]", type = "Dungeon" } -- Gundrak Left Entrance 
                    minimap[121][81192876] = { mnID = 121, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_GUNDRAK1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "76-78]", type = "Dungeon" } -- Gundrak Right Entrance 
                    minimap[127][28003633] = { mnID = 127, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_VIOLETHOLD1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "75-77]", type = "Dungeon" } -- Violet Hold
                    minimap[125][66976828] = { mnID = 125, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_VIOLETHOLD1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "75-77]", type = "Dungeon" } -- Violet Hold
                    minimap[118][54359082] = { mnID = 118, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_THEFORGEOFSOULS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HALLSOFREFLECTION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_PITOFSARON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
                    minimap[115][28375147] = { mnID = 115, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_AHNKAHET1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "73-75]", type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub 
                    minimap[115][25905055] = { mnID = 115, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = L["Azjol-Nerub"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "72-74]", type = "Dungeon" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub 
                    minimap[118][74172026] = { mnID = 118, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = L["Trial of the Champion"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "Dungeon" } -- Trial of the Crusader, Trial of the Champion 
                end
          
            -- Northrend Raids
                if self.db.profile.showZoneRaids then
                    minimap[115][87355092] = { mnID = 115, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = L["Naxxramas"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Naxxramas 
                    minimap[118][53618694] = { mnID = 118, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_ICECROWNCITADELDEATHKNIGHT3 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Icecrown Citadel 
                    minimap[120][41291730] = { mnID = 120, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = L["Ulduar"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]",type = "Raid" } -- Ulduar
                    minimap[123][49911139] = { mnID = 123, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = DUNGEON_FLOOR_VAULTOFARCHAVON1  .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Vault of Archavon
                    minimap[115][61355259] = { mnID = 115, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = L["The Ruby Sanctum"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Ruby Sanctum, The Obsidian Sanctum 
                    minimap[115][60025701] = { mnID = 115, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_THEOBSIDIANSANCTUM1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Ruby Sanctum, The Obsidian Sanctum 
                    minimap[114][27502635] = { mnID = 114, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_THEEYEOFETERNITY1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- The Eye of Eternity, The Nexus, The Oculus
                    minimap[118][75162155] = { mnID = 118, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = L["Trial of the Crusader"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "Raid" } -- Trial of the Crusader, Trial of the Champion 
                end
          
            -- Northrend Multiple
                if self.db.profile.showZoneMultiple then
                    minimap[118][54359082] = { mnID = 118, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_THEFORGEOFSOULS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_HALLSOFREFLECTION1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]" .. "\n" .. DUNGEON_FLOOR_PITOFSARON1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
                    minimap[114][27502635] = { mnID = 114, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_THEEYEOFETERNITY1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. DUNGEON_FLOOR_THENEXUS1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "71-73]" .. "\n" .. L["The Oculus"]  .. " " .. "[" .. GARRISON_TIER .. ": " .. "79-80]", type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
                    --minimap[115][60265443] = { mnID = 115, showInZone = false, hideOnContinent = true, hideOnMinimap = false, name = "", dnID = DUNGEON_FLOOR_THEOBSIDIANSANCTUM1 .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]" .. "\n" .. L["The Ruby Sanctum"] .. " " .. "[" .. GARRISON_TIER .. ": " .. "80+]", type = "MultipleR" } -- The Ruby Sanctum, The Obsidian Sanctum 
                end

            -- Northrend Portal
                if self.db.profile.showZonePortals then
                    minimap[127][27744002] = { mnID = 125, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_DALARANCITY1 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0  .. "\n" .. " => " .. L["Stormwind"] } -- Portal from Old Dalaran to Orgrimmar and Stormwind
                    minimap[125][55814682] = { mnID = 127, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. BINDING_NAME_PITCHDOWN  } -- LakeWintergrasp to Dalaran Portal 
                    minimap[123][49111534] = { mnID = 125, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1  } -- LakeWintergrasp to Dalaran Portal 
                    minimap[127][15724250] = { mnID = 127, name = BATTLE_PET_SOURCE_2 .. " " .. REQUIRES_LABEL .. " " .. "The Magical Kingdom of Dalaran", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1  } -- LakeWintergrasp to Dalaran Portal 

                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[125][55322545] = { mnID = 1454, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } -- Dalaran to Orgrimmar Portal 
                    end
        
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[114][59706926] = { mnID = 1453, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Stormwind"] } -- Portal to Stormwind from Borean Tundra
                        minimap[125][40796326] = { mnID = 1453,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. "\n" .. " => " .. L["Stormwind"] } -- Dalaran to Stormwind City Portal
                    end

                end
        
        
            -- Northrend Zeppelin
                if self.db.profile.showZoneZeppelins then 
        
                    if self.faction == "Horde" or db.show.EnemyFaction then
                        minimap[117][77612820] = { mnID = 1420, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. L["Tirisfal Glades"] .. " - " .. L["Undercity"] }
                        minimap[114][41365356] = { mnID = 1411, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. DUNGEON_FLOOR_ORGRIMMAR0 } -- Zeppelin from Borean Tundra to Ogrimmar
                    end

                end
        
        
            -- Northrend Ships
                if self.db.profile.showZoneShips then
                    minimap[117][23245780] = { mnID = 115, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
                    minimap[115][49977858] = { mnID = 117, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
                    minimap[115][47597897] = { mnID = 114, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe
                    minimap[114][79075395] = { mnID = 115, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki
    
                    if self.faction == "Alliance" or db.show.EnemyFaction then
                        minimap[114][60056959] = { mnID = 1453, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Stormwind"] } -- Ship to Stormwind from Borean Tundra
                        minimap[117][61366271] = { mnID = 1437, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship to Wetlands from Borean Tundra
                    end
    
                end

            end -- if self.db.profile.showZoneNorthrend then

        end -- if db.show.MiniMap then
    end -- if not db.show.HideMapNote then
end -- function ns.LoadCataMiniMapInfo(self)