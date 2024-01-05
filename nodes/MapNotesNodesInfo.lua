local ADDON_NAME, ns = ...

function ns.LoadMapNotesNodesInfo()
local nodes = ns.nodes

--############################
--####### WorldMap node ######
--############################

-- Azeroth/Continent map nodes
nodes[947] = { } -- Azeroth

--############################
--######### Kalimdor #########
--############################

-- Azeroth/Continent map nodes
nodes[10] = { } -- Barrens    
nodes[11] = { } -- Wailing Caverns
nodes[12] = { } -- Kalimdor 
nodes[62] = { } -- Darkshore Vanilla
nodes[63] = { } -- Ashenvale  
nodes[64] = { } -- Thousand Needles  
nodes[66] = { } -- Desolace    
nodes[67] = { } -- Maraudon Outside  
nodes[68] = { } -- Maraudon Foulspore Cavern    
nodes[69] = { } -- Feralas
nodes[70] = { } -- Dustwallow
nodes[71] = { } -- Tanaris
nodes[74] = { } -- Timeless Tunnel
nodes[75] = { } -- Caverns of Time lower half
nodes[81] = { } -- Silithus    
nodes[85] = { } -- Orgrimmar 
nodes[199] = { } -- Southern Barrens  
nodes[327] = { } -- AhnQiraj The Fallen Kingdom  
-- Dungeon map nodes
nodes[130] = { } -- The Culling of Stratholme
nodes[131] = { } -- Stratholme City
nodes[213] = { } -- Ragefire Chasm
nodes[219] = { } -- Zul'Farrak
nodes[221] = { } -- Blackfathom Deeps - The Pool of Ask'Ar
nodes[222] = { } -- Moonshrine Sanctum
nodes[223] = { } -- The Forgotten Pool
nodes[235] = { } -- Dire Maul Gordok Commons
nodes[236] = { } -- Dire Maul Capital Gardens
nodes[239] = { } -- Dire Maul Warpwood Quarter
nodes[240] = { } -- Dire Maul Warpwood Quarter 
nodes[247] = { } -- Ruins of Ahn'Qiraj
nodes[248] = { } -- Onyxia Lair
nodes[273] = { } -- The Black Morass
nodes[274] = { } -- Old Hillsbrad Foothills
nodes[277] = { } -- Lost City of the Tol'vir
nodes[279] = { } -- Wailing Caverns
nodes[280] = { } -- Maraudon Caverns of Maraudon - Purple Crystal 
nodes[281] = { } -- Caverns of Maraudon
nodes[297] = { } -- Halls of Orientation
nodes[299] = { } -- Die Vier Sitze
nodes[297] = { } -- Hall des Lichts
nodes[298] = { } -- Grab des Erdwüters
nodes[300] = { } -- Razorfen Downs
nodes[301] = { } -- Razorfen Kraul
nodes[320] = { } -- Temple of Ahn'Qiraj - Die Tempeltore
nodes[321] = { } -- Höhle von C'Thun
nodes[319] = { } -- Untergrund des Schwarmbaus
nodes[324] = { } -- The Stonecore
nodes[325] = { } -- The Vortex Pinnacle
nodes[328] = { } -- Throne of the Four Winds
nodes[367] = { } -- Firelands
nodes[369] = { } -- Sulfuron Keep
nodes[398] = { } -- Well of Eternity
nodes[399] = { } -- Hour of Twilight
nodes[400] = { } -- Wyrmrest Temple
nodes[401] = { } -- End Time 
nodes[402] = { } -- Azure Dragonshrine
nodes[403] = { } -- End Time - Ruby Dragonshrine
nodes[409] = { } -- Dragon Soul
nodes[410] = { } -- Maw of Go'rath
nodes[411] = { } -- Maw of Shu'ma
nodes[412] = { } -- Eye of Eternity

--############################
--###### Eastern Kingdom #####
--############################

