local L = LibStub("AceLocale-3.0"):NewLocale("MapNote", "zhTW")
if not L then return end

--1
L["General"] = "一般的"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "同時適用於艾澤拉斯/大陸/地下城地圖的常規設置"
L["General settings / Additional functions"] = "常規設定/附加功能"
L["• hide MapNote!"] = "• 隱藏地圖註釋！"
L["• Hide all MapNote symbols !"] = "• 隱藏所有 MapNote 符號 ！"
L["Disable MapNote, all icons will be hidden on each map and all categories will be disabled"] = "停用MapNotes，每張地圖上的所有圖示將被隱藏，所有類別將被停用"
L["• Adventure guide"] = "• 冒險指南"
L["Left-clicking on a MapNote raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "左鍵點擊地圖上的MapNotes團隊（綠色）、地下城（藍色）或多個圖示（綠色和藍色）可在冒險指南中開啟對應的地下城或團隊地圖（地圖不得全螢幕開啟）"
L["• TomTom waypoints"] = "• TomTom 航點"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNote on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+右鍵單擊大陸或地牢地圖上的團隊、地牢、多個符號、傳送門、船舶、飛艇、通道或 MapNote 出口，以建立到此點的 TomTom 路徑點（但為此必須安裝 TomTom 附加元件）"
L["• killed Bosses"] = "• 首領被殺"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "對於您已殺死Boss 並因此被分配ID 的地下城和突襲，艾澤拉斯和大陸地圖上的此符號將在您將滑鼠懸停在該地下城或突襲符號上時立即顯示已殺死或剩餘Boss 的數量（例如2/8 神話，4/7 英雄等）"
L["• gray colored symbols"] = "• 灰色符號"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "如果您被分配到地下城或團隊副本並擁有 ID，此選項會將地下城或團隊副本圖示變為灰色，直到重置此 ID，以便您可以查看已開始或完成的地下城或團隊副本"
L["• gray multiple points"] = "• 灰色多點"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "如果您被分配到此多點的任何地下城或突襲並且擁有ID，則將地下城和/或突襲的多點顏色顯示為灰色，以便您可以看到您已開始或完成多點的任何地下城或突襲"
L["• enemy faction"] = true
L["Shows enemy faction (horde/alliance) symbols too"] = true


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "資訊：與艾澤拉斯地圖上其他符號太接近的個別艾澤拉斯符號並未 100% 準確地放置在艾澤拉斯地圖上！為了精確協調，請使用大陸地圖或區域地圖上的點"
L["Azeroth map"] = "艾澤拉斯地圖"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "艾澤拉斯地圖設定。某些符號可以顯示或不顯示。如果該類別中的選項（啟動符號）已被啟動"
L["Azeroth map options"] = "艾澤拉斯地圖選項"
L["Activate symbols"] = "啟動符號"
L["Activates the display of all possible symbols on the Azeroth map"] = "啟動艾澤拉斯地圖上所有可能符號的顯示"
L["symbol size"] = "符號大小"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "調整區域地圖、艾澤拉斯地圖和小地圖上的符號大小"
L["Hide individual symbols"] = "隱藏單一符號"
L["• Raids"] = "• 突襲"
L["Hide symbols of raids on the Azeroth map"] = "隱藏艾澤拉斯地圖上的突襲符號"
L["• Dungeons"] = "• 地下城S"
L["Hide symbols of dungeons on the Azeroth map"] = "隱藏艾澤拉斯地圖上的地下城符號"
L["• Multiple"] = "• 多種的"
L["Hide symbols of multiple on the Azeroth map"] = "在艾澤拉斯地圖上隱藏多重符號"
L["• Portals"] = "• 入口網站"
L["Hide symbols of portals on the Azeroth map"] = "隱藏艾澤拉斯地圖上的傳送門符號"
L["• Zeppelins"] = "• 齊柏林飛船"
L["Hide symbols of zeppelins on the Azeroth map"] = "在艾澤拉斯地圖上隱藏齊柏林飛船的符號"
L["• Ships"] = "• 船舶"
L["Hide symbols of ships on the Azeroth map"] = "隱藏艾澤拉斯地圖上的船隻符號"
L["Hide all MapNote for a specific map"] = "隱藏特定地圖的所有 MapNote"
L["• Kalimdor"] = "• 卡利姆多"
L["Hide all Kalimdor MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上的所有卡利姆多 MapNote 地下城、團隊、傳送門、齊柏林飛艇和船舶符號"
L["• Eastern Kingdom"] = "• 東方王國"
L["Hide all Eastern Kingdom MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上所有東部王國 MapNote 地下城、團隊、傳送門、齊柏林飛船和船舶符號"
L["• Northrend"] = "• 諾森德"
L["Hide all Northrend MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上的所有諾森德 MapNote 地下城、團隊、傳送門、齊柏林飛船和船舶符號"
L["• Pandaria"] = "• 潘達利亞"
L["Hide all Pandaria MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上所有潘達利亞 MapNote 地下城、團隊、傳送門、齊柏林飛船和船舶符號"
L["• Zandalar"] = "• 贊達拉"
L["Hide all Zandalar MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上所有贊達拉 MapNote 地下城、團隊、傳送門、齊柏林飛船和船舶符號"
L["• Kul Tiras"] = "• 庫爾提拉斯"
L["Hide all Kul Tiras MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上的所有庫爾提拉斯 MapNote 地下城、團隊、傳送門、飛艇和船舶符號"
L["• Broken Isles"] = "• 破碎群島"
L["Hide all Broken Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上所有破碎群島 MapNote 地下城、團隊、傳送門、飛艇和船舶符號"
L["• Dragon Isles"] = "• 龍島"
L["Hide all Dragon Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "隱藏艾澤拉斯地圖上的所有龍島 MapNote 地下城、團隊、傳送門、齊柏林飛船和船舶符號"


--3
L["Continent map"] = "大陸地圖"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "大陸地圖設置。某些符號可以顯示或不顯示。如果該類別中的選項（啟動符號）已被啟動"
L["Continent map options"] = "大陸地圖選項"
L["Activate symbols"] = "啟動符號"
L["Activates the display of all possible symbols on the continent map"] = "啟動大陸地圖上所有可能符號的顯示"
L["symbol size"] = "符號大小"
L["Resizes symbols on the continent map"] = "調整大陸地圖上符號的大小"
L["Hide individual symbols"] = "隱藏單一符號"
L["• Raids"] = "• 突襲"
L["Hide symbols of raids on the continant map and minimap"] = "隱藏大陸地圖和小地圖上的突襲符號"
L["• Dungeons"] = "• 地下城"
L["Hide symbols of dungeons on the continant map and minimap"] = "隱藏大陸地圖和小地圖上的地下城符號"
L["• Multiple"] = "• 多種的"
L["Hide symbols of multiple (dungeons,raids) on the continant map and minimap"] = "在大陸地圖和小地圖上隱藏多個（地下城、突襲）的符號"
L["• Portals"] = "• 入口網站"
L["Hide symbols of portals on the continant map and minimap"] = "隱藏大陸地圖和小地圖上的傳送門符號"
L["• Zeppelins"] = "• 齊柏林飛船"
L["Hide symbols of zeppelins on the continant map and minimap"] = "在大陸地圖和小地圖上隱藏齊柏林飛船的符號"
L["• Ships"] = "• 船舶"
L["Hide symbols of ships on the continant map and minimap"] = "隱藏大陸地圖和小地圖上的船舶符號"
L["Hide all MapNote for a specific map"] = "隱藏特定地圖的所有 MapNote"
L["• Kalimdor"] = "• 卡利姆多"
L["Hide all Kalimdor MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有卡利姆多 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"
L["• Eastern Kingdom"] = "東方王國"
L["Hide all Eastern Kingdom MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上所有東部王國 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"
L["• Outland"] = "• 外地"
L["Hide all Outland MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有外域 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"
L["• Northrend"] = "• 諾森德"
L["Hide all Northrend MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有諾森德 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"
L["• Pandaria"] = "• 潘達利亞"
L["Hide all Pandaria MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有潘達利亞 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"
L["• Draenor"] = "• 德拉諾"
L["Hide all Draenor MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有德拉諾 MapNote 地下城、團隊、傳送門、飛艇和船舶符號”"
L["• Broken Isles"] = "• 破碎群島"
L["Hide all Broken Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上所有破碎群島 MapNote 地下城、團隊、傳送門、飛艇和船舶符號"
L["• Zandalar"] = "• 贊達拉"
L["Hide all Zandalar MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上所有贊達拉 MapNote 地牢、團隊、傳送門、飛艇和船舶符號"
L["• Kul Tiras"] = "• 庫爾提拉斯"
L["Hide all Kul Tiras MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有庫爾提拉斯 MapNote 地下城、突襲、傳送門、飛艇和船舶符號"
L["• Shadowlands"] = "• 暗影國度"
L["Hide all Shadowlands MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有暗影國度 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"
L["• Dragon Isles"] = "• 龍島"
L["Hide all Dragon Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "隱藏大陸地圖上的所有龍島 MapNote 地牢、突襲、傳送門、飛艇和船舶符號"


--4
L["Dungeon map"] = "地下城地圖" --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNote exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "地下城地圖設置。某些符號可以顯示或不顯示。如果該類別中的選項（啟動符號）已被啟動。在地牢地圖上顯示 MapNote 出口和通道點（這些符號僅用於定向目的，單擊它們時不會發生任何情況）"
L["Dungeon map options"] = "地下城地圖選項"
L["Activate symbols"] = "啟動符號"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "允許在地下城地圖上顯示所有可能的符號（這些符號僅用於定向目的，單擊它們時不會發生任何事情）"
L["• Exit"] = "• 出口"
L["Hide symbols of MapNote dungeon exit on the dungeon map"] = "在地牢地圖上隱藏MapNotes地牢出口的符號"
L["• Passage"] = "• 地牢通道"
L["Hide symbols of passage on the dungeon map"] = "隱藏地牢地圖上的通道符號"


--5 Entrance/Exit/Passage
L["Exit"] = "出口"
L["Entrance"] = "入口"
L["Passage"] = "頻道"


--6 Portals
L["Portal to Orgrimmar"] = "通往奧格瑞瑪的傳送門"
L["Portal to Orgrimmar (inside building)"] = "通往奧格瑞瑪的傳送門（建築物內）"
L["Portal to Stormwind City"] = "通往暴風城的傳送門"
L["Portal to Stormwind City (inside building)"] = "通往暴風城的傳送門（建築物內）"
L["Portal to Nazmir, Uldum or Tiragarde Sound"] = "通往納茲米爾、奧丹姆或提拉加德海峽的傳送門"
L["Portal to Orgrimmar (new Tirisfal timeline)"] = "奧格瑞瑪傳送門（新提瑞斯法時間線）"
L["Portal to Warspear, Ashran (at basement)"] = "戰矛傳送門，阿什蘭（地下室）"
L["Portal to Stormshield, Ashran (inside portal chamber)"] = "通往風暴之盾的傳送門，阿什蘭（傳送門室內）"
L["Portal to Caverns of Time"] = "通往時間之穴的門戶"
L["Portal to Caverns of Time (at basement)"] = "時光之穴的傳送門（位於地下室）"
L["Portal to Caverns of Time (inside portal chamber)"] = "通往時間之穴的傳送門（傳送門室內）"
L["Portal to Shattrath (at basement)"] = "通往沙塔斯的傳送門（在地下室）"
L["Portal to Shattrath (inside portal chamber)"] = "通往沙塔斯的傳送門（傳送門室內）"
L["Portal to Shattrath"] = "通往沙塔的傳送門"
L["Portal to The Jade Forest"] = "通往翡翠林的傳送門"
L["Portal to The Jade Forest (inside portal chamber)"] = "通往翡翠林的傳送門（傳送門室內）"
L["Portal to Dalaran, Crystalsong Forest"] = "達拉然傳送門、晶歌森林"
L["Portal to Dalaran, Crystalsong Forest (inside portal chamber)"] = "達拉然傳送門、晶歌森林（傳送門室內）"
L["Portal to Zuldazar"] = "祖達薩傳送門"
L["Portal to Zuldazar (inside portal chamber)"] = "通往祖達薩的傳送門（傳送門室內）"
L["Portal to Azsuna"] = "通往阿蘇納的傳送門"
L["Portal to Azsuna (inside portal chamber)"] = "通往阿蘇納的傳送門（傳送門室內）"
L["Portal to Oribos"] = "奧利博斯傳送門"
L["Portal to Oribos (inside portal chamber)"] = "通往奧裡博斯的傳送門（傳送門室內）"
L["Portal to Valdrakken"] = "通往瓦德拉肯的傳送門"
L["Portal to Valdrakken (inside portal chamber)"] = "通往瓦爾德拉肯的傳送門（傳送門室內）"
L["Portal to Silvermoon City"] = "銀月城傳送門"
L["Portal to Exodar"] = "埃索達傳送門"
L["Portal to Exodar (inside portal chamber)"] = "通往埃索達的傳送門（傳送門室內）"
L["Portal to Boralus"] = "通往伯拉勒斯的傳送門"
L["Portal to Boralus (inside portal chamber)"] = "通往伯拉勒斯的傳送門（傳送門室內）"
L["Portal to Ruins of Lordaeron, Undercity (on the tower)"] = "通往洛丹倫廢墟的傳送門，幽暗城（在塔上）"
L["Portal to Zandalar"] = "贊達拉傳送門"
L["Portal to Dazar'alor"] = "達薩羅傳送門"
L["Portal to Mechagon"] = "麥卡貢傳送門"
L["Portalroom from Dazar'alor (inside building)"] = "達薩羅的傳送室（建築物內）"
L["Portal to Vol'mar"] = "通往沃爾瑪的傳送門"
L["Portal to Ashran"] = "通往阿什蘭的傳送門"
L["Portal to Orgrimmar or Vol'mar"] = "通往奧格瑞瑪或沃爾瑪的傳送門"
L["Portal to Shado-Pan Garrison, TownlongWastes"] = "通往影蹤要塞、螳螂荒地的傳送門"
L["Portal to Isle of the ThunderKing"] = "通往雷王島的傳送門"
L["Portal to Thunderbluff"] = "雷霆崖傳送門"
L["Portal to Silithus"] = "通往希利蘇斯的傳送門"
L["Portal to Nazjatar"] = "納沙塔爾傳送門"
L["Portalroom from Boralus (inside building)"] = "伯拉勒斯的傳送室（建築物內）"
L["Portal to Ironforge"] = "通往鐵爐堡的傳送門"
L["Portalroom from Boralus"] = "伯拉勒斯的傳送室"
L["Portalroom from Dazar'alor"] = "達薩羅的傳送室"
L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"] = "只有當您的陣營目前正在佔領（阿拉希高地傳送門的阿爾戈羅克）或黑海岸傳送門的巴沙爾阿蘭時，這些傳送門才會在遊戲中處於活動狀態"
L["Portal to Boralus (its only shown up ingame if your faction is currently occupying Bashal'Aran"] = "通往伯拉勒斯的傳送門（只有當你的陣營目前佔領巴沙爾阿蘭時，它才會出現在遊戲中）"
L["Portal to Zandalar (its only shown up ingame if your faction is currently occupying Bashal'Aran"] = "贊達拉傳送門（只有當你的陣營目前佔領巴沙爾阿蘭時，它才會出現在遊戲中）"
L["Portal to Zandalar(horde)/Boralus(alliance)"] = "通往贊達拉（部落）/伯拉勒斯（聯盟）的傳送門"


--7 Zeppelins
L["Zeppelin to Walking Shores, Dragon Isles"] = "齊柏林飛船到步行海岸、龍島"
L["Zeppelin to Orgrimmar"] = "齊柏林飛船飛往奧格瑞瑪"


--8 Ships
L["Ship to Dazar'alor, Zandalar"] = "運送到贊達拉達薩羅"
L["Ship to Ratchet, Northern Barrens"] = "運送到北貧瘠之地棘齒城"
L["Ship to Booty Bay, Stranglethorn Vale"] = "運送至荊棘谷的藏寶海灣"
L["Ship to Dazar'alor, Zuldazar"] = "運送到祖達薩達薩羅"
L["Ship to Echo Isles, Durotar"] = "運送到回音群島、杜隆塔爾"
L["Ship to Stormwind City"] = "運送到暴風城"
L["Ship to Boralus Harbor, Tiragarde Sound"] = "運送到提拉加德海峽伯拉勒斯港"
L["Ship to Valiance Keep, Borean Tundra"] = "運送到北風苔原的無畏要塞"
L["Ships to Valiance Keep, Borean Tundra and to Boralus Harbor, Tiragarde Sound"] = "運送至英勇要塞、北風苔原和伯拉勒斯港、提拉加德海峽"
L["Ship to Menethil Harbor, Wetlands"] = "運送到濕地米奈希爾港"


--9 other transports
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "（恐怖海軍上將塔特賽爾）將帶你前往德魯斯瓦、提拉加德海峽或斯托頌谷地"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "（傑斯-泰瑞斯海軍上將）將帶你前往沃頓、納茲米爾或祖達薩"
L["(Captain Krooz) will take you to Mechagon"] = "（克魯茲船長）將帶你前往麥卡貢"
L["(Captain Krooz) will take you back to Zuldazar"] = "（克魯茲船長）將帶你回到祖達薩"
L["Ship to Stormwind City or to Vol'Dun or to Nazmir or to Zuldazar"] = "運送到暴風城或沃頓或納茲米爾或祖達薩"
L["Ship to Echo Isles, Durotar or to Drustvar or to Tiragarde Sound or to Stormsong Valley"] = "運送到回音群島、杜隆塔爾、德魯斯瓦、提拉加德海峽或斯托頌谷地"
L["Back to Zuldazar"] = "返回祖達薩"
L["Back to Boralus"] = "回到伯拉勒斯"