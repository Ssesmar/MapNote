local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadMiniMapDungeonNodesLocationinfo(self)
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

        -- Kalimdor Dungeons
            if self.db.profile.showMiniMapDungeons then       
            minimap[11][54916646] = { id = 240, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Wailing Caverns 
            minimap[948][51102882] = { id = 67, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Stonecore

            -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[1][46200001] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire
            minimap[10][80190006] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire
            minimap[76][18729718] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire
            minimap[85][51685850] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire
            minimap[86][66715154] = { id = 226, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire - Chasm of shadows
            minimap[62][33009467] = { id = 227, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackfathom Deeps 
            minimap[77][15097658] = { id = 227, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackfathom Deeps 
            minimap[10][40496868] = { id = 240, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Wailing Caverns
            minimap[7][79421794] = { id = 240, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Wailing Caverns
            minimap[199][46952074] = { id = 240, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Wailing Caverns
            minimap[69][59514032] = { id = 230, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul
            minimap[199][40779446] = { id = 234, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Kraul
            minimap[199][51899825] = { id = 233, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
            minimap[70][13176945] = { id = 234, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Kraul
            minimap[70][28867479] = { id = 233, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
            minimap[64][28021695] = { id = 234, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Kraul
            minimap[64][46742333] = { id = 233, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
            minimap[71][39482205] = { id = 241, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Zul'Farrak
            minimap[78][93073504] = { id = 241, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Zul'Farrak
            minimap[64][56309765] = { id = 241, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Zul'Farrak
            minimap[75][57042578] = { id = 184, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- End Time
            minimap[75][68382951] = { id = 186, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hour of Twilight
            minimap[75][26333279] = { id = 251, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Old Hillsbrad Foothills
            minimap[75][22136381] = { id = 185, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Well of Eternity
            minimap[75][34438489] = { id = 255, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Black Morass
            minimap[75][60118272] = { id = 279, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Culling of Stratholme
            minimap[207][47385205] = { id = 67, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Stonecore
            minimap[249][60526415] = { id = 69, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Lost City of the Tol'vir
            minimap[249][69095283] = { id = 70, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Origination
            minimap[249][76708435] = { id = 68, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Vortex Pinnacle
            minimap[1527][60526415] = { id = 69, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Lost City of the Tol'vir
            minimap[1527][69095283] = { id = 70, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Origination
            minimap[71][24619233] = { id = 70, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Origination
            minimap[1527][76708435] = { id = 68, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Vortex Pinnacle
          end

        -- Kalimdor Dungeons without ClassicIcons is activ
          if self.db.profile.showMiniMapDungeons and not self.db.profile.show.ClassicIcons then
            minimap[69][60323015] = { id = 230, lfgid = 36, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Capital Gardens - West left Entrance 
            minimap[69][60303130] = { id = 230, lfgid = 36, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Capital Gardens - West right Entrance 
            minimap[69][62502490] = { id = 230, lfgid = 38, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Gordok Commons - North  
            minimap[67][78285518] = { id = 232, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Maraudon Foulspore Cavern 
            minimap[68][52152417] = { id = 232, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Maraudon Foulspore Cavern 
            minimap[68][44517669] = { id = 232, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Maraudon Foulspore Cavern first Entrance
          end

        --Kalimdor Raids
          if self.db.profile.showMiniMapRaids then
          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
          minimap[63][79821712] = { id = 78, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Firelands
          minimap[198][46797838] = { id = 78, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Firelands
          minimap[199][68439906] = { id = 760, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Onyxias Lair
          minimap[70][52217593] = { id = 760, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Onyxias Lair
          minimap[64][74612469] = { id = 760, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Onyxias Lair
          minimap[81][36449403] = { id = 743, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ruins of Ahn'Qiraj
          minimap[81][24328729] = { id = 744, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Temple of Ahn'Qiraj
          minimap[327][58941423] = { id = 743, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ruins of Ahn'Qiraj
          minimap[327][46790747] = { id = 744, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Temple of Ahn'Qiraj
          minimap[249][37008143] = { id = 74, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of the Four Winds
          minimap[249][55184395] = { dnID = L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] .. "  => /way 56.01 35.14", id = 1180, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ny'alotha the Waking City
          minimap[1527][15130940] = { id = 743, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ruins of Ahn'Qiraj
          minimap[1527][07180499] = { id = 744, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Temple of Ahn'Qiraj
          minimap[1527][37008143] = { id = 74, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of the Four Winds
          minimap[1527][38238069] = { dnID = L["Position of the real Instance Entrance"], id = 74, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of the Four Winds
          minimap[1527][55184395] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ny'alotha the Waking City
          minimap[71][12668471] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ny'alotha the Waking City
          minimap[75][39601704] = { id = 750, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Battle of Mount Hyjal
          minimap[75][60872115] = { id = 187, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dragon Soul

          end

        --Kalimdor Passage without ClassicIcons
          if self.db.profile.showMiniMapPassage and not self.db.profile.show.ClassicIcons then
            minimap[199][45089400] = { dnID = L["Way to the Instance Entrance"], id = 233, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
            minimap[64][41662882] = { dnID = L["Way to the Instance Entrance"], id = 233, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
            minimap[1527][71755222] = { dnID = L["Way to the Instance Entrance"], id = 70, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Origination
            minimap[85][55895097] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire   
            minimap[85][46116716] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire  
            minimap[85][41516079] = { mnID = 86, id = 226, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ragefire    
            minimap[10][38916921] = { mnID = 11, id = 240, TransportName = L["Way to the Instance Entrance"], name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Wailing Caverns 
            minimap[66][29226253] = { dnID = L["Way to the Instance Entrance"], id = 232, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Maraudon Outside
            minimap[63][14161380] = { dnID = L["Way to the Instance Entrance"], id = 227, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackfathom Deeps 
            minimap[69][65503524] = { dnID = L["Way to the Instance Entrance"], id = 230, lfgid = 34, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            minimap[69][77073692] = { dnID = L["Way to the Instance Entrance"], id = 230, lfgid = 34, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
          end


        --Kalimdor ClassicIcons
          if self.db.profile.show.ClassicIcons then  

            if self.db.profile.showMiniMapDungeons then 
              minimap[199][45089400] = { dnID = L["Way to the Instance Entrance"], id = 233, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
              minimap[64][41662882] = { dnID = L["Way to the Instance Entrance"], id = 233, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Razorfen Downs
              minimap[1527][71755222] = { dnID = L["Way to the Instance Entrance"], id = 70, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Origination
              minimap[63][14161380] = { dnID = L["Way to the Instance Entrance"], id = 227, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackfathom Deeps 
              minimap[66][29226253] = { dnID = L["Way to the Instance Entrance"], id = 232, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Maraudon Outside
              --minimap[69][65503524] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
              --minimap[69][77073692] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            end

            if self.db.profile.showMiniMapMultiple then
              minimap[71][64864997] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
              minimap[74][30857356] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            end

          end

        --Kalimdor Multiple
          if self.db.profile.showMiniMapMultiple and not self.db.profile.show.ClassicIcons then  
            minimap[71][64864997] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "PassageDungeonRaidMulti", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            minimap[74][30857356] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186, }, type = "PassageDungeonRaidMulti", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end


        -- Kalimdor LFR
          if self.db.profile.showMiniMapLFR then
            minimap[75][63122722] = { id = { 187 }, name = L["Auridormi"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
          end

        end


        --####################################
        --##### Continent Eastern Kingdom ####
        --####################################

        if self.db.profile.showMiniMapEasternKingdom then

        -- Eastern Kingdom Dungeons
          if self.db.profile.showMiniMapDungeons then
            minimap[122][61303090] = { id = 249, type = "Dungeon", hideOnContinent = true } -- Magisters' Terrace 
            minimap[95][85206430] = { id = 77, type = "Dungeon", hideOnContinent = true } -- Zul'Aman 
            minimap[16][36502765] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman (inside cave) 
            minimap[42][46866979] = { id = 860, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Return to Karazhan 
            minimap[55][24735143] = { id = 63, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Deadmines

          -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[50][72083291] = { id = 76, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Zul'gurub
            minimap[224][63942179] = { id = 76, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Zul'gurub
            minimap[224][22130243] = { id = 63, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false  } -- Deadmines 
            minimap[37][20223635] = { id = 238, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Stockade
            minimap[84][51196779] = { id = 238, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Stockade
            minimap[15][41121030] = { id = 1197, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman: Legacy of Tyr
            minimap[48][43478705] = { id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman
            minimap[241][19205411] = { id = 71, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Grim Batol
            minimap[56][74006930] = { id = 71, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Grim Batol
            minimap[26][26210814] = { id = 246, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scholomance
            minimap[25][91190689] = { id = 246, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scholomance
            minimap[22][69797356] = { id = 246, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scholomance
            minimap[23][07369102] = { id = 246, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scholomance
            minimap[25][05895291] = { id = 64, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shadowfang Keep
            minimap[21][44926788] = { id = 64, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shadowfang Keep
            minimap[18][85323227] = { id = 311, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Halls
            minimap[18][84823043] = { id = 316, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery
            minimap[18][85263295] = { id = 311, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Halls
            minimap[18][84542943] = { id = 316, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery
            minimap[19][79146119] = { id = 311, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Halls
            minimap[19][68082061] = { id = 316, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery
            minimap[22][28811749] = { id = 311, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Halls
            minimap[22][28281555] = { id = 316, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery
            minimap[23][27071151] = { id = 236, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stratholme
            minimap[95][81956434] = { id = 77, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Zul'Aman
            minimap[122][60973073] = { id = 249, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Magisters'Terrace
            minimap[203][48174041] = { id = 65, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of the Tides
            minimap[33][80454193] = { id = 229, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Lower Blackrock Spire
            minimap[33][79033379] = { id = 559, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Upper Blackrock Spire
            minimap[35][39281819] = { id = 228, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Depths
            minimap[30][29507480] = { id = 231, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gnomeregan
            minimap[30][42311288] = { id = 231, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gnomeregan
          end


        -- Eastern Kingdom Raids
          if self.db.profile.showMiniMapRaids then

            -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[224][76080344] = { id = 745, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Karazhan
            minimap[17][22232177] = { id = 745, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Karazhan
            minimap[42][46987490] = { id = 745, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Karazhan
            minimap[36][23132639] = { id = 73, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackwing Descent
            minimap[32][39029679] = { id = 73, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackwing Descent
            minimap[48][81242207] = { id = 72, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Bastion of Twilight
            minimap[241][34097788] = { id = 72, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Bastion of Twilight
            minimap[122][44264560] = { id = 752, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sunwell Plateau
            minimap[244][46054793] = { id = 75, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Baradin Hold
            minimap[33][64017153] = { id = 742, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackwing Lair
            minimap[35][53778131] = { id = 741, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Molten Core
          end


          -- Eastern Kingdom Passage
          if self.db.profile.showMiniMapPassage and not self.db.profile.show.ClassicIcons then  
            minimap[15][42031147] = { dnID = L["Way to the Instance Entrance"], id = 239, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman
            minimap[469][32793702] = { mnID = 30, dnID = L["Way to the Instance Entrance"], id = 231, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gnomeregan
            minimap[27][31393804] = { mnID = 30, dnID = L["Way to the Instance Entrance"], id = 231, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gnomeregan     
            minimap[51][69675353] = { dnID = L["Way to the Instance Entrance"], id = 237, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Temple of Atal'hakkar 
            minimap[36][21063760] = { mnID = 33, id = { 741, 742, 66, 228, 229, 559 }, name = L["Way to the Instance Entrance"], type = "PassageDungeonRaidMulti", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            minimap[32][35268404] = { mnID = 33, name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            minimap[15][58543698] = { dnID = L["Way to the Instance Entrance"], id = 239, name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman (Secondary Entrance) 
            minimap[23][43251854] = { dnID = L["Way to the Instance Entrance"], id = 236, lfgid = 274, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }-- Stratholme Service Entrance 
            minimap[33][68635371] = { mnID = 34, id = { 66 }, name = L["Way to the Instance Entrance"], type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Caverns
            minimap[33][65896169] = { mnID = 34, id = { 66 }, name = L["Way to the Instance Entrance"], type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Caverns
            minimap[33][45004700] = { mnID = 35, id = { 741, 228 }, name = L["Way to the Instance Entrance"], type = "PassageRaid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Depths
            minimap[34][58792725] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Depths
            minimap[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Depths

            -- Passage minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[52][42527168] = { dnID = L["Way to the Instance Entrance"], id = 63, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Deadmines   
          end


          -- Eastern Kingdom ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showMiniMapMultiple then
              minimap[36][21063760] = { mnID = 33, id = { 741, 742, 66, 228, 229, 559 }, name = L["Way to the Instance Entrance"], type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
              --minimap[36][21063760] = { mnID = 33, name = "", type = "MultipleM", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
            end

            if self.db.profile.showMiniMapDungeons then
              minimap[15][42031147] = { dnID = L["Way to the Instance Entrance"], id = 239, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman
              minimap[469][32793702] = { dnID = L["Way to the Instance Entrance"], id = 231, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gnomeregan
              minimap[27][31393804] = { dnID = L["Way to the Instance Entrance"], id = 231, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gnomeregan
              minimap[51][69675353] = { dnID = L["Way to the Instance Entrance"], id = 237, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Temple of Atal'hakkar 
              minimap[52][42527168] = { dnID = L["Way to the Instance Entrance"], id = 63, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Deadmines 
              minimap[35][58168728] = { mnID = 33, dnID = DUNGEON_FLOOR_BURNINGSTEPPES14, name = "", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Depths
              minimap[32][35268404] = { mnID = 33, name = "", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
              --minimap[15][58543698] = { id = 239, name = "", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldaman (Secondary Entrance) 
              --minimap[23][43251854] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false }-- Stratholme Service Entrance 
              minimap[33][75516099] = { id = 66, name = "", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Caverns
            end

            if self.db.profile.showMiniMapRaids then
              minimap[33][45004700] = { mnID = 35, id = { 741, 228 }, name = L["Way to the Instance Entrance"], type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Depths
            end

          end

          
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showMiniMapOldVanilla then
            minimap[23][35722308] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false }-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            minimap[19][48275496] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery Key for Old dungeons 
            minimap[2070][83723082] = { name = L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"], type = "VKey1", showInZone = false, hideOnContinent = true, hideOnMinimap = false  } -- Scarlet Monastery Key for Old dungeons 
            minimap[18][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery Key for Old dungeons
            minimap[2070][82333243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery Key for Old dungeons
            minimap[2070][83812772] = { id = 316, name ="", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery
            minimap[2070][85483158] = { id = 311, name ="", type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Halls 
            minimap[18][85353028] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery - Cathedral 
            minimap[19][78882223] = { mnID = 304, name = L["Cathedral"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery - Cathedral"
            minimap[18][85153180] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery - Library 
            minimap[19][78255762] = { mnID = 303, name = L["Library"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery -"
            minimap[18][85573138] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery - Armory
            minimap[19][86414766] = { mnID = 304, name = L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Mona"
            minimap[18][84763039] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery - Graveyard 
            minimap[19][68832372] = { mnID = 302, name = L["Graveyard"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Scarlet Monastery - Graveyard  
            minimap[22][69767181] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version
          end
        end


        --############################
        --##### Continent Outland ####
        --############################

        if self.db.profile.showMiniMapOutland then

        -- Outland Dungeons
          if self.db.profile.showMiniMapDungeons then

        -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[108][39627318] = { id = 253, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shadow Labyrinth
            minimap[108][44596560] = { id = 252, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sethekk Halls
            minimap[108][39645806] = { id = 250, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mana Tombs
            minimap[108][34676559] = { id = 247, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Auchenai Crypts
            minimap[107][96898503] = { id = 250, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mana Tombs
            minimap[107][92039239] = { id = 247, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Auchenai Crypts
            minimap[102][48953592] = { id = 260, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Slave Pens
            minimap[102][50473333] = { id = 261, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Steamvault
            minimap[105][35179927] = { id = 261, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Steamvault
            minimap[102][54173443] = { id = 262, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Underbog
            minimap[100][47925342] = { id = 248, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hellfire Ramparts
            minimap[100][48065191] = { id = 259, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Shattered Halls
            minimap[100][46015179] = { id = 256, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Blood Furnace
            minimap[109][71695506] = { id = 257, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Botanica
            minimap[109][74365774] = { id = 254, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Arcatraz
            minimap[109][70536964] = { id = 258, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Mechanar
          end


        -- Outland Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[104][71054628] = { id = 751, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Black Temple
            minimap[102][51903348] = { id = 748, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Serpentshrine Cavern
            minimap[105][36509941] = { id = 748, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Serpentshrine Cavern
            minimap[100][46575283] = { id = 747, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Magtheridon's Lair
            minimap[105][69062414] = { id = 746, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gruul's Lair
            minimap[109][06895168] = { id = 746, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gruul's Lair
            minimap[109][73596372] = { id = 746, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Eye
          end
        end


        --##############################
        --##### Continent Northrend ####
        --##############################

        if self.db.profile.showMiniMapNorthrend then

          -- Northrend Dungeon
          if self.db.profile.showMiniMapDungeons then
            minimap[127][34154413] = { id = 283, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Violet Hold

            -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[117][57884951] = { id = 285, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Utgarde Keep
            minimap[117][57224649] = { id = 286, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Utgarde Pinnacle
            minimap[116][17552120] = { id = 273, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Drak'Tharon Keep
            minimap[121][76432140] = { id = 274, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gundrak
            minimap[121][80892832] = { id = 274, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gundrak
            minimap[121][28678693] = { id = 273, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Drak'Tharon Keep
            minimap[115][28385167] = { id = 271, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ahn'kahet: The Old Kingdom
            minimap[115][25995079] = { id = 272, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Azjol-Nerub
            minimap[120][87996837] = { id = 274, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gundrak
            minimap[120][45322148] = { id = 275, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Lightning
            minimap[120][39582689] = { id = 277, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Stone
            minimap[120][14753428] = { id = 284, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Trial of the Champion
            minimap[118][54848985] = { id = 280, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Forge of Souls
            minimap[118][55319084] = { id = 276, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Reflection
            minimap[118][54729168] = { id = 278, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Pit of Saron
            minimap[118][74172044] = { id = 284, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Trial of the Champion
            minimap[123][78140236] = { id = 280, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Forge of Souls
            minimap[123][79120444] = { id = 276, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Reflection
            minimap[123][77890620] = { id = 278, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Pit of Saron
            minimap[114][28592772] = { id = 281, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Nexus
            minimap[114][26602746] = { id = 282, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Oculus
            minimap[125][66166745] = { id = 283, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Violet Hold
          end

          -- Northrend Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[116][03065282] = { id = 754, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Naxxramas
            minimap[115][87345100] = { id = 754, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Naxxramas
            minimap[115][61345259] = { id = 761, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Ruby Sanctum
            minimap[115][60005701] = { id = 755, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Obsidian Sanctum
            minimap[120][41571779] = { id = 759, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ulduar
            minimap[120][15623548] = { id = 757, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Trial of the Crusader
            minimap[118][53808709] = { id = 758, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- TIcecrown Citadel
            minimap[118][41519428] = { id = 753, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Vault of Archavon
            minimap[118][75162180] = { id = 757, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Trial of the Crusader
            minimap[119][93866206] = { id = 753, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Vault of Archavon
            minimap[123][50041168] = { id = 753, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Vault of Archavon
            minimap[114][27522673] = { id = 756, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Eye of Eternity
          end
        end


        --#############################
        --##### Continent Pandaria ####
        --#############################

        if self.db.profile.showMiniMapPandaria then

        -- Pandaria Dungeons
          if self.db.profile.showMiniMapDungeons then

          -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
          minimap[371][56175786] = { id = 313, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Temple of the Jade Serpent
          minimap[371][14504859] = { id = 321, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mogu'shan Palace
          minimap[418][35931925] = { id = 302, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stormstout Brewery
          minimap[376][36066909] = { id = 302, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stormstout Brewery
          minimap[422][91105965] = { id = 302, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Stormstout Brewery
          minimap[422][75842030] = { id = 303, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gate of the Setting Sun
          minimap[376][15261542] = { id = 303, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gate of the Setting Sun
          minimap[388][34688151] = { id = 324, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Niuzao Temple
          minimap[388][78992402] = { id = 312, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shado-Pan Monastery
          minimap[379][36714746] = { id = 312, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shado-Pan Monastery
          minimap[390][80603303] = { id = 321, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mogu'shan Palace
          minimap[390][15837441] = { id = 303, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Gate of the Setting Sun
          minimap[1530][81093057] = { id = 321, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mogu'shan Palace
          end


        -- Pandaria Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[371][21595793] = { id = 320, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Terrace of Endless Spring
            minimap[376][69680536] = { id = 320, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Terrace of Endless Spring
            minimap[371][12005202] = { id = 369, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Orgrimmar
            minimap[422][38923499] = { id = 330, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Heart of Fear
            minimap[379][59603917] = { id = 317, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mogu'Shan Vaults
            minimap[504][63833203] = { id = 362, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Throne of Thunder
            minimap[390][73714248] = { id = 369, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Orgrimmar
            minimap[390][39604763] = { dnID = L["This instance entrance is in a different timeline. Other timeline can be activated at Zidormi"] .. "  => /way 80.47 31.95", id = 1180, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ny'alotha the Waking City
            minimap[1530][40044556] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ny'alotha the Waking City
            minimap[1530][74114014] = { id = 369, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Orgrimmar
            minimap[1530][72684208] = { dnID = L["Position of the real Instance Entrance"], id = 369, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Orgrimmar
          end


        -- Pandaria LFR
          if self.db.profile.showMiniMapLFR then
            minimap[390][83153063] = { id = { 317,330, 362, 320 }, name = L["Lorewalker Han"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
            minimap[1530][83712804] = { id = { 317,330, 362, 320 }, name = L["Lorewalker Han"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
          end
        end


        --############################
        --##### Continent Draenor ####
        --############################

        if self.db.profile.showMiniMapDraenor then


        -- Draenor Dungeons
          if self.db.profile.showMiniMapDungeons then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[525][49922480] = { id = 385, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackmaul Slag Mines
            minimap[543][07494267] = { id = 385, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackmaul Slag Mines
            minimap[543][45411353] = { id = 558, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Iron Docks
            minimap[543][55153173] = { id = 536, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Grimrail Depot
            minimap[543][59574566] = { id = 556, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Everbloom
            minimap[535][46297394] = { id = 547, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Auchindoun
            minimap[539][31864255] = { id = 537, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shadowmoon Burial Grounds
            minimap[542][35583361] = { id = 476, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Skyreach
            minimap[542][75031543] = { id = 537, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shadowmoon Burial Grounds
          end


        --Draenor Raids
          if self.db.profile.showMiniMapRaids then
          
            -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[534][46965264] = { id = 669, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Hellfire Citadel
            minimap[550][32963837] = { id = 477, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Highmaul
            minimap[543][51562719] = { id = 457, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Blackrock Foundry
          end


        --Draenor LFR
          if self.db.profile.showMiniMapLFR then
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[590][41534722] = { name = L["Seer Kazal"] .. " - " .. REQUIRES_LABEL .. " " .. GARRISON_LOCATION_TOOLTIP .. " " .. LEVEL .. " " .. ACTION_SPELL_CAST_START_MASTER .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " " .. "\n" .. EXPANSION_NAME5, id = { 477, 457, 669 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[582][33173703] = { nname = L["Seer Kazal"] .. " - " .. REQUIRES_LABEL .. " " .. GARRISON_LOCATION_TOOLTIP .. " " .. LEVEL .. " " .. ACTION_SPELL_CAST_START_MASTER .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " " .. "\n" .. EXPANSION_NAME5, id = { 477, 457, 669 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
            end
          end
        
        end


        --#################################
        --##### Continent Broken Isles ####
        --#################################

        if self.db.profile.showMiniMapBrokenIsles then

        --Broken Isles Dungeons
          if self.db.profile.showMiniMapDungeons then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[630][48068212] = { id = 707, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Vault of the Wardens
            minimap[630][61164111] = { id = 716, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Eye of Azshara
            minimap[630][87515684] = { id = 777, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Assault on Violet Hold
            minimap[627][65576738] = { id = 777, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Assault on Violet Hold
            minimap[646][15313666] = { id = 777, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Assault on Violet Hold
            minimap[646][64811675] = { id = 900, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Cathedral of Eternal Night
            minimap[680][50766553] = { id = 800, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Court of Stars
            minimap[680][41166150] = { id = 726, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Arcway
            minimap[641][37215031] = { id = 740, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Black Rook Hold
            minimap[641][59133135] = { id = 762, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Darkheart Thicket
            minimap[650][49566854] = { id = 767, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Neltharion's Lair
            minimap[634][52474544] = { id = 727, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Maw of Souls
            minimap[634][72647049] = { id = 721, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Valor
            minimap[882][22165661] = { id = 945, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Seat of the Triumvirate
          end

          
        --Broken Isles Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[646][64002136] = { id = 875, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Tomb of Sargeras
            minimap[680][43725729] = { id = 786, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Nighthold
            minimap[641][56673747] = { id = 768, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Emerald Nightmare
            minimap[634][71127281] = { id = 861, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Trial of Valor
            minimap[885][54826253] = { id = 946, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Antorus, the Burning Throne
          end


        --Broken Isles Raids without ClassicIcons
          if self.db.profile.showMiniMapPassage and not self.db.profile.show.ClassicIcons then
            minimap[680][43346230] = { dnID = L["Way to the Instance Entrance"], id = 726, type = "PassageDungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Arcway
          end


        --Broken Isles ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showMiniMapDungeons then
              minimap[680][43346230] = { dnID = L["Way to the Instance Entrance"], id = 726, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Arcway
            end
          end


        -- Broken Isles LFR
          if self.db.profile.showMiniMapLFR then
            minimap[627][63535488] = { name = L["Archmage Timear"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 875, 786, 768, 861, 946 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
          end
        end


        --#############################
        --##### Continent Zandalar ####
        --#############################

        if self.db.profile.showMiniMapZandalar then

        --Zandalar Dungeons
          if self.db.profile.showMiniMapDungeons then

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[1165][44049256] = { id = 1012, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The MOTHERLODE HORDE
              minimap[862][56105984] = { id = 1012, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Motherlode
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[862][39307154] = { id = 1012, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The MOTHERLODe
            end

          -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[862][37593948] = { id = 1041, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Kings' Rest
            minimap[862][43533948] = { id = 968, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Atal'Dazar
            minimap[863][51256464] = { id = 1022, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Underrot
            minimap[864][51922546] = { id = 1030, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Temple of Sethraliss
          end


        --Zandalar Raids
          if self.db.profile.showMiniMapRaids then
            minimap[1528][47353182] = {  id = 1179, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Eternal Palace

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[862][54262993] = { id = 1176, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Battle of Dazar'alor
            minimap[863][54146302] = { id = 1031, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Uldir
          end


        --Zandalar Raids without ClassicIcons
          if self.db.profile.showMiniMapPassage and not self.db.profile.show.ClassicIcons then
            minimap[1355][50341233] = {  id = 1179, type = "PassageRaid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Eternal Palace
          end


        --Zandalar ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showMiniMapRaids then
              minimap[1355][50341233] = {  id = 1179, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Eternal Palace
            end
          end


        -- Zandalar LFR
          if self.db.profile.showMiniMapLFR then

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[862][57304305] = { mnID = 1164, name = L["Eppu"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
              minimap[1163][76554199] = { mnID = 1164, name = DUNGEON_FLOOR_GILNEAS3  .. "\n" .. " " .. "\n" .. L["Eppu"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "PassageRaid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
              minimap[1164][68583002] = { name = L["Eppu"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
              minimap[1165][49914447] = { mnID = 1164, name = L["Eppu"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
            end
          end

        end


        --##############################
        --##### Continent Kul Tiras ####
        --##############################

        if self.db.profile.showMiniMapKulTiras then 

        -- Kul Tiras Dungeons
          if self.db.profile.showMiniMapDungeons then

            -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[942][78592663] = { id = 1036, type = "Dungeon",  showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Shrine of Storm 
            minimap[1462][72933649] = { id = 1178, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Operation: Mechagon 
            minimap[895][84567878] = { id = 1001, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Freehold 
            minimap[896][33671253] = { id = 1021, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Waycrest Manor 
            minimap[1169][38926976] = { id = 1002, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Tol Dagor

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[1161][71971537] = { id = 1023, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Boralus
              minimap[1161][75591953] = { dnID = L["Position of the real Instance Entrance"], id = 1023, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Boralus
              minimap[895][75632450] = { id = 1023, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Siege of Boralus
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[895][88285102] = { id = 1023, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false  } -- Siege of Boralus
            end
          end

        -- Kul Tiras Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[942][83894693] = { id = 1036, type = "Raid",  showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Crucible of Storms

            if self.faction == "Alliance" or db.show.EnemyFaction then
              minimap[895][74382837] = { id = 1176, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Battle of Dazar'alor
              minimap[1161][70443555] = { id = 1176, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Battle of Dazar'alor
            end
          end


        -- Kul Tiras LFR
          if self.db.profile.showMiniMapLFR then

            if self.faction == "Horde" or db.show.EnemyFaction then
              minimap[895][75112192] = { mnID = 1161, name = L["Kiku"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
              minimap[1161][74191352] = { mnID = 1161, name = L["Kiku"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false }
            end
          end

        end


        --################################
        --##### Continent Shadowlands ####
        --################################

        if self.db.profile.showMiniMapShadowlands then

        -- Shadowlands Dungeons
          if self.db.profile.showMiniMapDungeons then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[1533][40145521] = { id = 1182, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Necrotic Wake
            minimap[1533][58552857] = { id = 1186, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Spires of Ascension
            minimap[1536][59396501] = { id = 1183, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Plaguefall
            minimap[1536][53115291] = { id = 1187, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Theater of Pain
            minimap[1565][35485413] = { id = 1184, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Mists of Tirna Scithe
            minimap[1565][68666660] = { id = 1188, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- De Other Side
            minimap[1525][78474907] = { id = 1185, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Atonement
            minimap[1525][51073012] = { id = 1189, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sanguine Depths
            minimap[2016][88914392] = { id = 1194, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Tazavesh, the Veiled Market
          end


        -- Shadowlands Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[1970][80495340] = { id = 1195, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sepulcher of the First Ones
            minimap[1525][46424149] = { id = 1190, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Castle Nathria
            minimap[1543][69743201] = { id = 1193, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Sanctum of Domination  
          end

        -- Shadowlands LFR
          if self.db.profile.showMiniMapLFR then
            minimap[1670][41377150] = { name = L["Ta'elfar"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1190, 1193, 1195 }, type = "LFR", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Portal from Garrison to Ashran
          end
        end


        --#################################
        --##### Continent Dragon Isles ####
        --#################################

        if self.db.profile.showMiniMapDragonIsles then

        -- Dragonflight Dungeons
          if self.db.profile.showMiniMapDungeons then

          -- Dungeon minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[2023][60843898] = { id = 1198, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Nokhud Offensive
            minimap[2024][38896459] = { id = 1203, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- The Azure Vault
            minimap[2024][11514885] = { id = 1196, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Brackenhide Hollow
            minimap[2025][61148446] = { id = 1209, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Dawn of the Infinite
            minimap[2025][59216057] = { id = 1204, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Halls of Infusion
            minimap[2025][58274235] = { id = 1201, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Algeth'ar Academy
            minimap[2022][60087571] = { id = 1202, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Ruby Life Pools
            minimap[2022][25715631] = { id = 1199, type = "Dungeon", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Neltharus
          end


        -- Dragonflight Raids
          if self.db.profile.showMiniMapRaids then

          -- Raid minimap above Blizzards Icons to make it Clickable for maximized Maps
            minimap[2200][27313104] = { id = 1207, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Amirdrassil, the Dream's Hope
            minimap[2025][74855511] = { id = 1200, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Vault of the Incarnates
            minimap[2025][73065567] = { dnID = L["Position of the real Instance Entrance"], id = 1200, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Vault of the Incarnates
            minimap[2133][48451191] = { id = 1208, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false } -- Aberrus, the Shadowed Crucible          
          end


        -- Dragonflight Passage
          if self.db.profile.showMiniMapPassage and not self.db.profile.show.ClassicIcons then
            minimap[2023][18855124] = { id = 1207, type = "PassageRaid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }-- Amirdrassil, the Dream's Hope
          end


        -- Dragonflight ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showMiniMapRaids then
              minimap[2023][18855124] = { id = 1207, type = "Raid", showInZone = false, hideOnContinent = true, hideOnMinimap = false }-- Amirdrassil, the Dream's Hope
            end
          end

        end
      end
  end
end