-- Azeroth/Continent map nodes
nodes[13] = { } -- Eastern Kingdoms   
nodes[14] = { } -- Arathi Highlands
nodes[15] = { } -- Badlands
nodes[16] = { } -- Badlands Uldaman Cave
nodes[17] = { } -- Blasted Lands
nodes[18] = { } -- Tirisfal   
nodes[19] = { } -- ScarletMonasteryEntrance 
nodes[21] = { } -- Silverpine Forest
nodes[22] = { } -- WesternPlaguelands 
nodes[23] = { } -- EasternPlagueland
nodes[27] = { } -- DunMorogh
nodes[30] = { } -- New Tinker Town  
nodes[32] = { } -- Searing Gorge
nodes[33] = { } -- BlackrockMountain
nodes[34] = { } -- BlackrockMountain - Blackrock Caverns
nodes[35] = { } -- BlackrockMountain - Blackrock Depths
nodes[36] = { } -- BurningSteppes    
nodes[42] = { } -- DeadwindPass   
nodes[50] = { } -- StranglethornJungle
nodes[51] = { } -- SwampOfSorrows
nodes[52] = { } -- Westfall    
nodes[55] = { } -- The Deadmines Caverns
nodes[84] = { } -- Stormwind City   
nodes[90] = { } -- Undercity Old Version
nodes[94] = { } -- Eversong Woods
nodes[110] = { } -- Silvermoon City   
nodes[210] = { } -- Stranglethorn Vale
nodes[224] = { } -- Stranglethorn Vale
nodes[245] = { } -- Tol Barad Pensinsula
nodes[469] = { } -- New Tinkertown 
nodes[2070] = { } -- New Tirisfal
-- Dungeon map nodes 
nodes[162] = { } -- Naxxramas - Inside Dungeon Map
nodes[163] = { } -- Naxxramas - Inside Dungeon Map
nodes[164] = { } -- Naxxramas - Inside Dungeon Map
nodes[165] = { } -- Naxxramas - Inside Dungeon Map
nodes[166] = { } -- Naxxramas - Inside Dungeon Map
nodes[167] = { } -- Naxxramas - Inside Dungeon Map
nodes[220] = { } -- Tempel of Atal'hakkar
nodes[225] = { } -- The Stockade  
nodes[226] = { } -- Gnomeregan - Inside Dungeon Map   
nodes[227] = { } -- Gnomeregan - Inside Dungeon Map
nodes[228] = { } -- Gnomeregan - Inside Dungeon Map
nodes[229] = { } -- Gnomeregan - Inside Dungeon Map
nodes[230] = { } -- Uldaman - Inside Dungeon Map
nodes[231] = { } -- Uldaman - Inside Dungeon Map
nodes[232] = { } -- Molten Core
nodes[242] = { } -- Blackwing Depths - Inside Dungeon Map
nodes[243] = { } -- Blackrock Depths - Inside Dungeon Map
nodes[250] = { } -- Lower Blackrock Spire - Inside Dungeon Map
nodes[251] = { } -- Lower Blackrock Spire - Inside Dungeon Map
nodes[252] = { } -- Lower Blackrock Spire - Inside Dungeon Map
nodes[253] = { } -- Lower Blackrock Spire - Inside Dungeon Map
nodes[254] = { } -- Lower Blackrock Spire - Inside Dungeon Map
nodes[255] = { } -- Lower Blackrock Spire - Inside Dungeon Map
nodes[282] = { } -- Baradin Hold
nodes[283] = { } -- Blackrock Caverns - Inside Dungeon Map      
nodes[284] = { } -- Blackrock Caverns - Inside Dungeon Map 
nodes[285] = { } -- Blackwing Descent - Inside Dungeon Map
nodes[286] = { } -- Blackwing Descent - Inside Dungeon Map
nodes[287] = { } -- Blackwing Lair - Inside Dungeon Map
nodes[288] = { } -- Blackwing Lair - Inside Dungeon Map
nodes[289] = { } -- Blackwing Lair - Inside Dungeon Map
nodes[290] = { } -- Blackwing Lair - Inside Dungeon Map
nodes[291] = { } -- Deadmines - Inside Dungeon Map
nodes[292] = { } -- Deadmines - Inside Dungeon Map
nodes[293] = { } -- Grim Batol
nodes[294] = { } -- Bastion of Twilight - Inside Dungeon Map
nodes[295] = { } -- Bastion of Twilight - Inside Dungeon Map
nodes[302] = { } -- Old Scarlet Monastery - Inside Dungeon Map - Graveyard
nodes[303] = { } -- Old Scarlet Monastery - Inside Dungeon Map - Library
nodes[304] = { } -- Old Scarlet Monastery - Inside Dungeon Map - Armory
nodes[305] = { } -- Old Scarlet Monastery - Inside Dungeon Map - Cathedral   
nodes[306] = { } -- Old Scholomance - Inside Dungeon Map - The Reliquary
nodes[307] = { } -- Old Scholomance - Inside Dungeon Map - Chamber of Summoning
nodes[308] = { } -- Old Scholomance - Inside Dungeon Map - The Upper Study
nodes[309] = { } -- Old Scholomance - Inside Dungeon Map - Headmaster's Study
nodes[310] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[311] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[316] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[312] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[313] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[314] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[315] = { } -- Shadowfang Keep - Inside Dungeon Map
nodes[317] = { } -- Stratholme - Main Gate
nodes[318] = { } -- Stratholme Service Entrance
nodes[322] = { } -- Throne of the Tides - Inside Dungeon Map  
nodes[323] = { } -- Throne of the Tides - Inside Dungeon Map   
nodes[333] = { } -- Zul'Aman
nodes[335] = { } -- Sunwell Plateau 
nodes[336] = { } -- Sunwell Plateau - Dungeon Map
nodes[337] = { } -- Zul'Gurub
nodes[348] = { } -- Magisters'Terrace - Dungeon Map
nodes[349] = { } -- Magisters'Terrace - Dungeon Map      
nodes[350] = { } -- Karazhan - Inside Dungeon Map
nodes[351] = { } -- Karazhan - Inside Dungeon Map
nodes[352] = { } -- Karazhan - Inside Dungeon Map
nodes[353] = { } -- Karazhan - Inside Dungeon Map
nodes[354] = { } -- Karazhan - Inside Dungeon Map
nodes[355] = { } -- Karazhan - Inside Dungeon Map
nodes[356] = { } -- Karazhan - Inside Dungeon Map
nodes[357] = { } -- Karazhan - Inside Dungeon Map
nodes[358] = { } -- Karazhan - Inside Dungeon Map
nodes[359] = { } -- Karazhan - Inside Dungeon Map
nodes[360] = { } -- Karazhan - Inside Dungeon Map
nodes[361] = { } -- Karazhan - Inside Dungeon Map
nodes[362] = { } -- Karazhan - Inside Dungeon Map
nodes[363] = { } -- Karazhan - Inside Dungeon Map
nodes[364] = { } -- Karazhan - Inside Dungeon Map
nodes[365] = { } -- Karazhan - Inside Dungeon Map
nodes[366] = { } -- Karazhan - Inside Dungeon Map
nodes[432] = { } -- Scarlet Halls
nodes[436] = { } -- Scarlet Monastery
nodes[431] = { } -- Scarlet Halls
nodes[435] = { } -- Scarlet Monastery
nodes[476] = { } -- Scholomance - Inside Dungeon Map    
nodes[477] = { } -- Scholomance - Inside Dungeon Map
nodes[478] = { } -- Scholomance - Inside Dungeon Map
nodes[479] = { } -- Scholomance - Inside Dungeon Map
nodes[616] = { } -- Upper Blackrock Spire - Inside Dungeon Map
nodes[617] = { } -- Upper Blackrock Spire - Inside Dungeon Map
nodes[617] = { } -- Upper Blackrock Spire - Inside Dungeon Map
nodes[618] = { } -- Upper Blackrock Spire - Inside Dungeon Map
nodes[814] = { } -- Return to Karazhan
nodes[2071] = { } -- Uldaman Legacy of Tyr

