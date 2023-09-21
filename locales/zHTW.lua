local L = LibStub("AceLocale-3.0"):NewLocale("MapNote", "deDE")
if not L then return end

--1
L["General settings"] = "常規設定"
L["Additional functions"] = "附加功能"
L["Adventure guide"] = "冒險指南"
L["Left-clicking on a dungeon or raid icon opens the dungeon or raid's adventure guide"] = "左鍵點擊地牢或突襲圖示可開啟地牢或突襲的冒險指南"
L["TomTom waypoints"] = "TomTom 航點"
L["Shift+Right-clicking on a displayed icon on the Continent, Azeroth or Zones map creates TomTom waypoints if the TomTom add-on is also installed"] = "如果也安裝了 TomTom 附加元件，按住 Shift 鍵並右鍵點選大陸、艾澤拉斯或區域地圖上顯示的圖示可建立 TomTom 航路點"
L["Bosses killed"] = "首領被殺"
L["Displays the number of bosses killed in the assigned dungeon or raid when mousing over a gray dungeon or raid icon on the zone map or Azeroth map"] = "當滑鼠懸停在區域地圖或艾澤拉斯地圖上的灰色地牢或突襲圖示上時，顯示指定地牢或突襲中被殺死的首領數量"
L["gray Icon"] = "灰色圖示"
L["Uses gray symbols for dungeons and raids where you've killed bosses and are therefore assigned to that dungeon or raid until that ID is reset."] = "使用灰色符號表示您已殺死首領的地下城和突襲，因此會分配到該地下城或突襲，直到重置該 ID"
L["gray multiple points"] = "灰色多點"
L["Displays multiple points in gray if you are assigned in >ANY< of the listed dungeon or raid of the point"] = "如果您被分配到列出的地下城或團隊的 >ANY< 中，則以灰色顯示多個點"


