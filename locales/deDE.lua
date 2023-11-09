local L = LibStub("AceLocale-3.0"):NewLocale("MapNote", "deDE")
if not L then return end

--1
L["General"] = "Allgemein"  --General tab
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Allgemeine Einstellungen die für Azeroth / Continent / Dungeon Karte gleichzeitig gelten"
L["General settings / Additional functions"] = "Allgemeine einstellung / Zusatz Funktionen"
L["• hide MapNote!"] = "• verstecke MapNote!"
L["• Hide all MapNote symbols !"] = "• Verstecke alle MapNote Symbole !"
L["Disable MapNote, all icons will be hidden on each map and all categories will be disabled"] = "Deaktiviere MapNote, alle Symbole werden auf jeder Karte ausgeblendet und alle Kategorien werden deaktiviert"
L["• Adventure guide"] = "• Abenteuerführer"
L["Left-clicking on a MapNote raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Linksklick auf ein Schlachtzug (grün), Dungeon (blau) oder Mehrfachsymbol (grün&blau) von MapNote auf der Karte öffnet die dazugehörige Karte des Dungeons oder Schlachtzug im Abenteuerführers (die Karte darf nicht im Vollbild geöffnet sein)"
L["• TomTom waypoints"] = "• Wegpunkte"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNote on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+Rechtsklick auf ein Schlachtzug, Dungeon, Mehrfachsymbol, Portale, Schiffe, Zeppeline, Durchgänge oder Ausgänge von MapNote auf der Kontinent oder Dungeonkarte erzeugt einen TomTom wegpunkt zu diesem Punkt (dafür muss aber das Addon TomTom installiert sein)"
L["• killed Bosses"] = "• getötete Bosse"
L["For dungeons and raids in which you have killed bosses and have therefore been assigned an ID, this symbol on the Azeroth and continent map will show you the number of killed or remaining bosses as soon as you hover over this dungeon or raid symbol (for example 2/8 mythic, 4/7 heroic etc)"] = "Bei Dungeons und Schlachtzüge bei denen du Bosse getötet hast und somit eine ID zugewiesen wurde, wird dir bei diesem Symbol auf der Azeroth und Kontinentkarte die Anzahl der getötteten bzw noch übrigen Bosse angezeigt, sobald du mit der Maus über dieses Dungeon oder Schlachtzugsymbol darüber gehst (zum beispiel 2/8 Mythisch, 4/7 Heroisch usw)"
L["• gray colored symbols"] = "• grau gefärbte Symbole"
L["If you are assigned to a dungeon or raid and have an ID, this option will turn the dungeon or raid icon gray until this ID is reset so that you can see which dungeon or raid you have started or completed"] = "Bist du bei einem Dungeon oder Schlachtzug zugewiesen also hast eine ID, färbt diese Option das Symbol des Dungeons oder Raids in grau ein bis diese ID zurückgesetzt wurde , damit du siehst, welchen Dungeon oder Schlachtzug du angefangen bzw erledigt hast"
L["• gray multiple points"] = "• Mehrfachpunkte eingrauen"
L["Colors multi-points of dungeons and/or raids in gray if you are assigned to any dungeon or raid of this multi-point and have an ID so that you can see that you have started or completed any dungeon or raid of the multi-point"] = "Färbt Mehrfachpunkte von Dungeons und oder Schlachtzügen in grau ein, wenn du bei irgendeinem Dungeon oder Schlachtzug dieses Mehrfachpunktes zugewiesen bist also eine ID hast, damit du siehst, dass du irgendeinem Dungeon oder Schlachtzug des Mehrfachpunktes angefangen bzw erledigt hast"
L["• enemy faction"] = "• gegnerische Fraktion"
L["Shows enemy faction (horde/alliance) symbols too"] = "Zeige die Symbole der gegnerischen Fraktion (Horde/Allianz) auch an"
L["• Old Raids/Dungeons"] = "• Alte Schlachtzüge/Dungeons"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Zeige Vanilla Versionen von Dungeons und Schlachtzügen an wie zum beispiel Naxxramas, Scholomance oder das Scharlachrote Kloster wofür Erfolge oder andere dinge vorrausgesetzt werden"


--2
L["Information: Individual Azeroth symbols that are too close to other symbols on the Azeroth map are not 100% accurately placed on the Azeroth map! For precise coordination, please use the points on the continent map or zone map"] = "Information: Einzelne Azeroth Symbole die zunah an anderen Symbolen auf der Azerothkarte sind, sind auf der Azerothkarte nicht 100% genau plaziert!"
L["Azeroth map"] = "Azeroth Karte"  --Azeroth tab
L["Azeroth map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Einstellungen für die Azeroth Karte. Hier können bestimmte Symbole angezeigt oder nicht angezeigt werden. Solange die Option (Azeroth Symbole aktivieren) aktiviert wurde"
L["Azeroth map options"] = "Azeroth Karte einstellungen"
L["Activate symbols"] = "Symbole aktivieren"
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
L["Hide all MapNote for a specific map"] = "Alle Kartenpunkte für eine bestimmte Karte ausblenden"
L["• Kalimdor"] = "• Kalimdor"  -- Kalimdor ausblenden
L["Hide all Kalimdor MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Kalimdor MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Eastern Kingdom"] = "• Östliche Königreiche"  -- Östliche Königreiche ausblenden
L["Hide all Eastern Kingdom MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Östliche Königreich MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Northrend"] = "• Nordend"  -- Nordend ausblenden
L["Hide all Northrend MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Nordend MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Pandaria"] = "• Pandaria"  -- Pandaria ausblenden
L["Hide all Pandaria MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Pandaria MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Zandalar"] = "• Zandalar"  -- Zandalar ausblenden
L["Hide all Zandalar MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Zandalar MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Kul Tiras"] = "• Kul Tiras"  -- Kul Tiras ausblenden
L["Hide all Kul Tiras MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Kul Tiras MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Broken Isles"] = "• Verheerten Inseln"  -- Verheerten Inseln ausblenden
L["Hide all Broken Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Verheerten Inseln MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"
L["• Dragon Isles"] = "• Dracheninseln"  -- Dracheninseln ausblenden
L["Hide all Dragon Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the Azeroth map"] = "Blendet alle Dracheninsel MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Azerothkarte aus"


--3
L["Continent map"] = "Kontinent Karte"  --Continent tab
L["Continent map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category"] = "Kontinentkarteneinstellungen. Bestimmte Symbole können angezeigt oder nicht angezeigt werden. Sofern in dieser Kategorie die Option (Symbole aktivieren) aktiviert wurde"
L["Continent map options"] = "Kontinent Karte einstellungen"
L["Activate symbols"] = "Symbole aktivieren"
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
L["Hide all MapNote for a specific map"] = "Alle Kartenpunkte für eine bestimmte Karte ausblenden"
L["• Kalimdor"] = "• Kalimdor"  -- Kalimdor ausblenden
L["Hide all Kalimdor MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Kalimdor MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Eastern Kingdom"] = "• Östliche Königreiche"  -- Östliche Königreiche ausblenden
L["Hide all Eastern Kingdom MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Östliche Königreiche MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Outland"] = "• Scherbenwelt"  -- Scherbenwelt ausblenden
L["Hide all Outland MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Scherbenwelt MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Northrend"] = "• Northrend"  -- Northrend ausblenden
L["Hide all Northrend MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Northend MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Pandaria"] = "• Pandaria"  -- Pandaria ausblenden
L["Hide all Pandaria MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Pandaria MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Draenor"] = "• Draenor"  -- Draenor ausblenden
L["Hide all Draenor MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Draenor MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Broken Isles"] = "• Verheerten Inseln"  -- Verheerten Inseln ausblenden
L["Hide all Broken Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Verheerten Inseln MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Zandalar"] = "• Zandalar"  -- Zandalar ausblenden
L["Hide all Zandalar MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Zandalar MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Kul Tiras"] = "• Kul Tiras"  -- Kul Tiras ausblenden
L["Hide all Kul Tiras MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Kul Tiras MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Shadowlands"] = "• Schattenlande"  -- Schattendlande ausblenden
L["Hide all Shadowlands MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Schattenlande MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"
L["• Dragon Isles"] = "• Dracheninseln"  -- Dragonflight ausblenden
L["Hide all Dragon Isles MapNote dungeon, raid, portal, zeppelin and ship symbols on the continent map"] = "Blendet alle Dracheninsel MapNote Dungeon, Schlachtzüge, Portale, Zeppelin und Schiff Anzeigen auf der Kontinentkarte aus"


--4
L["Dungeon map"] = "Dungeon Karte"  --DungeonMap Tab
L["Dungeon map settings. Certain symbols can be displayed or not displayed. If the option (Activate symbols) has been activated in this category. Shows MapNote exit and passage points on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Dungeon-Karteneinstellungen. Bestimmte Symbole können angezeigt oder nicht angezeigt werden. Sofern in dieser Kategorie die Option (Symbole aktivieren) aktiviert wurde. Zeigt MapNote-Ausgangs- und Durchgangspunkte auf der Dungeon-Karte an (diese Symbole dienen lediglich der Orientierung und es passiert nichts, wenn man darauf klickt)"
L["Dungeon map options"] = "Dungeonkarte einstellungen"
L["Activate symbols"] = "Symbole aktivieren"
L["Enables the display of all possible symbols on the dungeon map (these symbols are for orientation purposes only and nothing happens when you click on them)"] = "Aktiviert die Anzeige aller möglichen Symbole auf der Dungeon Karte (diese Symbole dienen lediglich der Orientierung und es passiert nichts, wenn man darauf klickt)"
L["• Exit"] = "• Ausgänge"
L["Hide symbols of MapNote dungeon exit on the dungeon map"] = "Verstecke Ausgänge auf der Dungeonkarte"
L["• Passage"] = "• Durchgänge"
L["Hide symbols of passage on the dungeon map"] = "Verstecke Durchgänge auf der Dungeonkarte"


--5 Entrance/Exit/passage
L["Exit"] = "Ausgang"
L["Entrance"] = "Eingang"
L["Passage"] = "Durchgang"


--6 Portals
L["Dark Portal (Portal to Warspear, Ashran)"] = "Das Dunkle Portal (Portal zum Kriegsspeer, Ashran)"
L["Dark Portal (Portal to Stormshield, Ashran)"] = "Das Dunkle Portal (Portal zum Sturmschild, Ashran)"
L["Portal to Orgrimmar"] = "Portal nach Orgrimmar"
L["Portal to Orgrimmar (inside building)"] = "Portal nach Orgrimmar (im Gebäude)"
L["Portal to Stormwind City"] = "Portal nach Sturmwind"
L["Portal to Stormwind City (inside building)"] = "Portal nach Sturmwind (im Gebäude)"
L["Portal to Nazmir, Uldum or Tiragarde Sound"] = "Portal nach Nazmir, Uldum oder Tiragardesund"
L["Portal to Warspear, Ashran (at basement)"] = "Portal zum Kriegsspeer, Ashran (im Keller)"
L["Portal to Stormshield, Ashran (inside portal chamber)"] = "Portal zum Sturmschild, Ashran (in der Portalkammer)"
L["Portal to Caverns of Time"] = "Portal zu den Höhlen der Zeit"
L["Portal to Caverns of Time (at basement)"] = "Portal zu den Höhlen der Zeit (im Keller)"
L["Portal to Caverns of Time (inside portal chamber)"] = "Portal zu den Höhlen der Zeit (in der Portalkammer)"
L["Portal to Shattrath (at basement)"] = "Portal nach Shattrath (im Keller)"
L["Portal to Shattrath (inside portal chamber)"] = "Portal nach Shattrath (in der Portalkammer)"
L["Portal to Shattrath"] = "Portal nach Shattrath"
L["Portal to The Jade Forest"] = "Portal zum Jadewald"
L["Portal to The Jade Forest (inside portal chamber)"] = "Portal zum Jadewald (in der Portalkammer)"
L["Portal to Dalaran, Crystalsong Forest"] = "Portal nach Dalaran, Kristallsangwald"
L["Portal to Dalaran, Crystalsong Forest (inside portal chamber)"] = "Portal nach Dalaran, Kristallsangwald (in der Portalkammer)"
L["Portal to Zuldazar"] = "Portal nach Zuldazar"
L["Portal to Zuldazar (inside portal chamber)"] = "Potal nach Zuldazar (in der Portalkammer)"
L["Portal to Azsuna"] = "Portal nach Azsuna"
L["Portal to Azsuna (inside portal chamber)"] = "Portal nach Azsuna (in der Portalkammer)"
L["Portal to Oribos"] = "Portal nach Oribos"
L["Portal to Oribos (inside portal chamber)"] = "Portal nach Oribos (in der Portalkammer)"
L["Portal to Valdrakken"] = "Portal nach Valdrakken"
L["Portal to Valdrakken (inside portal chamber)"] = "Portal nach Valdrakken (in der Portalkammer)"
L["Portal to Silvermoon City"] = "Portal nach Silbermond"
L["Portal to Exodar"] = "Portal nach Exodar"
L["Portal to Exodar (inside portal chamber)"] = "Portal nach Exodar (in der Portalkammer)"
L["Portal to Boralus"] = "Portal nach Boralus"
L["Portal to Boralus (inside portal chamber)"] = "Portal nach Boralus (in der Portalkammer)"
L["Portal to Ruins of Lordaeron, Undercity (on the tower)"] = "Portal zu den Ruinen von Lordaeron, Unterstadt (auf dem Turm)"
L["Portal to Zandalar"] = "Portal nach Zandalar"
L["Portal to Dazar'alor"] = "Portal nach Dazar'alor"
L["Portal to Mechagon"] = "Portal nach Mechagon"
L["Portalroom from Dazar'alor (inside building)"] = "Portalraum von Dazar'alor (im Gebäude)"
L["Portal to Vol'mar"] = "Portal nach Vol'mar"
L["Portal to Ashran"] = "Portal nach Ashran"
L["Portal to Orgrimmar or Vol'mar"] = "Portal nach Orgrimmar oder Vol'mar"
L["Portal to Shado-Pan Garrison, TownlongWastes"] = "Portal zur Shado-Pan Garnison, Tonlongsteppe"
L["Portal to Isle of the ThunderKing"] = "Portal zur Insel des Donners"
L["Portal to Thunderbluff"] = "Portal nach Donnerfels"
L["Portal to Silithus"] = "Portal nach Silithus"
L["Portal to Nazjatar"] = "Portal nach Nazjatar"
L["Portalroom from Boralus (inside building)"] = "Portalraum von Boralus (im Gebäude)"
L["Portal to Ironforge"] = "Portal zur Eisenschmiede"
L["Portalroom from Boralus"] = "Portalraum von Boralus"
L["Portalroom from Dazar'alor"] = "Portalraum von Dazar'alor"
L["These portals are only active in the game if your faction is currently occupying (Ar'gorok for the Arathi Highlands portal) or (Bashal'Aran for the Darkshore portal)"] = "Diese Portale sind im Spiel nur aktiv, wenn eure Fraktion zurzeit (Ar'gorok für das Arathi-Hochlandportal) oder (Bashal'Aran für das Dunkelküstenportal) besetzt"
L["Portal to Boralus (its only shown up ingame if your faction is currently occupying Bashal'Aran"] = "Portal nach Boralus (wird im Spiel nur angezeigt, wenn eure Fraktion zurzeit Bashal'Aran besetzt)"
L["Portal to Zandalar (its only shown up ingame if your faction is currently occupying Bashal'Aran"] = "Portal nach Zandalar (wird im Spiel nur angezeigt, wenn eure Fraktion zurzeit Bashal'Aran besetzt)"
L["Portal to Zandalar(horde)/Boralus(alliance)"] = "Portal nach Zandalar(Horde)/Boralus(Allianz)"
L["Portal to Howling Fjord"] = "Portal zum Heulenden Fjord"
L["Portal to Stranglethorn"] = "Portal zum Schlingendorntal"
L["Portal to The Emerald Dream"] = "Portal zum Smaragdgrünen Traum"
L["Portal to Ohn'ahran Plains"] = "Portal zu den Ebenen von Ohn'ahra"


--7 Zeppelins
L["Zeppelin to Walking Shores, Dragon Isles"] = "Zeppelin zur Küste des Erwachens, Dracheninseln"
L["Zeppelin to Orgrimmar"] = "Zeppelin nach Orgrimmar"


--8 Ships
L["Ship to Dazar'alor, Zandalar"] = "Schiff nach Dazar'alor, Zandalar"
L["Ship to Ratchet, Northern Barrens"] = "Schiff nach Ratschet, Nördliches Brachland"
L["Ship to Booty Bay, Stranglethorn Vale"] = "Schiff zur Beutebucht, Schlingendorntal"
L["Ship to Dazar'alor, Zuldazar"] = "Schiff nach Dazar'alor, Zuldazar"
L["Ship to Echo Isles, Durotar"] = "Schiff zu den Echoinseln, Durotar"
L["Ship to Stormwind City"] = "Schiff nach Sturmwind"
L["Ship to Boralus Harbor, Tiragarde Sound"] = "Schiff zum Hafen von Boralus, Tiragardesund"
L["Ship to Valiance Keep, Borean Tundra"] = "Schiff zur Valicanzfeste, Boreanische Tundra"
L["Ships to Valiance Keep, Borean Tundra and to Boralus Harbor, Tiragarde Sound"] = "Schiffe zur Valianzfeste, Boreanische Tundra und zur Valicanzfeste, Boreanische Tundra"
L["Ship to Menethil Harbor, Wetlands"] = "Schiff zum Hafen von Menethil, Sumpfland"


--9 other transports
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(Schreckensadmiralin Segelriss) bringt dich nach Drustvar, Tiragardesund oder Sturmsangtal"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Großadmiral Jes-Tereth) bringt dich nach Vol'Dun, Nazmir oder Zuldazar"
L["(Captain Krooz) will take you to Mechagon"] = "(Kapitänin Kruus) bringt dich nach Mechagon"
L["(Captain Krooz) will take you back to Zuldazar"] = "(Kapitänin Kruus) bringt dich zurück nach Zuldazar"
L["Ship to Stormwind City or to Vol'Dun or to Nazmir or to Zuldazar"] = "Schiff nach Sturmwind oder nach Vol'dun oder nach Nazmir oder nach Zuldazar"
L["Ship to Echo Isles, Durotar or to Drustvar or to Tiragarde Sound or to Stormsong Valley"] = "Schiff zu den Echo Inseln, Durotar oder nach Drustvar oder nach Tiragardesund oder zum Sturmsangtal"
L["Back to Zuldazar"] = "Zurück nach Zuldazar"
L["Back to Boralus"] = "Zurück nach Boralus"


--10 old dungeons/raids
L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Waffenkammer des Scharlachroten Klosters (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Naxxramas - Secret Entrance (Wards of the Dread Citadel - Achievement)"] = "Alte Version von Naxxramas – Geheimer Eingang (Schutze der Zitadelle des Schreckens – Erfolg)"
L["Old keychain - use the old keychain to activate the old versions of Scarlet Monastery dungeons (you need to get first (The Scarlet Key) from Hallow's End world event or buy from auction house)"] = "Alter Schlüsselbund – Verwenden Sie den alten Schlüsselbund, um die alten Versionen der Dungeons des Scharlachroten Klosters zu aktivieren (Sie müssen zuerst (den Scharlachroten Schlüssel) beim Weltereignis „Kopflose Reiter“ erhalten oder im Auktionshaus kaufen)"
L["Old version of Scarlet Monastery Cathedral (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Kathedrale des Scharlachroten Klosters (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scarlet Monastery Graveyard (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Friedhof des Scharlachroten Klosters (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scarlet Monastery Library (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Bibliothek des Scharlachroten Klosters (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scarlet Monastery Armory (need to activate the old keychain at 48.33 55.88 inside the Scarlet Monastery)"] = "Alte Version der Waffenkammer des Scharlachroten Klosters (der alte Schlüsselbund muss bei 48,33 55,88 im Scharlachroten Kloster aktiviert werden)"
L["Old version of Scholomance - Secret Entrance (Memory of Scholomance - Achievement)"] = "Alte Version von Scholomance – Geheimer Eingang (Erinnerung an Scholomance – Erfolg)"