--############################
--######### Outland ##########
--############################

-- Azeroth/Continent map nodes
nodes[95] = { } -- Ghostlands    
nodes[100] = { } -- Hellfire 
nodes[101] = { } -- Outland
nodes[102] = { } -- Zangarmarsh   
nodes[104] = { } -- ShadowmoonValley  
nodes[105] = { } -- BladesEdgeMountains    
nodes[108] = { } -- TerokkarForest
nodes[109] = { } -- Netherstorm
nodes[111] = { } -- Shattrath
nodes[122] = { } -- Sunwel, Isle of Quel'Danas 
-- Dungeon map nodes 
nodes[246] = { } -- Shattered Halls
nodes[256] = { } -- Auchenai Crypts - Inside Dungeon Map
nodes[257] = { } -- Auchenai Crypts - Inside Dungeon Map
nodes[258] = { } -- Sethekk Halls - Inside Dungeon Map
nodes[259] = { } -- Sethekk Halls - Inside Dungeon Map
nodes[260] = { } -- Shadow Labyrinth
nodes[261] = { } -- Blood Furnace
nodes[262] = { } -- The Underbog
nodes[263] = { } -- Steamvault - Inside Dungeon Map
nodes[264] = { } -- Steamvault - Inside Dungeon Map
nodes[265] = { } -- Slave Pens
nodes[266] = { } -- Botanica
nodes[267] = { } -- Mechanar - Inside Dungeon Map
nodes[268] = { } -- Mechanar - Inside Dungeon Map
nodes[269] = { } -- Arcatraz - Inside Dungeon Map
nodes[270] = { } -- Arcatraz - Inside Dungeon Map
nodes[271] = { } -- Arcatraz - Inside Dungeon Map
nodes[272] = { } -- Mana Tombs
nodes[332] = { } -- Serpentshrine Cavern
nodes[330] = { } -- Gruul
nodes[331] = { } -- Magtheridons
nodes[334] = { } -- The Eye
nodes[339] = { } -- Black Temple
nodes[340] = { } -- Karabor Sewers
nodes[341] = { } -- Sanctuary of Shadows
nodes[342] = { } -- Halls of Anguish
nodes[343] = { } -- Gorefiend's Vigil
nodes[344] = { } -- Den of Mortal Delights
nodes[345] = { } -- Chamber of Command
nodes[346] = { } -- Temple Summit
nodes[347] = { } -- Hellfire Ramparts

