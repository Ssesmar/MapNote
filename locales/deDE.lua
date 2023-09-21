local L = LibStub("AceLocale-3.0"):NewLocale("MapNote", "deDE")
if not L then return end

--1
L["General"] = "Allgemein"  --General tab
L["General settings / Additional functions"] = "Allgemeine einstellung / Zusatz Funktionen"
L["Adventure guide"] = "Abenteuerführer"
L["Left-clicking on a dungeon or raid icon opens the dungeon or raid's adventure guide"] = "Mit Linksklick auf einen Dungeon oder Raidsymbol von MapNote wird der Abenteuerführer des Dungeons oder Raids geöffnet"
L["TomTom waypoints"] = "Wegpunkte"
L["Shift+Right-clicking on a displayed icon on the Continent, Azeroth or Zones map creates TomTom waypoints if the TomTom add-on is also installed"] = "Mit Shift+Rechtsklick auf ein angezeigtes Symbol von MapNote auf der Kontinent, Azeroth oder Zonen-Karte erstellt TomTom-Wegpunkte, wenn das MapNote TomTom zusätzlich installiert ist"
L["Bosses killed"] = "getötete Bosse"
L["Displays the number of bosses killed in the assigned dungeon or raid when mousing over a gray dungeon or raid icon on the zone map or Azeroth map"] = "Zeigt die Anzahl getöteter Bosse des zugewiesenen Dungeons oder Schlachtzugs an, wenn Sie mit der Maus über ein graues Dungeon oder Schlachtzugs Symbol von MapNote auf der Zonenkarte oder Azerothkarte fahren"
L["gray Icon"] = "graues Symbol"
L["Uses gray symbols for dungeons and raids where you've killed bosses and are therefore assigned to that dungeon or raid until that ID is reset."] = "Verwendet graue Symbole für Dungeons und Schlachtzügen von MapNote, in denen Sie Bosse getötet haben und daher diesem Dungeon oder Raid zugewiesen sind, bis diese ID zurückgesetzt wird"
L["gray multiple points"] = "Mehrfachpunkte eingrauen"
L["Displays multiple points in gray if you are assigned in >ANY< of the listed dungeon or raid of the point"] = "Zeigt Mehrfachpunkte von MapNote in Grau an, wenn du in >IRGENDEINEM< der aufgelisteten Dungeon oder Schlachzug des punktes zugewiesen bist"
L["inside dungeons map"] = "Innerhalb Dungeons"
L["Displays entrance/exit and passage points inside a dungeon on the map"] = "Zeigt Ein - Ausgange und Durchgangs markierungen innerhalb eines Dungeons oder Raids auf der Karte an"


