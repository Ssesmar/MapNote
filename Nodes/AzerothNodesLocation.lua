local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadAzerothNodesLocationInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then


    --#####################################################################################################
    --####################################         Azeroth Map         ####################################
    --#####################################################################################################
        if db.show.Azeroth then
        
    
        --###########################
        --##### Azeroth Kalimdor ####
        --###########################
    
        if self.db.profile.showAzerothKalimdor then
          
    
        -- Azeroth Kalimdor Dungeons
          if self.db.profile.showAzerothDungeons then
            nodes[947][22724585] = { id = 227, type = "Dungeon", showInZone = true } -- Blackfathom Deeps
            nodes[947][27126301] = { id = 233, type = "Dungeon", showInZone = true } -- Razorfen Downs
            nodes[947][27416697] = { id = 241, type = "Dungeon", showInZone = true } -- Zul'Farrak
            nodes[947][20055663] = { id = 232, type = "Dungeon", showInZone = true } -- Maraudon
            nodes[947][22126200] = { id = 230, lfgid = 36,type = "Dungeon", showInZone = true } -- Dire Maul - Capital Gardens
            nodes[947][25766218] = { id = 234, type = "Dungeon", showInZone = true } -- Razorfen Kraul
            nodes[947][26777580] = { id = 68, type = "Dungeon", showInZone = true } -- The Vortex Pinnacle
            nodes[947][25237426] = { id = 69, type = "Dungeon", showInZone = true } -- Lost City of Tol'Vir
            nodes[947][26337316] = { id = 70, type = "Dungeon", showInZone = true } -- Halls of Origination
            nodes[947][46234797] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end
    
    
        -- Azeroth Kalimdor Raids
          if self.db.profile.showAzerothRaids then
            nodes[947][27684669] = { id = 78, type = "Raid", showInZone = true } -- Firelands
            nodes[947][28906346] = { id = 760, type = "Raid", showInZone = true } -- Onyxia's Lair
            nodes[947][23887588] = { id = 74, type = "Raid", showInZone = true } -- Throne of the Four Winds
            nodes[947][25067206] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid", showInZone = true } -- Ny'Alotha, The Waking City
          end
    

        -- Azeroth Kalimdor Passage
          if self.db.profile.showAzerothPassage and not self.db.profile.show.ClassicIcons then
            nodes[947][22724585] = { id = 227, type = "PassageDungeonM", showInZone = true } -- Blackfathom Deeps
            nodes[947][20055663] = { id = 232, type = "PassageDungeonM", showInZone = true } -- Maraudon
            --nodes[947][29145086] = { id = 226, type = "PassageDungeonM", showInZone = true } -- Ragefire
            nodes[947][26635536] = { id = 240, type = "PassageDungeonM", showInZone = true } -- Wailing Caverns
            nodes[947][30006911] = { mnID = 75, id = { 187, 279, 255, 251, 750, 184, 185, 186 }, type = "PassageDungeonRaidMultiM", showInZone = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            nodes[947][23716144] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true } -- Dire Maul - Warpwood Quarter
          end


        --Kalimdor Passage without ClassicIcons and without RemoveBlizzPOIs
          if self.db.profile.showAzerothPassage and not self.db.profile.show.ClassicIcons and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[947][29145086] = { id = 226, type = "PassageDungeonM", showInZone = true } -- Ragefire
          end


        -- Azeroth Kalimdor ClassicIcons 
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showAzerothMultiple then
              nodes[947][30006911] = { mnID = 75, id = { 187, 279, 255, 251, 750, 184, 185, 186 }, type = "MultipleM", showInZone = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            end

            if self.db.profile.showAzerothDungeons then
              nodes[947][22724585] = { id = 227, type = "Dungeon", showInZone = true } -- Blackfathom Deeps
              --nodes[947][29145086] = { id = 226, type = "Dungeon", showInZone = true } -- Ragefire
              nodes[947][26635536] = { id = 240, type = "Dungeon", showInZone = true } -- Wailing Caverns
              --nodes[947][23716144] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true } -- Dire Maul - Warpwood Quarter
            end            
          end


        --Kalimdor ClassicIcons without RemoveBlizzPOIs
          if self.db.profile.show.ClassicIcons and not self.db.profile.show.RemoveBlizzPOIs then

            if self.db.profile.showContinentDungeons then
              nodes[947][29145086] = { id = 226, type = "Dungeon", showInZone = true } -- Ragefire
            end
          end


        -- Azeroth Kalimdor Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][21116955] = { mnID = 81, id = { 744, 743 }, type = "MultipleR",showInZone = true } -- Temple of Ahn'Qiraj, Ruins of Ahn'Qiraj
          end


        -- Azeroth Kalimdor Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][20603449] = { mnID = 89, name = "", type = "Portal", showInZone = true, TransportName = L["Darnassus"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal To Teldrassil from Darnassus
            nodes[947][22066626] = { mnID = 81, name = "", type = "Portal", showInZone = true, TransportName = L["Silithus"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Zandalar"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Portal from Silithus to Zandalar and Boralus
            nodes[947][30457087] = { mnID = 74, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_TANARIS18 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal from Tanaris to Orgrimmar and Stormwind
            nodes[947][28534307] = { mnID = 198, name = "", type = "Portal", showInZone = true, TransportName = POSTMASTER_LETTER_HYJAL .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal from Hyjal to Orgrimmar and Stormwind
            nodes[947][23824100] = { mnID = 62, name = "", type = "Portal", showInZone = true, TransportName = L["Darkshore"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Zandalar"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. "\n" .. L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] } -- Portal from New Darkshore to Zandalar and Boralus

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][22633782] = { mnID = 57, name = "", type = "APortal", showInZone = true, TransportName = L["Rut'theran"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Azuremyst Isle"] .. "\n" .. " => " .. L["Darnassus"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal from Teldrassil  
              nodes[947][15054347] = { mnID = 97, name = "", type = "APortal", showInZone = true, TransportName = L["Azuremyst Isle"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal To Teldrassil from Darnassus
            end

            if self.faction == "Horde" and not db.show.EnemyFaction then
              nodes[947][22633782] = { mnID = 57, name = "", type = "Portal", showInZone = true, TransportName = L["Rut'theran"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Darnassus"] } -- Portal To Teldrassil from Darnassus
            end
          end


        -- Azeroth Kalimdor Portals without RemoveBlizzPOIs
          if self.db.profile.showAzerothPortals and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[947][20603449] = { mnID = 89, name = "", type = "Portal", showInZone = true, TransportName = L["Darnassus"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal To Teldrassil from Darnassus

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][16614245] = { mnID = 57, name = "", type = "APortal", showInZone = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Exodar to Teldrassil
            end
          end


        -- Azeroth Kalimdor RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][29555144] = { mnID = 85, name = "", type = "HIcon", showInZone = true, TransportName = ORGRIMMAR .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
              nodes[947][23905635] = { mnID = 88, name = "", type = "HIcon", showInZone = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][20603449] = { mnID = 89, name = "", type = "AIcon", showInZone = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. " => " .. L["Exodar"]  .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Teldrassil from Darnassus
              nodes[947][16614245] = { mnID = 103, name = "", type = "AIcon", showInZone = true, TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal Exodar to Teldrassil
            end 
          end


        -- Azeroth Kalimdor Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
            --nodes[947][23385540] = { mnID = 7, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Thunder Bluff"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
            --nodes[947][30485132] = { mnID = 1, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Durotar"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Zeppelin from Durotar to The Waking Shores - Dragonflight
            end
          end


        -- Azeroth Kalimdor Zeppelins
          if self.db.profile.showAzerothZeppelins and not self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][23365540] = { mnID = 88, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Thunder Bluff"] .. "\n" .. "\n" ..  L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
              nodes[947][30485132] = { mnID = 1, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Durotar"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Zeppelin from Durotar to The Waking Shores - Dragonflight
            end
          end
    
    
        -- Azeroth Kalimdor Ships
          if self.db.profile.showAzerothShips then
            nodes[947][29125574] = { mnID = 10, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_BARRENS_SUBTITLE .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay
    
            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[947][31315572] = { mnID = 463, name = "", type = "HShip", showInZone = true, TransportName = L["Echo Isles, Durotar"] .. " " .. L["Ship"] .. "\n" .. " => " .. L["Zandalar"] } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][29986142] = { mnID = 70, name = "", type = "AShip", showInZone = true, TransportName = L["Dustwallow Marsh"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end
        
        end
    
    
        --####################################
        --###### Azeroth Eastern Kingdom #####
        --####################################
    
        if self.db.profile.showAzerothEasternKingdom then
    
    
        -- Azeroth Eastern Kingdom Dungeons
          if self.db.profile.showAzerothDungeons then
            nodes[947][92813801] = { id = 77, type = "Dungeon", showInZone = true } -- Zul'Aman
            nodes[947][91972614] = { id = 249, type = "Dungeon", showInZone = true } -- Magisters' Terrace
            nodes[947][83204721] = { id = 64, type = "Dungeon", showInZone = true } -- Shadowfang Keep
            nodes[947][88634402] = { id = 246, type = "Dungeon", showInZone = true } -- Scholomance
            nodes[947][89593995] = { id = 236, lfgid = 40,type = "Dungeon", showInZone = true } -- Stratholme
            nodes[947][86767011] = { id = 76, type = "Dungeon", showInZone = true } -- Zul'Gurub
            nodes[947][79985920] = { id = 65, type = "Dungeon", showInZone = true } -- Throne of Tides
            nodes[947][89945460] = { id = 71, type = "Dungeon", showInZone = true } -- Grim Batol
          end


        -- Azeroth Eastern Kingdom Dungeons without RemoveBlizzPOIs
          if self.db.profile.showAzerothDungeons and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[947][84026458] = { id = 238, type = "Dungeon", showInZone = true } -- The Stockade 
          end
    
    
        -- Azeroth Eastern Kingdom Raids
          if self.db.profile.showAzerothRaids then
            nodes[947][80455260] = { id = 75, type = "Raid", showInZone = true } -- Baradin Hold
            nodes[947][90652724] = { id = 752, type = "Raid", showInZone = true } -- Sunwell Plateau
            nodes[947][90655621] = { id = 72, type = "Raid", showInZone = true } -- The Bastion of Twilight
          end
    
        -- Azeroth Eastern Kingdom Passage
          if self.db.profile.showAzerothPassage and not self.db.profile.show.ClassicIcons then
            nodes[947][84445688] = { id = 231, type = "PassageDungeonM", showInZone = true } -- Gnomeregan
            nodes[947][90366709] = { id = 237, type = "PassageDungeonM", showInZone = true } -- The Temple of Atal'hakkar
            nodes[947][83226850] = { id = 63, type = "PassageDungeonM", showInZone = true } -- Deadmines
            nodes[947][90503929] = { id = 236, lfgid = 274,type = "PassageDungeonM", showInZone = true } -- Stratholme Service Entrance
            nodes[947][89856028] = { id = 239, name = "", type = "PassageDungeonM", showInZone = true } -- Uldaman (Secondary Entrance)
            nodes[947][86536189] = { mnID = 33, id = { 73, 741, 742, 66, 228, 229, 559 }, type = "PassageDungeonRaidMultiM", showInZone = true } -- Blackwind Descent, Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire
          end


        -- Azeroth Eastern Kingdom ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showAzerothDungeons then
              nodes[947][84445688] = { id = 231, type = "Dungeon", showInZone = true } -- Gnomeregan
              nodes[947][90366709] = { id = 237, type = "Dungeon", showInZone = true } -- The Temple of Atal'hakkar
              nodes[947][83226850] = { id = 63, type = "Dungeon", showInZone = true } -- Deadmines      
              --nodes[947][84026458] = { id = 238, type = "Dungeon", showInZone = true } -- The Stockade        
              --nodes[947][89856028] = { id = 239, name = "", type = "Dungeon", showInZone = true } -- Uldaman (Secondary Entrance)
              --nodes[947][90503929] = { id = 236, lfgid = 274,type = "Dungeon", showInZone = true } -- Stratholme Service Entrance
            end

            if self.db.profile.showAzerothMultiple then
              nodes[947][86536189] = { mnID = 33, id = { 73, 741, 742, 66, 228, 229, 559 }, type = "MultipleM", showInZone = true } -- Blackwind Descent, Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire
            end

          end


        -- Azeroth Eastern Kingdom Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][86434185] = { mnID = 19, id = { 311, 316 },type = "MultipleD", showInZone = true } -- Scarlet Halls, Monastery
            nodes[947][88006838] = { mnID = 42, id = { 745, 860 }, type = "MultipleM",showInZone = true } -- Karazhan, Return to Karazhan
            nodes[947][89225843] = { mnID = 15, id = { 1197, 239 }, type = "MultipleD",showInZone = true } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman
          end
    

        -- Azeroth Eastern Kingdom Portals
          if self.db.profile.showAzerothPortals then

            nodes[947][89607007] = { mnID = 17,  name = "" , type = "Portal", showInZone = true, hideOnContinent = true, TransportName = L["Blasted Lands"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["The Dark Portal"] .. " - " .. L["Ashran"] } -- Portal Blasted Lands to Orgrimmar and Stormwind
            nodes[947][93725533] = { mnID = 241, name = "", type = "Portal", showInZone = true, TransportName = L["Twilight Highlands"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal Tol Orgrimmar or Stormwind from Twilight Highlands
            nodes[947][80015070] = { mnID = 245,  name = "" , type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal Tol Barad to Orgrimmar and Stormwind
            nodes[947][87924933] = { mnID = 14, name = "", type = "Portal", showInZone = true, TransportName = L["Arathi Highlands"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Zandalar"] .. "\n" .. " => " .. L["Boralus"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" } -- Portal from Arathi to Zandalar
          end


          if self.db.profile.showAzerothPortals and not self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][84864258] = { mnID = 18, name = "", type = "HPortal", showInZone = true, TransportName = L["Tirisfal Glades"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Howling Fjord"] .. "\n" .. " => " .. L["Silvermoon City"] } -- Portal to Orgrimmar, Silvermoon, Howling Fjord and Grom'gol from Tirisfal
              nodes[947][93143116] = { mnID = 110, name = "", type = "HPortal", showInZone = true, TransportName = L["Silvermoon City"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Orgrimmar, Ruins of Lordaeron from Silvermoon
            end
          end
    

        -- Azeroth Eastern Kingdom RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][84874364] = { mnID = 18, name = "", type = "HIcon", showInZone = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Hellfire Peninsula"] .. "\n" .. "\n" .. L["Ruins of Lordaeron"]  .. " / " .. L["Tirisfal Glades"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Howling Fjord"] .. "\n" .. " => " .. L["Silvermoon City"] } -- Portal to Orgrimmar, Silvermoon, Howling Fjord and Grom'gol from Tirisfal
              nodes[947][91723289] = { mnID = 110, name = "", type = "HIcon", showInZone = true, TransportName = L["Silvermoon City"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Orgrimmar, Ruins of Lordaeron from Silvermoon
              nodes[947][85057132] = { mnID = 50, name = "", type = "TravelH", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Transport from Stranglethorn Valley to Ogrimmar and Ruins of Lordaeron
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][86825652] = { mnID = 87, name = "", type = "AIcon", showInZone = true, hideOnContinent = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. STORMWIND } -- Transport to Ironforge Carriage 
              nodes[947][84376395] = { mnID = 84, name = "", type = "AIcon", showInZone = true, TransportName = STORMWIND .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["The Waking Shores, Dragon Isles"] .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. " => " .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 } -- Portalroom from Stormwind
            end
          end
    

        -- Azeroth Eastern Kingdom Zeppelins without RemoveBlizzPOIs
          if self.db.profile.showAzerothZeppelins and not self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][85057132] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Stranglethorn Valley to Ogrimmar
            end
          end

        -- Azeroth Eastern Kingdom Ships
          if self.db.profile.showAzerothShips then
            nodes[947][84667504] = { mnID = 210, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_BARRENS_SUBTITLE } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][86375379] = { mnID = 56, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_WETLANDS .. " " .. L["Ships"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. " => " .. L["Dustwallow Marsh"] .. "\n" .. " => " .. L["Howling Fjord"] } -- Ship from Menethil Harbor to Howling Fjord and Dustwallow Marsh
            end
          end


        -- Azeroth Eastern Kingdom Ships without RemoveInvite
          if self.db.profile.showAzerothShips and not self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][83196210] = { mnID = 84, name = "", type = "AShip", showInZone = true, TransportName = STORMWIND .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
              nodes[947][83296456] = { mnID = 84, name = "", type = "AShip", showInZone = true, TransportName = STORMWIND .. " " .. L["Ship"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"]  .. "\n" .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Ship from Stormwind to Valiance Keep
            end
          end
    
        -- Azeroth Eastern Kingdom Transport and not RemoveBlizzPOIs
          if self.db.profile.showAzerothTransport and not self.db.profile.show.RemoveBlizzPOIs then

            nodes[947][86825652] = { mnID = 87, name = "", type = "Carriage", showInZone = true, hideOnContinent = true, TransportName = L["Transport"] .. " => " .. DUNGEON_FLOOR_DEEPRUNTRAM1 } -- Transport to Ironforge Carriage 
          end


        -- Azeroth Eastern Kingdom OldVanilla
          if self.db.profile.showAzerothOldVanilla then
            nodes[947][90194066] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = true, hideOnContinent = false } -- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel
            nodes[947][89714326] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = true, hideOnContinent = false } -- Old version of Scholomance - Secret Entrance
            nodes[947][86344322] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true } -- Scarlet Monastery Key for Old dungeons
          end
        end
    
    
        --############################
        --##### Azeroth Northrend ####
        --############################
    
        if self.db.profile.showAzerothNorthrend then
    
    
        -- Azeroth Northrend Dungeons
          if self.db.profile.showAzerothDungeons then
            nodes[947][53111487] = { id = 273, type = "Dungeon", showInZone = true } -- Drak'Tharon Keep
            nodes[947][56481047] = { id = 274, type = "Dungeon", showInZone = true } -- Gundrak
            nodes[947][50731462] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
          end
    
    
        -- Azeroth Northrend Raids
          if self.db.profile.showAzerothRaids then
            nodes[947][52131713] = { id = 754, type = "Raid", showInZone = true } -- Naxxramas
            nodes[947][46291352] = { id =  753,  type = "Raid", showInZone = true } -- Vault of Archavon
          end
    
    
        -- Azeroth Northrend Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][47451709] = { id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub
            nodes[947][57062211] = { mnID = 117, id = {  286, 285 }, type = "MultipleD", showInZone = true } -- Utgarde Pinnacle, Utgarde Keep
            nodes[947][47421290] =  {mnID = 118, id = {  758, 276, 278, 280 }, type = "MultipleM", showInZone = true } -- Icecrown Citadel, The Forge of Souls, Halls of Reflection, Pit of Saron
            nodes[947][51880617] = { mnID = 120, id = {  759, 277, 275 }, type = "MultipleM", showInZone = true } -- Ulduar, Halls of Stone, Halls of Lightning
            nodes[947][49290747] = { id = { 757, 284 }, type = "MultipleM", showInZone = true } -- Trial of the Crusader, Trial of the Champion
            nodes[947][40641671] = { mnID = 114, id = {  756, 282, 281 }, type = "MultipleM", showInZone = true } -- The Eye of Eternity, The Nexus, The Oculus
            nodes[947][50001736] = { mnID = 115, id = {  755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum
          end
    
    
        -- Azeroth Northrend Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][45911491] = { mnID = 123, name = "", type = "Portal", showInZone = true, TransportName = L["Wintergrasp"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- LakeWintergrasp to Dalaran Portal
            nodes[947][49401314] = { mnID = 125, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_DALARANCITY1 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal from Old Dalaran to Orgrimmar and Stormwind
          end

        -- Azeroth Northrend Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][41841870] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, TransportName = POSTMASTER_LETTER_WARSONGHOLD .. " " .. L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Azeroth Northrend Ships
          if self.db.profile.showAzerothShips then
            nodes[947][54622319] = { mnID = 117, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_KAMAGUA .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
            nodes[947][49301878] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_KAMAGUA .. "\n" .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Kamagua
            nodes[947][44781901] = { mnID = 114, name = "", type = "Ship", showInZone = true, TransportName = L["Borean Tundra"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][43232009] = { mnID = 114, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_VALIANCEKEEP .. " " ..  L["Ship"] .. "\n" .. " => " .. STORMWIND } -- Ship from Borean Tundra to Stormwind
              nodes[947][57602350] = { mnID = 117, name = "", type = "AShip", showInZone = true, TransportName = L["Howling Fjord"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Howling Fjord to Wetlands
            end
          end
        end
    
    
        --###########################
        --##### Azeroth Pandaria ####
        --###########################
    
        if self.db.profile.showAzerothPandaria then
    
        -- Azeroth Pandaria Dungeons
          if self.db.profile.showAzerothDungeons then
            nodes[947][53138189] = { id = 313, type = "Dungeon", showInZone = true } -- Temple of the Jade Serpent
            nodes[947][57028587] = { id = 302, type = "Dungeon", showInZone = true } -- Stormstout Brewery
            nodes[947][45737584] = { id = 312, type = "Dungeon", showInZone = true } -- Shado-Pan Monastery
            nodes[947][41918090] = { id = 324, type = "Dungeon", showInZone = true } -- Siege of Niuzao Temple
            nodes[947][46468244] = { id = 303, type = "Dungeon", showInZone = true } -- Gate of the Setting Sun
          end
    
    
        -- Azeroth Pandaria Raids
          if self.db.profile.showAzerothRaids then
            nodes[947][47857509] = { id = 317, type = "Raid", showInZone = true } -- Mogu'shan Vaults
            nodes[947][43598371] = { id = 330, type = "Raid", showInZone = true } -- Heart of Fear
            nodes[947][41077005] = { id = 362, type = "Raid", showInZone = true } -- Throne of Thunder
            nodes[947][49858198] = { id = 320, type = "Raid", showInZone = true } -- Terrace of Endless Spring 
            nodes[947][47348150] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid", showInZone = true } -- Ny'Alotha, The Waking City
          end
    
    
        -- Azeroth Pandaria Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][48938014] = { mnID = 390, id = { 369, 321 }, type = "MultipleM", showInZone = true } -- Siege of Orgrimmar
          end
    
    
        -- Azeroth Pandaria Portals
          if self.db.profile.showAzerothPortals then

            nodes[947][48288274] = { mnID = 390, name = "", type = "Portal", showInZone = true, TransportName = L["Vale of Eternal Blossoms"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal from Vale of Eternal Blossoms to Orgrimmar and Stormwind
            nodes[947][43408025] = { mnID = 388, name = "", type = "Portal", showInZone = true, TransportName = L["Shado-Pan Garrison, Townlong Steppes"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Isle of Thunder"] } -- Portal from Shado-Pan Garrison to Isle of Thunder
            nodes[947][41047200] = { mnID = 504, name = "", type = "Portal", showInZone = true, TransportName = L["Isle of Thunder"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Shado-Pan Garrison, Townlong Steppes"] } -- Portal from Isle of Thunder to Shado-Pan Garrison

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][50477732] = { mnID = 371, name = "", type = "HPortal", showInZone = true, TransportName = L["Jade Forest"] .. " " .. L["Portal"]  .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][52048446] = { mnID = 371, name = "", type = "APortal", showInZone = true, TransportName = L["Jade Forest"] .. " " .. L["Portal"]  .. "\n" .. " => " .. STORMWIND } -- Portal from Jade Forest to Stormwind
            end
          end
        end
    
    
        --#########################
        --##### Azeroth Legion ####
        --#########################
    
        if self.db.profile.showAzerothBrokenIsles then
    
        -- Azeroth Legion Dungeons
          if self.db.profile.showAzerothDungeons then
            nodes[947][58804606] = { id = 777, type = "Dungeon", showInZone = true } -- Assault on Violet Hold
            nodes[947][66413395] = { id = 945, type = "Dungeon", showInZone = true } -- Seat of the Triumvirate
            nodes[947][55944783] = { id = 707, type = "Dungeon", showInZone = true } -- Vault of the Wardens
            nodes[947][56864411] = { id = 716, type = "Dungeon", showInZone = true } -- Eye of Azshara
            nodes[947][54743861] = { id = 740, type = "Dungeon", showInZone = true } -- Black Rook Hold
            nodes[947][58883744] = { id = 767, type = "Dungeon", showInZone = true } -- Neltharion's Lair
            nodes[947][61533801] = { id = 727, type = "Dungeon", showInZone = true } -- Maw of Souls
          end
    
    
        -- Azeroth Legion Raids    
          if self.db.profile.showAzerothRaids then
            nodes[947][65603682] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Thron
          end
    
    
        -- Azeroth Legion Multiple    
          if self.db.profile.showAzerothMultiple then
            nodes[947][60954565] = { mnID = 646, id = { 875, 900 }, type = "MultipleM", showInZone = true } -- Tomb of Sargeras, Cathedral of the Night
            nodes[947][56043739] = { mnID = 641, id = { 762, 768 }, type = "MultipleM", showInZone = true } -- Darkheart Thicket, The Emerald Nightmare
            nodes[947][58864194] = { mnID = 680, id = { 786, 800, 726 }, type = "MultipleM", showInZone = true } -- The Nighthold, Court of Stars, The Arcway
            nodes[947][62843965] = { mnID = 634, id = { 721, 861 }, type = "MultipleM", showInZone = true } -- Halls of Valor, Trial of Valor
          end
    
    
        -- Azeroth Legion Portals
          if self.db.profile.showAzerothPortals then
            
            nodes[947][57884556] = { mnID = 627, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_DALARAN7010 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal to Orgrimmar and Stormwind from Azsuna 
            nodes[947][55624409] = { mnID = 630, name = "", type = "Portal", showInZone = true, TransportName = L["Azsuna"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal to Orgrimmar and Stormwind from Azsuna 

          end
        end
    
    
        --#########################
        --#### Azeroth Zandalar ###
        --#########################
    
        if self.db.profile.showAzerothZandalar then  
    
        -- Azeroth Zandalar Dungeons
          if self.db.profile.showAzerothDungeons then
            nodes[947][54116471] = { id = 968, type = "Dungeon", showInZone = true } -- Atal'Dazar
            nodes[947][52726453] = { id = 1041, type = "Dungeon", showInZone = true } -- Kings' Rest
            nodes[947][52725672] = { id = 1030, type = "Dungeon", showInZone = true } -- Temple of Sethraliss    
          
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55156668] = { id = 1012, type = "Dungeon", showInZone = true } -- The MOTHERLODE HORDE
            end
    
            if self.faction == "Alliance" then
              nodes[947][53386795] = { id = 1012, type = "Dungeon",  showInZone = true }  -- The MOTHERLODE Alliance
            end
          end
    
    
        -- Azeroth Zandalar Raids
          if self.db.profile.showAzerothRaids then
            nodes[947][60705670] = { id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55186352] = { id = 1176, type = "Raid", showInZone = true } -- Battle of Dazar'alor
            end
          end
    
    
        -- Azeroth Zandalar Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][55926026] = { mnID = 863, id = { 1031, 1022 }, type = "MultipleM", showInZone = true } -- Uldir, The Underrot
          end
    
    
        -- Azeroth Zandalar Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              
            end
          end
    
    
      -- Azeroth Zandalar Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55506808] = { mnID = 463, name = "" , type = "HShip", showInZone = true, TransportName = L["Ship"] .. "\n" .. " " .. L["Zandalar"] .. " => " .. L["Echo Isles, Durotar"] } -- Ship from Zandalar to Echo Isles
            end
          end

        -- Azeroth Zandalar RemoveBlizzPOIsInfo
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55506808] = { mnID = 862, name = "" , type = "HIcon", showInZone = true, TransportName = L["Zandalar"] .. " " .. "\n" .. "\n" .. " " .. L["Dazar'alor"] .. " " .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. L["Echo Isles, Durotar"] .. "\n" .. "\n" .. " " .. L["Dread-Admiral Tattersail"] .. " " .. L["Travel"] .. "\n" .. " => " .. L["Drustvar"] .. "\n" .. " => " .. L["Tiragarde Sound"] .. "\n" .. " => " .. L["Stormsong Valley"] .. "\n" .. "\n" .. L["Captain Krooz"] .. " " .. L["Travel"] .. "\n" .. " => " .. SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE1_TITLE }-- Zandalar Transport
            end
          end


        -- Azeroth Zandalar Transport
          if self.db.profile.showAzerothTransport then

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][54066793] = { mnID = 862, name = "", type = "GilneanF", showInZone = true, TransportName = L["Daria Smithson"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. L["Zuldazar"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Zuldazar to Boralus 
              nodes[947][51405743] = { mnID = 864, name = "", type = "KulM", showInZone = true, TransportName = L["Barnard 'The Smasher' Bayswort"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. L["Vol'dun"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Vol'dun to Boralus 
              nodes[947][56705875] = { mnID = 863, name = "", type = "DwarfF", showInZone = true, TransportName = L["Desha Stormwallow"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. L["Nazmir"] .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Nazmir to Boralus
            end
          end

        end
    
    
        --############################
        --##### Azeroth Kul Tiras ####
        --############################
    
        if self.db.profile.showAzerothKulTiras then
    
        -- Azeroth Kul Tiras Dungeons 
          if self.db.profile.showAzerothDungeons then  --Dungeons
            nodes[947][66824486] = { id = 1178, type = "Dungeon", showInZone = true } -- Operation: Mechagon 
            nodes[947][74365363] = { id = 1001, type = "Dungeon", showInZone = true } -- Freehold 
            nodes[947][68354901] = { id = 1021, type = "Dungeon", showInZone = true } -- Waycrest Manor 
            nodes[947][74224240] = { id = 1036, type = "Dungeon", showInZone = true } -- Shrine of Storm 
            nodes[947][76205044] = { id = 1002, type = "Dungeon", showInZone = true } -- Tol Dagor
          end
    
    
        -- Azeroth Kul Tiras Raids
          if self.db.profile.showAzerothRaids then 
            nodes[947][74404422] = { id = 1177, type = "Raid", showInZone = true } -- Crucible of Storms
          end
    
    
        -- Azeroth Kul Tiras Multiple
          if self.db.profile.showAzerothMultiple then
    
            if self.faction == "Alliance" then
              nodes[947][73014936] = { id = { 1176, 1023 }, type = "MultipleM", showInZone = true } -- Battle of Dazar'alor, Boralus
            end
    
          end
    
    
        -- Azeroth Kul Tiras RemoveBlizzPOIsInfo
          if self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][74134951] = { mnID = 1161, name = "", type = "AIcon", showInZone = true, TransportName = L["Boralus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Grand Admiral Jes-Tereth"] .. L["Travel"] .. "\n" .. " => " .. L["Nazmir"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Vol'dun"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. "\n" .. L["Ship"] .. "\n" .. " => " .. STORMWIND } -- Boralus Transports
            end
          end
    

          --Azeroth Kul Tiras Portals
          if self.db.profile.showAzerothPortals and not self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][74134951] = { mnID = 1161, name = "", type = "APortal", showInZone = true, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] } -- Boralus portals
            end
          end

    
        -- Azeroth Kul Tiras Ships
          if self.db.profile.showAzerothShips then

          end

          -- Azeroth Kul Tiras Transport
          if self.db.profile.showAzerothTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][65864376] = { mnID = 1462, name = "", type = "GoblinF", showInZone = true, TransportName = L["Captain Krooz"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE1_TITLE .. " => " .. L["Dazar'alor"] } -- Ship from Mechagon to Zuldazar
              nodes[947][67265130] = { mnID = 896, name = "", type = "MOrcF", showInZone = true, TransportName = L["Swellthrasher"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. L["Drustvar"] .. " => " .. L["Zuldazar"] } -- Ship from Drustvar to Zuldazar 
              nodes[947][72244228] = { mnID = 942, name = "", type = "OrcM", showInZone = true, TransportName = L["Grok Seahandler"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. L["Stormsong Valley"] .. " => " .. L["Zuldazar"] } -- Ship from Stormsong Valley to Zuldazar 
              nodes[947][74745185] = { mnID = 895, name = "", type = "B11M", showInZone = true, TransportName = L["Erul Dawnbrook"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " " .. L["Tiragarde Sound"] .. " => " .. L["Zuldazar"] } -- Ship from Tiragarde Sound to Zuldazar 
            end          
          end

        end
    
    
        --###############################
        --##### Azeroth Dragon Isles ####
        --###############################
    
        if self.db.profile.showAzerothDragonIsles then
              
        -- Azeroth Dragon Isles Dungeons
            if self.db.profile.showAzerothDungeons then
            nodes[947][77241864] = { id = 1202, type = "Dungeon", showInZone = true } -- Ruby Life Pools
            nodes[947][74891765] = { id = 1199, type = "Dungeon", showInZone = true } -- Neltharus 
            nodes[947][75192161] = { id = 1198, type = "Dungeon", showInZone = true } -- The Nokhud Offensive 
            nodes[947][73352689] = { id = 1196, type = "Dungeon", showInZone = true } -- Brackenhide Hollow 
            nodes[947][76072854] = { id = 1203, type = "Dungeon", showInZone = true } -- The Azure Vault 
            nodes[947][79611825] = { id = 1201, type = "Dungeon", showInZone = true } -- Algeth'ar Academy 
            nodes[947][79532136] = { id = 1204, type = "Dungeon", showInZone = true } -- Halls of Infusion 
            nodes[947][79902331] = { id = 1209, type = "Dungeon", showInZone = true } -- Dawn of the Infinite
          end
    
    
        -- Azeroth Dragon Isles Raids     
          if self.db.profile.showAzerothRaids then
            nodes[947][81372023] = { id = 1200, type = "Raid", showInZone = true } -- Vault of the Incarnates 
            nodes[947][85002623] = { id = 1208, type = "Raid", showInZone = true } -- Aberrus, the Shadowed Crucible 
          end
    

         -- Azeroth Dragon Isles Passage 
          if self.db.profile.showAzerothPassage and not self.db.profile.show.ClassicIcons then
            nodes[947][70332274] = { id = 1207, type = "PassageRaidM", showInZone = true } -- Amirdrassil, the Dream's Hope  
          end


        -- Azeroth Dragon Isles ClassicIcons  
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showAzerothRaids then
              nodes[947][70332274] = { id = 1207, type = "Raid", showInZone = true } -- Amirdrassil, the Dream's Hope
            end

          end
    

        -- Azeroth Dragon Isles Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][72202222] = { mnID = 2023, name = "", type = "WayGateGreen", showInZone = true, TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } -- Portal to The Emerald Dream 
            nodes[947][77692120] = { mnID = 2112, name = "", type = "Portal", showInZone = true, TransportName = L["Valdrakken"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Emerald Dream"] .. "\n" .. " => " .. L["Badlands"] .. "\n".." => " .. STORMWIND .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["The Timeways"] .. "\n" .. "\n" .. L["The Timeways"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Drustvar"] .. "\n" .. " => " .. L["Gorgrond"] } --  Valdrakken Portals
          
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][70972427] = { mnID = "2239",  name = "", type = "APortal", showInZone = true, TransportName = L["Portals"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL  .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL } -- Valdrakken to Stormwind City Portal
            end
          end
    

        -- Azeroth Dragon Isles Zeppelin
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][77851451] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Waking Shores to Ogrimmar
            end
          end
    
    
        -- Azeroth Ships      
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][79021601] = { mnID = 2022, name = "", type = "AShip", showInZone = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship to Stormwind from The Waking Shores - Dragonflight
            end
          end
        end
      end
    end
end