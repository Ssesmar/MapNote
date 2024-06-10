local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadZoneMapNodesLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.activate.HideMapNote then

    
    --#####################################################################################################
    --################################         Continent / Zone Map        ################################
    --#####################################################################################################
    
      if db.activate.ZoneMap then
       
        --#############################
        --##### Continent Kalimdor ####
        --#############################
    
        if self.db.profile.showZoneKalimdor then

        -- Kalimdor Portals
          if self.db.profile.showZonePortals then

            nodes[57][26305072] = { mnID = 89, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Darnassus"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal To Teldrassil from Darnassus
            nodes[57][54998820] = { mnID = 89, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Darnassus"] } -- Portal To Darnassus from Teldrassil

            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[81][41614520] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Zandalar"] } -- Portal from Silithus to Zandalar
              nodes[71][65984960] = { mnID = 85, name = "", type = "HPortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Tanaris to Orgrimmar 
              nodes[74][58152676] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Tanaris to Orgrimmar 
            end
  
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[81][41614520] = { mnID = 1161, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal from Silithus to Boralus
              nodes[71][65984960] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Tanaris to Stormwind City 
              nodes[74][58942680] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Tanaris to Stormwind City 
            end
  
            
            if self.faction == "Horde" or db.activate.EnemyFaction then  
              nodes[7][36003600] = { mnID = 407, name = FACTION_HORDE .. " " .. L["Portal"] .. " => " .. CALENDAR_FILTER_DARKMOON, TransportName = "\n" .. REQUIRES_LABEL .. " " .. CALENDAR_FILTER_DARKMOON .. "\n" .. L["Starting on the first Sunday of each month for one week"], type = "DarkMoon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Mulgore Portal to the Darkmoon
              nodes[62][46243511] = { mnID = 862, name = L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from New Darkshore to Zandalar 
              nodes[207][50945311] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Deepholm
              nodes[198][63482447] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Hyjal
            end
  
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[57][26305072] = { mnID = 89, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portals"] .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. " => " .. L["Exodar"]  .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Teldrassil from Darnassus
              nodes[97][20235409] = { mnID = 57, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Rut'theran"] } -- Portal Exodar to Teldrassil
              nodes[62][53731873] = { mnID = 2239, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Bel'ameth, Amirdrassil"] } -- Portal from New Darkshore to Bel'ameth, Amirdrassil
              nodes[62][48023628] = { mnID = 1161, name = L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from New Darkshore to Zandalar
              nodes[198][62602315] = { mnID = 84,  name = "" , type = "APortalS", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Stormwind from Hyjal
              nodes[207][48525385] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Stormwind
              nodes[57][55039371] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Stormwind from Teldrassil
              nodes[57][52278948] = { mnID = 97, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Azuremyst Isle"] } -- Portal To Exodar from Teldrassil
            end
          end
    

        -- Kalimdor RemoveBlizzPOIs
          if db.activate.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[1][45810935] = { mnID = 85, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = ORGRIMMAR .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
              nodes[76][21288964] = { mnID = 85, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = ORGRIMMAR .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
              nodes[10][80450975] = { mnID = 85, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = ORGRIMMAR .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
            end

            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[97][27243965] = { mnID = 103, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal Exodar to Teldrassil
            end

          end


        --Kalimdor Zeppelins
          if self.db.profile.showZoneZeppelins then
            nodes[1][55941320] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Zeppelin from Orgrimmar to Waking Shores
            nodes[7][33422231] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
          end
    
    
        -- Kalimdor Ships
          if self.db.profile.showZoneShips then

            nodes[1][35217941] = { mnID = 210, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay Ship
            nodes[10][70237341] = { mnID = 210, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay Ship

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[463][71903797] = { mnID = 862, name = "", type = "HShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Zuldazar"] } -- Ship from Echo Isles to Zuldazar  
              nodes[1][72257893] = { mnID = 862, name = "", type = "HShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Zuldazar"] } -- Ship from Echo Isles to Zuldazar            
            end
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[70][71545615] = { mnID = 56, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Wetlands
            end
          end

        end
    
    
        --####################################
        --##### Continent Eastern Kingdom ####
        --####################################
    
        if self.db.profile.showZoneEasternKingdom then

        --Eastern Kingdom Portals
          if self.db.profile.showZonePortals then

            nodes[244][47135189] = { mnID = 85, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .."\n" .."\n" .. " => " .. ORGRIMMAR .. "\n" .. " " .. JUST_OR .. "\n" .. " => " .. STORMWIND } -- Portal Tol Orgrimmar or Stormwind from Baradinhold Tol Barad pvp Area
    
            if self.faction == "Horde" then
              nodes[17][55005418] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Blasted Lands to Warspear              
            end

            if self.faction == "Alliance" then
              nodes[17][55005418] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Blasted Lands to Stormshield
            end

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[18][62167276] = { mnID = 90, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portalroom from Dazar'alor
              nodes[17][72694917] = { mnID = 85, name = "" , type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Blasted Lands to Orgrimmar 
              nodes[18][60735867] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Tirisfal
              nodes[18][61905899] = { mnID = 50, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Portal to Stranglethorn from Tirisfal
              nodes[18][59085891] = { mnID = 117, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Howling Fjord"] } -- Portal to Howling Fjord from Tirisfal
              nodes[18][59416744] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
              nodes[2070][59506694] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506797] = { mnID = 50, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Portal to Stranglethorn from Tirisfal
              nodes[2070][60126689] = { mnID = 117, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Howling Fjord"] } -- Portal to Howling Fjord from Tirisfal
              nodes[2070][59406743] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
              nodes[50][37545100] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Grom'gol
              nodes[94][54552795] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
              nodes[94][51262623] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Ruins of Lordaeron from Silvermoon 
              nodes[14][27442938] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Zandalar"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" }
              nodes[245][56397967] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Tol Bard to Orgimmar  
              nodes[241][73595355] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[37][41786951] = { mnID = 407, name = FACTION_ALLIANCE .. " " .. L["Portal"] .. " => " .. CALENDAR_FILTER_DARKMOON, TransportName = "\n" .. REQUIRES_LABEL .. " " .. CALENDAR_FILTER_DARKMOON .. "\n" .. L["Starting on the first Sunday of each month for one week"], type = "DarkMoon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Elwynn Forest Portal to the Darkmoon
              nodes[14][22246515] = { mnID = 1161, name = "", type = "APortal", showInZone = true,  hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Boralus"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" } -- Portal from Arathi to Zandalar
              nodes[37][29592388] = { mnID = 84, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. L["Ironforge"] } -- Deeprun Stormwind to Ironforge
              nodes[37][33521611] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = STORMWIND .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } -- Portalroom from Stormwind
              nodes[37][15153165] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = STORMWIND .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] } -- Portalroom from Stormwind
              nodes[17][66382798] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal to Stormwind 
              nodes[245][75235887] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Tol Bard to Stormwind
              nodes[241][79447784] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Twilight Highlands to Stormwind   
            end
          end


        --Eastern Kingdom Portals without RemoveBlizzPOIs
          if self.db.profile.showZonePortals and not db.activate.RemoveBlizzPOIs then
            nodes[224][42233253] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Grom'gol
          end


        -- Azeroth Eastern Kingdom RemoveBlizzPOIs
          if db.activate.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[224][42073378] = { mnID = 50, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " " .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Transport from Stranglethorn Valley to Ogrimmar and Ruins of Lordaeron
              nodes[18][62167276] = { mnID = 90, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portalroom from Dazar'alor
              nodes[94][56593942] = { mnID = 110, name = "", type = "HIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Silvermoon City"] .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Orgrimmar, Ruins of Lordaeron from Silvermoon   
            end

            if self.faction == "Alliance" or db.activate.EnemyFaction then
                nodes[57][26305072] = { mnID = 89, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. " => " .. L["Exodar"]  .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Teldrassil from Darnassus
                nodes[27][59732929] = { mnID = 87, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. STORMWIND } -- Carriage To Stormwind
                nodes[37][32894742] = { mnID = 84, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = STORMWIND .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["The Waking Shores, Dragon Isles"] .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. " => " .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 }
            end
          end
    
        --Eastern Kingdom Zeppelins
          if self.db.profile.showZoneZeppelins then

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[50][36955279] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Ship from Booty Bay to Ratchet
            end
          end


          --Eastern Kingdom Zeppelins without RemoveBlizzPOIs
          if self.db.profile.showZonePortals and not db.activate.RemoveBlizzPOIs then
            nodes[224][41993471] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Ship from Booty Bay to Ratchet
          end

    
        --Eastern Kingdom Ships
          if self.db.profile.showZoneShips then
            
            nodes[224][36947582] = { mnID = 10, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet

            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[37][08722976] = { mnID = 1161, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ships"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n".. " => " .. L["The Waking Shores, Dragon Isles"] } -- Ship from Stormwind to Boralus
              nodes[37][07622435] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
              nodes[56][04175637] = { mnID = 117, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Howling Fjord"] } -- Ship from Wettlands to Howling Fjord
              nodes[56][06366226] = { mnID = 70, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Theramore Isle"] } -- Ship from Wettlands to Dustwallow Marsh
            end
          end
    
        end
    
    
        --############################
        --##### Continent Outland ####
        --############################
    
        if self.db.profile.showZoneOutland then

        -- Outland Portals
          if self.db.profile.showZonePortals then
              nodes[108][31332481] = { mnID = 111, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[100][88574770] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 
              nodes[100][89234945] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 
            end
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[100][88635281] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
              nodes[100][89215101] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
            end
          end
        end
    
    
        --##############################
        --##### Continent Northrend ####
        --##############################
    
        if self.db.profile.showZoneNorthrend then

        -- Northrend Portal
          if self.db.profile.showZonePortals then
            nodes[123][49111534] = { mnID = 125, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1  } -- LakeWintergrasp to Dalaran Portal 
            nodes[127][15724250] = { mnID = 125, TransportName = BATTLE_PET_SOURCE_2 .. " " .. REQUIRES_LABEL .. " " .. "The Magical Kingdom of Dalaran", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1, showWWW = true, www = "https://www.wowhead.com/wotlk/quest=12791/the-magical-kingdom-of-dalaran"} -- LakeWintergrasp to Dalaran Portal 

    
            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[127][31103140] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[127][26614271] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Dalaran to Stormwind City Portal
            end
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showZoneZeppelins then 
    
            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[114][41365356] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR  } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showZoneShips then
    
            nodes[117][23245780] = { mnID = 115, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
            nodes[115][49977858] = { mnID = 117, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
            nodes[115][47597897] = { mnID = 114, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe
            nodes[114][79075395] = { mnID = 115, name = "", type = "Ship", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki

            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[114][59636916] = { mnID = 84, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship to Stormwind from Borean Tundra
              nodes[117][61366271] = { mnID = 56, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship to Wetlands from Borean Tundra
            end

          end
        end
    
    
        --#############################
        --##### Continent Pandaria ####
        --#############################
    
        if self.db.profile.showZonePandaria then

        -- Pandaria Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[504][33223269] = { mnID = 388, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              nodes[371][28501401] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              nodes[379][85946249] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              nodes[388][50657339] = { mnID = 504, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to  Shado-Pan Garrison
              nodes[390][63371293] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Shrine of Two Moons to Orgrimmar
            end

            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[504][64707347] = { mnID = 388, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              nodes[371][46248517] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Jade Forest to STORMWIND
              nodes[388][49746867] = { mnID = 504, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to  Shado-Pan Garrison
              nodes[390][90596670] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind
              nodes[1530][90596670] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind
            end
          end
        end
    
    
        --############################
        --##### Continent Draenor ####
        --############################
    
        if self.db.profile.showZoneDraenor then
    
        --Draenor Garrison Transport
          if self.db.profile.showZoneTransport then
    
            if self.faction == "Horde" then
              nodes[543][58033444] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              nodes[543][58033444] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[534][61024735] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Vol'mar to Ashran
              nodes[525][51416484] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Garrison to Ashran
              nodes[588][45001476] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Garrison to Ashran (Ashran Zone)
              nodes[588][42911275] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[588][43848830] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Ashran to Stormwind
              nodes[539][32471561] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portal from Garison to Ashran
              nodes[588][38328897] = { mnID = 534, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. SPLASH_NEW_6_2_FEATURE1_TITLE } -- Portal from Ashran to Lion's Watch
              nodes[534][57426032] = { mnID = 622, name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ashran"] } -- Portal from Lion's Watch to (Ashran Zone)
            end
          end
        end
    
    
        --#################################
        --##### Continent Broken Isles ####
        --#################################
    
        if self.db.profile.showZoneBrokenIsles then

        --Broken Isles Portals
          if self.db.profile.showZonePortals then
            nodes[630][46674136] = { name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND} -- Portal to Orgrimmar from Azsuna
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[941][43092506] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Portal from Krokuun - Vindikaar to Stormwind
             end
          end
        end
    
    
        --#############################
        --##### Continent Zandalar ####
        --#############################
    
        if self.db.profile.showZoneZandalar then

        -- Zandalar Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[862][58474432] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Dazar'alor"] .. " " .. L["Portalroom"] .. L["(inside building)"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] } -- Portalroom from Dazar'alor
              nodes[862][59265920] = { mnID = 1165, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zandalar"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] .. "\n" .. " => " .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] } -- Portal to Arathi and Darkshore
              nodes[1355][47276279] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Portalroom to Dazar'alor from NewHome
            end
          end
    
    
        -- Zandalar Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[862][58046505] = { mnID = 463, name = "", type = "HShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. L["Echo Isles, Durotar"] } -- Ship from Zandalar to Echo Isles 
            end
    
          end


        -- Zandalar Transport
          if self.db.profile.showZoneTransport then

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[862][58466298] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "UndeadF", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
              nodes[862][55325808] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Transport from Dazar'alor to Mechagon 
              nodes[1462][75522266] = { mnID = 862, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Transport from Mechagon to Zuldazar
            end

            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[864][36693428] = { mnID = 1161, name = "", type = "KulM", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Barnard 'The Smasher' Bayswort"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Vol'dun to Boralus
              nodes[863][62064008] = { mnID = 1161, name = "", type = "DwarfF", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Desha Stormwallow"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Nazmir to Boralus
              nodes[862][40457103] = { mnID = 1161, name = "", type = "GilneanF", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Daria Smithson"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Zuldazar to Boralus 
            end
          end
        end
    
    
        --##############################
        --##### Continent Kul Tiras ####
        --##############################
    
        if self.db.profile.showZoneKulTiras then 

        -- Kul Tiras Transport
          if self.db.profile.showZoneTransport then

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[896][20614336] = { mnID = 862, name = "", type = "MOrcF", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Swellthrasher"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Drustvar to Zuldazar
              nodes[942][51902432] = { mnID = 862, name = "", type = "OrcM", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Grok Seahandler"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Stormsong Valley to Zuldazar
              nodes[895][87725089] = { mnID = 862, name = "", type = "B11M", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Erul Dawnbrook"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Tiragarde Sound to Zuldazar 
            end

            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[895][71533261] = { mnID = 1161, id = { 1176, 1031, 1179, 1036 }, type = "AIcon", showInZone = true, hideOnContinent = true, hideOnMinimap = true, name = L["Boralus"] .. " " .. "\n" .. " " .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. " " .. "\n" .. L["Grand Admiral Jes-Tereth"] .. L["Travel"] .. "\n" .. " => " .. L["Nazmir"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Vol'dun"] .. "\n" .. " " .. "\n" .. L["Portals"] .. "\n" .. " " .. "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. " " .. "\n" .. L["Ship"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " "  .."\n" .. L["Kiku"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " "} -- Boralus Transports
            end
          end
    

        -- Kul Tiras Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[895][74072427] = { mnID = 1161, name ="", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. " " .. L["(inside building)"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] } -- Portalroom from Boralus } -- Portalroom from Boralus
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Horde" or db.activate.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then

            end
          end
        end
    
    
        --################################
        --##### Continent Shadowlands ####
        --################################
    
        if self.db.profile.showZoneShadowlands then

        -- Shadowlands Portals
          if self.db.profile.showZonePortals then
            nodes[1543][42424210] = { mnID = 1670, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS2 } -- the Maw
            nodes[1961][64472406] = { mnID = 1671, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS3 } -- Korthia to Oribos
            nodes[1970][32956973] = { mnID = 1671, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS3 } -- Zereth Morthis to Oribos
          end


        -- Shadowlands Transporter
          if self.db.profile.showZoneTransport then
            nodes[1543][47294369] = { mnID = 1961, name = "", type = "TravelM", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Transport"] .. " => " .. L["Korthia"] } -- Maw to Korthia
            nodes[1961][64962366] = { mnID = 1543, name = "", type = "TravelM", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Transport"] .. " => " .. L["The Maw"] } -- Korthia to the Maw
          end
        end
    
    
        --#################################
        --##### Continent Dragon Isles ####
        --#################################
    
        if self.db.profile.showZoneDragonIsles then

          -- Dragonflight Portals
          if self.db.profile.showZonePortals then
            nodes[2239][89643770] = { mnID = "",  name = "", type = "WayGateGreen", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " ..L["Emerald Dream"] } -- Bel'ameth, Amirdrassil to Emerald Dream
            nodes[2025][40516283] = { mnID = 2112, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Valdrakken"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Emerald Dream"] .. "\n" .. " => " .. L["Badlands"] .. "\n".." => " .. STORMWIND .. "\n" .. " => " .. ORGRIMMAR } --  Valdrakken Portals
            nodes[2200][73065245] = { mnID = 2023, name = "", type = "WayGateGreen", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Ohn'ahran Plains"] } -- Portal The Emerald Dream to Ohn'ahran Plains
            nodes[2023][18295226] = { mnID = 2200, name = "", type = "WayGateGreen", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } -- Portal to The Emerald Dream
    
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[2239][55466365] = { mnID = 84,  name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Valdrakken to Stormwind City Portal
              nodes[2239][55326472] = { name = "", type = "APortal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portals"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL  .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL } -- Valdrakken to Stormwind City Portal
            end
          end
    
    
        -- Dragonflight Zeppelin
          if self.db.profile.showZoneZeppelins then      
    
            if self.faction == "Horde" or db.activate.EnemyFaction then 
              nodes[2022][81632788] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showZoneShips then
       
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[2022][82243070] = { mnID = 84, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship from The Waking Shores to Stormwind
            end
        end

        end


        --#################################
        --##### Continent Khaz Algar ######
        --#################################
    
        if self.db.profile.showZoneKhazAlgar then

        -- Khaz Algar RemoveBlizzPOIs
          if db.activate.RemoveBlizzPOIs then
            nodes[2248][50004218] = { mnID = 2339, name = "", type = "MNL", showInZone = true, TransportName = L["Dornogal"] .. " - " .. FACTION_NEUTRAL .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. "The Rookery" } -- Dornogal
          end

          -- Khaz Algar Portals
          if self.db.profile.showZonePortals then
            nodes[2266][43564994] = { mnID = 2339, name = "", type = "Portal", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. L["Dornogal"] } --  Timeways Portal to Vashj'ir
            nodes[2266][64534340] = { name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. UNKNOWN } --  Timeways Portal to Vashj'ir
            nodes[2266][74524703] = { name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. UNKNOWN } --  Timeways Portal to Gorgrond
            nodes[2266][77536180] = { name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. UNKNOWN } --  Timeways Portal to Val'sharah
            nodes[2266][70537306] = { name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. UNKNOWN } --  Timeways Portal to Zuldazar
            nodes[2266][60506950] = { name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Portal"] .. " => " .. UNKNOWN } --  Timeways Portal to Drustvar

            if self.faction == "Horde" or db.activate.EnemyFaction then
              nodes[2248][46913872] = { mnID = 2339, name = "", type = "HPortal", TransportName = L["Portal"] .. "\n" .. ORGRIMMAR, showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Dornogal to Orgrimmar
            end
   
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              nodes[2248][47043781] = { mnID = 2339, name = "", type = "APortal", TransportName = L["Portal"] .. "\n" .. STORMWIND, showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Dornogal to Stormwind
            end
          end
    
    
        -- Khaz Algar Zeppelin
          if self.db.profile.showZoneZeppelins then      
    
            if self.faction == "Horde" or db.activate.EnemyFaction then 
              --nodes[2022][81632788] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Khaz Algar Ships
          if self.db.profile.showZoneShips then
       
            if self.faction == "Alliance" or db.activate.EnemyFaction then
              --nodes[2022][82243070] = { mnID = 84, name = "", type = "AShip", showInZone = true, hideOnContinent = true, hideOnMinimap = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship from The Waking Shores to Stormwind
            end
        end

        end
        
      end
  end
end