--############################
--## Wrath of the Lich King ##
--############################

-- Azeroth/Continent map nodes
nodes[113] = { } -- Northrend
nodes[114] = { } -- Borean Tundra
nodes[115] = { } -- Dragonblight    
nodes[117] = { } -- HowlingFjord    
nodes[118] = { } -- IcecrownGlacier  
nodes[120] = { } -- The Storm Peaks
nodes[121] = { } -- Zul'Drak
nodes[123] = { } -- LakeWintergrasp  
nodes[125] = { } -- Dalaran City    
nodes[127] = { } -- Crystalsong Forest 
-- Dungeon map nodes 
nodes[129] = { } -- The Nexus
nodes[132] = { } -- Ahn'kahet
nodes[133] = { } -- Utgarde Keep - Inside Dungeon Map
nodes[134] = { } -- Utgarde Keep - Inside Dungeon Map
nodes[135] = { } -- Utgarde Keep - Inside Dungeon Map
nodes[136] = { } -- Utgarde Pinnacle - Inside Dungeon Map
nodes[137] = { } -- Utgarde Pinnacle - Inside Dungeon Map
nodes[138] = { } -- Halls of Lightning - Inside Dungeon Map
nodes[139] = { } -- Halls of Lightning - Inside Dungeon Map
nodes[140] = { } -- Halls of Stone   
nodes[142] = { } -- The Oculus - Inside Dungeon Map
nodes[143] = { } -- The Oculus - Inside Dungeon Map
nodes[144] = { } -- The Oculus - Inside Dungeon Map
nodes[145] = { } -- The Oculus - Inside Dungeon Map
nodes[146] = { } -- The Oculus - Inside Dungeon Map
nodes[147] = { } -- Ulduar - Inside Dungeon Map
nodes[149] = { } -- Ulduar - Inside Dungeon Map
nodes[154] = { } -- Gundrak
nodes[155] = { } -- Sanctum of Obsidian
nodes[156] = { } -- Vault of Archavon
nodes[157] = { } -- Azjol Nerub - Inside Dungeon Map
nodes[158] = { } -- Azjol Nerub - Inside Dungeon Map
nodes[159] = { } -- Azjol Nerub - Inside Dungeon Map
nodes[160] = { } -- Drak'Tharon Keep - Inside Dungeon Map
nodes[161] = { } -- Drak'Tharon Keep - Inside Dungeon Map
nodes[166] = { } -- Naxxramas 
nodes[168] = { } -- Violet Keep
nodes[171] = { } -- Trial of the Champion
nodes[172] = { } -- Trial of the Crusader - Inside Dungeon Map
nodes[173] = { } -- Trial of the Crusader - Inside Dungeon Map
nodes[183] = { } -- the Soulforges
nodes[184] = { } -- Pit of Saron
nodes[185] = { } -- Halls of Reflection
nodes[186] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[187] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[188] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[190] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[191] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[189] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[192] = { } -- IcecrownGlacier - Inside Dungeon Map
nodes[200] = { } -- Sanctum of Ruby

