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
            nodes[67][78285518] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][52152417] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][44517669] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern first Entrance 
            nodes[69][60323015] = { id = 230, lfgid = 36, type = "Dungeon",  showInZone = true, hideOnContinent = true } -- Dire Maul - Capital Gardens - West left Entrance 
            nodes[69][60303130] = { id = 230, lfgid = 36, type = "Dungeon",  showInZone = true, hideOnContinent = true } -- Dire Maul - Capital Gardens - West right Entrance 
            nodes[69][62502490] = { id = 230, lfgid = 38, type = "Dungeon",  showInZone = true, hideOnContinent = true } -- Dire Maul - Gordok Commons - North  
            nodes[948][51102882] = { id = 67, type = "Dungeon", showInZone = true, hideOnContinent = true } -- The Stonecore
          end
    
    
        --Kalimdor Raids
          if self.db.profile.showZoneRaids then

          end
    

          if self.db.profile.showZonePassage and not self.db.profile.show.ClassicIcons then  
            nodes[85][55895097] = { mnID = 86, dnID = DUNGEON_FLOOR_ORGRIMMAR1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Ragefire   
            nodes[85][46116716] = { mnID = 86, dnID = DUNGEON_FLOOR_ORGRIMMAR1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Ragefire  
            nodes[85][41516079] = { mnID = 86, dnID = DUNGEON_FLOOR_ORGRIMMAR1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Ragefire    
            nodes[10][38916921] = { mnID = 11, dnID = DUNGEON_FLOOR_WAILINGCAVERNS1, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Wailing Caverns 
            nodes[66][29106256] = { id = 232, type = "PassageDungeonL", showInZone = true, hideOnContinent = true } -- Maraudon Outside
            nodes[63][14181414] = { id = 227, type = "PassageDungeonL", showInZone = true, hideOnContinent = true } -- Blackfathom Deeps
            nodes[69][65503524] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[69][77073692] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
          end


          if self.db.profile.show.ClassicIcons then  

            if self.db.profile.showZoneDungeons then 
              nodes[69][65503524] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
              nodes[69][77073692] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
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
    
    
              if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[81][41614520] = { mnID = 862, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal from Silithus to Zandalar
                nodes[71][65984960] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Orgrimmar 
                nodes[74][58152676] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Orgrimmar 
              end
    
              if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[81][41614520] = { mnID = 1161, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal from Silithus to Boralus
                nodes[71][65984960] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Stormwind City 
                nodes[74][58942680] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Stormwind City 
              end
    
              
              if self.faction == "Horde" or db.show.EnemyFaction then  
                nodes[62][46243511] = { mnID = 862, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[85][50765561] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Ruins of Lordaeron 
                nodes[85][55988822] = { mnID = 110, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Silvermoon City Portalroom 
                nodes[85][57098737] = { mnID = 2112, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } --  Valdrakken Portalroom 
                nodes[85][58308788] = { mnID = 1670, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Oribos Portalroom 
                nodes[85][58858950] = { mnID = 630, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Azsuna Portalroom 
                nodes[85][57479217] = { mnID = 862, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Zuldazar Portalroom 
                nodes[85][57479225] = { mnID = 371, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- The Jade Forest Portalroom 
                nodes[85][56249171] = { mnID = 125, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Crystalsong Forest (Old Dalaran) Portalroom 
                nodes[85][57409153] = { mnID = 111, name = L["in the basement"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Shattrath Portalroom 
                nodes[85][56399252] = { mnID = 74, name = L["in the basement"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Caverns of Time Portalroom 
                nodes[85][55209201] = { mnID = 624, name = L["in the basement"], type = "HPortal", hideOnContinent = true, showInZone = false } -- Warspear - Ashran Portalroom  
                nodes[85][47393928] = { mnID = 245, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } --  Portal to Tol Barad
                nodes[85][48863851] = { mnID = 1527, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Uldum
                nodes[85][50243944] = { mnID = 241, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Twilight Highlands
                nodes[85][51203832] = { mnID = 198, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Hyjal
                nodes[85][50863628] = { mnID = 207, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Deepholm
                nodes[85][49203647] = { mnID = 203, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Vashjir
                nodes[207][50945311] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal To Orgrimmar from Deepholm
                nodes[198][63482447] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal To Orgrimmar from Hyjal
              end
    
              if self.faction == "Alliance" or db.show.EnemyFaction then
                nodes[62][48023628] = { mnID = 1161, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar
                nodes[198][62602315] = { mnID = 84,  name = "" , type = "APortal", showInZone = true , hideOnContinent = true } -- Portal Tol Stormwind from Hyjal
              end
          end
    
    
        --Kalimdor Zeppelins
          if self.db.profile.showZoneZeppelins then
            nodes[85][44496228] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true } -- Zeppelin from OG to Borean Tundra - Northrend
            nodes[85][42796534] = { mnID = 88, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true } -- Zeppelin from OG to Thunder Bluff
            nodes[85][52275315] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = true } -- Zeppelin from OG to Stranglethorn
          end
    
    
        -- Kalimdor Ships
          if self.db.profile.showZoneShips then

            nodes[10][71297333] = { mnID = 210, name = "", type = "Ship", showInZone = true, hideOnContinent = true } -- Ship from Ratchet to Booty Bay Ship


            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[463][71903797] = { mnID = 862, name = "", type = "HShip", showInZone = true, hideOnContinent = true } -- Ship from Echo Isles to Zuldazar  
              nodes[1][72257893] = { mnID = 862, name = "", type = "HShip", showInZone = true, hideOnContinent = true } -- Ship from Echo Isles to Zuldazar            
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[70][71545615] = { mnID = 56, name = "", type = "AShip", showInZone = true, hideOnContinent = true } -- Ship from Dustwallow Marsh to Wetlands
            end
          end
        end
    
    
        --#####################################
        --##### Continent Eastern  Kingdom ####
        --#####################################
    
        if self.db.profile.showZoneEasternKingdom then
    
        -- Eastern  Kingdom Dungeons
          if self.db.profile.showZoneDungeons then
            nodes[122][61303090] = { id = 249, type = "Dungeon", hideOnContinent = true } -- Magisters' Terrace 
            nodes[95][85206430] = { id = 77, type = "Dungeon", hideOnContinent = true } -- Zul'Aman 
            nodes[16][36502765] = { id = 239, type = "Dungeon", showInZone = true, hideOnContinent = true} -- Uldaman (inside cave) 
            nodes[15][60673748] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true} -- Uldaman second entrance(inside cave) 
            nodes[42][46866979] = { id = 860, type = "Dungeon", showInZone = true, hideOnContinent = true} -- Return to Karazhan 
          end
    
    
        -- Eastern  Kingdom Raids
          if self.db.profile.showZoneRaids then
            nodes[122][44304570] = { id = 752, type = "Raid", hideOnContinent = true } -- Sunwell Plateau 
          end


          -- Eastern  Kingdom Passage
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
    
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showZoneMultiple then
            nodes[36][21063760] = { mnID = 33, name = "", type = "MultipleM", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            end

            if self.db.profile.showZoneDungeons then
              nodes[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Blackrock Depths
              nodes[32][35268404] = { mnID = 33, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
              nodes[15][58543698] = { id = 239, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true} -- Uldaman (Secondary Entrance) 
              nodes[23][43251854] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = true, hideOnContinent = true }-- Stratholme Service Entrance 
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
              nodes[18][60735867] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Tirisfal
              nodes[18][61905899] = { mnID = 50, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506694] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506797] = { mnID = 50, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Stranglethorn from Tirisfal
              nodes[2070][60126689] = { mnID = 117, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Howling Fjord from Tirisfal
              nodes[2070][59406743] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Silvermoon from Tirisfal
              nodes[50][37545099] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Grom'gol
              nodes[224][42233253] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Grom'gol
              nodes[94][54552795] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][58511859] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][49491509] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Silvermoon 
              nodes[14][27442938] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Arathi to Zandalar 
              nodes[245][56397967] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal Tol Bard to Orgimmar  
              nodes[90][85181711] = { mnID = 100, name = "", type = "HPortal",  showInZone = true, hideOnContinent = true } -- Portal from Old Undercity to Hellfire
              nodes[241][73595355] = { mnID = 85, name = "", type = "HPortal",  showInZone = true, hideOnContinent = true } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[17][66382798] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal to Stormwind 
              nodes[84][43748538] = { mnID = 74, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Caverns of Time 
              nodes[84][44888577] = { mnID = 111, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Shattrath 
              nodes[84][43638719] = { mnID = 103, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Exodar 
              nodes[84][44388868] = { mnID = 125, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Dalaran 
              nodes[84][45708715] = { mnID = 371, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Jade Forest 
              nodes[84][48099198] = { mnID = 622, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Stormshield 
              nodes[84][46869339] = { mnID = 630, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Azsuna 
              nodes[84][47579495] = { mnID = 1670, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Oribos 
              nodes[84][48849344] = { mnID = 2112, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Valdrakken 
              nodes[84][48759519] = { mnID = 1161, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portal to Boralus 
              nodes[245][75235887] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal Tol Bard to Stormwind  
            end
          end
    
    
        --Eastern Kingdom Ships
          if self.db.profile.showZoneShips then
            
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[84][22085658] = { mnID = 1161, name = "", type = "AShip", showInZone = true, hideOnContinent = true } -- Ship from Stormwind to Borean Tundra
              nodes[84][16992544] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = true } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showZoneOldVanilla then
            nodes[23][35722308] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VRaid", showInZone = true, hideOnContinent = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[19][48275496] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[2070][83723082] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true, hideOnContinent = true  } -- Scarlet Monastery Key for Old dungeons 
            nodes[18][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons
            nodes[2070][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons
            nodes[2070][83812772] = { id = 316, name ="", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery
            nodes[2070][85483158] = { id = 311, name ="", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Scarlet Halls 
            nodes[18][85353028] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Cathedral 
            nodes[19][78882223] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery - Cathedral"
            nodes[18][85153180] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Library 
            nodes[19][78255762] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery -"
            nodes[18][85573138] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true} -- Scarlet Monastery - Armory
            nodes[19][86414766] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Mona"
            nodes[18][84763039] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Graveyard 
            nodes[19][68832372] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery - Graveyard  
            nodes[22][69767181] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version
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
              nodes[108][29542339] = { mnID = 122, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal from Shattrath to Quel'Danas 
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[100][88574770] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Orgrimmar 
              nodes[100][89234945] = { mnID = 85, name = "", type = "HPortal",  showInZone = true, hideOnContinent = true } -- Portal from Hellfire to Orgrimmar 
              nodes[111][56784884] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Shattrath to Orgrimmar 
              nodes[108][31332481] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Shattrath to Orgrimmar 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[100][88635281] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Stormwind 
              nodes[100][89215101] = { mnID = 84,  name = "" , type = "APortal",  showInZone = true, hideOnContinent = true } -- Portal from Hellfire to Stormwind 
              nodes[111][57214825] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Shattrath to Stormwind 
              nodes[108][31332481] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Shattrath to Stormwind 
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
            nodes[123][49111534] = { mnID = 125, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- LakeWintergrasp to Dalaran Portal 

    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[125][55322545] = { mnID = 85, name = "", type = "HPortal",  showInZone = true, hideOnContinent = true } -- Dalaran to Orgrimmar Portal 
              nodes[127][31103140] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[125][40796326] = { mnID = 84,  name = "" , type = "APortal",  showInZone = true, hideOnContinent = true } -- Dalaran to Stormwind City Portal
              nodes[127][26614271] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } --  Dalaran to Stormwind City Portal
            end
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showZoneZeppelins then 
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

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
            nodes[388][50657339] = { mnID = 504, name = "", type = "Portal",  showInZone = true, hideOnContinent = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing 

            nodes[504][33223269] = { mnID = 388, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[371][28501401] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Jade Forest to Orgrimmar
              nodes[379][85946249] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Jade Forest to Orgrimmar

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
    
    
        --Draenor Garrison Portals
          if self.db.profile.showZoneOgreWaygates then
    
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
              nodes[624][60825159] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran
              nodes[588][45001476] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran (Ashran Zone)
              nodes[624][53184384] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive
              nodes[588][42911275] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[622][60813785] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Stormwind
              nodes[588][43848830] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Stormwind
              nodes[582][68522819] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Garison to Ashran
              nodes[539][32261571] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Garison to Ashran
              --nodes[624][53184384] = { mnID = 534, name = L["Lion's Watch"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Lion's Watch
              --nodes[588][42911275] = { mnID = 534, name = L["Lion's Watch"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Lion's Watch (Ashran Zone)
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
              nodes[627][55242392] = { mnID = 85, name = "", type = "HPortal",  showInZone = true, hideOnContinent = true } -- Dalaran to Orgrimmar Portal
              nodes[630][46654129] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[627][40416378] = { mnID = 84,  name = "" , type = "APortal",  showInZone = true, hideOnContinent = true } --  Dalaran to Stormwind City Portal
              nodes[630][44664143] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal to Stormwind from Aszuna
              nodes[941][43092506] = { mnID = 84,  name = "" , type = "APortal", showInZone = false } --  Portal from Krokuun - Vindikaar to Stormwind
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
              nodes[862][58474432] = { mnID = 1163, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1165][51424583] = { mnID = 1163, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][73726194] = { mnID = 110, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][74006974] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][74027739] = { mnID = 88, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][73808541] = { mnID = 81, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1163][63008553] = { mnID = 1355,  name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1355][47276279] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portalroom from Dazar'alor
              nodes[1165][41838761] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true, hideOnContinent = true } -- Portal from Dazar'alor to Mechagon
              nodes[1165][52079454] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "HPortal", showInZone = false } -- Portal from Dazar'alor to Arathi or Darkshore
              nodes[1165][51719454] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "HPortal", showInZone = false } -- Portal from Dazar'alor to Arathi or Darkshore         
              nodes[1355][52349627] = { mnID = 1165, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Newhome to Dazar'alor
            end
          end
    
    
        -- Zandalar Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end


        -- Zandalar Transport
          if self.db.profile.showZoneTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[862][58466298] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "TravelM", showInZone = true, hideOnContinent = true } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
              nodes[862][54985825] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true, hideOnContinent = true } -- Ship from Dazar'alor to Mechagon 
              nodes[1462][75522266] = { mnID = 862, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true, hideOnContinent = true } -- Ship from Mechagon to Zuldazar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "TransportHelper", showInZone = true, hideOnContinent = true } -- Portal from Dazar'alor to Mechagon
            end
          end
        end
    
    
        --##############################
        --##### Continent Kul Tiras ####
        --##############################
    
        if self.db.profile.showZoneKulTiras then 
    
        -- Kul Tiras Dungeons
          if self.db.profile.showZoneDungeons then

            nodes[942][78932647] = { id = 1036, type = "Dungeon", hideOnContinent = true } -- Shrine of Storm 
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
          end
    
    
        -- Kul Tiras Raids
          if self.db.profile.showZoneRaids then

    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
    
    
        -- Kul Tiras Portals
          if self.db.profile.showZonePortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[895][74072427] = { mnID = 1161, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70351605] = { name = L["Portalroom"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][69641590] = { mnID = 81, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70131684] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
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
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1670][20805432] = { mnID = 85, name = "", type = "HPortal",  showInZone = true, hideOnContinent = true } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1670][20654625] = { mnID = 84,  name = "" , type = "APortal",  showInZone = true, hideOnContinent = true } -- Oribos to Stormwind City Portal
             end
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
            nodes[2023][18585257] = { id = 1207, type = "PassageRaidM", showInZone = true, hideOnContinent = true }-- Amirdrassil, the Dream's Hope
          end
    
    
        -- Dragonflight Portals
          if self.db.profile.showZonePortals then
            nodes[2025][40656084] = { name = L["The Timeways"], type = "Portal",  showInZone = true, hideOnContinent = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2112][53875511] = { name = L["The Timeways"], type = "Portal",  showInZone = true, hideOnContinent = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2112][26104102] = { mnID = 15, name = "", type = "Portal",  showInZone = true, hideOnContinent = true } --  Portal from Valdrakken to the Badlands
            nodes[2200][73065245] = { mnID = 2023, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal The Emerald Dream to Ohn'ahran Plains
            nodes[2025][36895880] = { mnID = 15, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal to Badlands
            nodes[2025][41796084] = { mnID = 2200, name = "", type = "Portal", showInZone = true, hideOnContinent = true } -- Portal to The Emerald Dream
            nodes[2023][18295226] = { mnID = 2200, name = "", type = "Portal", showInZone = false, hideOnContinent = true } -- Portal to The Emerald Dream
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[2112][56593828] = { mnID = 85, name = L["(inside building)"], type = "HPortal",  showInZone = true, hideOnContinent = true } -- Valdrakken to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[2112][59804169] = { mnID = 84,  name = L["(inside building)"], type = "APortal",  showInZone = true, hideOnContinent = true } -- Valdrakken to Stormwind City Portal
            end
          end
    
    
        -- Dragonflight Zeppelin
          if self.db.profile.showZoneZeppelins then      
    
            if self.faction == "Horde" or db.show.EnemyFaction then 

            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showZoneShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end

        end
        
      end   
  end
end 