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
          if self.db.profile.showAzerothDungeon then
            nodes[947][26635536] = { id = 240, type = "Dungeon", showInZone = true } -- Wailing Caverns
            nodes[947][22724585] = { id = 227, type = "Dungeon", showInZone = true } -- Blackfathom Deeps
            nodes[947][27126301] = { id = 233, type = "Dungeon", showInZone = true } -- Razorfen Downs
            nodes[947][27416697] = { id = 241, type = "Dungeon", showInZone = true } -- Zul'Farrak
            nodes[947][20055663] = { id = 232, type = "Dungeon", showInZone = true } -- Maraudon
            nodes[947][22126200] = { id = 230, lfgid = 36,type = "Dungeon", showInZone = true } -- Dire Maul - Capital Gardens
            nodes[947][29395008] = { id = 226, type = "Dungeon", showInZone = true } -- Ragefire
            nodes[947][25766218] = { id = 234, type = "Dungeon", showInZone = true } -- Razorfen Kraul
            nodes[947][26777580] = { id = 68, type = "Dungeon", showInZone = true } -- The Vortex Pinnacle
            nodes[947][25237426] = { id = 69, type = "Dungeon", showInZone = true } -- Lost City of Tol'Vir
            nodes[947][26337316] = { id = 70, type = "Dungeon", showInZone = true } -- Halls of Origination
            nodes[947][46234797] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end
    
    
        -- Azeroth Kalimdor Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][27684669] = { id = 78, type = "Raid", showInZone = true } -- Firelands
              nodes[947][28906346] = { id = 760,type = "Raid", showInZone = true } -- Onyxia's Lair
            nodes[947][23887588] = { id = 74,type = "Raid", showInZone = true } -- Throne of the Four Winds
          end
    

          if self.db.profile.showAzerothPassage then
            nodes[947][23716144] = { id = 230, lfgid = 34, type = "PassageDungeonM", showInZone = true } -- Dire Maul - Warpwood Quarter
          end


        -- Azeroth Kalimdor Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][21116955] = { id = { 744, 743 }, type = "MultipleR",showInZone = true } -- Temple of Ahn'Qiraj, Ruins of Ahn'Qiraj
            nodes[947][30006911] = { id = { 187, 279, 255, 251, 750, 184, 185, 186 }, type = "MultipleM", showInZone = true } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
    
        -- Azeroth Kalimdor Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][22226727] = { mnID = 862, name = "", type = "Portal", showInZone = true } -- Portal from Silithus to Zandalar
              nodes[947][30457087] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar         
            end
    
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][22226727] = { mnID = 1161, name = "", type = "Portal", showInZone = true } -- Portal from Silithus to Boralus
              nodes[947][30457087] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City          
            end
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][23994090] = { mnID = 862, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true } -- Portal from New Darkshore to Zandalar
              nodes[947][28464305] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][24484189] = { mnID = 1161, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true } -- Portal from New Darkshore to Boralus
              nodes[947][28764283] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal Tol Orgrimmar from Hyjal
            end
          end
    
    
        -- Azeroth Kalimdor Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][30485132] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = true } -- Zeppelin from Durotar to The Waking Shores - Dragonflight
            end
          end
    
    
        -- Azeroth Kalimdor Ships
          if self.db.profile.showAzerothShips then
            nodes[947][29125574] = { mnID = 210, name = "", type = "Ship", showInZone = true } -- Ship from Ratchet to Booty Bay
    
            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[947][31315572] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Ship from Echo Isles to Dazar'alor - Zandalar
            nodes[947][29986142] = { mnID = 56, name = "", type = "AShip", showInZone = true } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end
        
        end
    
    
        --####################################
        --###### Azeroth Eastern Kingdom #####
        --####################################
    
        if self.db.profile.showAzerothEasternKingdom then
    
    
        -- Azeroth Eastern Kingdom Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][92813801] = { id = 77, type = "Dungeon", showInZone = true } -- Zul'Aman
            nodes[947][91972614] = { id = 249, type = "Dungeon", showInZone = true } -- Magisters' Terrace
            nodes[947][83204721] = { id = 64, type = "Dungeon", showInZone = true } -- Shadowfang Keep
            nodes[947][88634402] = { id = 246, type = "Dungeon", showInZone = true } -- Scholomance
            nodes[947][89593995] = { id = 236, lfgid = 40,type = "Dungeon", showInZone = true } -- Stratholme
            nodes[947][84445688] = { id = 231, type = "Dungeon", showInZone = true } -- Gnomeregan
            nodes[947][86767011] = { id = 76, type = "Dungeon", showInZone = true } -- Zul'Gurub
            nodes[947][90366709] = { id = 237, type = "Dungeon", showInZone = true } -- The Temple of Atal'hakkar
            nodes[947][83226850] = { id = 63, type = "Dungeon", showInZone = true } -- Deadmines
            nodes[947][84056387] = { id = 238, type = "Dungeon", showInZone = true } -- The Stockade
            nodes[947][79985920] = { id = 65, type = "Dungeon", showInZone = true } -- Throne of Tides
          end
    
    
        -- Azeroth Eastern Kingdom Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][80455260] = { id = 75, type = "Raid", showInZone = true } -- Baradin Hold
            nodes[947][90652724] = { id = 752, type = "Raid", showInZone = true } -- Sunwell Plateau
            nodes[947][90655621] = { id = 72, type = "Raid", showInZone = true } -- The Bastion of Twilight
            nodes[947][89945460] = { id = 71, type = "Dungeon", showInZone = true } -- Grim Batol
          end
    
          -- Azeroth Eastern Kingdom Passage
          if self.db.profile.showAzerothPassage then
            nodes[947][90503929] = { id = 236, lfgid = 274,type = "PassageDungeonM", showInZone = true } -- Stratholme Service Entrance
            nodes[947][89856028] = { id = 239, name = "", type = "PassageDungeonM", showInZone = true } -- Uldaman (Secondary Entrance)
          end

        -- Azeroth Eastern Kingdom Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][86434185] = { id = { 311, 316 },type = "MultipleD", showInZone = true } -- Scarlet Halls, Monastery
            nodes[947][88006838] = { id = { 745, 860 }, type = "MultipleM",showInZone = true } -- Karazhan, Return to Karazhan
            nodes[947][89225843] = { id = { 1197, 239 }, type = "MultipleD",showInZone = true } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman
            nodes[947][86536189] = { id = { 73, 741, 742, 66, 228, 229, 559 }, type = "MultipleM", showInZone = true } -- Blackwind Descent, Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire
          end
    
    
        -- Azeroth Eastern Kingdom Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][89587016] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Warspear
            end
    
            if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
              nodes[947][89587016] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .." - ".. L["Ashran"] .. ")", type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Stormshield
            end
              
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][84864258] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Tirisfal to Orgrimmar
              nodes[947][88074841] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar
              nodes[947][91853164] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Silvermoon to Orgrimmar
              nodes[947][79625090] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal Tol Bard to Orgimmar 
              nodes[947][93675469] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][90126888] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal to Stormwind
              nodes[947][80655046] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal Tol Bard to Stormwind
            end
          end
    
    
        -- Azeroth Eastern Kingdom Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][85057132] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true } -- Zeppelin from Stranglethorn Valley to Ogrimmar
            end
          end
    
    
        -- Azeroth Eastern Kingdom Ships
          if self.db.profile.showAzerothShips then
            nodes[947][84667504] = { mnID = 10, name = "", type = "Ship", showInZone = true } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][83196210] = { mnID = 114, name = "", type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
              nodes[947][83296456] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        -- Azeroth Eastern Kingdom OldVanilla
          if self.db.profile.showAzerothOldVanilla then
            nodes[947][90194066] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VRaid", showInZone = true, hideOnContinent = false } -- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel
            nodes[947][89714326] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VRaid", showInZone = true, hideOnContinent = false } -- Old version of Scholomance - Secret Entrance
            nodes[947][86344322] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Monastery Key for Old dungeons
          end
        end
    
    
        --############################
        --##### Azeroth Northrend ####
        --############################
    
        if self.db.profile.showAzerothNorthrend then
    
    
        -- Azeroth Northrend Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][53111487] = { id = 273, type = "Dungeon", showInZone = true } -- Drak'Tharon Keep
            nodes[947][56481047] = { id = 274, type = "Dungeon", showInZone = true } -- Gundrak
            nodes[947][50781352] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
          end
    
    
        -- Azeroth Northrend Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][52131713] = { id = 754, type = "Raid", showInZone = true } -- Naxxramas
            nodes[947][46291352] = { id =  753,  type = "Raid", showInZone = true } -- Vault of Archavon
          end
    
    
        -- Azeroth Northrend Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][47451709] = { id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub
            nodes[947][57062211] = { id = { 286, 285 }, type = "MultipleD", showInZone = true } -- Utgarde Pinnacle, Utgarde Keep
            nodes[947][47421290] = { id = { 758, 276, 278, 280 }, type = "MultipleM", showInZone = true } -- Icecrown Citadel, The Forge of Souls, Halls of Reflection, Pit of Saron
            nodes[947][51880617] = { id = { 759, 277, 275 }, type = "MultipleM", showInZone = true } -- Ulduar, Halls of Stone, Halls of Lightning
            nodes[947][49290747] = { id = { 757, 284 }, type = "MultipleM", showInZone = true } -- Trial of the Crusader, Trial of the Champion
            nodes[947][40641671] = { id = { 756, 282, 281 }, type = "MultipleM", showInZone = true } -- The Eye of Eternity, The Nexus, The Oculus
            nodes[947][50001736] = { id = { 755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum
          end
    
    
        -- Azeroth Northrend Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][46131450] = { mnID = 125, name = "", type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][49401233] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Old Dalaran to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][49151346] = { mnID = 84, name = "" , type = "APortal", showInZone = true } -- Portal from Old Dalaran to Stormwind
            end
          end
    
    
        -- Azeroth Northrend Zeppelins
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][41841870] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Azeroth Northrend Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][43232009] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship from Borean Tundra to Stormwind
              nodes[947][57602350] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship from Borean Tundra to Stormwind
            end
          end
        end
    
    
        --#########################
        --##### Azeroth Pandaria ####
        --#########################
    
        if self.db.profile.showAzerothPandaria then
    
        -- Azeroth Pandaria Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][53138189] = { id = 313, type = "Dungeon", showInZone = true } -- Temple of the Jade Serpent
            nodes[947][47568563] = { id = 302, type = "Dungeon", showInZone = true } -- Stormstout Brewery
            nodes[947][45737584] = { id = 312, type = "Dungeon", showInZone = true } -- Shado-Pan Monastery
            nodes[947][41918090] = { id = 324, type = "Dungeon", showInZone = true } -- Siege of Niuzao Temple
            nodes[947][46468244] = { id = 303, type = "Dungeon", showInZone = true } -- Gate of the Setting Sun
          end
    
    
        -- Azeroth Pandaria Raids
          if self.db.profile.showAzerothRaid then
            nodes[947][47857509] = { id = 317, type = "Raid", showInZone = true } -- Mogu'shan Vaults
            nodes[947][43598371] = { id = 330, type = "Raid", showInZone = true } -- Heart of Fear
            nodes[947][41907121] = { id = 362, type = "Raid", showInZone = true } -- Throne of Thunder
            nodes[947][49688206] = { id = 320, type = "Raid", showInZone = true } -- Terrace of Endless Spring 
          end
    
    
        -- Azeroth Pandaria Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][48658140] = { id = { 369, 321 }, type = "MultipleM", showInZone = true } -- Siege of Orgrimmar
          end
    
    
        -- Azeroth Pandaria Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][40147153] = { mnID = 388, name = "", type = "Portal", showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing
            nodes[947][43408025] = { mnID = 504, name = "", type = "Portal", showInZone = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][50477732] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Jade Forest to Orgrimmar
            end
          end
        end
    
    
        --#########################
        --##### Azeroth Legion ####
        --#########################
    
        if self.db.profile.showAzerothBrokenIsles then
    
        -- Azeroth Legion Dungeons
          if self.db.profile.showAzerothDungeon then
            nodes[947][58804606] = { id = 777, type = "Dungeon", showInZone = true } -- Assault on Violet Hold
            nodes[947][66413395] = { id = 945, type = "Dungeon", showInZone = true } -- Seat of the Triumvirate
            nodes[947][55944783] = { id = 707, type = "Dungeon", showInZone = true } -- Vault of the Wardens
            nodes[947][56864411] = { id = 716, type = "Dungeon", showInZone = true } -- Eye of Azshara
            nodes[947][54743861] = { id = 740, type = "Dungeon", showInZone = true } -- Black Rook Hold
            nodes[947][58883744] = { id = 767, type = "Dungeon", showInZone = true } -- Neltharion's Lair
            nodes[947][61533801] = { id = 727, type = "Dungeon", showInZone = true } -- Maw of Souls
          end
    
    
        -- Azeroth Legion Raids    
          if self.db.profile.showAzerothRaid then
            nodes[947][65603682] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Thron
          end
    
    
        -- Azeroth Legion Multiple    
          if self.db.profile.showAzerothMultiple then
            nodes[947][60954565] = { id = { 875, 900 }, type = "MultipleM", showInZone = true } -- Tomb of Sargeras, Cathedral of the Night
            nodes[947][56043739] = { id = { 762, 768 }, type = "MultipleM", showInZone = true } -- Darkheart Thicket, The Emerald Nightmare
            nodes[947][58864194] = { id = { 786, 800, 726 }, type = "MultipleM", showInZone = true } -- The Nighthold, Court of Stars, The Arcway
            nodes[947][62843965] = { id = { 721, 861 }, type = "MultipleM", showInZone = true } -- Halls of Valor, Trial of Valor
          end
    
    
        -- Azeroth Legion Portals
          if self.db.profile.showAzerothPortals then
            

            if self.faction == "Horde" then
             nodes[947][55624409] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna 
            end

            if self.faction == "Alliance" then
              nodes[947][55624409] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][58124501] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from New Dalaran to Orgrimmar  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][57774634] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal from New Dalaran to Stormwind
            end
          end
        end
    
    
        --#########################
        --#### Azeroth Zandalar ###
        --#########################
    
        if self.db.profile.showAzerothZandalar then  
    
        -- Azeroth Zandalar Dungeons
          if self.db.profile.showAzerothDungeon then
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
          if self.db.profile.showAzerothRaid then
            nodes[947][60705670] = { id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55186352] = { id = 1176, type = "Raid", showInZone = true } -- Battle of Dazar'alor
            end
          end
    
    
        -- Azeroth Zandalar Multiple
          if self.db.profile.showAzerothMultiple then
            nodes[947][55926026] = { id = { 1031, 1022 }, type = "MultipleM", showInZone = true } -- Uldir, The Underrot
          end
    
    
        -- Azeroth Zandalar Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Horde" then
              nodes[947][55666511] = { mnID = 1163, name = L["Portalroom"], type = "HPortal", showInZone = true } -- Portalroom from Dazar'Alor
            end
          end
    
    
      -- Azeroth Zandalar Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][55506808] = { mnID = 1, name = "" , type = "HShip", showInZone = true } -- Ship from Zandalar to Echo Isles
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][54066793] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship from Zuldazar to Boralus 
              nodes[947][51405743] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship from Vol'dun to Boralus 
              nodes[947][56705875] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship from Nazmir to Boralus
            end
          end
        end
    
    
        --############################
        --##### Azeroth Kul Tiras ####
        --############################
    
        if self.db.profile.showAzerothKulTiras then
    
        -- Azeroth Kul Tiras Dungeons 
          if self.db.profile.showAzerothDungeon then  --Dungeons
            nodes[947][66824486] = { id = 1178, type = "Dungeon", showInZone = true } -- Operation: Mechagon 
            nodes[947][74365363] = { id = 1001, type = "Dungeon", showInZone = true } -- Freehold 
            nodes[947][68354901] = { id = 1021, type = "Dungeon", showInZone = true } -- Waycrest Manor 
            nodes[947][74224240] = { id = 1036, type = "Dungeon", showInZone = true } -- Shrine of Storm 
            nodes[947][76205044] = { id = 1002, type = "Dungeon", showInZone = true } -- Tol Dagor
          end
    
    
        -- Azeroth Kul Tiras Raids
          if self.db.profile.showAzerothRaid then 
            nodes[947][74404422] = { id = 1177, type = "Raid", showInZone = true } -- Crucible of Storms
          end
    
    
        -- Azeroth Kul Tiras Multiple
          if self.db.profile.showAzerothMultiple then
    
            if self.faction == "Alliance" then
              nodes[947][73014936] = { id = { 1176, 1023 }, type = "MultipleM", showInZone = true } -- Battle of Dazar'alor, Boralus
            end
    
          end
    
    
        -- Azeroth Kul Tiras Portals
          if self.db.profile.showAzerothPortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][73394840] = { mnID = 1161, name = L["Portalroom"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
    
        -- Azeroth Kul Tiras Ships
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][67265130] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Ship from Drustvar to Zuldazar 
              nodes[947][72244228] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Ship from Stormsong Valley to Zuldazar 
              nodes[947][74745185] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Ship from Tiragarde Sound to Zuldazar 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][73914927] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship to Stormwind from Boralus
            end
          end

          -- Azeroth Kul Tiras Transport
          if self.db.profile.showAzerothTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][65864376] = { mnID = 862, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true } -- Ship from Mechagon to Zuldazar   
            end          
          end

        end
    
    
        --###############################
        --##### Azeroth Dragon Isles ####
        --###############################
    
        if self.db.profile.showAzerothDragonIsles then
              
        -- Azeroth Dragon Isles Dungeons
            if self.db.profile.showAzerothDungeon then
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
          if self.db.profile.showAzerothRaid then
            nodes[947][81372023] = { id = 1200, type = "Raid", showInZone = true } -- Vault of the Incarnates 
            nodes[947][85002623] = { id = 1208, type = "Raid", showInZone = true } -- Aberrus, the Shadowed Crucible 
            nodes[947][71222297] = { id = 1207, type = "PassageRaidM", showInZone = true } -- Amirdrassil, the Dream's Hope
          end
    
    
        -- Azeroth Dragon Isles Portals
          if self.db.profile.showAzerothPortals then
            nodes[947][72202222] = { mnID = 2200, name = "", type = "Portal", showInZone = true } -- Portal to The Emerald Dream 
            nodes[947][77692120] = { name = L["The Timeways"], type = "Portal", showInZone = true } --  Portal from Valdrakken to Timeways
          end
    
    
        -- Azeroth Dragon Isles Zeppelin
          if self.db.profile.showAzerothZeppelins then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[947][77851451] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true } -- Zeppelin from Waking Shores to Ogrimmar
            end
          end
    
    
        -- Azeroth Ships      
          if self.db.profile.showAzerothShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[947][79021601] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship to Stormwind from The Waking Shores - Dragonflight
            end
          end
        end
      end
    end
end