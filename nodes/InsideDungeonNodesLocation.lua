local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

function ns.LoadInsideDungeonNodesLocationInfo(self)
local db = ns.Addon.db.profile
local nodes = ns.nodes

--#####################################################################################################
--##########################        function to hide all nodes below         ##########################
--#####################################################################################################
if not db.show.HideMapNote then

    --#####################################################################################################
    --##################################           Dungeon Map           ##################################
    --#####################################################################################################
    
    if db.show.DungeonMap then
    
    
        --################################
        --##### Inside Dungeon Exits  ####
        --################################
    
          if self.db.profile.showDungeonExit then
    
    
        --#############################
        --#### Kalimdor Exit Notes ####
        --#############################
            nodes[280][62402795] = { mnID = 67, name = L["Exit"], type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Orange Crystal
            nodes[280][78676842] = { mnID = 68, name = L["Exit"], type = "Exit", showInZone = true } -- Maraudon Caverns of Maraudon Purple Crystal 
            nodes[324][54089545] = { mnID = 207, name = L["Exit"], type = "Exit", showInZone = true } -- The Stonecore
            nodes[325][54241642] = { mnID = 1527, name = L["Exit"], type = "Exit", showInZone = true } -- The Vortex Pinnacle
            nodes[297][50009404] = { mnID = 1527, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Orientation
            nodes[277][32581995] = { mnID = 1527, name = L["Exit"], type = "Exit", showInZone = true } -- Lost City of the Tol'vir
            nodes[328][47024726] = { mnID = 1527, name = L["Exit"], type = "Exit", showInZone = true } -- Throne of the Four Winds
            nodes[247][61141177] = { mnID = 81, name = L["Exit"], type = "Exit", showInZone = true } -- Ruins of Ahn'Qiraj
            nodes[320][52352694] = { mnID = 81, name = L["Exit"], type = "Exit", showInZone = true } -- Temple of Ahn'Qiraj
            nodes[219][56288980] = { mnID = 71, name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Farrak
            nodes[409][49698368] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- Dragon Soul
            nodes[130][86417097] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- The Culling of Stratholme
            nodes[273][49531493] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- The Black Morass
            nodes[274][27084695] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- Old Hillsbrad Foothills
            nodes[401][82964460] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- End Time
            nodes[398][28456261] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- Well of Eternity
            nodes[399][48001952] = { mnID = 75, name = L["Exit"], type = "Exit", showInZone = true } -- Hour of Twilight
            nodes[248][33992035] = { mnID = 70, name = L["Exit"], type = "Exit", showInZone = true } -- Onyxia Lair
            nodes[300][23471893] = { mnID = 199, name = L["Exit"], type = "Exit", showInZone = true } -- Razorfen Downs
            nodes[301][71358352] = { mnID = 199, name = L["Exit"], type = "Exit", showInZone = true } -- Razorfen Kraul
            nodes[240][28185543] = { mnID = 69, name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter 
            nodes[235][71829239] = { mnID = 69, name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Gordok Commons
            nodes[236][93635048] = { mnID = 69, name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Capital Gardens
            nodes[236][93637191] = { mnID = 69, name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Capital Gardens
            nodes[239][26778493] = { mnID = 69, name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter
            nodes[239][92544766] = { mnID = 69, name = L["Exit"], type = "Exit", showInZone = true } -- Dire Maul Warpwood Quarter
            nodes[279][46235920] = { mnID = 10, name = L["Exit"], type = "Exit", showInZone = true } -- Wailing Caverns
            nodes[213][60990723] = { mnID = 86, name = L["Exit"], type = "Exit", showInZone = true } -- Ragefire Chasm
            nodes[221][45131069] = { mnID = 63, name = L["Exit"], type = "Exit", showInZone = true } -- Blackfathom Deeps
            nodes[367][24579004] = { mnID = 198, name = L["Exit"], type = "Exit", showInZone = true } -- Firelands
        --####################################
        --#### Eastern Kingdom Exit Notes ####
        --####################################
            nodes[220][49841022] = { mnID = 51, name = L["Exit"], type = "Exit", showInZone = true } -- Tempel of Atal'hakkar
            nodes[225][50008109] = { mnID = 84, name = L["Exit"], type = "Exit", showInZone = true } -- The Stockade  
            nodes[226][64132741] = { mnID = 27, name = L["Exit"], type = "Exit", showInZone = true } -- Gnomeregan          
            nodes[230][28506908] = { mnID = 15, name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman
            nodes[230][67897238] = { mnID = 16, name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman
            nodes[232][25832277] = { mnID = 35, name = L["Exit"], type = "Exit", showInZone = true } -- Molten Core
            nodes[242][33207928] = { mnID = 35, name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Depths
            nodes[253][36814201] = { mnID = 33, name = L["Exit"], type = "Exit", showInZone = true } -- Lower Blackrock Spire
            nodes[282][47339074] = { mnID = 244, name = L["Exit"], type = "Exit", showInZone = true } -- Baradin Hold
            nodes[283][31016916] = { mnID = 34, name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Caverns      
            nodes[285][46866374] = { mnID = 36, name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Descent
            nodes[287][52518345] = { mnID = 33, name = L["Exit"], type = "Exit", showInZone = true } -- Blackwing Lair
            nodes[291][29751328] = { mnID = 52, name = L["Exit"], type = "Exit", showInZone = true } -- Deadmines
            nodes[293][07935708] = { mnID = 241, name = L["Exit"], type = "Exit", showInZone = true } -- Grim Batol
            nodes[294][39335449] = { mnID = 241, name = L["Exit"], type = "Exit", showInZone = true } -- The Bastion of Twilight
            nodes[302][83118250] = { mnID =19, name = L["Exit"], type = "Exit", showInZone = true } -- Old Scarlet Monastery - Graveyard
            nodes[303][13112473] = { mnID =19, name = L["Exit"], type = "Exit", showInZone = true } -- Old Scarlet Monastery - Library
            nodes[304][60849535] = { mnID =19, name = L["Exit"], type = "Exit", showInZone = true } -- Old Scarlet Monastery - Armory
            nodes[305][61999199] = { mnID =19, name = L["Exit"], type = "Exit", showInZone = true } -- Old Scarlet Monastery - Cathedral              
            nodes[306][39146031] = { mnID = 22, name = L["Exit"], type = "Exit", showInZone = true } -- Old Scholomance  
            nodes[310][70406108] = { mnID = 21, name = L["Exit"], type = "Exit", showInZone = true } -- Shadowfang Keep  
            nodes[317][68798791] = { mnID = 23, name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme - Main Gate
            nodes[317][63888791] = { mnID = 23, name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme - Main Gate
            nodes[318][65859058] = { mnID = 23, name = L["Exit"], type = "Exit", showInZone = true } -- Stratholme Service Entrance
            nodes[322][49849388] = { mnID = 203, name = L["Exit"], type = "Exit", showInZone = true } -- Throne of the Tides      
            nodes[333][09195307] = { mnID = 95, name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Aman
            nodes[335][30853659] = { mnID = 122, name = L["Exit"], type = "Exit", showInZone = true } -- Sunwell Plateau
            nodes[337][29124867] = { mnID = 50, name = L["Exit"], type = "Exit", showInZone = true } -- Zul'Gurub
            nodes[349][42629380] = { mnID = 122, name = L["Exit"], type = "Exit", showInZone = true } -- Magisters'Terrace      
            nodes[350][61778163] = { mnID = 42, name = L["Exit"], type = "Exit", showInZone = true } -- Karazhan
            nodes[431][33998886] = { mnID = 18, name = L["Exit"], type = "Exit", showInZone = true } -- Scarlet Halls
            nodes[435][79354554] = { mnID = 18, name = L["Exit"], type = "Exit", showInZone = true } -- Scarlet Monastery
            nodes[476][17827050] = { mnID = 22, name = L["Exit"], type = "Exit", showInZone = true } -- Scholomance      
            nodes[616][37293212] = { mnID = 33, name = L["Exit"], type = "Exit", showInZone = true } -- Upper Blackrock Spire
            nodes[814][64286068] = { mnID = 42, name = L["Exit"], type = "Exit", showInZone = true } -- Return to Karazhan
            nodes[2071][75274137] = { mnID = 15, name = L["Exit"], type = "Exit", showInZone = true } -- Uldaman Legacy of Tyr
        --#############################
        --#### Outland Exit Notes #####
        --#############################
            nodes[340][21756343] = { mnID = 104, name = L["Exit"], type = "Exit", showInZone = true } -- Black Temple exit
            nodes[334][50168768] = { mnID = 109, name = L["Exit"], type = "Exit", showInZone = true } -- The Eye
            nodes[330][81397732] = { mnID = 108, name = L["Exit"], type = "Exit", showInZone = true } -- Gruul
            nodes[331][60991776] = { mnID = 100, name = L["Exit"], type = "Exit", showInZone = true } -- Magtheridons
            nodes[332][13436343] = { mnID = 102, name = L["Exit"], type = "Exit", showInZone = true } -- Serpentshrine Cavern
            nodes[266][90343942] = { mnID = 109, name = L["Exit"], type = "Exit", showInZone = true } -- Botanica
            nodes[267][49378580] = { mnID = 109, name = L["Exit"], type = "Exit", showInZone = true } -- Mechanar
            nodes[269][41378627] = { mnID = 109, name = L["Exit"], type = "Exit", showInZone = true } -- Arcatraz
            nodes[265][21121328] = { mnID = 102, name = L["Exit"], type = "Exit", showInZone = true } -- Slave Pens
            nodes[263][17353047] = { mnID = 102, name = L["Exit"], type = "Exit", showInZone = true } -- Steamvault
            nodes[347][52207097] = { mnID = 100, name = L["Exit"], type = "Exit", showInZone = true } -- Hellfire Ramparts
            nodes[262][28027003] = { mnID = 102, name = L["Exit"], type = "Exit", showInZone = true } -- The Underbog
            nodes[261][48439051] = { mnID = 100, name = L["Exit"], type = "Exit", showInZone = true } -- Blood Furnace
            nodes[260][21750952] = { mnID = 108, name = L["Exit"], type = "Exit", showInZone = true } -- Shadow Labyrinth
            nodes[246][61929285] = { mnID = 100, name = L["Exit"], type = "Exit", showInZone = true } -- Shattered Halls
            nodes[258][73393824] = { mnID = 108, name = L["Exit"], type = "Exit", showInZone = true } -- Sethekk Halls
            nodes[272][33361564] = { mnID = 108, name = L["Exit"], type = "Exit", showInZone = true } -- Mana Tombs
            nodes[256][44197716] = { mnID = 108, name = L["Exit"], type = "Exit", showInZone = true } -- Auchenai Crypts
        --#############################
        --#### Northrend Exit Notes ####
        --#############################
            nodes[129][36818875] = { mnID = 114, name = L["Exit"], type = "Exit", showInZone = true } -- The Nexus
            nodes[132][89717928] = { mnID = 115, name = L["Exit"], type = "Exit", showInZone = true } -- Ahn'kahet
            nodes[132][07155048] = { mnID = 115, name = L["Exit"], type = "Exit", showInZone = true } -- Ahn'kahet
            nodes[133][69787598] = { mnID = 117, name = L["Exit"], type = "Exit", showInZone = true } -- Utgarde Keep
            nodes[137][44511493] = { mnID = 117, name = L["Exit"], type = "Exit", showInZone = true } -- Utgarde Pinnacle
            nodes[138][04175378] = { mnID = 120, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Lightning
            nodes[140][33993643] = { mnID = 120, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Stone
            nodes[143][60834860] = { mnID = 114, name = L["Exit"], type = "Exit", showInZone = true } -- The Oculus
            nodes[147][52519647] = { mnID = 120, name = L["Exit"], type = "Exit", showInZone = true } -- Ulduar
            nodes[154][36812906] = { mnID = 121, name = L["Exit"], type = "Exit", showInZone = true } --  Gundrak
            nodes[154][56592435] = { mnID = 121, name = L["Exit"], type = "Exit", showInZone = true } --  Gundrak
            nodes[155][63654954] = { mnID = 115, name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Obsidian
            nodes[156][49218634] = { mnID = 123, name = L["Exit"], type = "Exit", showInZone = true } -- Vault of Archavon
            nodes[159][12338705] = { mnID = 115, name = L["Exit"], type = "Exit", showInZone = true } -- Azjol Nerub
            nodes[160][27718116] = { mnID = 121, name = L["Exit"], type = "Exit", showInZone = true } -- Drak'Tharon Keep
            nodes[166][53144954] = { mnID = 115, name = L["Exit"], type = "Exit", showInZone = true } -- Naxxramas
            nodes[168][45929293] = { mnID = 125, name = L["Exit"], type = "Exit", showInZone = true } -- Violet Keep
            nodes[171][65705291] = { mnID = 118, name = L["Exit"], type = "Exit", showInZone = true } -- Trial of the Champion
            nodes[172][65705260] = { mnID = 118, name = L["Exit"], type = "Exit", showInZone = true } -- Trial of the Crusader
            nodes[183][65858917] = { mnID = 118, name = L["Exit"], type = "Exit", showInZone = true } -- The Forge of Souls
            nodes[184][40607992] = { mnID = 118, name = L["Exit"], type = "Exit", showInZone = true } -- Pit of Saron
            nodes[185][47338069] = { mnID = 118, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Reflection
            nodes[186][38860982] = { mnID = 118, name = L["Exit"], type = "Exit", showInZone = true } -- IcecrownGlacier
            nodes[200][49532819] = { mnID = 115, name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Ruby
        --#############################
        --#### Pandaria Exit Notes ####
        --#############################
            nodes[429][29594366] = { mnID = 371, name = L["Exit"], type = "Exit", showInZone = true } -- The Temple of the Jade Serpent
            nodes[456][92544884] = { mnID = 433, name = L["Exit"], type = "Exit", showInZone = true } -- Terrace of Endless Spring
            nodes[557][94264530] = { mnID = 390, name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Orgrimmar
            nodes[453][28181995] = { mnID = 390, name = L["Exit"], type = "Exit", showInZone = true } -- Mogu'shan Palace
            nodes[437][61618815] = { mnID = 390, name = L["Exit"], type = "Exit", showInZone = true } -- Gate of the Setting Sun
            nodes[439][80293902] = { mnID = 376, name = L["Exit"], type = "Exit", showInZone = true } -- Stormstout Brewery
            nodes[474][34159074] = { mnID = 422, name = L["Exit"], type = "Exit", showInZone = true } -- Heart of Fear
            nodes[458][65228587] = { mnID = 388, name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Niuzao Temple
            nodes[444][86415833] = { mnID = 579, name = L["Exit"], type = "Exit", showInZone = true } -- Shado-Pan Monastery
            nodes[471][75437521] = { mnID = 579, name = L["Exit"], type = "Exit", showInZone = true } -- Mogu'shan Vaults
            nodes[508][29592553] = { mnID = 504, name = L["Exit"], type = "Exit", showInZone = true } -- Throne of Thunder
        --#############################
        --#### Draenor Exit Notes #####
        --#############################
            nodes[573][52048698] = { mnID = 525, name = L["Exit"], type = "Exit", showInZone = true } -- Bloodmaul Slag Mines  
            nodes[574][08256955] = { mnID = 539, name = L["Exit"], type = "Exit", showInZone = true } -- Shadowmoon Burial Grounds  
            nodes[593][49849145] = { mnID = 535, name = L["Exit"], type = "Exit", showInZone = true } -- Auchindoun
            nodes[595][29594366] = { mnID = 543, name = L["Exit"], type = "Exit", showInZone = true } -- Iron Docks
            nodes[598][41059246] = { mnID = 543, name = L["Exit"], type = "Exit", showInZone = true } -- Blackrock Foundry
            nodes[601][60362459] = { mnID = 542, name = L["Exit"], type = "Exit", showInZone = true } -- Skyreach
            nodes[606][32422553] = { mnID = 543, name = L["Exit"], type = "Exit", showInZone = true } -- Grimrail Depoot
            nodes[611][26772324] = { mnID = 550, name = L["Exit"], type = "Exit", showInZone = true } -- Highmaul
            nodes[620][72295519] = { mnID = 543, name = L["Exit"], type = "Exit", showInZone = true } -- Everbloom
            nodes[661][72604342] = { mnID = 534, name = L["Exit"], type = "Exit", showInZone = true } -- Hellfire Citadel 
        --#############################
        --##### Legion Exit Notes #####
        --#############################
            nodes[704][47730708] = { mnID = 634, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Valor  
            nodes[706][46398375] = { mnID = 634, name = L["Exit"], type = "Exit", showInZone = true } -- Maw of Souls
            nodes[710][69317756] = { mnID = 630, name = L["Exit"], type = "Exit", showInZone = true } -- Vault of the Wardens
            nodes[713][49378886] = { mnID = 630, name = L["Exit"], type = "Exit", showInZone = true } -- Eye of Azshara
            nodes[731][89555449] = { mnID = 650, name = L["Exit"], type = "Exit", showInZone = true } -- Neltharion's Lair
            nodes[732][50788086] = { mnID = 627, name = L["Exit"], type = "Exit", showInZone = true } -- Assault on Violet Hold
            nodes[733][36661564] = { mnID = 641, name = L["Exit"], type = "Exit", showInZone = true } -- Darkheart Thicket
            nodes[749][48122160] = { mnID = 680, name = L["Exit"], type = "Exit", showInZone = true } -- The Arcway
            nodes[751][29120622] = { mnID = 641, name = L["Exit"], type = "Exit", showInZone = true } -- Black Rook Hold
            nodes[761][05476847] = { mnID = 680, name = L["Exit"], type = "Exit", showInZone = true } -- Court of Stars
            nodes[761][41877597] = { mnID = 680, name = L["Exit"], type = "Exit", showInZone = true } -- Court of Stars
            nodes[764][25518846] = { mnID = 680, name = L["Exit"], type = "Exit", showInZone = true } -- The Nighthold
            nodes[777][42315825] = { mnID = 641, name = L["Exit"], type = "Exit", showInZone = true } -- The Emerald Nightmare
            nodes[807][51570575] = { mnID = 634, name = L["Exit"], type = "Exit", showInZone = true } -- Trial of Valor
            nodes[845][46639166] = { mnID = 646, name = L["Exit"], type = "Exit", showInZone = true } -- Cathedral of Eternal Night
            nodes[850][45139239] = { mnID = 646, name = L["Exit"], type = "Exit", showInZone = true } -- Tomb of Sargeras
            nodes[903][21468879] = { mnID = 882, name = L["Exit"], type = "Exit", showInZone = true } -- Seat of the Triumvirate
            nodes[909][90656704] = { mnID = 885, name = L["Exit"], type = "Exit", showInZone = true } -- Antorus, the Burning Throne
        --######################################
        --#### Battle of Azeroth Exit Notes ####
        --######################################
            nodes[934][79514836] = { mnID = 862, name = L["Exit"], type = "Exit", showInZone = true } -- Atal'Dazar
            nodes[936][70563589] = { mnID = 895, name = L["Exit"], type = "Exit", showInZone = true } -- Freehold
            nodes[974][75275526] = { mnID = 895, name = L["Exit"], type = "Exit", showInZone = true } -- Tol Dagor
            nodes[1004][89874719] = { mnID = 862, name = L["Exit"], type = "Exit", showInZone = true } -- Kings Rest
            nodes[1015][51418674] = { mnID = 896, name = L["Exit"], type = "Exit", showInZone = true } -- Waycrest Manor
            nodes[1038][67899710] = { mnID = 864, name = L["Exit"], type = "Exit", showInZone = true } -- Temple of Sethraliss
            nodes[1039][45760810] = { mnID = 942, name = L["Exit"], type = "Exit", showInZone = true } -- Shrine of the Storm
            nodes[1041][36191611] = { mnID = 863, name = L["Exit"], type = "Exit", showInZone = true } -- The Underrot      
            nodes[1148][52679428] = { mnID = 863, name = L["Exit"], type = "Exit", showInZone = true } -- Uldir    
            nodes[1010][50639270] = { mnID = 862, name = L["Exit"], type = "Exit", showInZone = true } -- The Motherlode    
            nodes[1162][76681988] = { mnID = 895, name = L["Exit"], type = "Exit", showInZone = true } -- Siege of Boralus
            nodes[1345][68368768] = { mnID = 942, name = L["Exit"], type = "Exit", showInZone = true } -- Crucible of Storms
            nodes[1490][71683749] = { mnID = 1462, name = L["Exit"], type = "Exit", showInZone = true } -- Operation: Mechagon
            nodes[1512][94264884] = { mnID = 1355, name = L["Exit"], type = "Exit", showInZone = true } -- The Eternal Palace
            
            if self.faction == "Horde" then
              nodes[1358][23941752] = { mnID = 862, name = L["Exit"], type = "Exit", showInZone = true } -- Battle of Dazar'alor  
            end

            if self.faction == "Alliance" then
              nodes[1358][23941752] = { mnID = 895, name = L["Exit"], type = "Exit", showInZone = true } -- Battle of Dazar'alor 
            end
        --################################
        --#### Shadowlands Exit Notes ####
        --################################
            nodes[1663][89875409] = { mnID = 1525, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Atonement
            nodes[1666][82863999] = { mnID = 1533, name = L["Exit"], type = "Exit", showInZone = true } -- The Necrotic Wake
            nodes[1669][93861796] = { mnID = 1565, name = L["Exit"], type = "Exit", showInZone = true } -- Mists of Tirna Scithe
            nodes[1674][29981643] = { mnID = 1536, name = L["Exit"], type = "Exit", showInZone = true } -- Plaguefall
            nodes[1675][09825103] = { mnID = 1525, name = L["Exit"], type = "Exit", showInZone = true } -- Sanguine Depths
            nodes[1680][50581456] = { mnID = 1565, name = L["Exit"], type = "Exit", showInZone = true } -- De Other Side
            nodes[1683][50498296] = { mnID = 1536, name = L["Exit"], type = "Exit", showInZone = true } -- Theater of Pain
            nodes[1692][40586445] = { mnID = 1533, name = L["Exit"], type = "Exit", showInZone = true } -- Spires of Ascension
            nodes[1735][34468069] = { mnID = 1525, name = L["Exit"], type = "Exit", showInZone = true } -- Castle Nathria
            nodes[1998][29478607] = { mnID = 1543, name = L["Exit"], type = "Exit", showInZone = true } -- Sanctum of Domination
            nodes[1989][90914372] = { mnID = 2016, name = L["Exit"], type = "Exit", showInZone = true } -- Tazavesh, the Veiled Market
            nodes[2047][07465150] = { mnID = 1970, name = L["Exit"], type = "Exit", showInZone = true } -- Sepulcher of the First Ones
        --#################################
        --#### Dragon Isles Exit Notes ####
        --#################################
            nodes[2073][77623071] = { mnID = 2024, name = L["Exit"], type = "Exit", showInZone = true } -- The Azure Vault
            nodes[2080][52562070] = { mnID = 2022, name = L["Exit"], type = "Exit", showInZone = true } -- Neltharus
            nodes[2082][08403471] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Halls of Infusion
            nodes[2093][60673862] = { mnID = 2023, name = L["Exit"], type = "Exit", showInZone = true } -- The Nokhud Offensive
            nodes[2095][42789333] = { mnID = 2022, name = L["Exit"], type = "Exit", showInZone = true } -- Ruby Life Pools
            nodes[2096][06524366] = { mnID = 2024, name = L["Exit"], type = "Exit", showInZone = true } -- Brackenhide Hollow
            nodes[2097][42157591] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Algeth'ar Academy
            nodes[2190][33202089] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Dawn of the Infinite
            nodes[2119][63509475] = { mnID = 2025, name = L["Exit"], type = "Exit", showInZone = true } -- Vault of the Incarnates
            nodes[2166][51269498] = { mnID = 2133, name = L["Exit"], type = "Exit", showInZone = true } -- Aberrus, the Shadowed Crucible
            nodes[2232][50789310] = { mnID = 2200, name = L["Exit"], type = "Exit", showInZone = true } -- Amirdrassil, the Dream's Hope
          end
    
    
        --################################
        --#### Inside Dungeon Passage ####
        --################################
          if self.db.profile.showDungeonPassage then

        --##########################
        --#### Kalimdor Passage ####
        --##########################
          --Mauradon
            nodes[280][13585809] = { mnID = 281, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- Maraudon passage to Zaetar's Grave
            nodes[281][29120410] = { mnID = 280, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Maraudon passage to Zaetar's Grave
          --Blackfathom Deeps
            nodes[221][61467332] = { mnID = 222, name = L["Passage"], type = "PassageDownL", showInZone = true } -- The Pool of Ask'Ar
            nodes[222][33682913] = { mnID = 221, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- Moonshrine Sanctum
            nodes[222][45767732] = { mnID = 223, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Moonshrine Sanctum
            nodes[223][40426226] = { mnID = 222, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Forgotten Pool
          --Firelands
            nodes[367][49532089] = { mnID = 369, name = L["Passage"], type = "PassageUpL", showInZone = true } -- Firelands
            nodes[369][50949145] = { mnID = 367, name = L["Passage"], type = "PassageDownL", showInZone = true } -- Sulfuron Keep
          --The Culling of Stratholme
            nodes[130][47331948] = { mnID = 131, name = L["Passage"], type = "PassageUpL", showInZone = true } -- The Culling of Stratholme
            nodes[131][50477779] = { mnID = 130, name = L["Passage"], type = "PassageDownL", showInZone = true } -- Stratholme City
          --Hour of Twillight
            nodes[399][49847285] = { mnID = 400, name = L["Passage"], type = "PassageDownL", showInZone = true } -- Hour of Twillight
            nodes[400][43881265] = { mnID = 399, name = L["Passage"], type = "PassageUpL", showInZone = true } -- Wyrmrest Temple


        --#################################
        --#### Eastern Kingdom Passage ####
        --#################################
          --Old Scholomance
            nodes[306][66643330] = { mnID = 307, name = L["Passage"], type = "PassageUpL", showInZone = true } -- The Reliquary
            nodes[307][29083252] = { mnID = 308, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Chamber of Summoning
            nodes[307][62092937] = { mnID = 306, name = L["Passage"], type = "PassageDownL", showInZone = true } -- Chamber of Summoning
            nodes[307][29638662] = { mnID = 308, name = L["Passage"], type = "PassageUpL", showInZone = true } -- Chamber of Summoning
            nodes[307][63505338] = { mnID = 308, name = L["Passage"], type = "PassageRightL", showInZone = true } -- Chamber of Summoning
            nodes[307][41058886] = { mnID = 309, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- Chamber of Summoning
            nodes[308][28812372] = { mnID = 307, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Upper Study
            nodes[308][28812372] = { mnID = 307, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Upper Study
            nodes[308][35408274] = { mnID = 307, name = L["Passage"], type = "PassageUpL", showInZone = true } -- The Upper Study
            nodes[308][58956226] = { mnID = 307, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- The Upper Study
            nodes[309][48275691] = { mnID = 307, name = L["Passage"], type = "PassageUpL", showInZone = true } -- Headmaster's Study                
        --##########################
        --#### Outland Passage #####
        --##########################
          --Black Temple
            nodes[339][28657991] = { mnID = 340, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
            nodes[339][76054672] = { mnID = 341, name = L["Passage"], type = "PassageRightL", showInZone = true } --       
            nodes[340][27240693] = { mnID = 339, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[341][61933384] = { mnID = 342, name = L["Passage"], type = "PassageRightL", showInZone = true } -- 
            nodes[341][21124985] = { mnID = 339, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
            nodes[341][57859035] = { mnID = 343, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
            nodes[341][26302301] = { mnID = 344, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
            nodes[342][63033918] = { mnID = 341, name = L["Passage"], type = "PassageLeftL", showInZone = true } -- 
            nodes[343][74966845] = { mnID = 341, name = L["Passage"], type = "PassageRightL", showInZone = true } -- 
            nodes[344][08254813] = { mnID = 341, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[344][67275590] = { mnID = 345, name = L["Passage"], type = "PassageDownL", showInZone = true } -- 
            nodes[345][47333054] = { mnID = 346, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[345][69461241] = { mnID = 344, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
            nodes[346][52821234] = { mnID = 345, name = L["Passage"], type = "PassageUpL", showInZone = true } -- 
        --###########################
        --#### Northrend Passage ####
        --###########################
    
        --##########################
        --#### Pandaria Passage ####
        --##########################
    
        --##########################
        --#### Draenor Passage #####
        --##########################
    
        --##############################
        --#### Borken Isles Passage ####
        --##############################

        --###################################
        --#### Northrend Dungeon Portals ####
        --###################################        
          end


        --##################################
        --#### Inside Dungeon Transport ####
        --##################################
          if self.db.profile.showDungeonTransport then

        --####################################
        --#### Kalimdor Dungeon Transport ####
        --####################################
          --Dragon Soul
            nodes[409][49145903] = { mnID = 410, name = "", type = "TravelM", showInZone = true } -- Dragon Soul
            nodes[409][51055925] = { mnID = 411, name = "", type = "TravelM", showInZone = true } -- Dragon Soul
            nodes[409][50145769] = { name = L["(on the tower)"], type = "TravelM", showInZone = true } -- Dragon Soul
          end



        --################################
        --#### Inside Dungeon Portals ####
        --################################
          if self.db.profile.showDungeonPortal then

        --###################################
        --#### Kalimdor Dungeon Portals #####
        --###################################
          --Dragon Soul
            nodes[411][57698846] = { eoID = 409, mnID = 409, name = "", type = "Portal", showInZone = true } -- Maw of Shu'ma
            nodes[410][23324020] = { eoID = 409, mnID = 409, name = "", type = "Portal", showInZone = true } -- Maw of Go'rath
            nodes[412][52181359] = { eoID = 409, mnID = 409, name = "", type = "Portal", showInZone = true } -- Eye of Eternity
            nodes[409][50606029] = { eoID = 412, mnID = 412, name = "", type = "Portal", showInZone = true } -- Dragon Soul o Eye of Eternity
        --##########################################
        --#### Eastern Kingdom Dungeon Portals #####
        --##########################################
          --Old Naxxramas
            nodes[166][55844846] = { mnID = 23, name = L["Secret Portal"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] , type = "Portal", showInZone = true } -- IcecrownGlacier
        --###################################
        --#### Northrend Dungeon Portals ####
        --###################################
          --Icecrown Citadel
            nodes[186][33822342] = { mnID = 125, name = "", type = "Portal", showInZone = true } -- IcecrownGlacier
        --###################################
        --#### Pandaria Dungeon Portals #####
        --###################################
          end
        end
      end 
    end