--2
L["Azeroth map"] = "艾澤拉斯地圖" 
L["Azeroth map options"] = "艾澤拉斯地圖選項"
L["Show on Azeroth"] = "在艾澤拉斯展示"
L["Activates the display of all possible symbols on the Azeroth! map"] = "啟動艾澤拉斯上所有可能符號的顯示！地圖"
L["symbol size"] = "符號大小"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "調整區域地圖、艾澤拉斯地圖和小地圖上的符號大小"
L["hide individual symbols"] = "隱藏單一符號"
L["Hide symbols of raids on the Azeroth! map"] = "隱藏艾澤拉斯地圖上的突襲符號"
L["Hide Dungeons"] = "隱藏地下城"
L["Hide symbols of dungeons on the Azeroth! map"] = "隱藏艾澤拉斯地圖上的地下城符號"
L["Hide Multiple"] = "隱藏多個"
L["Hide symbols of multiple on the Azeroth! map"] = "在艾澤拉斯地圖上隱藏多重符號"
L["Hide Portals"] = "隱藏傳送門"
L["Hide symbols of portals on the Azeroth! map"] = "隱藏艾澤拉斯地圖上的傳送門符號"
L["• Zeppelins"] = "隱藏齊柏林飛船"
L["Hide symbols of zeppelins on the Azeroth! map"] = "在艾澤拉斯隱藏額外的齊柏林飛艇符號！卡出"
L["• Ships"] = "隱藏船隻"
L["Hide symbols of ships on the Azeroth! map"] = "隱藏艾澤拉斯地圖上的所有船舶圖標"
L["hide complete expansion"] = "ganze Erweiterung ausblenden"
L["• Vanilla"] = "• Vanilla"  -- Vanilla ausblenden
L["Hide all Vanilla dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Vanilla Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Outland"] = "• Scherbenwelt"  -- Scherbenwelt ausblenden
L["Hide all Outland  dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Scherbenwelt Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• WotLK"] = "• WotLK"  -- WotLK ausblenden
L["Hide all Wrath of the Lich King dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Northend Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Cataclysm"] = "• Cataclysm"  -- Catalysm ausblenden
L["Hide all Cataclysm dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Catalysm Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Pandaria"] = "• Pandaria"  -- Pandaria ausblenden
L["Hide all Pandaria dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Pandaria Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Draenor"] = "• Draenor"  -- Draenor ausblenden
L["Hide all Warlords of Draenor dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Draenor Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Legion"] = "• Legion"  -- Legion ausblenden
L["Hide all Legion dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Legion Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Battle for Azeroth"] = "• Battle for Azeroth"  -- Battle of Azeroth ausblenden
L["Hide all Battle of Azeroth dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Batlle of Azeroth Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Shadowlands"] = "• Schattenlande"  -- Schattendlande ausblenden
L["Hide all Shadowlands dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Schattenlande Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Dragonflight"] = "• Dragonflight"  -- Dragonflight ausblenden
L["Hide all Dragonflight dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Zeigt alle Dragonflight Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"


--3
L["Continent map"] = "Kontinentkarte"  --Continent tab
L["Continent map options"] = "Kontinent-Karte einstellungen"
L["Show on Continent"] = "Auf Kontinent-Karte anzeigen"
L["Activates the display of all possible symbols on the continent! map"] = "Aktiviert die Anzeige aller Symbole auf der Kontinent-Karte an"
L["Resizes symbols on the continent map"] = "Verändert die Größe von Symbolen auf der Kontinentkarte"
L["hide individual symbols"] = "einzelne Symbole ausblenden"
L["• Raids"] = "• Schlachtzüge"  -- Schlachtzüge anzeigen
L["Hide symbols of raids on the continant map and minimap"] = "Verstecke Standortsymbole von Schlachtzügen auf der Kontinentkarte und Minikarte"
L["• Dungeons"] = "• Dungeons"  -- Dungeon anzeigen
L["Hide symbols of dungeons on the continant map and minimap"] = "Verstecke Standortsymbole von Dungeons auf der Kontinentkarte und Minikarte"
L["• Multiple"] = "• Mehrfach"  -- Gemischte anzeigen
L["Hide symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Verstecke Standortsymbole von gemeinsame (Dungeons und Schlachtzüge) auf der Kontinentkarte und Minikarte"
L["• Portals"] = "• Portale"  -- Portale anzeigen
L["Hide symbols of portals on the continant map and minimap"] = "Verstecke Standortsymbole von Portalen auf der Kontinentkarte und Minikarte"
L["• Zeppelins"] = "• Zeppeline"  -- Zeppeline anzeigen
L["Hide symbols of zeppelins on the continant map and minimap"] = "Verstecke Standortsymbole von Zeppeline auf der Kontinentkarte und Minikarte"
L["• Ships"] = "• Schiffe"  -- Schiffe anzeigen
L["Hide symbols of ships on the continant map and minimap"] = "Verstecke Standortsymbole von Schiffen auf der Kontinentkarte und Minikarte"
L["hide complete expansion"] = "ganze Erweiterung ausblenden"
L["• Vanilla"] = "• Vanilla"  -- Vanilla ausblenden
L["Hide all Vanilla dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Vanilla Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Outland"] = "• Scherbenwelt"  -- Scherbenwelt ausblenden
L["Hide all Outland  dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Scherbenwelt Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• WotLK"] = "• WotLK"  -- WotLK ausblenden
L["Hide all Wrath of the Lich King dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Northend Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Cataclysm"] = "• Cataclysm"  -- Catalysm ausblenden
L["Hide all Cataclysm dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Catalysm Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Pandaria"] = "• Pandaria"  -- Pandaria ausblenden
L["Hide all Pandaria dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Pandaria Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Draenor"] = "• Draenor"  -- Draenor ausblenden
L["Hide all Warlords of Draenor dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Draenor Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Legion"] = "• Legion"  -- Legion ausblenden
L["Hide all Legion dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Legion Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Battle for Azeroth"] = "• Battle for Azeroth"  -- Battle of Azeroth ausblenden
L["Hide all Battle of Azeroth dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Batlle of Azeroth Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Shadowlands"] = "• Schattenlande"  -- Schattendlande ausblenden
L["Hide all Shadowlands dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Schattenlande Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"
L["• Dragonflight"] = "• Dragonflight"  -- Dragonflight ausblenden
L["Hide all Dragonflight dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Zeigt alle Dragonflight Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte an"


--4
L["Zone"] = "Gebiet"  --Zone tab