--############################
--######### Catalysm #########
--############################

-- Azeroth/Continent map nodes
nodes[198] = { } -- Hyjal
nodes[203] = { } -- Vashjir
nodes[204] = { } -- VashjirDepths 
nodes[207] = { } -- Deepholm
nodes[241] = { } -- TwilightHighlands   
nodes[244] = { } -- TolBarad    
nodes[249] = { } -- Uldum  
nodes[948] = { } -- The Maelstrom
nodes[1527] = { } -- Uldum

--############################
--##### Misk of Pandaria #####
--############################

-- Azeroth/Continent map nodes
nodes[371] = { } -- TheJadeForest
nodes[376] = { } -- ValleyoftheFourWinds    
nodes[379] = { } -- KunLaiSummit  
nodes[388] = { } -- TownlongWastes    
nodes[390] = { } -- ValeofEternalBlossoms    
nodes[422] = { } -- DreadWastes   
nodes[424] = { } -- Pandaria   
nodes[433] = { } -- ThehiddenPass
nodes[504] = { } -- IsleoftheThunderKing
nodes[1530] = { } -- ValeofEternalBlossoms New
-- Dungeon map nodes 
nodes[429] = { } -- The Temple of the Jade Serpent - Inside Dungeon Map
nodes[430] = { } -- The Temple of the Jade Serpent - Inside Dungeon Map
nodes[437] = { } -- Gate of the Setting Sun - Inside Dungeon Map
nodes[438] = { } -- Gate of the Setting Sun - Inside Dungeon Map
nodes[439] = { } -- Stormstout Brewery - Inside Dungeon Map
nodes[440] = { } -- Stormstout Brewery - Inside Dungeon Map
nodes[440] = { } -- Stormstout Brewery - Inside Dungeon Map
nodes[441] = { } -- Stormstout Brewery - Inside Dungeon Map
nodes[441] = { } -- Stormstout Brewery - Inside Dungeon Map
nodes[442] = { } -- Stormstout Brewery - Inside Dungeon Map
nodes[444] = { } -- Shado-Pan Monastery - Inside Dungeon Map
nodes[443] = { } -- Shado-Pan Monastery - Inside Dungeon Map
nodes[445] = { } -- Shado-Pan Monastery - Inside Dungeon Map
nodes[446] = { } -- Shado-Pan Monastery - Inside Dungeon Map
nodes[453] = { } -- Mogu'shan Palace - Inside Dungeon Map
nodes[454] = { } -- Mogu'shan Palace - Inside Dungeon Map
nodes[455] = { } -- Mogu'shan Palace - Inside Dungeon Map
nodes[456] = { } -- Terrace of Endless Spring
nodes[457] = { } -- Siege of Niuzao Temple - Inside Dungeon Map
nodes[458] = { } -- Siege of Niuzao Temple - Inside Dungeon Map
nodes[459] = { } -- Siege of Niuzao Temple - Inside Dungeon Map
nodes[471] = { } -- Mogu'shan Vaults - Inside Dungeon Map
nodes[472] = { } -- Mogu'shan Vaults - Inside Dungeon Map
nodes[473] = { } -- Mogu'shan Vaults - Inside Dungeon Map
nodes[474] = { } -- Heart of Fear - Inside Dungeon Map
nodes[475] = { } -- Heart of Fear - Inside Dungeon Map
nodes[508] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[509] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[509] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[510] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[511] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[511] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[512] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[512] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[513] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[513] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[514] = { } -- Throne of Thunder - Inside Dungeon Map
nodes[556] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[557] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[558] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[559] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[560] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[561] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[562] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[563] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[564] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[565] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[566] = { } -- Siege of Orgrimmar - Inside Dungeon Map
nodes[567] = { } -- Siege of Orgrimmar - Inside Dungeon Map

