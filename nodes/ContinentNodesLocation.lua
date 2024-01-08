local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadContinentNodesLocationinfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    
    --#####################################################################################################
    --################################         Continent / Zone Map        ################################
    --#####################################################################################################
    
      if db.show.Continent then
    
    
        --#############################
        --##### Continent Kalimdor ####
        --#############################
    
        if self.db.profile.showContinentKalimdor then
        
        -- Kalimdor Dungeons
            if self.db.profile.showContinentDungeons then
            nodes[12][53146914] = { id = 233, type = "Dungeon" } -- Razorfen Downs 
            nodes[12][42726722] = { id = 230, lfgid = 36, type = "Dungeon", } -- Dire Maul - Warpwood Quarter 
            nodes[12][42856552] = { id = 230, lfgid = 38, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Gordok Commons - North  
            nodes[12][54187774] = { id = 241, type = "Dungeon" } -- Zul'Farrak
            nodes[12][50916837] = { id = 234, type = "Dungeon" } -- Razorfen Kraul 
            nodes[12][52519670] = { id = 68, type = "Dungeon" } -- The Vortex Pinnacle 
            nodes[12][49699341] = { id = 69, type = "Dungeon" } -- Lost City of Tol'Vir 
            nodes[12][51579122] = { id = 70, type = "Dungeon" } -- Halls of Origination
            nodes[948][51102882] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end
    
    
        --Kalimdor Raids
          if self.db.profile.showContinentRaids then
            nodes[12][45929663] = { id = 74, type = "Raid" } -- Throne of the Four Winds 
            nodes[12][54243397] = { id = 78, type = "Raid" } -- Firelands 
            nodes[12][56436963] = { id = 760, type = "Raid" } -- Onyxia's Lair 
            nodes[12][42068358] = { id = 743, type = "Raid" } -- Ruins of Ahn'Qiraj 
            nodes[12][40678358] = { id = 744, type = "Raid" } -- Temple of Ahn'Qiraj
            nodes[12][49159032] = { id = 1180, type = "Raid" } -- Ny'Alotha, The Waking City
          end
    
        --Kalimdor Passage
          if self.db.profile.showContinentPassage and not self.db.profile.show.ClassicIcons then
            nodes[12][59228331] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "PassageDungeonRaidMultiM", showInZone = true, hideOnContinent = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            nodes[12][46106657] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][43906613] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache 
            nodes[12][43913301] = { id = 227, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Blackfathom Deeps 
            nodes[12][52215315] = { mnID = 11, dnID = DUNGEON_FLOOR_WAILINGCAVERNS1, name = "", type = "PassageDungeonM" } -- Wailing Caverns  
            nodes[12][38395594] = { id = 232, type = "PassageDungeonM" } -- Maraudon 
            nodes[12][58304269] = { id = 226, type = "PassageDungeonM" } -- Ragefire 
          end


        --Kalimdor ClassicIcons
         if self.db.profile.show.ClassicIcons then

          if self.db.profile.showContinentDungeons then
            nodes[12][46106657] = { id = 230, lfgid = 34, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][43906613] = { id = 230, lfgid = 34, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache 
            nodes[12][43913301] = { id = 227, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Blackfathom Deeps 
            nodes[12][52215315] = { id = 240, name = "", type = "Dungeon" } -- Wailing Caverns  
            nodes[12][38395594] = { id = 232, type = "Dungeon" } -- Maraudon 
            nodes[12][58304269] = { id = 226, type = "Dungeon" } -- Ragefire 
          end

          if self.db.profile.showContinentMultiple then
            nodes[12][59228331] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = true, hideOnContinent = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
         end 


        --Kalimdor Multiple
          if self.db.profile.showContinentMultiple then

          end
    

        -- Kalimdor Portals
          if self.db.profile.showContinentPortals then
    
    
              if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[12][59898422] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[12][56122725] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal To Orgrimmar from Hyjal
              end
    
              if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[12][42807881] = { mnID = 1161, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal from Silithus to Boralus
                nodes[12][59898422] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[12][56122725] = { mnID = 84,  name = "" , type = "APortal", showInZone = true , hideOnContinent = false } -- Portal Tol Stormwind from Hyjal
              end
    
              
              if self.faction == "Horde" or db.show.EnemyFaction then  
                nodes[12][45842223] = { mnID = 862, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar 
              end
    
              if self.faction == "Alliance" or db.show.EnemyFaction then
                nodes[12][47092322] = { mnID = 1161, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar 
              end
          end
    
    
        --Kalimdor Zeppelins
          if self.db.profile.showContinentZeppelins then
            nodes[12][59814453] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from Durotar to Waking Shores - Dragonflight
          end
    
    
        -- Kalimdor Ships
          if self.db.profile.showContinentShips then
            nodes[12][56875435] = { mnID = 210, name = "", type = "Ship", showInZone = true, hideOnContinent = false } -- Ship from Ratchet to Booty Bay Ship
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[12][62985416] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][59266609] = { mnID = 56, name = "", type = "AShip", showInZone = true } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end
        end
    
    
        --#####################################
        --##### Continent Eastern  Kingdom ####
        --#####################################
    
        if self.db.profile.showContinentEasternKingdom then
    
        --Eastern  Kingdom Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[13][56740242] = { id = 249, type = "Dungeon" } -- Magisters' Terrace 
            nodes[13][58572466] = { id = 77, type = "Dungeon" } -- Zul'Aman 
            nodes[13][31796256] = { id = 65, type = "Dungeon" } -- Throne of Tides 
            nodes[13][42397323] = { id = 238, type = "Dungeon" } -- The Stockade 
            nodes[13][47448471] = { id = 76, type = "Dungeon" } -- Zul'Gurub 
            nodes[13][40764187] = { id = 64, type = "Dungeon" } -- Shadowfang Keep 
            nodes[13][50573677] = { id = 246, type = "Dungeon" } -- Scholomance
            nodes[13][52712836] = { id = 236, lfgid = 40, type = "Dungeon" } -- Stratholme 
            nodes[13][53135585] = { id = 71, type = "Dungeon" } -- Grim Batol
          end
    
    
        --Eastern  Kingdom Raids
          if self.db.profile.showContinentRaids then
            nodes[13][55160370] = { id = 752, type = "Raid" } -- Sunwell Plateau 
            nodes[13][47546862] = { id = 73, type = "Raid" } -- Blackwind Descent 
            nodes[13][54905899] = { id = 72, type = "Raid" } -- The Bastion of Twilight 
            nodes[13][35565150] = { id = 75, type = "Raid" } -- Baradin Hold
          end


        --Eastern  Kingdom Passage
          if self.db.profile.showContinentPassage and not self.db.profile.show.ClassicIcons then
            nodes[13][53977927] = { id = 237, type = "PassageDungeonM" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "PassageDungeonM" } -- Deadmines
            nodes[13][42915972] = { id = 231, type = "PassageDungeonM" } -- Gnomeregan             
            nodes[13][53646537] = { id = 239, name = "", type = "PassageDungeonM" } -- Uldaman (Secondary Entrance) 
            nodes[13][54412915] = { id = 236, lfgid = 274, type = "PassageDungeonM", showInZone = true }-- Stratholme Service Entrance 
            nodes[13][46886972] = { id = { 741, 742, 66, 228, 229, 559 }, type = "PassageDungeonRaidMultiM" } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
          end
    

        --Eastern Kingdom ClassicIcons

        if self.db.profile.show.ClassicIcons then

          if self.db.profile.showContinentDungeons then
            nodes[13][53977927] = { id = 237, type = "Dungeon" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "Dungeon" } -- Deadmines
            nodes[13][42915972] = { id = 231, type = "Dungeon" } -- Gnomeregan    
            nodes[13][53646537] = { id = 239, name = "", type = "Dungeon" } -- Uldaman (Secondary Entrance) 
            nodes[13][54412915] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = true }-- Stratholme Service Entrance 
          end

          if self.db.profile.showContinentMultiple then
            nodes[13][46886972] = { id = { 741, 742, 66, 228, 229, 559 }, type = "MultipleM" } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
          end

        end

        --Eastern Kingdom Multiple
          if self.db.profile.showContinentMultiple then
            nodes[13][49428163] = { mnID = 42, id = { 745, 860 },  type = "MultipleM" } -- Karazhan, Return to Karazhan
            nodes[13][46583029] = { mnID = 19, id = { 311, 316 }, type = "MultipleD" } -- Scarlet Halls, Monastery 
            nodes[13][52176317] = { mnID = 15, id = { 1197, 239 }, type = "MultipleD" } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman 
          end
    
    
        --Eastern Kingdom Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" then          
              nodes[13][52448472] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Blasted Lands to Warspear              
            end

            if self.faction == "Alliance" then
              nodes[13][52428535] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Blasted Lands to Stormshield              
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[13][43993336] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[13][44503468] = { mnID = 50, name = "", type = "HPortal", showInZone = true } -- Portal to Hellfire from Tirisfal
              nodes[13][43358708] = { mnID = 18, name = "", type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[13][49764414] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar 
              nodes[13][33874948] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Orgimmar
              nodes[13][60195610] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][53428254] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind 
              nodes[13][35134883] = { mnID = 84, name = "" , type = "APortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Stormwind
            end
          end
    
    
        --Eastern Kingdom Ships
          if self.db.profile.showContinentShips then
            nodes[13][43039362] = { mnID = 10, name = "", type = "Ship", showInZone = true, hideOnContinent = false } -- Ship from Booty Bay to Ratchet
            
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              --nodes[13][40937205] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = false } -- Ship from Stormwind to Valiance Keep
              nodes[13][40967129] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = false } -- Ship from Stormwind to Borean Tundra
              nodes[13][41187327] = { mnID = 1161, name = "", type = "AShip", showInZone = true, hideOnContinent = false } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showContinentOldVanilla then
            nodes[13][54113049] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VRaid", showInZone = true}-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[13][46703243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Monastery Key for Old dungeons
            nodes[13][51383556] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VDungeon", showInZone = true, } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version 
          end
        end
    
    
        --############################
        --##### Continent Outland ####
        --############################
    
        if self.db.profile.showContinentOutland then
    
        -- Outland Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[101][44487857] = { id = 247, type = "Dungeon", showInZone = true } -- Auchenai Crypts 
            nodes[101][46027626] = { id = 250, type = "Dungeon", showInZone = true } -- Mana-Tombs 
            nodes[101][47577861] = { id = 252, type = "Dungeon", showInZone = true } -- Sethekk Halls 
            nodes[101][46028099] = { id = 253, type = "Dungeon", showInZone = true } -- Shadow Labyrinth 
            nodes[101][65842044] = { id = 257, type = "Dungeon" } -- The Botanica 
            nodes[101][65542528] = { id = 258, type = "Dungeon" } -- The Mechanar  
            nodes[101][66722143] = { id = 254, type = "Dungeon" } -- The Arcatraz
          end
    
    
        -- Outland Raids
          if self.db.profile.showContinentRaids then
            nodes[101][66452335] = { id = 749, type = "Raid" } -- The Eye  
            nodes[101][72298069] = { id = 751, type = "Raid" } -- Black Temple 
            nodes[101][45131901] = { id = 746, type = "Raid" } -- Gruul's Lairend
          end
    
    
        -- Outland Multiple
          if self.db.profile.showContinentMultiple then
            nodes[101][56695240] = { mnID = 100, id = { 747, 248, 256, 259 }, type = "MultipleM" } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
            nodes[101][34624490] = { mnID = 102, id = { 748, 260, 261, 262 }, type = "MultipleM" } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
          end
    
    
        -- Outland Portals
          if self.db.profile.showContinentPortals then
              nodes[101][41526586] = { mnID = 122, name = "", type = "Portal", showInZone = true } -- Portal from Shattrath to Quel'Danas
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[101][69025178] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Orgrimmar 
              nodes[101][45136633] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Shattrath to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[101][68905259] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Stormwind 
              nodes[101][45136633] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal from Shattrath to Stormwind
            end
          end
        end
    
    
        --##############################
        --##### Continent Northrend ####
        --##############################
    
        if self.db.profile.showContinentNorthrend then
    
          -- Northrend Dungeon
          if self.db.profile.showContinentDungeons then
            nodes[113][77707945] = { id = 285, type = "Dungeon" } -- Utgarde Keep, at doorway entrance 
            nodes[113][77557824] = { id = 286, type = "Dungeon" } -- Utgarde Pinnacle 
            nodes[113][59091507] = { id = 275, type = "Dungeon" } -- Halls of Lightning 
            nodes[113][56911729] = { id = 277, type = "Dungeon" } -- Halls of Stone 
            nodes[113][62405001] = { id = 273, type = "Dungeon" } -- Drak'Tharon Keep 
            nodes[113][75113259] = { id = 274, type = "Dungeon" } -- Gundrak Left Entrance 
            nodes[113][76533471] = { id = 274, type = "Dungeon" } -- Gundrak Right Entrance 
          end
    
          -- Northrend Raids
          if self.db.profile.showContinentRaids then
            nodes[113][58415888] = { id = 754, type = "Raid" } -- Naxxramas 
            nodes[113][40794199] = { id = 758, type = "Raid" } -- Icecrown Citadel 
            nodes[113][57721389] = { id = 759, type = "Raid" } -- Ulduar
            nodes[113][36624457] = { id = 753, type = "Raid" } -- Vault of Archavon
          end
    
    
        -- Northrend Multiple
          if self.db.profile.showContinentMultiple then
            nodes[113][40595892] = { mnID = 115, id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub        
            nodes[113][41154408] = { mnID = 118, id = { 276, 278, 280 }, type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
            nodes[113][47652029] = { mnID = 118, id = { 757, 284 }, type = "MultipleM" } -- Trial of the Crusader, Trial of the Champion 
            nodes[113][14725757] = { mnID = 114, id = { 756, 282, 281 }, type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
            nodes[113][50346038] = { mnID = 115, id = { 755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum 
          end
    
    
        -- Northrend Portal
          if self.db.profile.showContinentPortals then
            nodes[113][36504679] = { mnID = 125, name = "", type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[113][48594095] = { mnID = 85, name = "", type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[113][47794282] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } --  Dalaran to Stormwind City Portal
            end
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showContinentZeppelins then 
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[113][18766562] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[113][25077047] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship to Stormwind from Borean Tundra
              nodes[113][79358356] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship to Stormwind from Borean Tundra
            end
          end
        end
    
    
        --#############################
        --##### Continent Pandaria ####
        --#############################
    
        if self.db.profile.showContinentPandaria then
    
        -- Pandaria Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[424][72275515] = { id = 313, type = "Dungeon" } -- Temple of the Jade Serpent 
            nodes[424][48117132] = { id = 302, type = "Dungeon" } -- Stormstout Brewery
            nodes[424][40002920] = { id = 312, type = "Dungeon" } -- Shado-Pan Monastery
            nodes[424][23575057] = { id = 324, type = "Dungeon" } -- Siege of Niuzao Temple 
            nodes[424][42975779] = { id = 303, type = "Dungeon" } -- Gate of the Setting Sun 
            nodes[424][53575100] = { id = 321, type = "Dungeon" } -- Mogu'shan Palace
          end
    
    
        -- Pandaria Raids
          if self.db.profile.showContinentRaids then
            nodes[424][49152606] = { id = 317, type = "Raid" } -- Mogu'shan Vaults 
            nodes[424][52355265] = { id = 369, type = "Raid" } -- Siege of Orgrimmar 
            nodes[424][30076296] = { id = 330, type = "Raid" } -- Heart of Fear 
            nodes[424][23100860] = { id = 362, type = "Raid" } -- Throne of Thunder
            nodes[424][56685529] = { id = 320, type = "Raid" } -- Terrace of Endless Spring  
          end
    
    
        -- Pandaria Portals
          if self.db.profile.showContinentPortals then
            nodes[424][29444738] = { mnID = 504, name = "", type = "Portal", hideOnContinent = false, showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing 
            nodes[424][17970919] = { mnID = 388, name = "", type = "Portal", hideOnContinent = false } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[424][59733518] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Jade Forest to Orgrimmar
            end
          end
        end
    
    
        --############################
        --##### Continent Draenor ####
        --############################
    
        if self.db.profile.showContinentDraenor then
    
    
        -- Draenor Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[572][34102566] = { id = 385, type = "Dungeon" } -- Bloodmaul Slag Mines
            nodes[572][51322183] = { id = 536, type = "Dungeon" } -- Grimrail Depot
            nodes[572][52932678] = { id = 556, type = "Dungeon" } -- The Everbloom
            nodes[572][47961477] = { id = 558, type = "Dungeon" } -- Iron Docks
            nodes[572][53196866] = { id = 537, type = "Dungeon" } -- Shadowmoon Burial Grounds
            nodes[572][42607342] = { id = 476, type = "Dungeon" } -- Skyreach
            nodes[572][40256374] = { id = 547, type = "Dungeon" } -- Auchindoun
          end
    
    
        --Draenor Raids
          if self.db.profile.showContinentRaids then
            nodes[572][56854685] = { id = 669, type = "Raid" } -- Hellfire Citadel
            nodes[572][49992014] = { id = 457, type = "Raid" } -- Blackrock Foundry
            nodes[572][21125032] = { id = 477, type = "Raid" } -- Highmaul
          end
    
    
        --Draenor Garrison Portals
          if self.db.profile.showContinentOgreWaygates then
    
            if self.faction == "Horde" then
              nodes[572][52442304] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
              nodes[572][36803224] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
              nodes[572][20835300] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
              nodes[572][42665730] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
              nodes[572][47817859] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
              nodes[572][58706681] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              nodes[572][52442304] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
              nodes[572][36803224] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
              nodes[572][20835300] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
              nodes[572][42665730] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
              nodes[572][47817859] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
              nodes[572][58706681] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[572][71343912] = { mnID = 85, name = "", type = "HPortal" } -- Portal from Ashran to Orgrimmar, Vol'mar
              nodes[572][60424574] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Vol'mar to Ashran
              nodes[572][34663659] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[572][71674912] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[572][53396082] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Garison to Ashran Stormshield
            end
          end
        end
    
    
        --#################################
        --##### Continent Broken Isles ####
        --#################################
    
        if self.db.profile.showContinentBrokenIsles then
    
        --Broken Isles Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[619][47276616] = { id = 777, type = "Dungeon" } -- Assault on Violet Hold
            nodes[619][38805780] = { id = 716, type = "Dungeon" } -- Eye of Azshara
            nodes[619][34207210] = { id = 707, type = "Dungeon" } -- Vault of the Wardens
            nodes[619][89551352] = { id = 945, type = "Dungeon" } -- The Seat of the Triumvirate
            nodes[619][29403300] = { id = 740, type = "Dungeon" } -- Black Rook Hold
            nodes[619][59003060] = { id = 727, type = "Dungeon" } -- Maw of Souls
            nodes[619][47302810] = { id = 767, type = "Dungeon" } -- Neltharion's Lair
            nodes[619][49104970] = { id = 800, type = "Dungeon" } -- Court of Stars
            nodes[619][46004883] = { id = 726, type = "Dungeon" } -- The Arcway
            nodes[619][56416109] = { id = 900, type = "Dungeon" } -- Cathedral of the Night
            nodes[619][65573821] = { id = 721, type = "Dungeon" } -- Halls of Valor
            nodes[619][35792725] = { id = 762, type = "Dungeon" } -- Darkheart Thicket
            nodes[905][52513071] = { id = 945, type = "Dungeon", showInZone = true } -- The Seat of the Triumvirate
          end
    
    
        --Broken Isles Raids
          if self.db.profile.showContinentRaids then
            nodes[619][86262011] = { id = 946, type = "Raid" } -- Antorus, the Burning Throne
            nodes[619][46864732] = { id = 786, type = "Raid" } -- The Nighthold
            nodes[619][56506240] = { id = 875, type = "Raid" } -- Tomb of Sargeras
            nodes[619][64553903] = { id = 861, type = "Raid" } -- Trial of Valor
            nodes[619][34982901] = { id = 768, type = "Raid" } -- The Emerald Nightmare
            nodes[905][32896084] = { id = 946, type = "Raid", showInZone = true } -- Antorus, the Burning Throne
          end
    
    
        --Broken Isles Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[619][45606186] = { mnID = 85, name = "", type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
              nodes[619][33715775] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[619][45296767] = { mnID = 84,  name = "" , type = "APortal", showInZone = false } --  Portal from Dalaran to Stormwind
              nodes[619][32905786] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
             end
          end
        end
    
    
        --#############################
        --##### Continent Zandalar ####
        --#############################
    
        if self.db.profile.showContinentZandalar then
    
        --Zandalar Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[875][48865880] = { id = 968, type = "Dungeon" } -- Atal'Dazar
            nodes[875][45205880] = { id = 1041, type = "Dungeon" } -- Kings' Rest
            nodes[875][58243603] = { id = 1022, type = "Dungeon" } -- The Underrot
            nodes[875][40781425] = { id = 1030, type = "Dungeon" } -- Temple of Sethraliss
          
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][57757046] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE HORDE
            end
          
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[875][45457850] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE Alliance
            end
          end
    
    
        --Zandalar Raids
          if self.db.profile.showContinentRaids then
            nodes[875][59413469] = { id = 1031, type = "Raid" } -- Uldir
            nodes[875][86731430] = {  id = 1179, type = "Raid" } -- The Eternal Palace 
            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[875][56005350] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
    
        -- Zandalar Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][58486162] = { mnID = 1163, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
            end
          end
    
    
        -- Zandalar Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][57957497] = { mnID = 1, name = "", type = "HShip", showInZone = true } -- Ship from Zandalar to Echo Isles 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[875][33051846] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship to Boralus from Vol'dun 
              nodes[875][62402600] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship to Boralus from Nazmir 
              nodes[875][47177779] = { mnID = 1161, name = "", type = "AShip", showInZone = true } -- Ship to Boralus from Zuldazar 
            end
          end


        -- Zandalar Transport
          if self.db.profile.showContinentTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][56027038] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "TravelM", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
        end
    
    
        --##############################
        --##### Continent Kul Tiras ####
        --##############################
    
        if self.db.profile.showContinentKulTiras then 
    
        -- Kul Tiras Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[876][19872697] = { id = 1178, type = "Dungeon" } -- Operation: Mechagon 
            nodes[876][67018056] = { id = 1001, type = "Dungeon" } -- Freehold 
            nodes[876][31675333] = { id = 1021, type = "Dungeon" } -- Waycrest Manor 
            nodes[876][66051501] = { id = 1036, type = "Dungeon" } -- Shrine of Storm 
            nodes[876][77566206] = { id = 1002, type = "Dungeon" } -- Tol Dagor
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61865000] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
            end
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[876][69936482] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
            end
          end
    
    
        -- Kul Tiras Raids
          if self.db.profile.showContinentRaids then
            nodes[876][68262354] = { id = 1177, type = "Raid" } -- Crucible of Storms
            nodes[876][86261171] = { id = 1179, type = "Raid" } -- The Eternal Palace
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61645308] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
    
        -- Kul Tiras Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61214995] = { mnID = 1161, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[876][25676657] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Drustvar to Zuldazar
              nodes[876][54391406] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Stormsong Valley to Zuldazar
              nodes[876][68326548] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Tiragarde Sound to Zuldazar 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][62485167] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship to Stormwind
            end
          end

          -- Kul Tiras Transport
          if self.db.profile.showContinentTransport then

            if self.faction == "Horde" then
            nodes[876][20272427] = { mnID = 862, name = "", type = "TransportHelper", showInZone = true } -- Portal from Mechagon to Zuldazar
            end

            if self.faction == "Alliance" then
              nodes[876][20272427] = { mnID = 1161, name = "", type = "TransportHelper", showInZone = true } -- Portal from Mechagon to Zuldazar
            end
          end
        end
    
    
        --################################
        --##### Continent Shadowlands ####
        --################################
    
        if self.db.profile.showContinentShadowlands then
    
        -- Shadowlands Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[1550][69025977] = { id = 1182, type = "Dungeon" } -- The Necrotic Wake
            nodes[1550][74085251] = { id = 1186, type = "Dungeon" } -- Spires of Ascension
            nodes[1550][64912620] = { id = 1183, type = "Dungeon" } -- Plaguefall
            nodes[1550][63372312] = { id = 1187, type = "Dungeon" } -- Theater of Pain
            nodes[1550][44698228] = { id = 1184, type = "Dungeon" } -- Mists of Tirna Scithe
            nodes[1550][54378591] = { id = 1188, type = "Dungeon" } -- De Other Side
            nodes[1550][31335274] = { id = 1185, type = "Dungeon" } -- Halls of Atonement
            nodes[1550][24984833] = { id = 1189, type = "Dungeon" } -- Sanguine Depths
            nodes[1550][31957638] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
          end
    
    
        -- Shadowlands Raids
          if self.db.profile.showContinentRaids then
            nodes[1550][89067983] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1550][27081359] = { id = 1193, type = "Raid" } -- Sanctum of Domination
          end
    
    
        -- Shadowlands Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1550][46555240] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = false } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1550][46555240] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = false, showInZone = false } -- Oribos to Stormwind City Portal
             end
          end
        end
    
    
        --#################################
        --##### Continent Dragon Isles ####
        --#################################
    
        if self.db.profile.showContinentDragonIsles then
    
        -- Dragonflight Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[1978][52884168] = { id = 1202, type = "Dungeon" } -- Ruby Life Pools
            nodes[1978][42163601] = { id = 1199, type = "Dungeon" } -- Neltharus
            nodes[1978][43635285] = { id = 1198, type = "Dungeon" } -- The Nokhud Offensive
            nodes[1978][35407585] = { id = 1196, type = "Dungeon" } -- Brackenhide Hollow
            nodes[1978][47408261] = { id = 1203, type = "Dungeon" } -- The Azure Vault
            nodes[1978][63114151] = { id = 1201, type = "Dungeon" } -- Algeth'ar Academy
            nodes[1978][63614887] = { id = 1204, type = "Dungeon" } -- Halls of Infusion
            nodes[1978][64415841] = { id = 1209, type = "Dungeon" } -- Dawn of the Infinite
          end
    
    
        -- Dragonflight Raids
          if self.db.profile.showContinentRaids then
            nodes[1978][69074677] = { id = 1200, type = "Raid" } -- Vault of the Incarnates
            nodes[1978][86737309] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
          end
    
    
        -- Dragonflight Portals
          if self.db.profile.showContinentPortals then
            nodes[1978][55614938] = { name = L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[1978][54734828] = { mnID = 15, name = "", type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to the Badlands
            nodes[1978][56794883] = { mnID = 2200, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to The Emerald Dream
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end
    
          if self.db.profile.showContinentPassage then
            nodes[1978][31065686] = { id = 1207, type = "PassageRaidM", showInZone = true, hideOnContinent = false }-- Amirdrassil, the Dream's Hope
          end
    
        -- Dragonflight Zeppelin
          if self.db.profile.showContinentZeppelins then      
    
            if self.faction == "Horde" or db.show.EnemyFaction then 
              nodes[1978][59572607] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1978][59732701] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship from The Waking Shores to Stormwind
            end
          end
        end 
      end   
  end
end 