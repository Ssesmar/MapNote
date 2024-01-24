﻿local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_MapNotes", "itIT")
if not L then return end

--1 General tab
L["Description"] = "Descrizione"
L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"] = "Facendo clic con il tasto sinistro su un'icona su questa mappa si apre l'istanza corrispondente nella guida all'avventura o sulla mappa in cui si trova l'icona del portale, della nave, dello zeppelin o del trasporto speciale"
L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"] = "Se si preme uno di questi simboli su una scheda con il pulsante sinistro del mouse, si apre la guida di avventura associata o la mappa del bersaglio"
L["Left-clicking on a multiple icon will open the map where the dungeons are located"] = "Se si fa clic su un simbolo multiplo con il pulsante del mouse sinistro, la scheda su cui si trovano i sotterranei verranno aperti"
L["At the same time, all icons representing additional instance inputs are removed"] = "Allo stesso tempo, tutte le icone che rappresentano gli input di istanze aggiuntive vengono rimosse"
L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"] = "Cambia tutti attraverso i simboli su tutte le carte in sotterraneo, raid o più simboli. Inoltre, l'opzione di passaggio è disattivata ovunque e vengono aggiunti i simboli dei rispettivi raid, sotterranei o più opzioni (la scheda Dungeon rimane invariata da tutto questo)"
L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"] = "Mostra icone diverse su mappe diverse. Tutte le icone sono cliccabili (tranne sulla minimappa) e hanno una funzione. Le icone della mappa funzionano con o senza il tasto Maiusc. Cambia semplicemente la funzione Maiusc!"
L["General"] =  "Generale" 
L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"] = "Impostazioni generali che si applicano contemporaneamente alla mappa Azeroth / Continente / Dungeon"
L["General settings / Additional functions"] = "Impostazioni generali/Funzioni aggiuntive"
L["Shift function!"] = "Funzione di cambio!"
L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."] = "Se abilitato, devi premere Maiusc prima di fare clic con il tasto sinistro o destro per interagire con le icone di MapNotes. Ma questo ha un vantaggio perché ci sono così tante icone nel gioco, comprese quelle di altri componenti aggiuntivi, quindi non fai clic accidentalmente su un simbolo e modificare la mappa o creare erroneamente un punto TomTom."
L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"] = "Devi sempre premere il pulsante Maiusc + Mouse contemporaneamente per interagire con i simboli MapNotes"
L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"] = "Ora puoi interagire con i simboli di mapnotes senza dover premere il pulsante Maiusc + Mouse contemporaneamente"
L["Settings apply to the zone map and the mini map at the same time"] = "Le impostazioni si applicano alla scheda Zona e alla Mini Card contemporaneamente"
L["symbol size"] = "dimensione del simbolo"
L["Changes the size of the icons"] = "Cambia la dimensione delle icone"
L["symbol visibility"] = "visibilità del simbolo"
L["Changes the visibility of the icons"] = "Modifica la visibilità delle icone"
L["hide minimap button"] = "nascondi pulsante minimappa"
L["Hide the minimap button on the minimap"] = "Nascondi il pulsante della minimappa sulla minimappa"
L["hide MapNotes!"] = "nascondi MapNotes!"
L["-> Hide all MapNotes icons <-"] = "-> Nascondi tutte le icone di MapNotes <-"
L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] = "Disabilita MapNotes, tutte le icone verranno nascoste su ciascuna mappa e tutte le categorie saranno disabilitate"
L["Adventure guide"] = "Guida all'avventura"
L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] = "Facendo clic con il tasto sinistro del mouse su un raid MapNotes (verde), un dungeon (blu) o un'icona multipla (verde e blu) sulla mappa si apre il dungeon o la mappa del raid corrispondente nella Guida all'avventura (la mappa non deve essere aperta a schermo intero)"
L["TomTom waypoints"] = "Waypoint TomTom"
L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"] = "Shift+clic destro su un raid, un dungeon, un simbolo multiplo, un portale, una nave, uno zeppelin, un passaggio o un'uscita da MapNotes sulla mappa del continente o del dungeon crea un punto di passaggio TomTom fino a questo punto (ma per questo è necessario installare il componente aggiuntivo TomTom )"
L["extra information"] = "ulteriori informazioni"
L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"] = "Visualizza ulteriori informazioni per sotterranei o raid. Ad esempio, il numero di boss già uccisi"
L["gray single"] = "Grigio individuale"
L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"] = "Solo punti individuali colorati di sotterranei e incursioni assegnate in grigio (se hai un ID)"
L["gray all"] = "Tutto grigio"
L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"] = "Colora tutti! Dungeon e raid assegnati grigi anche più punti (se hai un ID)"
L["enemy faction"] = "fazione nemica"
L["Shows enemy faction (horde/alliance) icons"] = "Mostra le icone della fazione nemica (orda/alleanza)"
L["Special Icons"] = "icone speciali"
L["Shows special transport icons like"] = "Mostra icone speciali di trasporto come"
L["Combines several different grouped symbols that lie on one point, thus showing all possible transport/instance symbols that are located here instead of just one of several possible ones"] = "Combina diversi simboli raggruppati che si trovano su un punto, mostrando così tutti i possibili simboli di trasporto/istanza che si trovano qui anziché solo uno dei tanti possibili"
L["Left-clicking on one of these symbols on the map opens the corresponding map, which contains all of the points listed by the symbol on the map"] = "Facendo clic con il tasto sinistro su uno di questi simboli sulla mappa si apre la mappa corrispondente, che contiene tutti i punti elencati dal simbolo sulla mappa"
L["Informations"] = "Informazioni"
L["Chat commands:"] = "Comandi chat:"
L["to show MapNotes info in chat: /mn, /MN"] = "per mostrare le informazioni di MapNotes nella chat: /mn, /MN"
L["to open MapNotes menu: /mno, /MNO"] = "per aprire il menu MapNotes: /mno, /MNO"
L["to close MapNotes menu: /mnc, /MNC"] = "per chiudere il menu MapNotes: /mnc, /MNC"
L["to show minimap button: /mnb or /MNB"] = "per mostrare il pulsante della minimappa: /mnb o /MNB"
L["to hide minimap button: /mnbh or /MNBH"] = "per nascondere il pulsante della minimappa: /mnbh o /MNBH"
--2 Azeroth tab specific
L["Azeroth map"] = "Mappa di Azeroth"
--3 Continent tab specific
L["Continent map"] = "Mappa del continente"
--4 Zone tab specific
L["Zone / Minimap"] = "Zone / mini carta"
--5 DungeonMap Tab specific 
L["Dungeon map"] =  "Mappa del dungeon" 
--6 Map Tabs together 
L["Activate icons"] = "Attiva icone"
L["Show individual icons"] = "Mostra icone individuali"
L["Exits"] = "Esce"
L["Raids"] = "Raid"
L["Dungeons"] = "Dungeon"
L["Passages"] = "Passaggi"
L["Multiple"] = "Multiplo"
L["Portals"] = "Portali"
L["Zeppelins"] = "Zeppelin"
L["Ships"] = "Navi"
L["Transport"] = "Trasporto"
L["Special"] = "Speciale"
L["Ogre Waygate"] = "Porta dell'Orco"
L["Old Instances"] = "Vecchie istanze"
L["Show icons of passage on this map"] = "Mostra icone di passaggio su questa mappa"
L["Show icons of raids on this map"] = "Mostra le icone dei raid su questa mappa"
L["Show icons of dungeons on this map"] = "Mostra le icone dei dungeon su questa mappa"
L["Show icons of multiple on this map"] = "Mostra icone di più persone su questa mappa"
L["Show icons of portals on this map"] = "Mostra le icone dei portali su questa mappa"
L["Show icons of zeppelins on this map"] = "Mostra le icone degli zeppelin su questa mappa"
L["Show icons of ships on this map"] = "Mostra le icone delle navi su questa mappa"
L["Show all MapNotes for a specific map"] = "Mostra tutte le MapNotes per una mappa specifica"
L["Show icons of MapNotes dungeon exit on this map"] = "Mostra le icone dell'uscita del dungeon di MapNotes su questa mappa"
L["Enables the display of all possible icons on this map"] = "Abilita la visualizzazione di tutte le possibili icone su questa mappa"
L["Show icons of passage to raids and dungeons on this map"] = "Mostra le icone di passaggio ai raid e ai dungeon su questa mappa"
L["Shows icons of special mixed transport options for Horde and Alliance (Portal+Ship etc) and special individual transport options on this map"] = "Mostra le icone delle opzioni di trasporto miste speciali per Orda e Alleanza (Portale+Nave ecc.) e le opzioni di trasporto individuali speciali su questa mappa"
L["Show Ogre Waygate icons from Garrison on this map"] = "Mostra le icone della Porta degli Ogre da Garrison su questa mappa"
L["Activates the display of all possible icons on this map"] = "Attiva la visualizzazione di tutte le possibili icone su questa mappa"
L["Show icons of multiple (dungeons,raids) on this map"] = "Mostra icone di più (dungeon, raid) su questa mappa"
L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Outland MapNotes su questa mappa"
L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Draenor MapNotes su questa mappa"
L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Shadowlands MapNotes su questa mappa"
L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Kalimdor MapNotes su questa mappa"
L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi del Regno Orientale su questa mappa"
L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Northrend MapNotes su questa mappa"
L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Pandaria MapNotes su questa mappa"
L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Zandalar MapNotes su questa mappa"
L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Kul Tiras MapNotes su questa mappa"
L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi delle Note della mappa delle Isole Disperse su questa mappa"
L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"] = "Mostra tutte le icone di dungeon, raid, portali, zeppelin e navi di Dragon Isles MapNotes su questa mappa"
L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"] = "Alcune icone possono essere visualizzate o meno. Se in questa categoria è stata attivata l'opzione (Attiva icone)"
L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"] = "Mostra versioni vanilla di dungeon e incursioni come Naxxramas, Scholomance o Scarlet Monastero, che richiedono risultati o altre cose"
L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"] = "I singoli simboli che sono troppo vicini ad altri simboli su questa mappa non sono posizionati al 100 % proprio su questa carta! Per coordinate più dettagliate, utilizzare i punti sulla scheda Zona"
--7 Maps --7 mappe
L["Kalimdor"] = "Kalimdor"
L["Eastern Kingdom"] = "Regno Orientale"
L["Outland"] = "Outland"
L["Northrend"] = "Nord"
L["Pandaria"] = "Pandaria"
L["Draenor"] = "Draenor"
L["Broken Isles"] = "Isole Disperse"
L["Zandalar"] = "Zandalar"
L["Kul Tiras"] = "Kul Tiras"
L["Shadowlands"] = "Terre d'ombra"
L["Dragon Isles"] = "Isole del Drago"
--8 Core specific
L["Shift function"] = "Funzione di cambio"
L["-> MiniMapButton <-"] = "-> Pulsante MiniMappa <-"
L["MapNotes menu window"] = "Finestra del menu MapNotes"
L["All set icons have been restored"] = "Tutte le icone impostate sono state ripristinate"
L["All MapNotes icons have been hidden"] = "Tutte le icone di MapNotes sono state nascoste"
L["is activated"] = "è attivato"
L["is deactivated"] = "è disattivato"
L["are shown"] = "sono mostrati"
L["are hidden"] = "sono nascosti"
L["Left-click => Open/Close"] = "Clic sinistro => Apri/Chiudi"
L["Right-click => Open/Close"] = "Click destro => Apri/Chiudi"
L["Shift + Right-click => hide"] = "Maiusc + clic con il tasto destro => nascondi"
--9 transport
L["icons"] = "icone"
L["Exit"] = "Uscita"
L["Entrance"] = "Entrata"
L["Passage"] = "Passaggio"
L["Portal"] = "Portale"
L["Ship"] = "Nave"
L["Zeppelin"] = "zepelín"
L["Portalroom"] = "Sala del Portale"
L["The Dark Portal"] = "Il Portale Oscuro"
L["Captain Krooz"] = "Capitano Krooz"
L["Use the Old Keyring"] = "Usa il vecchio portachiavi"
L["Travel"] = "Viaggio"
L["Teleporter"] = "Teletrasporto"
L["Old Keyring"] = "Vecchio portachiavi"
L["Old Version"] = "Vecchia versione"
L["Secret Portal"] = "Portale segreto"
L["Secret Entrance"] = "Ingresso segreto"
L["Ogre Waygate to Garrison"] = "Porta degli Ogre alla Guarnigione"
L["in the basement"] = "nel seminterrato"
L["(on the tower)"] = "(sulla torre)"
L["(inside portal chamber)"] = "(all'interno della camera del portale)"
L["(inside building)"] = "(all'interno dell'edificio)"
--10 places
L["Graveyard"] = "Cimitero"
L["Library"] = "Biblioteca"
L["Cathedral"] = "Cattedrale"
L["Armory"] = "Armeria"
L["Ashran"] = "Ashran"
L["The Timeways"] = "Le vie del tempo"
L["Vol'mar"] = "Vol'mar"
L["Zuldazar"] = "Zuldazar"
L["Thunder Bluff"] = "Bluff del tuono"
L["Silvermoon City"] = "Città di Luna d'Argento"
L["Boralus, Tiragarde Sound"] = "Boralus, suono di Tiragarde"
L["Valdrakken"] = "Valdrakken"
L["Badlands"] = "Calanchi"
L["Oribos"] = "Oribo"
L["Azsuna"] = "Azsuna"
L["Uldum"] = "Uldum"
L["Dazar'alor"] = "Dazar'alor"
L["Shattrath City"] = "Città di Shattrath"
L["Echo Isles, Durotar"] = "Isole dell'Eco, Durotar"
L["Silithus"] = "Silito"
L["Nazjatar"] = "Nazzatar"
L["Emerald Dream"] = "Sogno di smeraldo"
L["Thunder Bluff"] = "Bluff del tuono"
L["Howling Fjord"] = "Fiordo ululante"
L["Ruins of Lordaeron"] = "Rovine di Lordaeron"
L["Isle of Thunder"] = "Isola del Tuono"
L["Twilight Highlands"] = "Altipiani del Crepuscolo"
L["Vashj'ir"] = "Vashj'ir"
L["The Waking Shores, Dragon Isles"] = "Le rive del risveglio, le Isole del Drago"
L["Shado-Pan Garrison, Townlong Steppes"] = "Guarnigione Shandaren, Steppe di Tong Long"
L["Grom'gol, Stranglethorn Vale"] = "Grom'gol, Valle di Rovotorto"
L["Exodar"] = "Esodar"
L["Jade Forest"] = "Foresta di giada"
L["Drustvar"] = "DRUSTVAR"
L["Gorgrond"] = "Gorgronda"
L["Ohn'ahran Plains"] = "Pianure di Ohn'ahran"
L["Borean Tundra"] = "Tundra boreale"
L["Tirisfal Glades"] = "Radure di Tirisfal"
L["Wintergrasp"] = "Presa invernale"
L["Boralus"] = "Boralo"
L["Stormsong Valley"] = "Valle del Canto della Tempesta"
L["Tiragarde Sound"] = "Suono di Tiragarde"
L["Ironforge"] = "Forgiardente"
L["Blasted Lands"] = "Terre devastate"
L["Darkshore"] = "Riva Oscura"
L["Durotar"] = "Durotar"
L["Dustwallow Marsh"] = "Palude polverosa"
L["Vale of Eternal Blossoms"] = "Vale dell'Eterna Primavera"
L["Arathi Highlands"] = "Altipiani d'Arathi"
L["Nazmir"] = "Nazmir"
L["Vol'dun"] = "Vol'dun"
L["Isle of Quel'Danas"] = "Isola di Quel'Danas"
L["Hellfire Peninsula"] = "Penisola del Fuoco Infernale"
L["Korthia"] = "Corzia"
L["The Maw"] = "Le Fauci"
L["Zereth Mortis"] = "Zereth Mortis"
L["Barnard 'The Smasher' Bayswort"] = "Barnard 'The Smasher' Bayswort"
L["Desha Stormwallow"] = "Desha Stormwallow"
L["Daria Smithson"] = "Daria Smithson"
L["Swellthrasher"] = "Swellthrasher"
L["Grok Seahandler"] = "Grok Addestratore del Mare"
L["Erul Dawnbrook"] = "Erul Dawnbrook"
L["Dread-Admiral Tattersail"] = "Tattersail dell'Ammiraglio del Terrore"
L["Grand Admiral Jes-Tereth"] = "Grandammiraglio Jes-Tereth" 
--11 Specific
L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"] = "Mostra le posizioni di raid, dungeon, portali, icone di navi e zeppelin su diverse mappe"
L["(Wards of the Dread Citadel - Achievement)"] = "(Protezioni della Cittadella del Terrore - Impresa)"
L["(Memory of Scholomance - Achievement)"] = "(Memoria di Scholomance - Obiettivo)"
L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] = "(viene visualizzato nel gioco solo se la tua fazione\n sta attualmente occupando Bashal'Aran)"
L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] = "Questo portale degli Altopiani d'Arathi è attivo solo se la tua fazione sta attualmente occupando Ar'gorok"
L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] = "Questo portale di Rivafosca è attivo solo se la tua fazione sta attualmente occupando Bashal'Aran"
L["(Grand Admiral Jes-Tereth) will take you to Vol'Dun, Nazmir or Zuldazar"] = "(Il Gran Ammiraglio Jes-Tereth) ti porterà a Vol'Dun, Nazmir o Zuldazar"
L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"] = "(L'Ammiraglio del Terrore Tattersail) ti porterà a Drustvar, alla Baia di Tiragarde o alla Valle dei Sacraonda"
L["Old Keyring \n You get the Scarlet Key in the \n [Loot-Filled Pumpkin] from [Hallow's End Event] or from the [Auction House] \n now you can activate the [Old Keyring] here \n to activate old dungeonversions from the Scarlet Monastery"] = "Vecchio portachiavi \n Ottieni la chiave scarlatta nella \n [Zucca piena di bottino] dall'[Evento di Fine delle Ombre] o dalla [Casa d'aste] \n ora puoi attivare il [Vecchio portachiavi] qui \n per attivare il vecchio versioni dei dungeon del Monastero Scarlatto"
L["Appears first after a certain instance progress\n or requires a certain achievement"] = "Appare per primo dopo un certo progresso nell'istanza\n o richiede un certo risultato" 