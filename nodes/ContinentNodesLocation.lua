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
            nodes[12][52215315] = { id = 240, type = "Dungeon" } -- Wailing Caverns            
            nodes[11][54916646] = { id = 240, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Wailing Caverns 
            nodes[12][43913301] = { id = 227, type = "Dungeon" } -- Blackfathom Deeps 
            nodes[63][16451100] = { id = 227, type = "Dungeon", showInZone = false, hideOnContinent = true} -- Blackfathom Deeps 
            nodes[12][53146914] = { id = 233, type = "Dungeon" } -- Razorfen Downs 
            nodes[12][38395594] = { id = 232, type = "Dungeon" } -- Maraudon 
            nodes[67][78285518] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][52152417] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern 
            nodes[68][44517669] = { id = 232, type = "Dungeon", showInZone = true, hideOnContinent = true } -- Maraudon Foulspore Cavern first Entrance 
            nodes[12][42726722] = { id = 230, lfgid = 36, type = "Dungeon", } -- Dire Maul - Warpwood Quarter 
            nodes[69][60323015] = { id = 230, lfgid = 36, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Capital Gardens - West left Entrance 
            nodes[69][60303130] = { id = 230, lfgid = 36, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Capital Gardens - West right Entrance 
            nodes[69][62502490] = { id = 230, lfgid = 38, type = "Dungeon", hideOnContinent = false, showInZone = true } -- Dire Maul - Gordok Commons - North  
            nodes[12][54187774] = { id = 241, type = "Dungeon" } -- Zul'Farrak
            nodes[12][58304269] = { id = 226, type = "Dungeon" } -- Ragefire 
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
          end
    

          if self.db.profile.showContinentPassage then

            nodes[10][38916921] = { id = 240, type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Wailing Caverns 
            nodes[66][29106256] = { id = 232, type = "PassageDungeonL", showInZone = true, hideOnContinent = true } -- Maraudon Outside
            nodes[63][14181414] = { id = 227, type = "PassageDungeonL", showInZone = true, hideOnContinent = true } -- Blackfathom Deeps
            nodes[69][65503524] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = true, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[69][77073692] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = true, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][46106657] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][43906613] = { id = 230, lfgid = 34, type = "PassageDungeonM", hideOnContinent = false, showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache 
          end

        --Kalimdor Multiple
          if self.db.profile.showContinentMultiple then
            nodes[71][64864997] = { id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = true, hideOnContinent = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            nodes[74][30857356] = { id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = true, hideOnContinent = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
    
    
        -- Kalimdor Portals
          if self.db.profile.showContinentPortals then
    
    
              if self.faction == "Horde" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[81][41614520] = { mnID = 862, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal from Silithus to Zandalar
                nodes[71][65984960] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Orgrimmar 
                nodes[74][58152676] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[12][59898422] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Orgrimmar 
                nodes[12][56122725] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal To Orgrimmar from Hyjal
              end
    
              if self.faction == "Alliance" then --was additionally added without the showEnemyFaction option because the two points would be on top of each other when showing EnemyFaction and would therefore not be clickable for one of the two factions
                nodes[81][41614520] = { mnID = 1161, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal from Silithus to Boralus
                nodes[71][65984960] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Tanaris to Stormwind City 
                nodes[74][58942680] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[12][59898422] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Tanaris to Stormwind City 
                nodes[12][56122725] = { mnID = 84,  name = "" , type = "APortal", showInZone = true , hideOnContinent = false } -- Portal Tol Stormwind from Hyjal
              end
    
              if self.faction == "Horde" or db.show.EnemyFaction then   
                nodes[12][45842223] = { mnID = 862, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar 
                nodes[62][46243511] = { mnID = 862, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[85][50765561] = { mnID = 18, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Ruins of Lordaeron 
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
                nodes[85][47393928] = { mnID = 245, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } --  Portal to Tol Barad
                nodes[85][48863851] = { mnID = 1527, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Uldum
                nodes[85][50243944] = { mnID = 241, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Twilight Highlands
                nodes[85][51203832] = { mnID = 198, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Hyjal
                nodes[85][50863628] = { mnID = 207, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Deepholm
                nodes[85][49203647] = { mnID = 203, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal to Vashjir
                nodes[207][50945311] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal To Orgrimmar from Deepholm
                nodes[198][63482447] = { mnID = 85, dnID = "test", name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal To Orgrimmar from Hyjal
              end
    
              if self.faction == "Alliance" or db.show.EnemyFaction then
                nodes[12][47092322] = { mnID = 1161, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from New Darkshore to Zandalar 
                nodes[62][48023628] = { mnID = 1161, name = L["(its only shown up ingame if your faction is currently occupying Bashal'Aran)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from New Darkshore to Zandalar
                nodes[198][62602315] = { mnID = 84,  name = "" , type = "APortal", showInZone = true , hideOnContinent = true } -- Portal Tol Stormwind from Hyjal
              end
          end
    
    
        --Kalimdor Zeppelins
          if self.db.profile.showContinentZeppelins then
            nodes[12][59814453] = { mnID = 2022, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from Durotar to Waking Shores - Dragonflight
            nodes[85][45466142] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from OG to Borean Tundra - Northrend
            nodes[85][42796534] = { mnID = 88, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from OG to Thunder Bluff
            nodes[85][52975228] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, hideOnContinent = false } -- Zeppelin from OG to Thunder Bluff
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
    
        -- Eastern  Kingdom Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[122][61303090] = { id = 249, type = "Dungeon" } -- Magisters' Terrace 
            nodes[95][85206430] = { id = 77, type = "Dungeon" } -- Zul'Aman 
            nodes[13][31796256] = { id = 65, type = "Dungeon" } -- Throne of Tides 
            nodes[13][42397323] = { id = 238, type = "Dungeon" } -- The Stockade 
            nodes[13][47448471] = { id = 76, type = "Dungeon" } -- Zul'Gurub 
            nodes[13][40764187] = { id = 64, type = "Dungeon" } -- Shadowfang Keep 
            nodes[16][36502765] = { id = 239, type = "Dungeon", showInZone = true, hideOnContinent = true} -- Uldaman (inside cave) 
            nodes[15][60673748] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true} -- Uldaman second entrance(inside cave) 
            nodes[13][50573677] = { id = 246, type = "Dungeon" } -- Scholomance
            nodes[13][52712836] = { id = 236, lfgid = 40, type = "Dungeon" } -- Stratholme 
            nodes[13][42915972] = { id = 231, type = "Dungeon" } -- Gnomeregan 
            nodes[13][49428163] = { id = 860, type = "Dungeon" } -- Return to Karazhan 
            nodes[13][53977927] = { id = 237, type = "Dungeon" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "Dungeon" } -- Deadmines
            nodes[13][53135585] = { id = 71, type = "Dungeon" } -- Grim Batol

          end
    
    
        -- Eastern  Kingdom Raids
          if self.db.profile.showContinentRaids then
            nodes[122][44304570] = { id = 752, type = "Raid" } -- Sunwell Plateau 
            nodes[13][47546862] = { id = 73, type = "Raid" } -- Blackwind Descent 
            nodes[13][54905899] = { id = 72, type = "Raid" } -- The Bastion of Twilight 
            nodes[13][35565150] = { id = 75, type = "Raid" } -- Baradin Hold
          end


          -- Eastern  Kingdom Passage
          if self.db.profile.showContinentPassage then            
            nodes[36][21063760] = { mnID = 33, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[32][35268404] = { mnID = 33, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true} -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[13][53646537] = { id = 239, name = "", type = "PassageDungeonM" } -- Uldaman (Secondary Entrance) 
            nodes[15][58543698] = { id = 239, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true} -- Uldaman (Secondary Entrance) 
            nodes[13][54472924] = { id = 236, lfgid = 274, type = "PassageDungeonM" }-- Stratholme Service Entrance 
            nodes[23][43251854] = { id = 236, lfgid = 274, type = "PassageDungeonM", showInZone = true }-- Stratholme Service Entrance 
            nodes[33][68635371] = { mnID = 34, dnID = DUNGEON_FLOOR_BURNINGSTEPPES15, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            nodes[33][65896169] = { mnID = 34, dnID = DUNGEON_FLOOR_BURNINGSTEPPES15, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Caverns
            nodes[33][45004700] = { mnID = 35, dnID = DUNGEON_FLOOR_MOLTENCORE1.."\n" .. DUNGEON_FLOOR_BURNINGSTEPPES16, name = "", type = "PassageRaidM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            nodes[34][58792725] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
            nodes[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeonM", showInZone = true, hideOnContinent = true } -- Blackrock Depths
          end
    

        --Eastern Kingdom Multiple
          if self.db.profile.showContinentMultiple then
            nodes[13][46886972] = { id = { 741, 742, 66, 228, 229, 559 }, type = "MultipleM" } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            nodes[13][49428163] = { id = { 745, 860 },  type = "MultipleM" } -- Karazhan, Return to Karazhan
            nodes[13][46583029] = { id = { 311, 316 }, type = "MultipleD" } -- Scarlet Halls, Monastery 
            nodes[13][52176317] = { id = { 1197, 239 }, type = "MultipleD" } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman 
          end
    
    
        --Eastern Kingdom Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" then
              nodes[17][55005418] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Warspear              
              nodes[13][52448472] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Blasted Lands to Warspear              
            end

            if self.faction == "Alliance" then
              nodes[17][55005418] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Blasted Lands to Stormshield
              nodes[13][52428535] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Blasted Lands to Stormshield              
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[18][60735867] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[18][61905899] = { mnID = 50, name = "", type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506694] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal to Orgrimmar from Tirisfal
              nodes[2070][59506797] = { mnID = 50, name = "", type = "HPortal", showInZone = true } -- Portal to Stranglethorn from Tirisfal
              nodes[2070][60126689] = { mnID = 117, name = "", type = "HPortal", showInZone = true } -- Portal to Howling Fjord from Tirisfal
              nodes[2070][59406743] = { mnID = 110, name = "", type = "HPortal", showInZone = true } -- Portal to Silvermoon from Tirisfal
              nodes[50][37545099] = { mnID = 18, name = "", type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[224][42233253] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Grom'gol
              nodes[13][43358708] = { mnID = 18, name = "", type = "HPortal", showInZone = true } -- Portal to Undercity from Grom'gol
              nodes[94][54552795] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][58511859] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Orgrimmar from Silvermoon 
              nodes[110][49491509] = { mnID = 18, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal to Undercity from Silvermoon 
              nodes[14][27442938] = { mnID = 862, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Arathi to Zandalar 
              nodes[245][56397967] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal Tol Bard to Orgimmar  
              nodes[13][33874948] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Orgimmar
              nodes[90][85181711] = { mnID = 100, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Old Undercity to Hellfire
              nodes[241][73595355] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal Tol Orgrimmar from Twilight Highlands  
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[17][66382798] = { mnID = 84, name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind 
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
              nodes[13][35134883] = { mnID = 84, name = "" , type = "APortal", hideOnContinent = false, showInZone = false } -- Portal Tol Bard to Stormwind
              nodes[245][75235887] = { mnID = 84, name = "" , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal Tol Bard to Stormwind  
            end
          end
    
    
        --Eastern Kingdom Ships
          if self.db.profile.showContinentShips then
            nodes[13][43039362] = { mnID = 10, name = "", type = "Ship", showInZone = true, hideOnContinent = false } -- Ship from Booty Bay to Ratchet
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][40937205] = { mnID = 114, name = "", type = "AShip", showInZone = true, hideOnContinent = false } -- Ship from Stormwind to Valiance Keep
            end
          end
    
    
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showContinentOldVanilla then
            nodes[13][54113049] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VRaid", showInZone = true}-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[23][35722308] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VRaid", showInZone = true, hideOnContinent = true }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[19][48275496] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true } -- Scarlet Monastery Key for Old dungeons 
            nodes[2070][83723082] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = true, hideOnContinent = true  } -- Scarlet Monastery Key for Old dungeons 
            nodes[13][46703243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Monastery Key for Old dungeons
            nodes[18][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons
            nodes[2070][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery Key for Old dungeons
            nodes[2070][83812772] = { id = 316, name ="", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Scarlet Monastery
            nodes[2070][85483158] = { id = 311, name ="", type = "Dungeon", showInZone = true, hideOnContinent = true } -- Scarlet Halls 
            nodes[18][85353028] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Cathedral 
            nodes[19][78882223] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Cathedral"
            nodes[18][85153180] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Library 
            nodes[19][78255762] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Monastery -"
            nodes[18][85573138] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true} -- Scarlet Monastery - Armory
            nodes[19][86414766] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Mona"
            nodes[18][84763039] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = false, hideOnContinent = true } -- Scarlet Monastery - Graveyard 
            nodes[19][68832372] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VDungeon", showInZone = true } -- Scarlet Monastery - Graveyard  
            nodes[13][51383556] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VDungeon", showInZone = true, } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version 
            nodes[22][69767181] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VDungeon", showInZone = true, hideOnContinent = true } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version
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
            nodes[101][56695240] = { id = { 747, 248, 256, 259 }, type = "MultipleM" } -- Hellfire Ramparts, The Blood Furnace, The Shattered Halls, Magtheridon's Lair 
            nodes[101][34624490] = { id = { 748, 260, 261, 262 }, type = "MultipleM" } -- Slave Pens, The Steamvault, The Underbog, Serpentshrine Cavern
          end
    
    
        -- Outland Portals
          if self.db.profile.showContinentPortals then
              nodes[111][48614203] = { mnID = 122, name = "", type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Quel'Danas 
              nodes[108][29542339] = { mnID = 122, name = "", type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Quel'Danas 
              nodes[101][41526586] = { mnID = 122, name = "", type = "Portal", showInZone = true } -- Portal from Shattrath to Quel'Danas
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[100][88574770] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Orgrimmar 
              nodes[100][89234945] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Orgrimmar 
              nodes[111][56784884] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Orgrimmar 
              nodes[108][31332481] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Orgrimmar 
              nodes[101][45136633] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portal from Shattrath to Orgrimmar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[100][88635281] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = true, showInZone = false } -- Portal from Hellfire to Stormwind 
              nodes[100][89215101] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = false, showInZone = true } -- Portal from Hellfire to Stormwind 
              nodes[111][57214825] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Stormwind 
              nodes[108][31332481] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = true, showInZone = true } -- Portal from Shattrath to Stormwind 
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
            nodes[127][34154413] = { id = 283, type = "Dungeon", showInZone = true } -- The Violet Hold
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
            nodes[113][40595892] = { id = { 271, 272 }, type = "MultipleD" } -- Ahn'kahet The Old Kingdom, Azjol-Nerub        
            nodes[113][41154408] = { id = { 276, 278, 280 }, type = "MultipleD" } -- The Forge of Souls, Halls of Reflection, Pit of Saron         
            nodes[113][47652029] = { id = { 757, 284 }, type = "MultipleM" } -- Trial of the Crusader, Trial of the Champion 
            nodes[113][14725757] = { id = { 756, 282, 281 }, type = "MultipleM" } -- The Eye of Eternity, The Nexus, The Oculus
            nodes[113][50346038] = { id = { 755, 761 }, type = "MultipleR", showInZone = true } -- The Ruby Sanctum, The Obsidian Sanctum 
          end
    
    
        -- Northrend Portal
          if self.db.profile.showContinentPortals then
            nodes[123][49111534] = { mnID = 125, name = "", type = "Portal", hideOnContinent = true, showInZone = true } -- LakeWintergrasp to Dalaran Portal 
            nodes[113][36504679] = { mnID = 125, name = "", type = "Portal", showInZone = true } -- LakeWintergrasp to Dalaran Portal
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[125][55322545] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Dalaran to Orgrimmar Portal 
              nodes[127][31103140] = { mnID = 85, name = "", type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[125][40796326] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = false, showInZone = true } -- Dalaran to Stormwind City Portal
              nodes[127][26614271] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } --  Dalaran to Stormwind City Portal
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
            nodes[388][50657339] = { mnID = 504, name = "", type = "Portal", hideOnContinent = false, showInZone = true } -- Portal from Shado-Pan Garrison to IsleoftheThunderKing 
            nodes[424][17970919] = { mnID = 388, name = "", type = "Portal", hideOnContinent = false } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
            nodes[504][33223269] = { mnID = 388, name = "", type = "Portal", hideOnContinent = true, showInZone = true } -- Portal from IsleoftheThunderKing to Shado-Pan Garrison
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[371][28501401] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Jade Forest to Orgrimmar
              nodes[379][85946249] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Jade Forest to Orgrimmar
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
              nodes[543][58033444] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              nodes[543][58033444] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Gorgrond
              nodes[525][59544752] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate FrostfireRidge
              nodes[550][32164623] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Nagrand
              nodes[535][55084813] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Talador
              nodes[542][54625163] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate SpiresOfArak
              nodes[539][50463566] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, hideOnContinent = false } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[572][71343912] = { mnID = 85, name = "", type = "HPortal" } -- Portal from Ashran to Orgrimmar, Vol'mar
              nodes[590][75184879] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
              nodes[534][61024735] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Vol'mar to Ashran
              nodes[525][51416484] = { mnID = 624, name = L["Ashran"], type = "HPortal", showInZone = true } -- Portal from Garrison to Ashran
              nodes[624][60825159] = { mnID = 85, name = "", type = "HPortal", showInZone = true, } -- Portal from Garrison to Ashran
              nodes[588][45001476] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Garrison to Ashran (Ashran Zone)
              nodes[624][53184384] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true } -- Portal from Ashran to Vol'mar Captive
              nodes[588][42911275] = { mnID = 534, name = L["Vol'mar"], type = "HPortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Vol'mar Captive (Ashran Zone)
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[622][60813785] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[588][43848830] = { mnID = 84,  name = "" , type = "APortal", showInZone = true } -- Portal from Ashran to Stormwind
              nodes[582][68522819] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true } -- Portal from Garison to Ashran
              nodes[539][32261571] = { mnID = 622, name = L["Ashran"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portal from Garison to Ashran
              --nodes[624][53184384] = { mnID = 534, name = L["Lion's Watch"], type = "APortal", showInZone = true } -- Portal from Ashran to Lion's Watch
              --nodes[588][42911275] = { mnID = 534, name = L["Lion's Watch"], type = "APortal", showInZone = true, hideOnContinent = true } -- Portal from Ashran to Lion's Watch (Ashran Zone)
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
              nodes[627][55242392] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Dalaran to Orgrimmar Portal
              nodes[619][45606186] = { mnID = 85, name = "", type = "HPortal", showInZone = true } --  Dalaran to Orgrimmar Portal
              nodes[630][46654129] = { mnID = 85, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal to Orgrimmar from Aszuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[627][40416378] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = false, showInZone = true } --  Dalaran to Stormwind City Portal
              nodes[619][45296767] = { mnID = 84,  name = "" , type = "APortal", showInZone = false } --  Portal from Dalaran to Stormwind
              nodes[630][44664143] = { mnID = 84,  name = "" , type = "APortal", showInZone = true, hideOnContinent = false } -- Portal to Stormwind from Aszuna
              nodes[941][43092506] = { mnID = 84,  name = "" , type = "APortal", showInZone = false } --  Portal from Krokuun - Vindikaar to Stormwind
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
              nodes[1165][44049256] = { id = 1012, type = "Dungeon", showInZone = true } -- The MOTHERLODE HORDE
              --nodes[862][55995989] = { id = 1012, type = "Dungeon" } -- The MOTHERLODE HORDE
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
            nodes[1355][50341233] = {  id = 1179, type = "PassageRaidM", showInZone = true } -- The Eternal Palace
            nodes[1528][47353182] = {  id = 1179, type = "Raid", showInZone = true } -- The Eternal Palace
    
            if self.faction == "Horde" or db.show.EnemyFaction then
            nodes[875][56005350] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
    
        -- Zandalar Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[862][58474432] = { mnID = 1163, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
              nodes[1165][51424583] = { mnID = 1163, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "HPortal", showInZone = true, hideOnContinent = false } -- Portalroom from Dazar'alor
              nodes[1163][73726194] = { mnID = 110, name = "", type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][74006974] = { mnID = 85, name = "", type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][74027739] = { mnID = 88, name = "", type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][73808541] = { mnID = 81, name = "", type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1163][63008553] = { mnID = 1355,  name = "", type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1355][47276279] = { mnID = 1163, name = "", type = "HPortal", showInZone = true } -- Portalroom from Dazar'alor
              nodes[1165][41838761] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Portal from Dazar'alor to Mechagon
              nodes[1165][52079454] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "HPortal", showInZone = false } -- Portal from Dazar'alor to Arathi or Darkshore
              nodes[1165][51719454] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "HPortal", showInZone = false } -- Portal from Dazar'alor to Arathi or Darkshore         
              nodes[1355][52349627] = { mnID = 1165, name = "", type = "HPortal", showInZone = true, hideOnContinent = false } -- Portal from Newhome to Dazar'alor
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
              nodes[862][58466298] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "TravelM", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
              nodes[862][54985825] = { mnID = 1462, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Dazar'alor to Mechagon 
              nodes[1462][75522266] = { mnID = 862, name = L["Captain Krooz"] .. " " .. L["Travel"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Ship from Mechagon to Zuldazar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1161][67952670] = { mnID = 875, name = L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"], type = "TransportHelper", showInZone = true, hideOnContinent = false } -- Portal from Dazar'alor to Mechagon
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
            nodes[942][78932647] = { id = 1036, type = "Dungeon" } -- Shrine of Storm 
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
            nodes[876][86571446] = { id = 1179, type = "Raid" } -- The Eternal Palace
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][61645308] = { id = 1176, type = "Raid" } -- Battle of Dazar'alor
            end
          end
    
    
        -- Kul Tiras Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[895][74072427] = { mnID = 1161, name = L["Portalroom"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true } -- Portalroom from Boralus
              nodes[1161][70351605] = { name = L["Portalroom"] .. " " .. L["(inside building)"], type = "APortal", showInZone = true, hideOnContinent = false } -- Portalroom from Boralus
              nodes[1161][69641590] = { mnID = 81, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70131684] = { mnID = 84, name = "" , type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70381499] = { mnID = 103, name = "", type = "APortal", showInZone = false, hideOnContinent = true } -- Portalroom from Boralus
              nodes[1161][70891536] = { mnID = 87, name = "", type = "APortal", showInZone = false, hideOnContinent = true} -- Portalroom from Boralu
              nodes[1161][66182474] = { mnID = 14, name = L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"], type = "APortal", showInZone = true } -- Portalroom from Boralus
              nodes[1161][66212442] = { mnID = 62, name = L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"], type = "APortal", showInZone = true } -- Portalroom from Boralus
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[876][25676657] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Drustvar to Zuldazar
              nodes[876][54391406] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Stormsong Valley to Zuldazar
              nodes[876][68326548] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Tiragarde Sound to Zuldazar
              nodes[876][20182395] = { mnID = 862, name = "", type = "HShip", showInZone = true } -- Portal from Mechagon to Zuldazar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][62485167] = { mnID = 84, name = "", type = "AShip", showInZone = true } -- Ship to Stormwind
            end
          end
        end
    
    
        --################################
        --##### Continent Shadowlands ####
        --################################
    
        if self.db.profile.showContinentShadowlands then
    
        -- Shadowlands Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[1533][40085519] = { id = 1182, type = "Dungeon" } -- The Necrotic Wake
            nodes[1533][58602852] = { id = 1186, type = "Dungeon" } -- Spires of Ascension
            nodes[1536][59306484] = { id = 1183, type = "Dungeon" } -- Plaguefall
            nodes[1536][53215314] = { id = 1187, type = "Dungeon" } -- Theater of Pain
            nodes[1565][35715421] = { id = 1184, type = "Dungeon" } -- Mists of Tirna Scithe
            nodes[1565][68646667] = { id = 1188, type = "Dungeon" } -- De Other Side
            nodes[1525][78624930] = { id = 1185, type = "Dungeon" } -- Halls of Atonement
            nodes[1525][51093007] = { id = 1189, type = "Dungeon" } -- Sanguine Depths
            nodes[1550][31957638] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
            nodes[2016][88914392] = { id = 1194, type = "Dungeon" } -- Tazavesh, the Veiled Market
          end
    
    
        -- Shadowlands Raids
          if self.db.profile.showContinentRaids then
            nodes[1550][89067983] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1970][80765336] = { id = 1195, type = "Raid" } -- Sepulcher of the First Ones
            nodes[1525][45764149] = { id = 1190, type = "Raid" } -- Castle Nathria
            nodes[1550][27081359] = { id = 1193, type = "Raid" } -- Sanctum of Domination
            nodes[1543][69703210] = { id = 1193, type = "Raid" } -- Sanctum of Domination  
          end
    
    
        -- Shadowlands Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[1670][20805432] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = true } -- Oribos to Orgrimmar Portal
              nodes[1550][46555240] = { mnID = 85, name = "", type = "HPortal", hideOnContinent = false, showInZone = false } -- Oribos to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1670][20654625] = { mnID = 84,  name = "" , type = "APortal", hideOnContinent = false, showInZone = true } -- Oribos to Stormwind City Portal
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
            nodes[2025][73065567] = { id = 1200, type = "Raid" } -- Vault of the Incarnates
            nodes[1978][86737309] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
            nodes[2133][48451022] = { id = 1208, type = "Raid" } -- Aberrus, the Shadowed Crucible
            nodes[2023][18585257] = { id = 1207, type = "PassageRaidM", showInZone = true, hideOnContinent = false }-- Amirdrassil, the Dream's Hope
          end
    
    
        -- Dragonflight Portals
          if self.db.profile.showContinentPortals then
            nodes[2025][40656084] = { name = L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2112][53875511] = { name = L["The Timeways"], type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to Nazmir, Uldum and Tiragarde Sound
            nodes[2112][26104102] = { mnID = 15, name = "", type = "Portal", hideOnContinent = false, showInZone = true } --  Portal from Valdrakken to the Badlands
            nodes[2200][73065245] = { mnID = 2023, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal The Emerald Dream to Ohn'ahran Plains
            nodes[2025][36895880] = { mnID = 15, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to Badlands
            nodes[2025][41796084] = { mnID = 2200, name = "", type = "Portal", showInZone = true, hideOnContinent = false } -- Portal to The Emerald Dream
            nodes[2023][18295226] = { mnID = 2200, name = "", type = "Portal", showInZone = false, hideOnContinent = true } -- Portal to The Emerald Dream
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[2112][56593828] = { mnID = 85, name = L["(inside building)"], type = "HPortal", hideOnContinent = false, showInZone = true } -- Valdrakken to Orgrimmar Portal
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[2112][59804169] = { mnID = 84,  name = L["(inside building)"], type = "APortal", hideOnContinent = false, showInZone = true } -- Valdrakken to Stormwind City Portal
            end
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