local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadOnlyZoneDungeonMapNodesLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes
local minimap = ns.minimap

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
            nodes[63][16451100] = { id = 227, type = "Dungeon", showInZone = false, hideOnContinent = true } -- Blackfathom Deeps 
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

        end


        --####################################
        --##### Continent Eastern Kingdom ####
        --####################################

        if self.db.profile.showZoneEasternKingdom then

        -- Eastern Kingdom Dungeons
          if self.db.profile.showZoneDungeons then
            nodes[122][61303090] = { id = 249, type = "Dungeon", hideOnContinent = true } -- Magisters' Terrace 
            nodes[95][85206430] = { id = 77, type = "Dungeon", hideOnContinent = true } -- Zul'Aman 
            nodes[16][36502765] = { id = 239, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Uldaman (inside cave) 
            nodes[15][60673748] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true } -- Uldaman second entrance(inside cave) 
            nodes[42][46866979] = { id = 860, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Return to Karazhan 
            nodes[55][24735143] = { id = 63, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Deadmines

          -- Dungeon Nodes above Blizzards Icons to make it Clickable for maximized Maps
            nodes[15][50090980] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = true } -- test
            nodes[50][72083291] = { id = 76, type = "Dungeon", showInZone = true, hideOnContinent = true, hideOnMinimap = true } -- Deadmines 
            nodes[52][42527168] = { id = 63, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Deadmines 
            
          end


        -- Eastern Kingdom Raids
          if self.db.profile.showZoneRaids then
            nodes[122][44304570] = { id = 752, type = "Raid", hideOnContinent = true } -- Sunwell Plateau 
          end


          -- Eastern Kingdom Passage
          if self.db.profile.showZonePassage and not self.db.profile.show.ClassicIcons then       
            nodes[36][21063760] = { mnID = 33, name = "", type = "PassageDungeonRaidMultiM", showInZone = true, hideOnContinent = true } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[32][35268404] = { mnID = 33, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[15][58543698] = { id = 239, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Uldaman (Secondary Entrance) 
            nodes[23][43251854] = { id = 236, lfgid = 274, type = "PassageDungeonM", showInZone = true, hideOnContinent = true }-- Stratholme Service Entrance 
            nodes[33][68635371] = { mnID = 34, dnID = DUNGEON_FLOOR_BURNINGSTEPPES15, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            nodes[33][65896169] = { mnID = 34, dnID = DUNGEON_FLOOR_BURNINGSTEPPES15, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            nodes[33][45004700] = { mnID = 35, dnID = DUNGEON_FLOOR_MOLTENCORE1.."\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16, name = "", type = "PassageRaidM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            nodes[34][58792725] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            nodes[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Depths

            -- Passage Nodes above Blizzards Icons to make it Clickable for maximized Maps
            nodes[52][42527168] = { id = 63, type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Deadmines   
          end


          -- Eastern Kingdom ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showZoneMultiple then
              --nodes[36][21063760] = { mnID = 33, name = "", type = "MultipleM", showInZone = true, hideOnContinent = true } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            end

            if self.db.profile.showZoneDungeons then
              nodes[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Blackrock Depths
              nodes[32][35268404] = { mnID = 33, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
              --nodes[15][58543698] = { id = 239, name = "", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Uldaman (Secondary Entrance) 
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
            nodes[18][85573138] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Armory
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
            nodes[1528][47353182] = {  id = 1179, type = "Raid", showInZone = true, hideOnContinent = true } -- The Eternal Palace

            if self.faction == "Horde" or db.show.EnemyFaction then
            end
          end

        --Zandalar Raids without ClassicIcons
          if self.db.profile.showZonePassage and not self.db.profile.show.ClassicIcons then
            nodes[1355][50341233] = {  id = 1179, type = "PassageRaidM", showInZone = true, hideOnContinent = true } -- The Eternal Palace
          end


        --Zandalar ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showZoneRaids then
              nodes[1355][50341233] = {  id = 1179, type = "Raid", showInZone = true, hideOnContinent = true } -- The Eternal Palace
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

        end
      end
  end
end