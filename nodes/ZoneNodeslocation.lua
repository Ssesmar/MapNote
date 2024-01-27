local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadZoneMapNodesLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    
    --#####################################################################################################
    --################################         Continent / Zone Map        ################################
    --#####################################################################################################
    
      if db.show.ZoneMap then
    
    
        --#############################
        --##### Continent Kalimdor ####
        --#############################
    
        if self.db.profile.showZoneKalimdor then
        
        -- Kalimdor Dungeons
            if self.db.profile.showZoneDungeons then       
            nodes[11][54916646] = { id = 240, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Wailing Caverns 
            nodes[63][16451100] = { id = 227, type = "Dungeon", showInZone = false, hideOnContinent = true} -- Blackfathom Deeps 
            nodes[948][51102882] = { id = 67, type = "Dungeon", showInZone = true, hideOnContinent = true } -- The Stonecore
          end
    
        -- Kalimdor Dungeons hidden if ClassicIcons is activ
          if self.db.profile.showZoneDungeons and not self.db.profile.show.ClassicIcons then 
            nodes[69][60323015] = { id = 230, lfgid = 36, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Capital Gardens - West left Entrance 
            nodes[69][60303130] = { id = 230, lfgid = 36, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Capital Gardens - West right Entrance 
            nodes[69][62502490] = { id = 230, lfgid = 38, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Gordok Commons - North  
            nodes[67][78285518] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][52152417] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][44517669] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern first Entrance 
          end
    
        --Kalimdor Raids
          if self.db.profile.showZoneRaids then

          end
    
        --Kalimdor ClassicIcons passage
          if self.db.profile.showZonePassage and not self.db.profile.show.ClassicIcons then
            nodes[85][55895097] = { mnID = 86, id = 226, dnID = DUNGEON_FLOOR_ORGRIMMAR1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Ragefire   
            nodes[85][46116716] = { mnID = 86, id = 226, dnID = DUNGEON_FLOOR_ORGRIMMAR1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Ragefire  
            nodes[85][41516079] = { mnID = 86, id = 226, dnID = DUNGEON_FLOOR_ORGRIMMAR1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Ragefire    
            nodes[10][38916921] = { mnID = 11, dnID = DUNGEON_FLOOR_WAILINGCAVERNS1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Wailing Caverns 
            nodes[66][29106256] = { id = 232, type = "PassageDungeonL", showInZone = true, hideOnContinent = true } -- Maraudon Outside
            nodes[63][14181414] = { id = 227, type = "PassageDungeonL", showInZone = true, hideOnContinent = true } -- Blackfathom Deeps
            nodes[69][65503524] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[69][77073692] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
          end


          if self.db.profile.show.ClassicIcons then  

            if self.db.profile.showZoneDungeons then 
              --nodes[69][65503524] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
              --nodes[69][77073692] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            end

            if self.db.profile.showZoneMultiple then
              nodes[71][64864997] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = true, hideOnContinent = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
              nodes[74][30857356] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = true, hideOnContinent = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            end

          end

        --Kalimdor Multiple
          if self.db.profile.showZoneMultiple and not self.db.profile.show.ClassicIcons then  
            nodes[71][64864997] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "PassageDungeonRaidMultiM", showInZone = true, hideOnContinent = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            nodes[74][30857356] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "PassageDungeonRaidMultiM", showInZone = true, hideOnContinent = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
    
        -- Kalimdor Portals
          if self.db.profile.showZonePortals then

            nodes[12][59898422] = { mnID = 74, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = DUNGEON_FLOOR_TANARIS18 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal from Tanaris to Orgrimmar and Stormwind
    
            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[81][41614520] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Zandalar"] } -- Portal from Silithus to Zandalar
              nodes[71][65984960] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Tanaris to Orgrimmar 
              nodes[74][58152676] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Tanaris to Orgrimmar 
            end
  
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[81][41614520] = { mnID = 1161, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal from Silithus to Boralus
              nodes[71][65984960] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Tanaris to Stormwind City 
              nodes[74][58942680] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Tanaris to Stormwind City 
            end
  
            
            if self.faction == "Horde" or db.show.EnemyFaction then  
              nodes[62][46243511] = { mnID = 862, name = L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
              nodes[85][57278961] = { name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portalroom"] .. "\n" .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portalroom from Orgrimmar
              nodes[85][50765561] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Ruins of Lordaeron 
              nodes[85][55988822] = { mnID = 110, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Silvermoon City
              nodes[85][57098737] = { mnID = 2112, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Valdrakken 
              nodes[85][58308788] = { mnID = 1670, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Oribos 
              nodes[85][58858950] = { mnID = 630, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Azsuna 
              nodes[85][57479217] = { mnID = 862, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } -- Zuldazar  
              nodes[85][57479225] = { mnID = 371, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- The Jade Forest 
              nodes[85][56249171] = { mnID = 125, name = "", type = "HPortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Crystalsong Forest (Old Dalaran) Portalroom 
              nodes[85][57409153] = { mnID = 111, name = L["in the basement"], type = "HPortal", showInZone = false, hideOnContinent = true } -- Shattrath 
              nodes[85][56399252] = { mnID = 74, name = L["in the basement"], type = "HPortal", showInZone = false, hideOnContinent = true } -- Caverns of Time 
              nodes[85][55209201] = { mnID = 624, name = L["in the basement"], type = "HPortal", showInZone = false, hideOnContinent = true } -- Warspear - Ashran 
              nodes[85][47393928] = { mnID = 245, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
              nodes[85][48863851] = { mnID = 1527, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
              nodes[85][50243944] = { mnID = 241, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
              nodes[85][51203832] = { mnID = 198, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
              nodes[85][50863628] = { mnID = 207, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
              nodes[85][49203647] = { mnID = 203, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
              nodes[207][50945311] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Deepholm
              nodes[198][63482447] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Hyjal
            end
  
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[62][48023628] = { mnID = 1161, name = L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar
              nodes[198][62602315] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Tol Stormwind from Hyjal
              nodes[207][48525385] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal To Orgrimmar from Deepholm
            end
          end
    

        -- Kalimdor RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              --nodes[85][57278961] = { name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = ORGRIMMAR .. " " .. L["Portalroom"] .. "\n" .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portalroom from Orgrimmar
              nodes[1][45810935] = { mnID = 85, name = "", type = "HordeIcon", showInZone = true, hideOnContinent = true, TransportName = ORGRIMMAR .. " " .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
            end
          end


        --Kalimdor Zeppelins
          if self.db.profile.showZoneZeppelins then
            nodes[1][55941320] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Zeppelin from Orgrimmar to Waking Shores
            nodes[7][33422231] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
            nodes[85][44496228] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. POSTMASTER_LETTER_WARSONGHOLD } -- Zeppelin from OG to Borean Tundra - Northrend
            nodes[85][42796534] = { mnID = 88, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " ..  L["Thunder Bluff"]} -- Zeppelin from OG to Thunder Bluff
            nodes[85][52275315] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Zeppelin from OG to Stranglethorn
            nodes[88][14292570] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to OG
          end
    
    
        -- Kalimdor Ships
          if self.db.profile.showZoneShips then

            nodes[1][35217941] = { mnID = 210, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay Ship
            nodes[10][70237341] = { mnID = 210, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay Ship

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[463][71903797] = { mnID = 862, name = "", type = "HShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Zuldazar"] } -- Ship from Echo Isles to Zuldazar  
              nodes[1][72257893] = { mnID = 862, name = "", type = "HShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Zuldazar"] } -- Ship from Echo Isles to Zuldazar            
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[70][71545615] = { mnID = 56, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Wetlands
            end
          end
        end
    
    
        --####################################
        --##### Continent Eastern Kingdom ####
        --####################################
    
        if self.db.profile.showZoneEasternKingdom then
    
        -- Eastern Kingdom Dungeons
          if self.db.profile.showZoneDungeons then
            nodes[122][61303090] = { id = 249, type = "Dungeon", hideOnContinent = true } -- Magisters' Terrace 
            nodes[95][85206430] = { id = 77, type = "Dungeon", hideOnContinent = true } -- Zul'Aman 
            nodes[16][36502765] = { id = 239, type = "Dungeon", showInZone = true, hideOnContinent = true} -- Uldaman (inside cave) 
            nodes[15][60673748] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true} -- Uldaman second entrance(inside cave) 
            nodes[42][46866979] = { id = 860, type = "Dungeon", showInZone = true, hideOnContinent = true} -- Return to Karazhan 
          end
    
    
        -- Eastern Kingdom Raids
          if self.db.profile.showZoneRaids then
            nodes[122][44304570] = { id = 752, type = "Raid", hideOnContinent = true } -- Sunwell Plateau 
          end


          -- Eastern Kingdom Passage
          if self.db.profile.showZonePassage and not self.db.profile.show.ClassicIcons then          
            nodes[36][21063760] = { mnID = 33, name = "", type = "PassageDungeonRaidMultiM", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[32][35268404] = { mnID = 33, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[15][58543698] = { id = 239, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true} -- Uldaman (Secondary Entrance) 
            nodes[23][43251854] = { id = 236, lfgid = 274, type = "PassageDungeonM", showInZone = true, hideOnContinent = true }-- Stratholme Service Entrance 
            nodes[33][68635371] = { mnID = 34, dnID = DUNGEON_FLOOR_BURNINGSTEPPES15, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            nodes[33][65896169] = { mnID = 34, dnID = DUNGEON_FLOOR_BURNINGSTEPPES15, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            nodes[33][45004700] = { mnID = 35, dnID = DUNGEON_FLOOR_MOLTENCORE1.."\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16, name = "", type = "PassageRaidM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            nodes[34][58792725] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            nodes[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
          end
    

          -- Eastern Kingdom ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showZoneMultiple then
              --nodes[36][21063760] = { mnID = 33, name = "", type = "MultipleM", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            end

            if self.db.profile.showZoneDungeons then
              nodes[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Blackrock Depths
              nodes[32][35268404] = { mnID = 33, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
              --nodes[15][58543698] = { id = 239, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true} -- Uldaman (Secondary Entrance) 
              --nodes[23][43251854] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = true, hideOnContinent = true }-- Stratholme Service Entrance 
              nodes[33][75516099] = { id = 66, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            end

            if self.db.profile.showZoneRaids then
              nodes[33][45004700] = { mnID = 35, dnID = DUNGEON_FLOOR_MOLTENCORE1.."\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16, name = "", type = "Raid", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            end

          end


        --Eastern Kingdom Multiple
          if self.db.profile.showZoneMultiple then

          end
    
    
        --Eastern Kingdom Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" then
              nodes[17][55005418] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Warspear              
            end

            if self.faction == "Alliance" then
              nodes[17][55005418] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Stormshield
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[17][72694917] = { mnID = 85, name = "" , type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Blasted Lands to Orgrimmar 
              nodes[18][60735867] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Tirisfal
              nodes[18][61905899] = { mnID = 50, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Portal to Stranglethorn from Tirisfal
              nodes[18][59085891] = { mnID = 117, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Howling Fjord"] } -- Portal to Howling Fjord from Tirisfal
              nodes[18][59416744] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
              nodes[2070][59506694] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506797] = { mnID = 50, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Grom'gol, Stranglethorn Vale"] } -- Portal to Stranglethorn from Tirisfal
              nodes[2070][60126689] = { mnID = 117, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Howling Fjord"] } -- Portal to Howling Fjord from Tirisfal
              nodes[2070][59406743] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Silvermoon City"] } -- Portal to Silvermoon from Tirisfal
              nodes[50][37545100] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Grom'gol
              nodes[94][54552795] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
              nodes[94][51262623] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Ruins of Lordaeron from Silvermoon 
              nodes[110][58511859] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][49491509] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Silvermoon 
              nodes[14][27442938] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Zandalar"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" }
              nodes[245][56397967] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Tol Bard to Orgimmar  
              nodes[90][85181711] = { mnID = 100, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Old Undercity to Hellfire
              nodes[241][73595355] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[14][22246515] = { mnID = 1161, name = "", type = "APortal", showInZone = true,  hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Boralus"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" } -- Portal from Arathi to Zandalar
              nodes[37][33521611] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = STORMWIND .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } -- Portalroom from Stormwind
              nodes[37][15153165] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = STORMWIND .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] } -- Portalroom from Stormwind
              nodes[84][73221836] = { mnID = 245, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 } --  Portal to Tol Barad
              nodes[84][75232055] = { mnID = 1527, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Uldum"] } -- Portal to Uldum
              nodes[84][75351649] = { mnID = 241, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Twilight Highlands"] } -- Portal to Twilight Highlands
              nodes[84][76211869] = { mnID = 198, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_HYJAL } -- Portal to Hyjal
              nodes[84][73171966] = { mnID = 207, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM } -- Portal to Deepholm
              nodes[84][73301687] = { mnID = 203, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } -- Portal to Vashjir
              nodes[84][48728798] = { name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = STORMWIND .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] } -- Portalroom from Stormwind
              nodes[17][66382798] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal to Stormwind 
              nodes[84][43748538] = { mnID = 74, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_TANARIS18} -- Portal to Caverns of Time 
              nodes[84][44888577] = { mnID = 111, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Shattrath City"] } -- Portal to Shattrath 
              nodes[84][43638719] = { mnID = 103, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Exodar"] } -- Portal to Exodar 
              nodes[84][44388868] = { mnID = 125, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- Portal to Dalaran 
              nodes[84][45708715] = { mnID = 371, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Jade Forest"] } -- Portal to Jade Forest 
              nodes[84][48099198] = { mnID = 622, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. WORLD_PVP } -- Portal to Stormshield 
              nodes[84][46869339] = { mnID = 630, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Azsuna"] } -- Portal to Azsuna 
              nodes[84][47579495] = { mnID = 1670, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] } -- Portal to Oribos 
              nodes[84][48849344] = { mnID = 2112, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } -- Portal to Valdrakken 
              nodes[84][48759519] = { mnID = 1161, name = "", type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal to Boralus 
              nodes[245][75235887] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Tol Bard to Stormwind
              nodes[241][79447784] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Twilight Highlands to Stormwind   
            end
          end


        --Eastern Kingdom Portals without RemoveBlizzPOIs
          if self.db.profile.showZonePortals and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[224][42233253] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Undercity from Grom'gol
          end


        -- Azeroth Eastern Kingdom RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[13][56471480] = { mnID = 110, name = "", type = "HIcon", showInZone = true, TransportName = L["Silvermoon City"] .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Orgrimmar, Ruins of Lordaeron from Silvermoon   
              nodes[224][42073378] = { mnID = 50, name = "", type = "TravelH", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " " .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Transport from Stranglethorn Valley to Ogrimmar and Ruins of Lordaeron
              nodes[13][43933498] = { mnID = 18, name = "", type = "HIcon", showInZone = true, TransportName = L["Ruins of Lordaeron"]  .. " / " ..L["Tirisfal Glades"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Howling Fjord"] .. "\n" .. " => " .. L["Silvermoon City"] } -- Portal to Orgrimmar, Silvermoon, Howling Fjord and Grom'gol from Tirisfal
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][42757303] = { mnID = 84, name = "", type = "AIcon", showInZone = true, TransportName = STORMWIND .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 } -- Portalroom from Stormwind
            end
          end
    
        --Eastern Kingdom Zeppelins
          if self.db.profile.showZoneZeppelins then

            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[50][36955279] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Ship from Booty Bay to Ratchet
            end
          end


          --Eastern Kingdom Zeppelins without RemoveBlizzPOIs
          if self.db.profile.showZonePortals and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[224][41993471] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Ship from Booty Bay to Ratchet
          end

    
        --Eastern Kingdom Ships
          if self.db.profile.showZoneShips then
            
            nodes[224][36947582] = { mnID = 10, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_BARRENS_SUBTITLE } -- Ship from Booty Bay to Ratchet

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[37][08722976] = { mnID = 1161, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Stormwind to Boralus
              nodes[37][07622435] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
              nodes[56][04175637] = { mnID = 117, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Howling Fjord"] } -- Ship from Wettlands to Howling Fjord
              nodes[56][06366226] = { mnID = 70, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Dustwallow Marsh"] } -- Ship from Wettlands to Dustwallow Marsh
              nodes[84][21225479] = { mnID = 1161, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Stormwind to Boralus
              nodes[84][18122555] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showZoneOldVanilla then
            nodes[23][35722308] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = true, hideOnContinent = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[19][48275496] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[2070][83723082] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true, hideOnContinent = true  } -- Scarlet Monastery Key for Old dungeons 
            nodes[18][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons
            nodes[2070][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons
            nodes[2070][83812772] = { id = 316, name ="", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery
            nodes[2070][85483158] = { id = 311, name ="", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Scarlet Halls 
            nodes[18][85353028] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Cathedral 
            nodes[19][78882223] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Scarlet Monastery - Cathedral"
            nodes[18][85153180] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Library 
            nodes[19][78255762] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Scarlet Monastery -"
            nodes[18][85573138] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true} -- Scarlet Monastery - Armory
            nodes[19][86414766] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Scarlet Mona"
            nodes[18][84763039] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Graveyard 
            nodes[19][68832372] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Scarlet Monastery - Graveyard  
            nodes[22][69767181] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = true, hideOnContinent = true } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version
          end
        end
    
    
        --############################
        --##### Continent Outland ####
        --############################
    
        if self.db.profile.showZoneOutland then
    
        -- Outland Dungeons
          if self.db.profile.showZoneDungeons then

          end
    

        -- Outland Raids
          if self.db.profile.showZoneRaids then

          end
    

        -- Outland Multiple
          if self.db.profile.showZoneMultiple then

          end
    

        -- Outland Portals
          if self.db.profile.showZonePortals then
              nodes[111][48614203] = { mnID = 122, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal from Shattrath to Quel'Danas 
              nodes[108][31332481] = { mnID = 111, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[100][88574770] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 
              nodes[100][89234945] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 
              nodes[111][56784884] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR } -- Portal from Shattrath to Orgrimmar 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[100][88635281] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
              nodes[100][89215101] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
              nodes[111][57214825] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Shattrath City"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Shattrath to Stormwind 
            end
          end
        end
    
    
        --##############################
        --##### Continent Northrend ####
        --##############################
    
        if self.db.profile.showZoneNorthrend then
    
          -- Northrend Dungeon
          if self.db.profile.showZoneDungeons then
            nodes[127][34154413] = { id = 283, type = "Dungeon", showInZone = true, hideOnContinent = true } -- The Violet Hold
          end
    
          -- Northrend Raids
          if self.db.profile.showZoneRaids then

          end
    
    
        -- Northrend Multiple
          if self.db.profile.showZoneMultiple then

          end
    
    
        -- Northrend Portal
          if self.db.profile.showZonePortals then
            nodes[123][49111534] = { mnID = 125, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. DUNGEON_FLOOR_DALARANCITY1  } -- LakeWintergrasp to Dalaran Portal 

    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[125][55322545] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Dalaran to Orgrimmar Portal 
              nodes[127][31103140] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[125][40796326] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Dalaran to Stormwind City Portal
              nodes[127][26614271] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Dalaran to Stormwind City Portal
            end
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showZoneZeppelins then 
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[114][41365356] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR  } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showZoneShips then
    
            nodes[117][23245780] = { mnID = 115, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
            nodes[115][49977858] = { mnID = 117, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
            nodes[115][47597897] = { mnID = 114, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe
            nodes[114][79075395] = { mnID = 115, name = "", type = "Ship", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[114][59636916] = { mnID = 84, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship to Stormwind from Borean Tundra
              nodes[117][61366271] = { mnID = 84, name = "", type = "AShip", showInZone = true, hideOnContinent = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship to Stormwind from Borean Tundra
            end

          end
        end
    
    
        --#############################
        --##### Continent Pandaria ####
        --#############################
    
        if self.db.profile.showZonePandaria then
    
        -- Pandaria Dungeons
          if self.db.profile.showZoneDungeons then

          end
    
    
        -- Pandaria Raids
          if self.db.profile.showZoneRaids then

          end
    
    
        -- Pandaria Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[504][33223269] = { mnID = 388, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              nodes[371][28501401] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              nodes[379][85946249] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              nodes[388][50657339] = { mnID = 504, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to  Shado-Pan Garrison
              nodes[390][63371293] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Shrine of Two Moons to Orgrimmar
              nodes[392][72464286] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal from Shrine of Two Moons to Orgrimmar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[504][64707347] = { mnID = 388, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              nodes[371][46248517] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Jade Forest to STORMWIND
              nodes[388][49746867] = { mnID = 504, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Isle of Thunder"] } -- Portal from Isle of Thunder to  Shado-Pan Garrison
              nodes[390][90596670] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind
              nodes[394][71683593] = { mnID = 84, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Shrine of Seven Stars to Stormwind
            end
          end
        end
    
    
        --############################
        --##### Continent Draenor ####
        --############################
    
        if self.db.profile.showZoneDraenor then
    
    
        -- Draenor Dungeons
          if self.db.profile.showZoneDungeons then

          end
    
    
        --Draenor Raids
          if self.db.profile.showZoneRaids then

          end
    
    
        --Draenor Garrison Transport
          if self.db.profile.showZoneTransport then
    
            if self.faction == "Horde" then
              nodes[543][58033444] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              nodes[543][58033444] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = true } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[590][75184879] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran
              nodes[534][61024735] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Vol'mar to Ashran
              nodes[525][51416484] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran
              nodes[624][60825159] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Portal from Garrison to Ashran
              nodes[588][45001476] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Portal from Garrison to Ashran (Ashran Zone)
              nodes[624][53184384] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive
              nodes[588][42911275] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[622][60813785] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Ashran to Stormwind
              nodes[588][43848830] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal from Ashran to Stormwind
              nodes[582][69692706] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Garison to Ashran
              nodes[539][32471561] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Garison to Ashran
              nodes[588][38328897] = { mnID = 534, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. SPLASH_NEW_6_2_FEATURE1_TITLE } -- Portal from Ashran to Lion's Watch
              nodes[622][36234113] = { mnID = 534, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. SPLASH_NEW_6_2_FEATURE1_TITLE } -- Portal from Ashran to Lion's Watch
              nodes[534][57426032] = { mnID = 622, name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ashran"] } -- Portal from Lion's Watch to (Ashran Zone)
            end
          end
        end
    
    
        --#################################
        --##### Continent Broken Isles ####
        --#################################
    
        if self.db.profile.showZoneBrokenIsles then
    
        --Broken Isles Dungeons
          if self.db.profile.showZoneDungeons then

          end
    
    
        --Broken Isles Raids
          if self.db.profile.showZoneRaids then

          end
    
    
        --Broken Isles Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[627][55242392] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Dalaran to Orgrimmar Portal
              nodes[630][46654129] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR} -- Portal to Orgrimmar from Azsuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[627][40416378] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Dalaran to Stormwind City Portal
              nodes[630][44664143] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal to Stormwind from Azsuna
              nodes[941][43092506] = { mnID = 84,  name = "" , type = "APortal", showInZone = false, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Portal from Krokuun - Vindikaar to Stormwind
             end
          end
        end
    
    
        --#############################
        --##### Continent Zandalar ####
        --#############################
    
        if self.db.profile.showZoneZandalar then
    
        --Zandalar Dungeons
          if self.db.profile.showZoneDungeons then

          
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1165][44049256] = { id = 1012, type = "Dungeon", showInZone = true, hideOnContinent = true } -- The MOTHERLODE HORDE
              --nodes[862][55995989] = { id = 1012, type = "Dungeon", hideOnContinent = true } -- The MOTHERLODE HORDE

            end
          
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
    
    
        --Zandalar Raids
          if self.db.profile.showZoneRaids then

            nodes[1355][50341233] = {  id = 1179, type = "PassageRaidM", showInZone = true, hideOnContinent = true } -- The Eternal Palace
            nodes[1528][47353182] = {  id = 1179, type = "Raid", showInZone = true, hideOnContinent = true } -- The Eternal Palace
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
          end
    
    
        -- Zandalar Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[862][58474432] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Dazar'alor"] .. " " .. L["Portalroom"] .. L["(inside building)"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] } -- Portalroom from Dazar'alor
              nodes[1165][51424583] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Dazar'alor"] .. " " .. L["Portalroom"] .. L["(inside building)"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] } -- Portalroom from Dazar'alor
              nodes[1163][73726194] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][74006974] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portalroom from Dazar'alor
              nodes[1163][74027739] = { mnID = 88, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][73808541] = { mnID = 81, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][63008553] = { mnID = 1355,  name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1355][47276279] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1165][52079454] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Dazar'alor to Arathi or Darkshore
              nodes[1165][51719454] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Dazar'alor to Arathi or Darkshore         
              nodes[1355][52349627] = { mnID = 1165, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Newhome to Dazar'alor
              nodes[862][59265920] = { mnID = 1165, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Zandalar"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] .. "\n" .. " => " .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] } -- Portal to Arathi and Darkshore
            end
          end
    
    
        -- Zandalar Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[862][58046505] = { mnID = 463, name = "", type = "HShip", showInZone = true, TransportName = L["Ship"] .. " => " .. L["Echo Isles, Durotar"] } -- Ship from Zandalar to Echo Isles 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end


        -- Zandalar Transport
          if self.db.profile.showZoneTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[862][58466298] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "UndeadF", showInZone = true, hideOnContinent = true } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
              nodes[862][55325808] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = true, hideOnContinent = true } -- Transport from Dazar'alor to Mechagon 
              nodes[1462][75522266] = { mnID = 862, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = true, hideOnContinent = true } -- Transport from Mechagon to Zuldazar
              nodes[1165][41838761] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "GoblinF", showInZone = true, hideOnContinent = true } -- Transport from Dazar'alor to Mechagon
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "GilneanF", showInZone = true, hideOnContinent = true } -- Portal from Dazar'alor to Mechagon
              nodes[864][36693428] = { mnID = 1161, name = "", type = "KulM", showInZone = true, hideOnContinent = true, TransportName = L["Barnard 'The Smasher' Bayswort"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Vol'dun to Boralus
              nodes[863][62064008] = { mnID = 1161, name = "", type = "DwarfF", showInZone = true, hideOnContinent = true, TransportName = L["Desha Stormwallow"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Nazmir to Boralus
              nodes[862][40457103] = { mnID = 1161, name = "", type = "GilneanF", showInZone = true, hideOnContinent = true, TransportName = L["Daria Smithson"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Zuldazar to Boralus 
            end
          end
        end
    
    
        --##############################
        --##### Continent Kul Tiras ####
        --##############################
    
        if self.db.profile.showZoneKulTiras then 
    
        -- Kul Tiras Dungeons
          if self.db.profile.showZoneDungeons then

            nodes[942][78932647] = { id = 1036, type = "Dungeon",  showInZone = false, hideOnContinent = true } -- Shrine of Storm 
            nodes[1462][72933647] = { id = 1178, type = "Dungeon", showInZone = false, hideOnContinent = true } -- Operation: Mechagon 
            nodes[895][84467888] = { id = 1001, type = "Dungeon", showInZone = false, hideOnContinent = true } -- Freehold 
            nodes[896][33681229] = { id = 1021, type = "Dungeon", showInZone = false, hideOnContinent = true } -- Waycrest Manor 
            nodes[1169][39646802] = { id = 1002, type = "Dungeon", showInZone = false, hideOnContinent = true } -- Tol Dagor

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1161][71971537] = { id = 1023, type = "Dungeon", showInZone = true, hideOnContinent = true, TransportName = QUESTLINE_LOCATED_BELOW } -- Siege of Boralus
            end
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[895][88295106] = { id = 1023, type = "Dungeon", showInZone = true, hideOnContinent = true  } -- Siege of Boralus
            end
          end
    
    
        -- Kul Tiras Raids
          if self.db.profile.showZoneRaids then

    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
    

        -- Kul Tiras Transport
          if self.db.profile.showZoneTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[896][20614336] = { mnID = 862, name = "", type = "MOrcF", showInZone = true, hideOnContinent = true, TransportName = L["Swellthrasher"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Drustvar to Zuldazar
              nodes[942][51902432] = { mnID = 862, name = "", type = "OrcM", showInZone = true, hideOnContinent = true, TransportName = L["Grok Seahandler"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Stormsong Valley to Zuldazar
              nodes[895][87725089] = { mnID = 862, name = "", type = "B11M", showInZone = true, hideOnContinent = true, TransportName = L["Erul Dawnbrook"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Tiragarde Sound to Zuldazar 
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "GilneanF", showInZone = true, hideOnContinent = true } -- Portal from Dazar'alor to Mechagon
              nodes[895][71533261] = { mnID = 1161, name = "", type = "TravelA", showInZone = true, hideOnContinent = true, TransportName = L["Boralus"] .. " " .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Grand Admiral Jes-Tereth"] .. L["Travel"] .. "\n" .. " => " .. L["Nazmir"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Vol'dun"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. STORMWIND } -- Boralus Transports
            end
          end
    

        -- Kul Tiras Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[895][74072427] = { mnID = 1161, name ="", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. " " .. L["(inside building)"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] } -- Portalroom from Boralus } -- Portalroom from Boralus
              nodes[1161][70351605] = { name = "", type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. " " .. L["(inside building)"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] } -- Portalroom from Boralus
              nodes[1161][69641590] = { mnID = 81, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70131684] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portalroom from Boralus
              nodes[1161][70381499] = { mnID = 103, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70891536] = { mnID = 87, name = "", type = "APortal", showInZone = false, hideOnContinent = true} -- Portalroom from Boralu
              nodes[1161][66182474] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][66212442] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portalroom from Boralus
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
        end
    
    
        --################################
        --##### Continent Shadowlands ####
        --################################
    
        if self.db.profile.showZoneShadowlands then
    
        -- Shadowlands Dungeons
          if self.db.profile.showZoneDungeons then
            nodes[1533][40085519] = { id = 1182, type = "Dungeon", hideOnContinent = true } -- The Necrotic Wake
            nodes[1533][58602852] = { id = 1186, type = "Dungeon", hideOnContinent = true } -- Spires of Ascension
            nodes[1536][59306484] = { id = 1183, type = "Dungeon", hideOnContinent = true } -- Plaguefall
            nodes[1536][53215314] = { id = 1187, type = "Dungeon", hideOnContinent = true } -- Theater of Pain
            nodes[1565][35715421] = { id = 1184, type = "Dungeon", hideOnContinent = true } -- Mists of Tirna Scithe
            nodes[1565][68646667] = { id = 1188, type = "Dungeon", hideOnContinent = true } -- De Other Side
            nodes[1525][78624930] = { id = 1185, type = "Dungeon", hideOnContinent = true } -- Halls of Atonement
            nodes[1525][51093007] = { id = 1189, type = "Dungeon", hideOnContinent = true } -- Sanguine Depths
            nodes[2016][88914392] = { id = 1194, type = "Dungeon", hideOnContinent = true } -- Tazavesh, the Veiled Market
          end
    
    
        -- Shadowlands Raids
          if self.db.profile.showZoneRaids then
            nodes[1970][80765336] = { id = 1195, type = "Raid", hideOnContinent = true } -- Sepulcher of the First Ones
            nodes[1525][45764149] = { id = 1190, type = "Raid", hideOnContinent = true } -- Castle Nathria
            nodes[1543][69703210] = { id = 1193, type = "Raid", hideOnContinent = true } -- Sanctum of Domination  
          end
    
    
        -- Shadowlands Portals
          if self.db.profile.showZonePortals then
            nodes[1543][42424210] = { mnID = 1670, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS2 } -- the Maw
            nodes[1961][64472406] = { mnID = 1671, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS3 } -- Korthia to Oribos
            nodes[1671][49405127] = { mnID = 1543, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["The Maw"] } -- Oribos to The Maw
            nodes[1671][30322269] = { mnID = 1961, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Korthia"] } -- Oribos to Korthia
            nodes[1671][49532566] = { mnID = 1970, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Zereth Mortis"] } -- Oribos to Zereth Morthis
            nodes[1970][32956973] = { mnID = 1671, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Oribos"] .. " " .. DUNGEON_FLOOR_GILNEAS3 } -- Zereth Morthis to Oribos

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1670][20805432] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1670][20654625] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Oribos to Stormwind City Portal
             end
          end


        -- Shadowlands Transporter
          if self.db.profile.showZoneTransport then
            nodes[1543][47294369] = { mnID = 1961, name = "", type = "TravelM", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Korthia"] } -- Maw to Korthia
            nodes[1961][64962366] = { mnID = 1543, name = "", type = "TravelM", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["The Maw"] } -- Korthia to the Maw
            nodes[1670][47065029] = { mnID = 1671, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            nodes[1670][52094275] = { mnID = 1671, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            nodes[1670][57125033] = { mnID = 1671, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            nodes[1670][52085793] = { mnID = 1671, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS3  } -- Oribos to The Maw
            nodes[1671][55665162] = { mnID = 1670, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
            nodes[1671][49536090] = { mnID = 1670, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
            nodes[1671][43415157] = { mnID = 1670, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
            nodes[1671][49554241] = { mnID = 1670, name = "", type = "Tport2", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_GILNEAS2  } -- Oribos to The Maw
          end
        end
    
    
        --#################################
        --##### Continent Dragon Isles ####
        --#################################
    
        if self.db.profile.showZoneDragonIsles then
    
        -- Dragonflight Dungeons
          if self.db.profile.showZoneDungeons then

          end
    
    
        -- Dragonflight Raids
          if self.db.profile.showZoneRaids then
            nodes[2025][73065567] = { id = 1200, type = "Raid", hideOnContinent = true } -- Vault of the Incarnates
            nodes[2133][48451022] = { id = 1208, type = "Raid", hideOnContinent = true } -- Aberrus, the Shadowed Crucible
          end
    

        -- Dragonflight Passage
          if self.db.profile.showZonePassage and not self.db.profile.show.ClassicIcons then
            nodes[2023][18855124] = { mnID = 2200, id = 1207, type = "PassageRaidM", showInZone = true, hideOnContinent = true }-- Amirdrassil, the Dream's Hope

          end


        -- Dragonflight ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showZoneRaids then
              nodes[2023][18855124] = { mnID = 2200, id = 1207, type = "Raid", showInZone = true, hideOnContinent = true }-- Amirdrassil, the Dream's Hope
            end
          end
    

        -- Dragonflight Portals
          if self.db.profile.showZonePortals then
            nodes[2025][40516283] = { mnID = 2112, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Valdrakken"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Emerald Dream"] .. "\n" .. " => " .. L["Badlands"] .. "\n".." => " .. STORMWIND .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["The Timeways"] .. "\n" .. "\n" .. L["The Timeways"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Drustvar"] .. "\n" .. " => " .. L["Gorgrond"] } --  Valdrakken Portals
            nodes[2112][53575534] = { mnID = 2266, name = "", type = "GPortal", showInZone = true, hideOnContinent = true, TransportName = L["The Timeways"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Drustvar"] .. "\n" .. " => " .. L["Gorgrond"] } --  Portal from Valdrakken to the Timeways
            nodes[2112][26104102] = { mnID = 15, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Badlands"] } --  Portal from Valdrakken to the Badlands
            nodes[2112][62725732] = { mnID = 2200, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } --  Portal from Valdrakken to The Emerald Dream
            nodes[2200][73065245] = { mnID = 2023, name = "", type = "WayGateGreen", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Ohn'ahran Plains"] } -- Portal The Emerald Dream to Ohn'ahran Plains
            nodes[2023][18295226] = { mnID = 2200, name = "", type = "WayGateGreen", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } -- Portal to The Emerald Dream
            nodes[2266][43564994] = { mnID = 2112, name = "", type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Valdrakken"] } --  Timeways Portal to Vashj'ir
            nodes[2266][64534340] = { mnID = 203, name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Vashj'ir"] } --  Timeways Portal to Vashj'ir
            nodes[2266][74524703] = { mnID = 543, name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Gorgrond"] } --  Timeways Portal to Gorgrond
            nodes[2266][77536180] = { mnID = 641, name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. POSTMASTER_LETTER_LORLATHIL } --  Timeways Portal to Val'sharah
            nodes[2266][70537306] = { mnID = 862, name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Zuldazar"] } --  Timeways Portal to Zuldazar
            nodes[2266][60506950] = { mnID = 896, name = "", type = "WayGateGolden", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. L["Drustvar"] } --  Timeways Portal to Drustvar

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[2112][56593828] = { mnID = 85, name = L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Valdrakken to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[2112][59804169] = { mnID = 84,  name = L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Valdrakken to Stormwind City Portal
            end
          end
    
    
        -- Dragonflight Zeppelin
          if self.db.profile.showZoneZeppelins then      
    
            if self.faction == "Horde" or db.show.EnemyFaction then 
              nodes[2022][81632788] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showZoneShips then
       
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[2022][82243070] = { mnID = 84, name = "", type = "AShip", showInZone = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship from The Waking Shores to Stormwind
            end
        end

        end
        
      end   
  end
end