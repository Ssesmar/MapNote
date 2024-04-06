local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadMiniMapNodesLocationinfo(self)
local db = ns.Addon.db.profile
local minimap = ns.minimap

--#####################################################################################################
--##########################        function to hide all minimap below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    
    --#####################################################################################################
    --################################         Continent / Zone Map        ################################
    --#####################################################################################################
    
      if db.show.MiniMap then
    
    
        --#############################
        --##### Continent Kalimdor ####
        --#############################
    
        if self.db.profile.showMiniMapKalimdor then

        -- Kalimdor Portals
          if self.db.profile.showMiniMapPortals then

            minimap[57][26305072] = { mnID = 89, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Darnassus"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal To Teldrassil from Darnassus
            minimap[57][54998820] = { mnID = 89, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Darnassus"] } -- Portal To Darnassus from Teldrassil
            minimap[89][36045019] = { mnID = 57, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Rut'theran"] } -- Portal To Darnassus from Teldrassil

            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              minimap[81][41614520] = { mnID = 862, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Zandalar"] } -- Portal from Silithus to Zandalar
              minimap[71][65984960] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Tanaris to Orgrimmar 
              minimap[74][58152676] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Tanaris to Orgrimmar 
            end
  
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              minimap[81][41614520] = { mnID = 1161, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal from Silithus to Boralus
              minimap[71][65984960] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Tanaris to Stormwind City 
              minimap[74][58942680] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Tanaris to Stormwind City 
            end
  
            
            if self.faction == "Horde" or db.show.EnemyFaction then  
              minimap[62][46243511] = { mnID = 862, name = L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from New Darkshore to Zandalar 
              minimap[85][50765561] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Ruins of Lordaeron 
              minimap[85][55988822] = { mnID = 110, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Silvermoon City
              minimap[85][57098737] = { mnID = 2112, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Valdrakken 
              minimap[85][58308788] = { mnID = 1670, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Oribos 
              minimap[85][58858950] = { mnID = 630, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Azsuna 
              minimap[85][57479217] = { mnID = 862, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } -- Zuldazar  
              minimap[85][57479225] = { mnID = 371, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- The Jade Forest 
              minimap[85][56249171] = { mnID = 125, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Crystalsong Forest (Old Dalaran) Portalroom 
              minimap[85][57409153] = { mnID = 111, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shattrath 
              minimap[85][56399252] = { mnID = 74, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Caverns of Time 
              minimap[85][55209201] = { mnID = 624, name = L["in the basement"], type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Warspear - Ashran 
              minimap[85][47393928] = { mnID = 245, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
              minimap[85][48863851] = { mnID = 1527, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
              minimap[85][50243944] = { mnID = 241, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
              minimap[85][51203832] = { mnID = 198, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
              minimap[85][50863628] = { mnID = 207, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
              minimap[85][49203647] = { mnID = 203, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
              minimap[207][50945311] = { mnID = 85, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Deepholm
              minimap[198][63482447] = { mnID = 85, name = "", type = "HPortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Hyjal
            end
  
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[57][26305072] = { mnID = 89, name = "", type = "AIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. " => " .. L["Exodar"]  .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Teldrassil from Darnassus
              minimap[97][20235409] = { mnID = 57, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Rut'theran"] } -- Portal Exodar to Teldrassil
              minimap[103][48326264] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Exodar to Stormwind
              minimap[62][53731873] = { mnID = 2239, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Bel'ameth, Amirdrassil"] } -- Portal from New Darkshore to Bel'ameth, Amirdrassil
              minimap[62][48023628] = { mnID = 1161, name = L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"], type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from New Darkshore to Zandalar
              minimap[198][62602315] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Stormwind from Hyjal
              minimap[207][48525385] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Stormwind
              minimap[57][55039371] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Stormwind from Teldrassil
              minimap[57][52278948] = { mnID = 97, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Azuremyst Isle"] } -- Portal To Exodar from Teldrassil
              minimap[89][44127840] = { name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portals"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Darnassus from Teldrassil
            end
          end
    

        -- Kalimdor RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              --minimap[85][57278961] = { name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = ORGRIMMAR .. " " .. L["Portalroom"] .. "\n" .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portalroom from Orgrimmar
              minimap[1][45810935] = { mnID = 85, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = ORGRIMMAR .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
            end
          end


        --Kalimdor Zeppelins
          if self.db.profile.showMiniMapZeppelins then
            minimap[1][55941320] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Zeppelin from Orgrimmar to Waking Shores
            minimap[7][33422231] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
            minimap[85][44496228] = { mnID = 114, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. POSTMASTER_LETTER_WARSONGHOLD } -- Zeppelin from OG to Borean Tundra - Northrend
            minimap[85][42796534] = { mnID = 88, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " ..  L["Thunder Bluff"]} -- Zeppelin from OG to Thunder Bluff
            minimap[85][52275315] = { mnID = 50, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Zeppelin from OG to Stranglethorn
            minimap[88][14292570] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to OG
          end
    
    
        -- Kalimdor Ships
          if self.db.profile.showMiniMapShips then

            minimap[1][35217941] = { mnID = 210, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay Ship
            minimap[10][70237341] = { mnID = 210, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay Ship

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[463][71903797] = { mnID = 862, name = "", type = "HShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Zuldazar"] } -- Ship from Echo Isles to Zuldazar  
              minimap[1][72257893] = { mnID = 862, name = "", type = "HShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Zuldazar"] } -- Ship from Echo Isles to Zuldazar            
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[70][71545615] = { mnID = 56, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Wetlands
            end
          end
        end
    
    
        --####################################
        --##### Continent Eastern Kingdom ####
        --####################################
    
        if self.db.profile.showMiniMapEasternKingdom then

        --Eastern Kingdom Portals
          if self.db.profile.showMiniMapPortals then

            minimap[244][47135189] = { mnID = 85, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .."\n" .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " " .. JUST_OR .. "\n" .. " => " .. STORMWIND } -- Portal Tol Orgrimmar or Stormwind from Baradinhold Tol Barad pvp Area
    
            if self.faction == "Horde" then
              minimap[17][55005418] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Blasted Lands to Warspear              
            end

            if self.faction == "Alliance" then
              minimap[17][55005418] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Blasted Lands to Stormshield
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[18][62167276] = { mnID = 90, name = "", type = "HIcon", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portalroom from Dazar'alor
              minimap[17][72694917] = { mnID = 85, name = "" , type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Blasted Lands to Orgrimmar 
              minimap[18][60735867] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Tirisfal
              minimap[18][61905899] = { mnID = 50, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Portal to Stranglethorn from Tirisfal
              minimap[18][59085891] = { mnID = 117, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Howling Fjord"] } -- Portal to Howling Fjord from Tirisfal
              minimap[18][59416744] = { mnID = 110, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
              minimap[2070][59506694] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Tirisfal
              minimap[2070][59506797] = { mnID = 50, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Portal to Stranglethorn from Tirisfal
              minimap[2070][60126689] = { mnID = 117, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Howling Fjord"] } -- Portal to Howling Fjord from Tirisfal
              minimap[2070][59406743] = { mnID = 110, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
              minimap[50][37545100] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Grom'gol
              minimap[94][54552795] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
              minimap[94][51262623] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Ruins of Lordaeron from Silvermoon 
              minimap[110][58511859] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
              minimap[110][49491509] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Silvermoon 
              minimap[14][27442938] = { mnID = 862, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Zandalar"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" }
              minimap[245][56397967] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Tol Bard to Orgimmar  
              minimap[90][85181711] = { mnID = 100, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Old Undercity to Hellfire
              minimap[241][73595355] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[14][22246515] = { mnID = 1161, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Boralus"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" } -- Portal from Arathi to Zandalar
              minimap[37][29592388] = { mnID = 84, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. L["Ironforge"] } -- Deeprun Stormwind to Ironforge
              minimap[37][33521611] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = STORMWIND .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } -- Portalroom from Stormwind
              minimap[37][15153165] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = STORMWIND .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] } -- Portalroom from Stormwind
              minimap[84][73221836] = { mnID = 245, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
              minimap[84][75232055] = { mnID = 1527, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
              minimap[84][75351649] = { mnID = 241, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
              minimap[84][76211869] = { mnID = 198, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
              minimap[84][73171966] = { mnID = 207, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
              minimap[84][73301687] = { mnID = 203, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
              minimap[17][66382798] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal to Stormwind 
              minimap[84][43748538] = { mnID = 74, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TANARIS18} -- Portal to Caverns of Time 
              minimap[84][44888577] = { mnID = 111, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Shattrath City"] } -- Portal to Shattrath 
              minimap[84][43638719] = { mnID = 103, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Exodar"] } -- Portal to Exodar 
              minimap[84][44388868] = { mnID = 125, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Portal to Dalaran 
              minimap[84][45708715] = { mnID = 371, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- Portal to Jade Forest 
              minimap[84][48099198] = { mnID = 622, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. WORLD_PVP } -- Portal to Stormshield 
              minimap[84][46869339] = { mnID = 630, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Portal to Azsuna 
              minimap[84][47579495] = { mnID = 1670, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Portal to Oribos 
              minimap[84][48849344] = { mnID = 2112, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } -- Portal to Valdrakken 
              minimap[84][48759519] = { mnID = 1161, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal to Boralus 
              minimap[84][43269759] = { mnID = 2239, name = "", type = "APortalS", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Bel'ameth, Amirdrassil"] } -- Portal to Bel'ameth, Amirdrassil
              minimap[84][23865611] = { mnID = 89, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Darnassus"] } -- Portal to Darnassus 
              minimap[245][75235887] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Tol Bard to Stormwind
              minimap[241][79447784] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Twilight Highlands to Stormwind   
            end
          end


        --Eastern Kingdom Portals without RemoveBlizzPOIs
          if self.db.profile.showMiniMapPortals and not self.db.profile.show.RemoveBlizzPOIs then
            minimap[224][42233253] = { mnID = 18, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Grom'gol
          end


        -- Azeroth Eastern Kingdom RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[224][42073378] = { mnID = 50, name = "", type = "TravelH", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " " .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Transport from Stranglethorn Valley to Ogrimmar and Ruins of Lordaeron
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
            end
          end
    
        --Eastern Kingdom Zeppelins
          if self.db.profile.showMiniMapZeppelins then

            if self.faction == "Horde" or db.show.EnemyFaction then
            minimap[50][36955279] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Ship from Booty Bay to Ratchet
            end
          end


          --Eastern Kingdom Zeppelins without RemoveBlizzPOIs
          if self.db.profile.showMiniMapPortals and not self.db.profile.show.RemoveBlizzPOIs then
            minimap[224][41993471] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Ship from Booty Bay to Ratchet
          end

    
        --Eastern Kingdom Ships
          if self.db.profile.showMiniMapShips then
            
            minimap[224][36947582] = { mnID = 10, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_BARRENS_SUBTITLE } -- Ship from Booty Bay to Ratchet

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[37][08722976] = { mnID = 1161, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ships"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n".. " => " .. L["The Waking Shores, Dragon Isles"] } -- Ship from Stormwind to Boralus
              minimap[37][07622435] = { mnID = 114, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
              minimap[56][04175637] = { mnID = 117, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Howling Fjord"] } -- Ship from Wettlands to Howling Fjord
              minimap[56][06366226] = { mnID = 70, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Dustwallow Marsh"] } -- Ship from Wettlands to Dustwallow Marsh
              minimap[84][21225479] = { mnID = 1161, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Stormwind to Boralus
              minimap[84][22035670] = { mnID = 2022, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Ship from Stormwind to Waking Shores
              minimap[84][18122555] = { mnID = 114, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
            end
          end
    

        -- Eastern Kingdom Transporter
          if self.db.profile.showMiniMapTransport then

            minimap[87][72545022] = { mnID = 84, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. STORMWIND } -- Transport to Stormwind Carriage
            minimap[84][66783455] = { mnID = 87, name = "", type = "Carriage", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage
          end
        end
    
    
        --############################
        --##### Continent Outland ####
        --############################
    
        if self.db.profile.showMiniMapOutland then

        -- Outland Portals
          if self.db.profile.showMiniMapPortals then
              minimap[111][48614203] = { mnID = 122, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Shattrath to Quel'Danas 
              minimap[108][31332481] = { mnID = 111, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[100][88574770] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 
              minimap[100][89234945] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 
              minimap[111][56784884] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR } -- Portal from Shattrath to Orgrimmar 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[100][88635281] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
              minimap[100][89215101] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
              minimap[111][57214825] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Shattrath to Stormwind 
            end
          end
        end
    
    
        --##############################
        --##### Continent Northrend ####
        --##############################
    
        if self.db.profile.showMiniMapNorthrend then

        -- Northrend Portal
          if self.db.profile.showMiniMapPortals then
            minimap[123][49111534] = { mnID = 125, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1  } -- LakeWintergrasp to Dalaran Portal 

    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[125][55322545] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Dalaran to Orgrimmar Portal 
              minimap[127][31103140] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[125][40796326] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Dalaran to Stormwind City Portal
              minimap[127][26614271] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Dalaran to Stormwind City Portal
            end
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showMiniMapZeppelins then 
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[114][41365356] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR  } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showMiniMapShips then
    
            minimap[117][23245780] = { mnID = 115, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
            minimap[115][49977858] = { mnID = 117, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
            minimap[115][47597897] = { mnID = 114, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe
            minimap[114][79075395] = { mnID = 115, name = "", type = "Ship", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[114][59636916] = { mnID = 84, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship to Stormwind from Borean Tundra
              minimap[117][61366271] = { mnID = 56, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship to Wetlands from Borean Tundra
            end

          end
        end
    
    
        --#############################
        --##### Continent Pandaria ####
        --#############################
    
        if self.db.profile.showMiniMapPandaria then

        -- Pandaria Portals
          if self.db.profile.showMiniMapPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[504][33223269] = { mnID = 388, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              minimap[371][28501401] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              minimap[379][85946249] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              minimap[388][50657339] = { mnID = 504, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to  Shado-Pan Garrison
              minimap[390][63371293] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Shrine of Two Moons to Orgrimmar
              minimap[392][72464286] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Shrine of Two Moons to Orgrimmar
              minimap[1530][63720989] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Shrine of Two Moons to Orgrimmar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[504][64707347] = { mnID = 388, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              minimap[371][46248517] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Jade Forest to STORMWIND
              minimap[388][49746867] = { mnID = 504, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to  Shado-Pan Garrison
              minimap[390][90596670] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind
              minimap[394][71683593] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind
              minimap[1530][90596670] = { mnID = 84, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind

            end
          end
        end
    
    
        --############################
        --##### Continent Draenor ####
        --############################
    
        if self.db.profile.showMiniMapDraenor then
    
        --Draenor Garrison Transport
          if self.db.profile.showMiniMapTransport then
    
            if self.faction == "Horde" then
              minimap[543][58033444] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Gorgrond
              minimap[525][59544752] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate FrostfireRidge
              minimap[550][32164623] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Nagrand
              minimap[535][55084813] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Talador
              minimap[542][54625163] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate SpiresOfArak
              minimap[539][50463566] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              minimap[543][58033444] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Gorgrond
              minimap[525][59544752] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate FrostfireRidge
              minimap[550][32164623] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Nagrand
              minimap[535][55084813] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Talador
              minimap[542][54625163] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate SpiresOfArak
              minimap[539][50463566] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showMiniMapPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[590][75184879] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
              minimap[534][61024735] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Vol'mar to Ashran
              minimap[525][51416484] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
              minimap[624][60825159] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Garrison to Ashran
              minimap[588][45001476] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Garrison to Ashran (Ashran Zone)
              minimap[624][53184384] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Ashran to Vol'mar Captive
              minimap[588][42911275] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[622][60813785] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Ashran to Stormwind
              minimap[588][43848830] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Ashran to Stormwind
              minimap[582][69692706] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garison to Ashran
              minimap[539][32471561] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garison to Ashran
              minimap[588][38328897] = { mnID = 534, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. SPLASH_NEW_6_2_FEATURE1_TITLE } -- Portal from Ashran to Lion's Watch
              minimap[622][36234113] = { mnID = 534, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. SPLASH_NEW_6_2_FEATURE1_TITLE } -- Portal from Ashran to Lion's Watch
              minimap[534][57426032] = { mnID = 622, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ashran"] } -- Portal from Lion's Watch to (Ashran Zone)
            end
          end
          
        end
    
    
        --#################################
        --##### Continent Broken Isles ####
        --#################################
    
        if self.db.profile.showMiniMapBrokenIsles then

        --Broken Isles Portals
          if self.db.profile.showMiniMapPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[627][55242392] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Dalaran to Orgrimmar Portal
              minimap[630][46654129] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR} -- Portal to Orgrimmar from Azsuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[627][40416378] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Dalaran to Stormwind City Portal
              minimap[630][44664143] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal to Stormwind from Azsuna
              minimap[941][43092506] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Portal from Krokuun - Vindikaar to Stormwind
             end
          end
        end
    
    
        --#############################
        --##### Continent Zandalar ####
        --#############################
    
        if self.db.profile.showMiniMapZandalar then

        -- Zandalar Portals
          if self.db.profile.showMiniMapPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[862][58474432] = { mnID = 1163, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Dazar'alor"] .. " " .. L["Portalroom"] .. L["(inside building)"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] } -- Portalroom from Dazar'alor
              minimap[1165][51424583] = { mnID = 1163, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Dazar'alor"] .. " " .. L["Portalroom"] .. L["(inside building)"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] } -- Portalroom from Dazar'alor
              minimap[1163][73726194] = { mnID = 110, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Dazar'alor
              minimap[1163][74006974] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portalroom from Dazar'alor
              minimap[1163][74027739] = { mnID = 88, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Dazar'alor
              minimap[1163][73808541] = { mnID = 81, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Dazar'alor
              minimap[1163][63008553] = { mnID = 1355,  name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Dazar'alor
              minimap[1355][47276279] = { mnID = 1163, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Dazar'alor
              minimap[1165][52079454] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Dazar'alor to Arathi or Darkshore
              minimap[1165][51719454] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Dazar'alor to Arathi or Darkshore         
              minimap[1355][52349627] = { mnID = 1165, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Newhome to Dazar'alor
              minimap[862][59265920] = { mnID = 1165, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zandalar"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] .. "\n" .. " => " .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] } -- Portal to Arathi and Darkshore
            end
          end
    
    
        -- Zandalar Ships
          if self.db.profile.showMiniMapShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[862][58046505] = { mnID = 463, name = "", type = "HShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. L["Echo Isles, Durotar"] } -- Ship from Zandalar to Echo Isles 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end


        -- Zandalar Transport
          if self.db.profile.showMiniMapTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[862][58466298] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "UndeadF", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
              minimap[862][55325808] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Transport from Dazar'alor to Mechagon 
              minimap[1462][75522266] = { mnID = 862, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Transport from Mechagon to Zuldazar
              minimap[1165][41838761] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Transport from Dazar'alor to Mechagon
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "GilneanF", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Dazar'alor to Mechagon
              minimap[864][36693428] = { mnID = 1161, name = "", type = "KulM", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Barnard 'The Smasher' Bayswort"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Vol'dun to Boralus
              minimap[863][62064008] = { mnID = 1161, name = "", type = "DwarfF", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Desha Stormwallow"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Nazmir to Boralus
              minimap[862][40457103] = { mnID = 1161, name = "", type = "GilneanF", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Daria Smithson"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Zuldazar to Boralus 
            end
          end
        end
    
    
        --##############################
        --##### Continent Kul Tiras ####
        --##############################
    
        if self.db.profile.showMiniMapKulTiras then 

        -- Kul Tiras Transport
          if self.db.profile.showMiniMapTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[896][20614336] = { mnID = 862, name = "", type = "MOrcF", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Swellthrasher"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Drustvar to Zuldazar
              minimap[942][51902432] = { mnID = 862, name = "", type = "OrcM", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Grok Seahandler"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Stormsong Valley to Zuldazar
              minimap[895][87725089] = { mnID = 862, name = "", type = "B11M", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Erul Dawnbrook"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Tiragarde Sound to Zuldazar 
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "GilneanF", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Dazar'alor to Mechagon
              minimap[895][71533261] = { mnID = 1161, name = "", type = "TravelA", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Boralus"] .. " " .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Grand Admiral Jes-Tereth"] .. L["Travel"] .. "\n" .. " => " .. L["Nazmir"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Vol'dun"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. STORMWIND } -- Boralus Transports
            end
          end
    

        -- Kul Tiras Portals
          if self.db.profile.showMiniMapPortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[895][74072427] = { mnID = 1161, name ="", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. " " .. L["(inside building)"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] } -- Portalroom from Boralus } -- Portalroom from Boralus
              minimap[1161][70351605] = { name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. " " .. L["(inside building)"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] } -- Portalroom from Boralus
              minimap[1161][69641590] = { mnID = 81, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Boralus
              minimap[1161][70131684] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portalroom from Boralus
              minimap[1161][70381499] = { mnID = 103, name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Boralus
              minimap[1161][70891536] = { mnID = 87, name = "", type = "APortal", showInZone = false, hideOnContinent = true }  -- Portalroom from Boralu
              minimap[1161][66182474] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Boralus
              minimap[1161][66212442] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portalroom from Boralus
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showMiniMapShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
        end
    
    
        --################################
        --##### Continent Shadowlands ####
        --################################
    
        if self.db.profile.showMiniMapShadowlands then

        -- Shadowlands Portals
          if self.db.profile.showMiniMapPortals then
            minimap[1543][42424210] = { mnID = 1670, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS2 } -- the Maw
            minimap[1961][64472406] = { mnID = 1671, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS3 } -- Korthia to Oribos
            minimap[1671][49405127] = { mnID = 1543, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["The Maw"] } -- Oribos to The Maw
            minimap[1671][30322269] = { mnID = 1961, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Korthia"] } -- Oribos to Korthia
            minimap[1671][49532566] = { mnID = 1970, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Zereth Mortis"] } -- Oribos to Zereth Morthis
            minimap[1970][32956973] = { mnID = 1671, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS3 } -- Zereth Morthis to Oribos

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[1670][20805432] = { mnID = 85, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[1670][20654625] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Oribos to Stormwind City Portal
             end
          end


        -- Shadowlands Transporter
          if self.db.profile.showMiniMapTransport then
            minimap[1543][47294369] = { mnID = 1961, name = "", type = "TravelM", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. L["Korthia"] } -- Maw to Korthia
            minimap[1961][64962366] = { mnID = 1543, name = "", type = "TravelM", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. L["The Maw"] } -- Korthia to the Maw
            minimap[1670][47065029] = { mnID = 1671, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            minimap[1670][52094275] = { mnID = 1671, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            minimap[1670][57125033] = { mnID = 1671, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            minimap[1670][52085793] = { mnID = 1671, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            minimap[1671][55665162] = { mnID = 1670, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
            minimap[1671][49536090] = { mnID = 1670, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
            minimap[1671][43415157] = { mnID = 1670, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
            minimap[1671][49554241] = { mnID = 1670, name = "", type = "Tport2", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
          end
        end
    
    
        --#################################
        --##### Continent Dragon Isles ####
        --#################################
    
        if self.db.profile.showMiniMapDragonIsles then

          -- Dragonflight Portals
          if self.db.profile.showMiniMapPortals then
            minimap[2239][89643770] = { mnID = "",  name = "", type = "WayGateGreen", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " ..L["Emerald Dream"] } -- Bel'ameth, Amirdrassil to Emerald Dream
            minimap[2025][40516283] = { mnID = 2112, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Valdrakken"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Emerald Dream"] .. "\n" .. " => " .. L["Badlands"] .. "\n".." => " .. STORMWIND .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["The Timeways"] .. "\n" .. "\n" .. L["The Timeways"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Drustvar"] .. "\n" .. " => " .. L["Gorgrond"] } --  Valdrakken Portals
            minimap[2112][53575534] = { mnID = 2266, name = "", type = "GPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["The Timeways"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Drustvar"] .. "\n" .. " => " .. L["Gorgrond"] } --  Portal from Valdrakken to the Timeways
            minimap[2112][26104102] = { mnID = 15, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Badlands"] } --  Portal from Valdrakken to the Badlands
            minimap[2112][62725732] = { mnID = 2200, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } --  Portal from Valdrakken to The Emerald Dream
            minimap[2200][73065245] = { mnID = 2023, name = "", type = "WayGateGreen", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Ohn'ahran Plains"] } -- Portal The Emerald Dream to Ohn'ahran Plains
            minimap[2023][18295226] = { mnID = 2200, name = "", type = "WayGateGreen", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } -- Portal to The Emerald Dream
            minimap[2266][43564994] = { mnID = 2112, name = "", type = "Portal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Timeways Portal to Vashj'ir
            minimap[2266][64534340] = { mnID = 203, name = "", type = "WayGateGolden", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } --  Timeways Portal to Vashj'ir
            minimap[2266][74524703] = { mnID = 543, name = "", type = "WayGateGolden", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Gorgrond"] } --  Timeways Portal to Gorgrond
            minimap[2266][77536180] = { mnID = 641, name = "", type = "WayGateGolden", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_LORLATHIL } --  Timeways Portal to Val'sharah
            minimap[2266][70537306] = { mnID = 862, name = "", type = "WayGateGolden", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } --  Timeways Portal to Zuldazar
            minimap[2266][60506950] = { mnID = 896, name = "", type = "WayGateGolden", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. L["Drustvar"] } --  Timeways Portal to Drustvar

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[2112][56593828] = { mnID = 85, name = L["(inside building)"], type = "HPortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Valdrakken to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[2239][55466365] = { mnID = 84,  name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Valdrakken to Stormwind City Portal
              minimap[2239][55326472] = { name = "", type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portals"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL  .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL } -- Valdrakken to Stormwind City Portal
              minimap[2112][59804169] = { mnID = 84,  name = L["(inside building)"], type = "APortal", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Valdrakken to Stormwind City Portal
            end
          end
    
    
        -- Dragonflight Zeppelin
          if self.db.profile.showMiniMapZeppelins then      
    
            if self.faction == "Horde" or db.show.EnemyFaction then 
              minimap[2022][81632788] = { mnID = 85, name = "", type = "HZeppelin", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showMiniMapShips then
       
            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[2022][82243070] = { mnID = 84, name = "", type = "AShip", showInZone = false, hideOnContinent = true, hideOnMinimap = false, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship from The Waking Shores to Stormwind
            end
        end

        end
        
      end
  end
end