--############################
--#### Warlords of Draenor ###
--############################

-- Azeroth/Continent map nodes
nodes[1]  = { } -- Durotar
nodes[463] = { } -- Echo Isles
nodes[525] = { } -- FrostfireRidge
nodes[543] = { } -- Gorgrond
nodes[550] = { } -- NagrandDraenor
nodes[539] = { } -- ShadowmoonValleyDR
nodes[542] = { } -- SpiresOfArak
nodes[534] = { } -- TanaanJungle
nodes[535] = { } -- Talador
nodes[572] = { } -- Draenor
nodes[582] = { } -- Moonrise
nodes[588] = { } -- Ashran
nodes[590] = { } -- Frostwall
nodes[622] = { } -- Stormshild
nodes[624] = { } -- Warspear
-- Dungeon map nodes 
nodes[573] = { } -- Bloodmaul Slag Mines
nodes[574] = { } -- Shadowmoon Burial Grounds - Inside Dungeon Map
nodes[575] = { } -- Shadowmoon Burial Grounds - Inside Dungeon Map
nodes[576] = { } -- Shadowmoon Burial Grounds - Inside Dungeon Map
nodes[593] = { } -- Auchindoun
nodes[595] = { } -- Iron Docks
nodes[596] = { } -- Blackrock Foundry - Inside Dungeon Map
nodes[597] = { } -- Blackrock Foundry - Inside Dungeon Map
nodes[598] = { } -- Blackrock Foundry - Inside Dungeon Map
nodes[599] = { } -- Blackrock Foundry - Inside Dungeon Map
nodes[600] = { } -- Blackrock Foundry - Inside Dungeon Map
nodes[601] = { } -- Skyreach - Inside Dungeon Map
nodes[602] = { } -- Skyreach - Inside Dungeon Map
nodes[606] = { } -- Grimrail Depot - Inside Dungeon Map
nodes[607] = { } -- Grimrail Depot - Inside Dungeon Map
nodes[608] = { } -- Grimrail Depot - Inside Dungeon Map
nodes[609] = { } -- Grimrail Depot - Inside Dungeon Map
nodes[610] = { } -- Highmaul - Inside Dungeon Map
nodes[611] = { } -- Highmaul - Inside Dungeon Map
nodes[612] = { } -- Highmaul - Inside Dungeon Map
nodes[613] = { } -- Highmaul - Inside Dungeon Map
nodes[614] = { } -- Highmaul - Inside Dungeon Map
nodes[615] = { } -- Highmaul - Inside Dungeon Map
nodes[620] = { } -- The Everbloom - Inside Dngeon Map
nodes[621] = { } -- The Everbloom - Inside Dngeon Map
nodes[661] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[662] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[663] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[664] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[665] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[666] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[667] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[668] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[669] = { } -- Hellfire Citadel - Inside Dungeon Map
nodes[670] = { } -- Hellfire Citadel - Inside Dungeon Map

