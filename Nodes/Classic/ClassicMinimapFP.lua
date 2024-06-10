local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadClassicMinimapFPInfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

    --#####################################################################################################
    --##########################        function to hide all minimap below         ##########################
    --#####################################################################################################
    if not db.activate.HideMapNote then


        --##################################################################################################
        --####################################         Zone         ###################################
        --##################################################################################################
		if db.activate.MiniMap then
            
            
            --###################
            --##### Kalimdor ####
            --###################
            
			if self.db.profile.showMiniMapKalimdor then

                if self.db.profile.showMiniMapFP then
                    minimap[1413][63123717] = { mnID = 1413, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_NEUTRAL, type = "TravelL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Barrens
                    minimap[1449][45100578] = { mnID = 1449, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_NEUTRAL, type = "TravelL", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Un'Goro

                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        minimap[1452][60453633] = { mnID = 1452, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Winterquell
                        minimap[1450][32036661] = { mnID = 1450, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Moonglade
                        minimap[1448][34385393] = { mnID = 1448, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Felwood
                        minimap[1440][73226155] = { mnID = 1440, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ashenvale
                        minimap[1440][12203380] = { mnID = 1440, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ashenvale
                        minimap[1447][21914958] = { mnID = 1447, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Azshara
                        minimap[1442][45075986] = { mnID = 1442, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stonetalon Mountains
                        minimap[1413][51453038] = { mnID = 1413, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Barrens
                        minimap[1413][44385918] = { mnID = 1413, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Barrens
                        minimap[1412][38662736] = { mnID = 1412, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Thunder Bluff
                        minimap[1443][21607417] = { mnID = 1443, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Desolace
                        minimap[1444][75354447] = { mnID = 1444, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Feralas
                        minimap[1451][48663668] = { mnID = 1451, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Silithus
                        minimap[1445][35543187] = { mnID = 1445, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dustwood
                        minimap[1441][45114912] = { mnID = 1441, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Thousend Needles
                        minimap[1446][51542547] = { mnID = 1446, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Tanaris
                    end

                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        minimap[1452][62303664] = { mnID = 1452, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Winterquell
                        minimap[1450][48126741] = { mnID = 1450, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Moonglade
                        minimap[1439][36334568] = { mnID = 1439, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Auberdine
                        minimap[1448][62452417] = { mnID = 1448, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Felwood
                        minimap[1440][34314801] = { mnID = 1440, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ashenvale
                        minimap[1447][11887748] = { mnID = 1447, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Azshara
                        minimap[1442][36370707] = { mnID = 1442, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stonetalon Mountains
                        minimap[1443][64701048] = { mnID = 1443, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Desolace
                        minimap[1444][89374589] = { mnID = 1444, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Feralas
                        minimap[1444][30084314] = { mnID = 1444, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Feralas
                        minimap[1451][50523455] = { mnID = 1451, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Silithus
                        minimap[1445][67445131] = { mnID = 1445, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dustwood
                        minimap[1446][50922925] = { mnID = 1446, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Tanaris
                        minimap[1438][58369401] = { mnID = 1438, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Teldrassil
                    end

                end

            end


            --##########################
            --##### Eastern Kingdom ####
            --##########################
            
			if self.db.profile.showZoneEasternKingdom then

                if self.db.profile.showZoneFP then

                    if self.faction == "Horde" or db.activate.EnemyFaction then
                        minimap[1420][63157125] = { mnID = 1420, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Undercity
                        minimap[1423][80135696] = { mnID = 1423, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Eastern Plaquelands
                        minimap[1421][45594263] = { mnID = 1421, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Silverwood
                        minimap[1425][81668183] = { mnID = 1425, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hinterlands
                        minimap[1417][73123277] = { mnID = 1417, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Arathi Highlands
                        minimap[1424][60121855] = { mnID = 1424, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hillsb
                        minimap[1427][34773094] = { mnID = 1427, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sengende Schlucht
                        minimap[1418][03954472] = { mnID = 1418, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Badlands
                        minimap[1428][65622428] = { mnID = 1428, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Burning Stepps
                        minimap[1435][46145477] = { mnID = 1435, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Swamp of 
                        minimap[1434][32482942] = { mnID = 1434, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stranglethorn Vale
                        minimap[1434][26897704] = { mnID = 1434, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_HORDE, type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stranglethorn Vale
                    end

                    if self.faction == "Alliance" or db.activate.EnemyFaction then
                        minimap[1422][42898507] = { mnID = 1422, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- W-Plaquelands
                        minimap[1423][81625931] = { mnID = 1423, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Eastern Plaquelands
                        minimap[1425][11064616] = { mnID = 1425, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hinterlands
                        minimap[1417][45804610] = { mnID = 1417, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Arathi Highlands
                        minimap[1424][49215233] = { mnID = 1424, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hillsb
                        minimap[1437][09485985] = { mnID = 1437, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Wetlands
                        minimap[1432][33895091] = { mnID = 1432, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Loch Modan
                        minimap[1426][53373280] = { mnID = 1426, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dun Morogh
                        minimap[1427][37893078] = { mnID = 1427, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sengende Schlucht
                        minimap[1428][84256822] = { mnID = 1428, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Burning Stepps
                        minimap[1429][19663677] = { mnID = 1429, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Elwynn
                        minimap[1433][30585945] = { mnID = 1433, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Redridge Mountains
                        minimap[1431][77304433] = { mnID = 1431, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dämmerwood
                        minimap[1436][56595263] = { mnID = 1436, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Westfall
                        minimap[1419][65422436] = { mnID = 1419, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blasted Lands
                        minimap[1434][27397790] = { mnID = 1434, name = MINIMAP_TRACKING_FLIGHTMASTER .. " - " .. FACTION_ALLIANCE, type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stranglethorn Vale
                    end

                end

            end

        end

    end
end