--2
L["Azeroth map"] = "Azeroth Karte"  --Azerot tab
L["Azeroth map options"] = "Azeroth Karte einstellungen"
L["Show on Azeroth map"] = "Auf Azeroth Karte anzeigen"
L["Activates the display of all possible symbols on the Azeroth map"] = "Aktiviert die Anzeige aller MapNote Symbole auf der Azeroth Karte"
L["symbol size"] = "Symbolgröße"
L["Resizes symbols on the zone map, azeroth map and minimap"] = "Verändert die Größe von MapNote Symbolen auf der Zonenkarte, Azeroth Karte und Minikarte"
L["Hide individual symbols"] = "einzelne MapNote Symbole ausblenden"
L["• Raids"] = "• Schlachtzüge"  -- Schlachtzüge anzeigen
L["Hide symbols of raids on the Azeroth map"] = "Blendet alle MapNote Schlachtzugsymbole auf der Azeroth Karte aus"
L["• Dungeons"] = "• Dungeons"  -- Dungeon anzeigen
L["Hide symbols of dungeons on the Azeroth map"] = "Blendet alle MapNote Dungeonsymbole auf der Azeroth Karte aus"
L["• Multiple"] = "• Mehrfach"  -- Gemischte anzeigen
L["Hide symbols of multiple on the Azeroth map"] = "Blendet alle MapNote Mehrfachsymbole auf der Azeroth Karte aus"
L["• Portals"] = "• Portale"  -- Portale anzeigen
L["Hide symbols of portals on the Azeroth map"] = "Blendet alle MapNote Portalsymbole auf der Azeroth Karte aus"
L["• Zeppelins"] = "• Zeppeline"  -- Zeppeline anzeigen
L["Hide symbols of zeppelins on the Azeroth map"] = "Blendet alle MapNote Zeppelinsymbole auf der Azeroth Karte aus"
L["• Ships"] = "• Schiffe"  -- Schiffe anzeigen
L["Hide symbols of ships on the Azeroth map"] = "Blendet alle MapNote Schiffsymbole auf der Azeroth Karte aus"
L["Hide all MapNotes for a specific map"] = "Alle Kartenpunkte für eine bestimmte Karte ausblenden"
L["• Kalimdor"] = "• Kalimdor"  -- Kalimdor ausblenden
L["Hide all Kalimdor-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Kalimdor-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Eastern Kingdom"] = "• Östliche Königreiche"  -- Östliche Königreiche ausblenden
L["Hide all Eastern Kingdom-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Östliche Königreich-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Northrend"] = "• Nordend"  -- Nordend ausblenden
L["Hide all Northrend-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Nordend-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Pandaria"] = "• Pandaria"  -- Pandaria ausblenden
L["Hide all Pandaria-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Pandaria-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Zandalar"] = "• Zandalar"  -- Zandalar ausblenden
L["Hide all Zandalar-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Zandalar-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Kul Tiras"] = "• Kul Tiras"  -- Kul Tiras ausblenden
L["Hide all Kul Tiras-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Kul Tiras-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Broken Isles"] = "• Verheerten Inseln"  -- Verheerten Inseln ausblenden
L["Hide all Broken Isles-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Verheerten Inseln-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"
L["• Dragon Isles"] = "• Dracheninseln"  -- Dracheninseln ausblenden
L["Hide all Dragon Isles-MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Dracheninsel-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azeroth Karte aus"


--3
L["Continent map"] = "Kontinent Karte"  --Continent tab
L["Continent map options"] = "Kontinent Karte einstellungen"
L["Show on Continent map"] = "Auf Kontinent Karte anzeigen"
L["Activates the display of all possible symbols on the continent map"] = "Aktiviert die Anzeige aller MapNote Symbole auf der Kontinent Karte"
L["symbol size"] = "Symbolgröße"
L["Resizes symbols on the continent map"] = "Verändert die Größe von MapNote Symbolen auf der Kontinent Karte"
L["Hide individual symbols"] = "einzelne MapNote Symbole ausblenden"
L["• Raids"] = "• Schlachtzüge"  -- Schlachtzüge anzeigen
L["Hide symbols of raids on the continant map and minimap"] = "Blendet alle MapNote Schlachtzugsymbole auf der Kontinent Karte und Minikarte aus"
L["• Dungeons"] = "• Dungeons"  -- Dungeon anzeigen
L["Hide symbols of dungeons on the continant map and minimap"] = "Blendet alle MapNote Dungeonsymbole auf der Kontinent Karte und Minikarte aus"
L["• Multiple"] = "• Mehrfach"  -- Gemischte anzeigen
L["Hide symbols of multiple (dungeons,raids) on the continant map and minimap"] = "Blendet alle MapNote Mehrfachsymbole auf der Kontinent Karte und Minikarte aus"
L["• Portals"] = "• Portale"  -- Portale anzeigen
L["Hide symbols of portals on the continant map and minimap"] = "Blendet alle MapNote Portalsymbole auf der Kontinent Karte und Minikarte aus"
L["• Zeppelins"] = "• Zeppeline"  -- Zeppeline anzeigen
L["Hide symbols of zeppelins on the continant map and minimap"] = "Blendet alle MapNote Zeppelinsymbole auf der Kontinent Karte und Minikarte aus"
L["• Ships"] = "• Schiffe"  -- Schiffe anzeigen
L["Hide symbols of ships on the continant map and minimap"] = "Blendet alle MapNote Schiffsymbole auf der Kontinent Karte und Minikarte aus"
L["Hide all MapNotes for a specific map"] = "Alle Kartenpunkte für eine bestimmte Karte ausblenden"
L["• Kalimdor"] = "• Kalimdor"  -- Kalimdor ausblenden
L["Hide all Kalimdor-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Kalimdor-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Eastern Kingdom"] = "• Östliche Königreiche"  -- Östliche Königreiche ausblenden
L["Hide all Eastern Kingdom-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Östliche Königreiche-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Outland"] = "• Scherbenwelt"  -- Scherbenwelt ausblenden
L["Hide all Outland-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Scherbenwelt-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Northrend"] = "• Northrend"  -- Northrend ausblenden
L["Hide all Northrend-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Northend-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Pandaria"] = "• Pandaria"  -- Pandaria ausblenden
L["Hide all Pandaria-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Pandaria-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Draenor"] = "• Draenor"  -- Draenor ausblenden
L["Hide all Draenor-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Draenor-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Broken Isles"] = "• Verheerten Inseln"  -- Verheerten Inseln ausblenden
L["Hide all Broken Isles-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Verheerten Inseln-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Zandalar"] = "• Zandalar"  -- Zandalar ausblenden
L["Hide all Zandalar-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Zandalar-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Kul Tiras"] = "• Kul Tiras"  -- Kul Tiras ausblenden
L["Hide all Kul Tiras-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Kul Tiras-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Shadowlands"] = "• Schattenlande"  -- Schattendlande ausblenden
L["Hide all Shadowlands-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Schattenlande-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Dragon Isles"] = "• Dracheninseln"  -- Dragonflight ausblenden
L["Hide all Dragon Isles-MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Dracheninsel-MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"


--4
L["Dungeon map"] = "Dungeon Karte"  --Inside Dungeon Tab
L["Inside Dungeon options"] = "Dungeon Karte einstellungen"
L["Show on Dungeon map"] = "Auf Dungeon Karte anzeigen"
L["Displays entrance/exit and passage points inside a dungeon on the map"] = "Zeigt Ein/Ausgänge und Durchgangspunkte auf der Dungeonkarte"
L["• Entrance/Exit"] = "Ein/Ausgänge"
L["Hide symbols of entrance/exit on the map inside a dungeon"] = "Verstecke Ein/Ausgänge auf der Dungeon-Karte"
L["• Passage"] = "Durchgänge"
L["Hide symbols of passage on the map inside a dungeon"] = "Verstecke Durchgänge auf der Dungeon-Karte"


--5 Entrance/Exit
L["Maraudon Orange Crystal Entrance/Exit"] = "Orange farbener Kristall Ausgang"
L["Maraudon Purple Crystal Entrance/Exit"] = "Lila farbener Kristall Ausgang"


--6 Passage
L["Passage to Caverns of Maraudon"] = "Durchgang zu den Höhlen von Maraudon"
L["Passage to Zaetar's Grave"] = "Durchgang zu Zaetars Grab"


--7 Portals
L["Portal to Orgrimmar"] = "Portal nach Orgrimmar"
L["Portal to Orgrimmar (inside building)"] = "Portal nach Orgrimmar (im Gebäude)"
L["Portal to Stormwind City"] = "Portal nach Sturmwind"
L["Portal to Stormwind City (inside building)"] = "Portal nach Sturmwind (im Gebäude)"
L["Portal to Nazmir, Uldum or Tiragarde Sound"] = "Portal nach Nazmir, Uldum oder Tiragardesund"
L["Portal to Orgrimmar (new Tirisfal timeline)"] = "Portal nach Orgrimmar (neue Tirisfal Zeitlinie)"
L["Portal to Warspear, Ashran (at basement)"] = "Portal nach Kriegsspeer, Ashran (im Keller)"
L["Portal to Caverns of Time (at basement)"] = "Portal zu den Höhlen der Zeit (im Keller)"
L["Portal to Shattrath (at basement)"] = "Portal nach Shattrath (im Keller)"
L["Portal to The Jade Forest (inside building)"] = "Portal zum Jadewald (im Gebäude)"
L["Portal to Dalaran, Crystalsong Forest (inside building)"] = "Portal nach Dalaran, Kristallsangwald (im Gebäude)"
L["Portal to Zuldazar (inside building)"] = "Portal nach Zuldazar (im Gebäude)"
L["Portal to Azsuna (inside building)"] = "Portal nach Azsuna (im Gebäude)"
L["Portal to Oribos (inside building)"] = "Portal nach Oribos (im Gebäude)"
L["Portal to Valdrakken (inside building)"] = "Portal nach Valdrakken (im Gebäude)"
L["Portal to Silvermoon City"] = "Portal nach Silbermond"
L["Portal to Silvermoon City (inside building)"] = "Portal nach Silbermond (im Gebäude)"
L["Portal to Ruins of Lordaeron, Undercity (on the tower)"] = "Portal zu den Ruinen von Lordaeron, Unterstadt (auf dem Turm)"
L["Portal to Zandalar"] = "Portal nach Zandalar"
L["Portal to Dazar'alor"] = "Portal nach Dazar'alor"
L["(Dread-Admiral Tattersail) transport you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Schreckensadmiralin Segelriss) transport dich nach Drustvar, Tiragardesund oder Sturmsangtal"
L["Portal to Mechagon"] = "Portal nach Mechagon"
L["Portalroom from Dazar'alor (inside building)"] = "Portalraum von Dazar'alor (im Gebäude)"
L["Portal to Vol'mar"] = "Portal nach Vol'mar"
L["Portal to Ashran"] = "Portal nach Ashran"
L["Portal to Orgrimmar or Vol'mar"] = "Portal nach Orgrimmar oder Vol'mar"
L["Portal to Shado-Pan Garrison, TownlongWastes"] = "Portal zur Shado-Pan Garnison, Tonlongsteppe"
L["Portal to Isle of the ThunderKing"] = "Portal zur Insel des Donners"
L["Portal to Zuldazar"] = "Potal nach Zuldazar"
L["Portal to Thunderbluff"] = "Portal nach Donnerfels"
L["Portal to Silithus"] = "Portal nach Silithus"
L["Portal to Nazjatar"] = "Portal nach Nazjatar"


--8 Zeppelins
L["Zeppelin to Walking Shores, Dragon Isles"] = "Zeppelin zur Küste des Erwachens, Dracheninseln"
L["Zeppelin to Orgrimmar"] = "Zeppelin nach Orgrimmar"


--9 Ships
L["Ship to Dazar'alor, Zandalar"] = "Schiff nach Dazar'alor, Zandalar"
L["Ship to Ratchet, Northern Barrens"] = "Schiff nach Ratschet, Nördliches Brachland"
L["Ship to Booty Bay, Stranglethorn Vale"] = "Schiff zur Beutebucht, Schlingendorntal"
L["Ship to Dazar'alor, Zuldazar"] = "Schiff nach Dazar'alor, Zuldazar"
L["Ship to Echo Isles, Durotar"] = "Schiff zu den Echoinseln, Durotar"
L["Ship to Stormwind"] = "Schiff nach Sturmwind"