--############################
--########## Legion ##########
--############################

-- Azeroth/Continent map nodes
nodes[619] = { } -- Broken Isles
nodes[627] = { } -- Dalaran
nodes[630] = { } -- Aszuna
nodes[905] = { } -- Argus
nodes[941] = { } -- Krokuun, Vindikaar Lower Deck
-- Dungeon map nodes 
nodes[704] = { } -- Halls of Valor  
nodes[706] = { } -- Maw of Souls
nodes[710] = { } -- Vault of the Wardens
nodes[713] = { } -- Eye of Azshara
nodes[731] = { } -- Neltharion's Lair
nodes[732] = { } -- Assault on Violet Hold
nodes[733] = { } -- Darkheart Thicket
nodes[749] = { } -- The Arcway
nodes[751] = { } -- Black Rook Hold
nodes[761] = { } -- Court of Stars
nodes[764] = { } -- The Nighthold
nodes[777] = { } -- The Emerald Nightmare
nodes[807] = { } -- Trial of Valor
nodes[845] = { } -- Cathedral of Eternal Night
nodes[850] = { } -- Tomb of Sargeras
nodes[903] = { } -- Seat of the Triumvirate
nodes[909] = { } -- Antorus, the Burning Throne

--############################
--##### Battle of Azeroth ####
--############################

-- Azeroth/Continent map nodes
nodes[862] = { } -- Zuldazar
nodes[863] = { } -- Nazmir
nodes[864] = { } -- Vol'Dun
nodes[875] = { } -- Zandalar
nodes[876] = { } --Kul'Tiras
nodes[895] = { } -- Tiragarde Sound
nodes[896] = { } -- Drustvar
nodes[942] = { } -- Stormsong Valley
nodes[1161] = { } --  Boralus City
nodes[1163] = { } -- Inside Dazar'alor
nodes[1165] = { } -- Dazar'alor
nodes[1169] = { } -- Tol Dagor
nodes[1355] = {} -- Nazjatar
nodes[1462] = {} -- Mechagon
nodes[1528] = {} -- Nazjatar - The Eternal Palace Entrance Map
-- Dungeon map nodes 
nodes[934] = { } -- Atal'Dazar
nodes[936] = { } -- Freehold
nodes[974] = { } -- Tol Dagor
nodes[1004] = { } -- Kings Rest
nodes[1010] = { } -- The Motherlode
nodes[1015] = { } -- Waycrest Manor
nodes[1038] = { } -- Temple of Sethraliss
nodes[1039] = { } -- Shrine of the Storm
nodes[1041] = { } -- The Underrot      
nodes[1148] = { } -- Uldir    
nodes[1162] = { } -- Siege of Boralus
nodes[1345] = { } -- Crucible of Storms
nodes[1358] = { } -- Battle of Dazar'alor
nodes[1490] = { } -- Operation: Mechagon
nodes[1512] = { } -- The Eternal Palace    

--############################
--####### Shadowlands ########
--############################

-- Azeroth/Continent map nodes
nodes[1525] = { } -- Revendreth
nodes[1533] = { } -- Bastion
nodes[1536] = { } -- Maldraxxus
nodes[1543] = { } -- The Maw
nodes[1565] = { } -- Ardenweald
nodes[1670] = { } -- Oribos
nodes[1550] = { } -- Shadowlands
nodes[1970] = { } -- Zereth Mortis 
nodes[2016] = { } -- Tazavesh, the Veiled Market
-- Dungeon map nodes 
nodes[1663] = { } -- Halls of Atonement
nodes[1666] = { } -- The Necrotic Wake
nodes[1669] = { } -- Mists of Tirna Scithe
nodes[1674] = { } -- Plaguefall
nodes[1675] = { } -- Sanguine Depths
nodes[1680] = { } -- De Other Side
nodes[1683] = { } -- Theater of Pain
nodes[1692] = { } -- Spires of Ascension
nodes[1735] = { } -- Castle Nathria 
nodes[1989] = { } -- Tazavesh, the Veiled Market
nodes[1998] = { } -- Sanctum of Domination  
nodes[2047] = { } -- Sepulcher of the First Ones

--############################
--####### Dragonflight #######
--############################

-- Azeroth/Continent map nodes
nodes[1978] = { } -- Dragon Isles
nodes[2022] = { } -- The Waking Shores
nodes[2023] = { } -- Ohn'ahran Plains
nodes[2024] = { } -- The Azure Span
nodes[2025] = { } -- Thaldraszus
nodes[2026] = { } -- The Forbidden Reach
nodes[2133] = { } -- Zaralek Cavern
nodes[2112] = { } -- Valdrakken
nodes[2200] = { } -- The Emerald Dream
-- Dungeon map nodes
nodes[2073] = { } -- The Azure Vault
nodes[2080] = { } -- Neltharus
nodes[2082] = { } -- Halls of Infusion  
nodes[2093] = { } -- The Nokhud Offensive
nodes[2095] = { } -- Ruby Life Pools 
nodes[2096] = { } -- Brackenhide Hollow
nodes[2097] = { } -- Algeth'ar Academy
nodes[2190] = { } -- Dawn of the Infinite
nodes[2119] = { } -- Vault of the Incarnates
nodes[2166] = { } -- Aberrus, the Shadowed Crucible
nodes[2232] = { } -- Amirdrassil


--ns.lfgIDs = {
--
--    [63]=326, [64]=327, [66]=323, [65]=1150, [67]=1148, [68]=1147, [69]=1151, [70]=321, [71]=1149, [72]=316, [73]=314, [74]=318, [75]=329, [76]=334, [77]=340, [78]=362,
--
--    [186]=439, [184]=1152, [185]=437, [187]=448,
--
--    [226]=4, [227]=10, [229]=32, [231]=14, [233]=20, [234]=16, [236]=1458, [239]=22, [240]=1, [241]=24, [246]=472, [247]=178, [248]=188, [249]=1154,
--
--    [250]=1013, [252]=180, [253]=181, [254]=1011, [257]=191, [258]=192, [261]=185, [271]=1016, [272]=241, [273]=215, [274]=1017, [275]=1018,
--
--    [276]=256, [277]=213, [278]=1153, [279]=210, [280]=252, [281]=1019, [282]=1296, [283]=221, [284]=249, [285]=242, [286]=1020,
--
--    [302]=1466, [303]=1464, [311]=473, [312]=1468, [313]=1469, [316]=474, [317]=532, [320]=834, [321]=1467, [324]=1465, [330]=534, [369]=766, [362]=634, [385]=1005,
--
--    [457]=900, [476]=1010, [477]=897,
--
--    [536]=1006, [537]=1009, [547]=1008, [556]=1003, [558]=1007, [559]=1004,
--
--    [669]=989,
--
--    [707]=1044, [716]=1175, [721]=1473, [726]=1190, [727]=1192, [740]=1205, [741]=48, [742]=50, [743]=160, [744]=161, [745]=175, [746]=177, [747]=176, [748]=194, [749]=193,
--
--    [751]=196, [753]=240, [754]=227, [755]=238, [756]=1423, [757]=248, [758]=280, [759]=244, [760]=257, [761]=1502, [762]=1202, [767]=1207, [768]=1350, [777]=1209, [786]=1353,
--
--    [800]=1319, [861]=1439, [875]=1527,
--
--    [900]=1488,
--    }
end