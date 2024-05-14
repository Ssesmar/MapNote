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
            nodes[12][42726722] = { id = 230, lfgid = 36, type = "Dungeon" } -- Dire Maul - Warpwood Quarter 
            nodes[12][54187774] = { id = 241, type = "Dungeon" } -- Zul'Farrak
            nodes[12][50916837] = { id = 234, type = "Dungeon" } -- Razorfen Kraul 
            nodes[12][52519670] = { id = 68, type = "Dungeon" } -- The Vortex Pinnacle 
            nodes[12][49699341] = { id = 69, type = "Dungeon" } -- Lost City of Tol'Vir 
            nodes[12][51579122] = { id = 70, type = "Dungeon" } -- Halls of Origination
            nodes[948][51102882] = { id = 67, type = "Dungeon", showInZone = true } -- The Stonecore
          end


        -- Kalimdor Dungeons hidden if ClassicIcons is activ
          if self.db.profile.showContinentDungeons and not self.db.profile.show.ClassicIcons then 
            nodes[12][42856552] = { id = 230, lfgid = 38, type = "Dungeon", showInZone = true } -- Dire Maul - Gordok Commons - North  
          end
    
    
        --Kalimdor Raids
          if self.db.profile.showContinentRaids then
            nodes[12][45929663] = { id = 74, type = "Raid" } -- Throne of the Four Winds 
            nodes[12][54243397] = { id = 78, type = "Raid" } -- Firelands 
            nodes[12][56526946] = { id = 760, type = "Raid" } -- Onyxia's Lair 
            nodes[12][42068358] = { id = 743, type = "Raid" } -- Ruins of Ahn'Qiraj 
            nodes[12][40678358] = { id = 744, type = "Raid" } -- Temple of Ahn'Qiraj
            nodes[12][49159032] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid" } -- Ny'Alotha, The Waking City
          end
    
        --Kalimdor Passage
          if self.db.profile.showContinentPassage and not self.db.profile.show.ClassicIcons then
            nodes[12][59228331] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186 }, type = "PassageDungeonRaidMulti", showInZone = true, } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
            nodes[12][46106657] = { id = 230, lfgid = 34, type = "PassageDungeon", showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            nodes[12][43906613] = { id = 230, lfgid = 34, type = "PassageDungeon", showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache 
            nodes[12][43913301] = { id = 227, type = "PassageDungeon", showInZone = true } -- Blackfathom Deeps 
            nodes[12][52215315] = { mnID = 11, dnID = DUNGEON_FLOOR_WAILINGCAVERNS1, name = "", type = "PassageDungeon" } -- Wailing Caverns  
            nodes[12][38395594] = { id = 232, type = "PassageDungeon" } -- Maraudon 
            --nodes[12][58324232] = { id = 226, type = "PassageDungeon" } -- Ragefire 
          end


        --Kalimdor Passage without ClassicIcons and without RemoveBlizzPOIs
          if self.db.profile.showContinentPassage and not self.db.profile.show.ClassicIcons and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[12][58324232] = { id = 226, type = "PassageDungeon" } -- Ragefire 
          end

        --Kalimdor Passage without EnemyFaction and RemoveBlizzPOIs
          if not ns.Addon.db.profile.show.EnemyFaction and self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][58324232] = { id = 226, type = "PassageDungeon" } -- Ragefire
            end
          end

        --Kalimdor Passage without EnemyFaction and with RemoveBlizzPOIs with ClassicIcons
          if not ns.Addon.db.profile.show.EnemyFaction and self.db.profile.show.RemoveBlizzPOIs and self.db.profile.show.ClassicIcons then
            nodes[12][58324232] = { id = 226, type = "Dungeon" } -- Ragefire
          end

        --Kalimdor ClassicIcons
         if self.db.profile.show.ClassicIcons then

          if self.db.profile.showContinentDungeons then
            --nodes[12][46106657] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache   
            --nodes[12][43906613] = { id = 230, lfgid = 34, type = "Dungeon", showInZone = true } -- Dire Maul - Warpwood Quarter - East above Camp Mojache 
            nodes[12][43913301] = { id = 227, type = "Dungeon", showInZone = true } -- Blackfathom Deeps 
            nodes[12][52215315] = { id = 240, name = "", type = "Dungeon" } -- Wailing Caverns  
            nodes[12][38395594] = { id = 232, type = "Dungeon" } -- Maraudon 
          end

        --Kalimdor ClassicIcons without RemoveBlizzPOIs
          if self.db.profile.show.ClassicIcons and not self.db.profile.show.RemoveBlizzPOIs then

            if self.db.profile.showContinentDungeons then
              nodes[12][58324232] = { id = 226, type = "Dungeon" } -- Ragefire 
            end
          end

          
         --Kalimdor Multiple 
          if self.db.profile.showContinentMultiple then
            nodes[12][59228331] = { mnID = 75, id = { 187, 750, 279, 255, 251, 184, 185, 186 }, type = "MultipleM", showInZone = true, } -- Dragon Soul, The Battle for Mount Hyjal, The Culling of Stratholme, Black Morass, Old Hillsbrad Foothills, End Time, Well of Eternity, Hour of Twilight Heroic
          end
         end 
    

        -- Kalimdor Portals
          if self.db.profile.showContinentPortals then
            nodes[12][60078511] = { mnID = 74, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_TANARIS18 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal from Tanaris to Orgrimmar and Stormwind
            nodes[12][42807881] = { mnID = 81, name = "", type = "Portal", showInZone = true, TransportName = L["Silithus"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Zandalar"] } -- Portal from Silithus to Boralus
            nodes[12][56122725] = { mnID = 198, name = "", type = "Portal", showInZone = true, TransportName = POSTMASTER_LETTER_HYJAL .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } -- Portal To Orgrimmar from Hyjal
    
            if self.faction == "Horde" or db.show.EnemyFaction then  
              nodes[12][45842223] = { mnID = 62, name = "", type = "HPortal", showInZone = true, TransportName = L["Portal"] .. " " .. L["Darkshore"] .. " => " .. L["Zandalar"] .. "\n" .. "\n" .. " " .. L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] } -- Portal from New Darkshore to Zandalar 
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][47092322] = { mnID = 62, name = "", type = "APortal", showInZone = true, TransportName = L["Portal"] .. " " .. L["Darkshore"] .. " => " .. L["Boralus"] .. "\n" .. "\n" .. " " .. L["(its only shown up ingame if your faction\n is currently occupying Bashal'Aran)"] } -- Portal from New Darkshore to Zandalar 
              nodes[12][43491624] = { mnID = 57, name = "", type = "APortal", showInZone = true, TransportName = L["Rut'theran"] .. " " .. L["Portals"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Azuremyst Isle"] .. "\n" .. " => " .. L["Darnassus"] .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal from Teldrassil  
              nodes[12][29062721] = { mnID = 97, name = "", type = "APortal", showInZone = true, TransportName = L["Azuremyst Isle"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal Exodar to Teldrassil
            end

            if self.faction == "Horde" and not db.show.EnemyFaction then
              nodes[12][43491624] = { mnID = 57, name = "", type = "Portal", showInZone = true, TransportName = L["Rut'theran"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Darnassus"] } -- Portal from Teldrassil to Darnassus   
              nodes[12][38990979] = { mnID = 89, name = "", type = "Portal", showInZone = true, TransportName = L["Darnassus"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Rut'theran"] } -- Portal To Teldrassil from Darnassus
            end
          end
    

          -- Kalimdor Portals without RemoveBlizzPOIs
          if self.db.profile.showContinentPortals and not self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][38990979] = { mnID = 57, name = "", type = "Portal", showInZone = true, TransportName = L["Portal"] .. " => " .. L["Teldrassil"] } -- Portal To Teldrassil from Darnassus
              nodes[12][30752589] = { mnID = 57, name = "", type = "APortal", showInZone = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal Exodar to Teldrassil
            end
          end

        -- Kalimdor RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[12][58214450] = { mnID = 85, name = "", type = "HIcon", showInZone = true, TransportName = ORGRIMMAR .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Zeppelins"] .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. POSTMASTER_LETTER_WARSONGHOLD .. "\n" .. "\n" .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_RAGEFIRE1 } -- Portalroom from Dazar'alor
              nodes[12][46055495] = { mnID = 88, name = "", type = "HIcon", showInZone = true, TransportName = L["Thunder Bluff"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][38990979] = { mnID = 89, name = "", type = "AIcon", showInZone = true, TransportName = L["Darnassus"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. L["Rut'theran"] .. "\n" .. " => " .. L["Exodar"]  .. "\n" .. " => " .. L["Hellfire Peninsula"] } -- Portal To Teldrassil from Darnassus
              nodes[12][30752589] = { mnID = 103, name = "", type = "AIcon", TransportName = L["Exodar"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal Exodar to Teldrassil
            end
          end
    

        --Kalimdor Zeppelins
          if self.db.profile.showContinentZeppelins then

            if self.faction == "Horde" or db.show.EnemyFaction then
    
            end
          end
    

        --Kalimdor Zeppelins without RemoveBlizzPOIs
          if self.db.profile.showContinentZeppelins and not self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[12][45295331] = { mnID = 88, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Thunder Bluff"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Thunder Bluff to Orgrimmar
              nodes[12][59814453] = { mnID = 1, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Zeppelin"] .. " => " .. L["The Waking Shores, Dragon Isles"] } -- Zeppelin from Durotar to Waking Shores - Dragonflight
            end
          end

    
        -- Kalimdor Ships
          if self.db.profile.showContinentShips then
            nodes[12][57735526] = { mnID = 10, name = "", type = "Ship", showInZone = true, TransportName = L["Ratchet"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_STRANGLETHORNVALE } -- Ship from Ratchet to Booty Bay
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[12][62985416] = { mnID = 463, name = "", type = "HShip", showInZone = true, TransportName = L["Echo Isles, Durotar"] .. " " .. L["Ship"] .. "\n" .. " => " .. L["Zandalar"] } -- Ship from Echo Isles to Dazar'alor - Zandalar
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[12][60046602] = { mnID = 70, name = "", type = "AShip", showInZone = true, TransportName = L["Theramore Isle"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Dustwallow Marsh to Menethil Harbor
            end
          end


        -- Continent Kalimdor LFR
          if self.db.profile.showContinentLFR then
            nodes[12][60448275] = { mnID = 75, name = L["Auridormi"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 187 }, type = "LFR"}
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
            nodes[13][47448471] = { id = 76, type = "Dungeon" } -- Zul'Gurub 
            nodes[13][40764187] = { id = 64, type = "Dungeon" } -- Shadowfang Keep 
            nodes[13][50573677] = { id = 246, type = "Dungeon" } -- Scholomance
            nodes[13][52712836] = { id = 236, lfgid = 40, type = "Dungeon" } -- Stratholme 
            nodes[13][53135585] = { id = 71, type = "Dungeon" } -- Grim Batol
          end


        --Eastern  Kingdom Dungeons without RemoveBlizzPOIs
          if self.db.profile.showContinentDungeons and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[13][42787097] = { id = 238, type = "Dungeon" } -- The Stockade 
          end
    
    
        --Eastern  Kingdom Raids
          if self.db.profile.showContinentRaids then
            nodes[13][55160370] = { id = 752, type = "Raid" } -- Sunwell Plateau 
            nodes[13][47536894] = { id = 73, type = "Raid" } -- Blackwind Descent 
            nodes[13][54905899] = { id = 72, type = "Raid" } -- The Bastion of Twilight 
            nodes[13][35565150] = { id = 75, type = "Raid" } -- Baradin Hold
          end


        --Eastern  Kingdom Passage
          if self.db.profile.showContinentPassage and not self.db.profile.show.ClassicIcons then
            nodes[13][53977927] = { id = 237, type = "PassageDungeon" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "PassageDungeon" } -- Deadmines
            nodes[13][42915972] = { id = 231, type = "PassageDungeon" } -- Gnomeregan             
            nodes[13][53646537] = { id = 239, name = "", type = "PassageDungeon" } -- Uldaman (Secondary Entrance) 
            nodes[13][54412915] = { id = 236, lfgid = 274, type = "PassageDungeon", showInZone = true }-- Stratholme Service Entrance 
            nodes[13][46886972] = { mnID = 33, id = { 741, 742, 66, 228, 229, 559 }, type = "PassageDungeonRaidMulti", showInZone = true } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
          end
    
        --Kalimdor Passage without ClassicIcons and without RemoveBlizzPOIs
          if self.db.profile.showContinentDungeons and not self.db.profile.show.ClassicIcons and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[13][42787097] = { id = 238, type = "Dungeon" } -- The Stockade  
          end

        --Kalimdor Dungeon without EnemyFaction and RemoveBlizzPOIs
          if not ns.Addon.db.profile.show.EnemyFaction and self.db.profile.show.RemoveBlizzPOIs then
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[13][42787097] = { id = 238, type = "Dungeon" } -- The Stockade 
            end
          end

        --Eastern Kingdom ClassicIcons

        if self.db.profile.show.ClassicIcons then

          if self.db.profile.showContinentDungeons then
            nodes[13][53977927] = { id = 237, type = "Dungeon" } -- The Temple of Atal'hakkar 
            nodes[13][40808194] = { id = 63, type = "Dungeon" } -- Deadmines
            nodes[13][42915972] = { id = 231, type = "Dungeon" } -- Gnomeregan    
            --nodes[13][53646537] = { id = 239, name = "", type = "Dungeon" } -- Uldaman (Secondary Entrance) 
            --nodes[13][54412915] = { id = 236, lfgid = 274, type = "Dungeon", showInZone = true }-- Stratholme Service Entrance 
          end

          if self.db.profile.showContinentMultiple then
            nodes[13][46886972] = { mnID = 33, id = { 741, 742, 66, 228, 229, 559 }, type = "MultipleM", showInZone = true } -- Molten Core, Blackwing Lair, Blackrock Caverns, Blackrock Depths, Lower Blackrock Spire, Upper Blackrock Spire 
          end

        end

        --Eastern Kingdom Multiple
          if self.db.profile.showContinentMultiple then
            nodes[13][49428163] = { mnID = 42, id = { 745, 860 }, type = "MultipleM" } -- Karazhan, Return to Karazhan
            nodes[13][46583029] = { mnID = 19, id = { 311, 316 }, type = "MultipleD" } -- Scarlet Halls, Monastery 
            nodes[13][52176317] = { mnID = 15, id = { 1197, 239 }, type = "MultipleD" } --  Legacy of Tyr Dragonflight Dungeon & Vanilla Uldaman 
          end
    
    
        --Eastern Kingdom Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" then          
              nodes[13][52448472] = { mnID = 624, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "HPortal", showInZone = true } -- Portal from Blasted Lands to Warspear              
            end

            if self.faction == "Alliance" then
              nodes[13][52428535] = { mnID = 622, name = L["The Dark Portal"] .. " (" .. L["Portal"] .. " - " .. L["Ashran"] ..")", type = "APortal", showInZone = true, } -- Portal from Blasted Lands to Stormshield              
            end

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[13][49764414] = { mnID = 14, name = "", type = "HPortal", showInZone = true, TransportName = L["Portal"] .. " => " .. L["Zandalar"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" } -- Portal from Arathi to Zandalar 
              nodes[13][33874948] = { mnID = 245, name = "", type = "HPortal", showInZone = false, TransportName = DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal Tol Barad to Orgrimmar
              nodes[13][60195610] = { mnID = 241, name = "", type = "HPortal", showInZone = true, TransportName = L["Twilight Highlands"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Twilight Highlands  
              nodes[13][54128434] = { mnID = 17, name = "", type = "HPortal", showInZone = true, TransportName = L["Blasted Lands"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal To Orgrimmar from Blasted Lands
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][60805911] = { mnID = 241, name = "", type = "APortal", showInZone = true, TransportName = L["Twilight Highlands"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal To Stormwind from Twilight Highlands  
              nodes[13][53428254] = { mnID = 17, name = "", type = "APortal", showInZone = true,TransportName = L["Blasted Lands"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal to Stormwind from Blasted Lands
              nodes[13][35134883] = { mnID = 245, name = "", type = "APortal", showInZone = false, TransportName = DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal Tol Barad to Stormwind
              nodes[13][49544708] = { mnID = 14, name = "", type = "APortal", showInZone = true, TransportName = L["Portal"] .. " => " .. L["Boralus"] .. "\n" .. " " .. "(" .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] .. ")" } -- Portal from Arathi to Zandalar
            end
          end
    

        --Eastern Kingdom Portals without RemoveBlizzPOIs
        if self.db.profile.showContinentPortals and not self.db.profile.show.RemoveBlizzPOIs then

          if self.faction == "Horde" or db.show.EnemyFaction then
          nodes[13][43993336] = { mnID = 18, name = "", type = "HPortal", showInZone = true, TransportName = L["Tirisfal Glades"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Howling Fjord"] .. "\n" .. " => " .. L["Silvermoon City"] } -- Portal to Orgrimmar, Silvermoon, Howling Fjord and Grom'gol from Tirisfal
          nodes[13][55751269] = { mnID = 110, name = "", type = "HPortal", showInZone = true, TransportName = L["Silvermoon City"] .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Orgrimmar, Ruins of Lordaeron from Silvermoon   
          end
        end


        -- Eastern Kingdom Zeppelins without RemoveBlizzPOIs
          if self.db.profile.showContinentZeppelins and not self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[13][42728658] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " " .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR } -- Zeppelin from Stranglethorn Valley to Ogrimmar
            end
          end


        -- Eastern Kingdom RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[13][43263464] = { mnID = 18, name = "", type = "HIcon", showInZone = true, TransportName = L["Undercity"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Hellfire Peninsula"] .. "\n" .. "\n" .. L["Ruins of Lordaeron"]  .. " / " .. L["Tirisfal Glades"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Grom'gol, Stranglethorn Vale"] .. "\n" .. " => " .. L["Howling Fjord"] .. "\n" .. " => " .. L["Silvermoon City"] } -- Portal to Orgrimmar, Silvermoon, Howling Fjord and Grom'gol from Tirisfal
              nodes[13][56471480] = { mnID = 110, name = "", type = "HIcon", showInZone = true, TransportName = L["Silvermoon City"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Portal to Orgrimmar, Ruins of Lordaeron from Silvermoon
              nodes[13][44168671] = { mnID = 50, name = "", type = "HIcon", showInZone = true, TransportName = L["Grom'gol, Stranglethorn Vale"] .. " - " .. FACTION_HORDE .. "\n" .. "\n" .. L["Zeppelin"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. "\n" .. L["Portal"] .. "\n" .. " => " .. L["Ruins of Lordaeron"] } -- Transport from Stranglethorn Valley to Ogrimmar and Ruins of Lordaeron
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][47275888] = { mnID = 87, name = "", type = "AIcon", showInZone = true, TransportName = L["Ironforge"] .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. STORMWIND } -- Transport to Ironforge Carriage 
              nodes[13][42937289] = { mnID = 84, name = "", type = "AIcon", showInZone = true, TransportName = STORMWIND .. " - " .. FACTION_ALLIANCE .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Ashran"] .. "\n" .. " => " .. L["Valdrakken"] .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["Oribos"] .. "\n" .. " => " .. L["Azsuna"] .. "\n" .. " => " .. L["Shattrath City"] .. "\n" .. " => " .. L["Jade Forest"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 .. "\n" .. " => " .. DUNGEON_FLOOR_TANARIS18 .. "\n" .. " => " .. L["Exodar"] .. "\n" ..  " => " .. L["Bel'ameth, Amirdrassil"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Uldum"] .. "\n" .. " => " .. L["Vashj'ir"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL .. "\n" .. " => " .. ARTIFACT_SHAMAN_TITLECARD_DEEPHOLM .. "\n" .. " => " .. L["Twilight Highlands"] .. "\n" .. " => " .. DUNGEON_FLOOR_TOLBARADWARLOCKSCENARIO0 .. "\n" .. "\n" .. L["Ships"] .. "\n" .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] .. "\n" .. " => " .. L["The Waking Shores, Dragon Isles"] .. "\n" .. "\n" .. DUNGEON_FLOOR_DEEPRUNTRAM1 .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. " => " .. CALENDAR_TYPE_DUNGEON .. "\n" .. " => " .. DUNGEON_FLOOR_THESTOCKADE1 } -- Portalroom from Stormwind
            end
          end
    

        --Eastern Kingdom Ships
          if self.db.profile.showContinentShips then
            nodes[13][42379354] = { mnID = 210, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_STRANGLETHORNVALE .. " " .. L["Ship"] .. "\n" .. " => " .. L["Ratchet"] } -- Ship from Booty Bay to Ratchet
            
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][46665454] = { mnID = 56, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_WETLANDS .." " .. L["Ships"] .. "\n" .. " => " .. L["Theramore Isle"] .. "\n" .. " => " .. L["Howling Fjord"] } -- Ship from Stormwind to Borean Tundra
            end
          end
    

        -- Eastern Kingdom Ships without RemoveBlizzPOIs
          if self.db.profile.showContinentShips and not self.db.profile.show.RemoveBlizzPOIs then
          
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[13][40967129] = { mnID = 84, name = "", type = "AShip", showInZone = true, TransportName = L["Ship"] .. "\n" .. " " .. STORMWIND .. " => " .. POSTMASTER_LETTER_VALIANCEKEEP } -- Ship from Stormwind to Valiance Keep
              nodes[13][41187327] = { mnID = 84, name = "", type = "AShip", showInZone = true, TransportName = L["Ship"] .. "\n" .. " " .. STORMWIND .. " => " .. L["Boralus, Tiragarde Sound"] } -- Ship from Stormwind to Valiance Keep
            end
          end


        --Eastern Kingdom Zeppelins
          if self.db.profile.showContinentZeppelins then

            if self.faction == "Horde" or db.show.EnemyFaction then
              --nodes[13][43968695] = { mnID = 50, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Stranglethorn Valley to Ogrimmar
            end

          end

        -- Eastern Kingdom Transport and not RemoveBlizzPOIs
          if self.db.profile.showContinentTransport and not self.db.profile.show.RemoveBlizzPOIs then

            nodes[13][47275888] = { mnID = 87, name = "", type = "Carriage", showInZone = true, TransportName = DUNGEON_FLOOR_DEEPRUNTRAM1 .. " => " .. L["Ironforge"] } -- Transport to Ironforge Carriage 
          end
    
        --Eastern Kingdom ContinentOldVanilla
          if self.db.profile.showContinentOldVanilla then
            nodes[13][54113049] = { mnID = 166, name = L["Secret Entrance"] .. " " .. L["(Wards of the Dread Citadel - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = true}-- Old Naxxramas version - Secret Entrance - Wards of the Dread Citadel 
            nodes[13][46703243] = { mnID = 19, name = L["Graveyard"] .. " - " .. L["Cathedral"] .. " - " .. L["Library"] .. " - " .. L["Armory"] .. " - " .. L["Old Version"] .. " - " .. L["Use the Old Keyring"], type = "VInstance", showInZone = true } -- Scarlet Monastery Key for Old dungeons
            nodes[13][51383556] = { mnID = 306, name = L["Secret Entrance"] .. " " .. L["(Memory of Scholomance - Achievement)"] .. " - " .. L["Old Version"], type = "VInstance", showInZone = true } -- Old Scholomance version - Memory of Scholomance - Secret Entrance Old Scholomance version 
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
                        
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[101][69025178] = { mnID = 100, name = "", type = "HPortal", showInZone = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Hellfire to Orgrimmar 

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[101][68905259] = { mnID = 100,  name = "" , type = "APortal", showInZone = true, TransportName = L["Hellfire Peninsula"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND } -- Portal from Hellfire to Stormwind 
            end
          end


        -- Outland Portals
          if self.db.profile.showContinentPortals and not self.db.profile.show.RemoveBlizzPOIs then
            nodes[101][43186574] = { mnID = 108, name = "", type = "Portal", showInZone = true, TransportName = L["Shattrath City"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar
          end

        -- Outland RemoveBlizzPOIs 
          if self.db.profile.show.RemoveBlizzPOIs then
            nodes[101][43186573] = { mnID = 108, name = "", type = "NT", showInZone = true, TransportName = L["Shattrath City"] .. "\n" .. "\n" .. L["Portals"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Isle of Quel'Danas"] } -- Portal from Shattrath to Orgrimmar
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
            nodes[113][49134292] = { id = 283, type = "Dungeon" } -- Violet Hold
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
            nodes[113][36504679] = { mnID = 123, name = "", type = "Portal", showInZone = true, TransportName = L["Wintergrasp"] .. " " .. L["Portal"] .. "\n" .. " => " .. DUNGEON_FLOOR_DALARANCITY1 } -- LakeWintergrasp to Dalaran Portal
            nodes[113][47804060] = { mnID = 125, name = "", type = "Portal", showInZone = true, TransportName = DUNGEON_FLOOR_DALARANCITY1 .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND } --  Dalaran Portal to Orgrimmar and Stormwind
          end
    
    
        -- Northrend Zeppelin
          if self.db.profile.showContinentZeppelins then 
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[113][18766562] = { mnID = 114, name = "", type = "HZeppelin", showInZone = true, TransportName = POSTMASTER_LETTER_WARSONGHOLD .. " " .. L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from Borean Tundra to Ogrimmar
            end
          end
    
    
        -- Northrend Ships
          if self.db.profile.showContinentShips then
            nodes[113][65218245] = { mnID = 117, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_KAMAGUA .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Kamagua to Moaki
            nodes[113][47806841] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_KAMAGUA } -- Ship from Moaki to Kamagua
            nodes[113][30056677] = { mnID = 114, name = "", type = "Ship", showInZone = true, TransportName = L["Borean Tundra"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_MOAKI } -- Ship from Unu'pe to Moaki
            nodes[113][46406841] = { mnID = 115, name = "", type = "Ship", showInZone = true, TransportName = POSTMASTER_LETTER_MOAKI .. " " .. L["Ship"] .. "\n" .. " => " .. L["Borean Tundra"] } -- Ship from Moaki to Unu'pe

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[113][25377045] = { mnID = 114, name = "", type = "AShip", showInZone = true, TransportName = POSTMASTER_LETTER_VALIANCEKEEP .. " " ..  L["Ship"] .. "\n" .. " => " .. STORMWIND } -- Ship from Borean Tundra to Stormwind
              nodes[113][79788368] = { mnID = 117, name = "", type = "AShip", showInZone = true, TransportName = L["Howling Fjord"] .. " " .. L["Ship"] .. "\n" .. " => " .. POSTMASTER_LETTER_WETLANDS } -- Ship from Howling Fjord to Wetlands
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
            nodes[424][53745257] = { id = 321, type = "Dungeon" } -- Mogu'shan Palace (moved location cause of the LFR position)
          end
    
    
        -- Pandaria Raids
          if self.db.profile.showContinentRaids then
            nodes[424][49152606] = { id = 317, type = "Raid" } -- Mogu'shan Vaults 
            nodes[424][52355265] = { id = 369, type = "Raid" } -- Siege of Orgrimmar 
            nodes[424][30076296] = { id = 330, type = "Raid" } -- Heart of Fear 
            nodes[424][23100860] = { id = 362, type = "Raid" } -- Throne of Thunder
            nodes[424][56685529] = { id = 320, type = "Raid" } -- Terrace of Endless Spring  
            nodes[424][47015340] = { dnID = L["Instance Entrance"] .. " " .. L["switches weekly between"] .. " " .. L["Uldum"] .. " (" .. L["Kalimdor"] ..")" .. " & " .. L["Vale of Eternal Blossoms"] .. " (" .. L["Pandaria"] .. ")", id = 1180, type = "Raid" } -- Ny'Alotha, The Waking City

          end
    
    
        -- Pandaria Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[424][59733518] = { mnID = 371, name = "", type = "HPortal", showInZone = true, TransportName = L["Jade Forest"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR } -- Portal from Jade Forest to Orgrimmar
              nodes[424][17970919] = { mnID = 504, name = "", type = "HPortal", TransportName = L["Isle of Thunder"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Shado-Pan Garrison, Townlong Steppes"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              nodes[424][29444738] = { mnID = 388, name = "", type = "HPortal", TransportName = L["Shado-Pan Garrison, Townlong Steppes"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Isle of Thunder"] } -- Portal from Shado-Pan Garrison to Isle of Thunder
              nodes[424][50604810] = { mnID = 392, name = "", type = "HPortal", showInZone = true, TransportName = L["Vale of Eternal Blossoms"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. ORGRIMMAR } -- Portal from Vale of Eternal Blossoms to Orgrimmar
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[424][67806740] = { mnID = 371, name = "", type = "APortal", showInZone = true, TransportName = L["Jade Forest"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. STORMWIND } -- Portal from Jade Forest to Stormwind
              nodes[424][23891588] = { mnID = 504, name = "", type = "APortal",  TransportName = L["Isle of Thunder"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Shado-Pan Garrison, Townlong Steppes"] } -- Portal from Isle of Thunder to Shado-Pan Garrison
              nodes[424][28894622] = { mnID = 388, name = "", type = "APortal", showInZone = true, TransportName = L["Shado-Pan Garrison, Townlong Steppes"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Isle of Thunder"] } -- Portal from Shado-Pan Garrison to Isle of Thunder
              nodes[424][54785688] = { mnID = 394, name = "", type = "APortal", showInZone = true, TransportName = L["Vale of Eternal Blossoms"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. STORMWIND } -- Portal from Vale of Eternal Blossoms to Stormwind
            end
          end


        -- Pandaria LFR
          if self.db.profile.showContinentLFR then
            nodes[424][53805057] = { mnID = 390, name = L["Lorewalker Han"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 317, 330, 362, 320 }, type = "LFR"}
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
    
    
        --Draenor Garrison Transport
          if self.db.profile.showContinentTransport then
    
            if self.faction == "Horde" then
              nodes[572][52442304] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Gorgrond
              nodes[572][36803224] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate FrostfireRidge
              nodes[572][20835300] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Nagrand
              nodes[572][42665730] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Talador
              nodes[572][47817859] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate SpiresOfArak
              nodes[572][58706681] = { mnID = 590, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Shadowmoon Valley
            end
    
            if self.faction == "Alliance" then
              nodes[572][52442304] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Gorgrond
              nodes[572][36803224] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate FrostfireRidge
              nodes[572][20835300] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Nagrand
              nodes[572][42665730] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Talador
              nodes[572][47817859] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate SpiresOfArak
              nodes[572][58706681] = { mnID = 582, name = L["Ogre Waygate to Garrison"], type = "OgreWaygate", showInZone = true, } -- Ogre Waygate Shadowmoon Valley
              end
          end
    
    
        --Draenor Portals
          if self.db.profile.showContinentPortals then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[572][71343912] = { mnID = 624, name = "", type = "HPortal", TransportName = L["Ashran"] .. " " .. L["Portal"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Vol'mar"] } -- Portal from Ashran to Orgrimmar
              nodes[572][60424574] = { mnID = 534, name = "", type = "HPortal", showInZone = true, TransportName = L["Vol'mar"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Ashran"] } -- Portal from Vol'mar to Ashran
              nodes[572][34663659] = { mnID = 590, name = "", type = "HPortal", showInZone = true, TransportName = GARRISON_LOCATION_TOOLTIP .. " " .. L["Portal"] .. "\n" .. " => " .. L["Ashran"] } -- Portal from Garrison to Ashran
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[572][59544876] = { mnID = 534, name = "", type = "APortal", showInZone = true, TransportName = L["Portal"] .. " => " .. L["Ashran"] } -- Portal from Lion's Watch to (Ashran Zone)
              nodes[572][71674912] = { mnID = 622,  name = "" , type = "APortal", showInZone = true, TransportName =  L["Ashran"] .. " " .. L["Portal"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. SPLASH_NEW_6_2_FEATURE1_TITLE } -- Portal from Ashran to Stormwind
              nodes[572][53396082] = { mnID = 582, name = "", type = "APortal", showInZone = true, TransportName = GARRISON_LOCATION_TOOLTIP .. " " .. L["Portal"] .. "\n" .. " => " .. L["Ashran"] } -- Portal from Garrison to Ashran
            end
          end

         --Draenor LFR
          if self.db.profile.showContinentLFR then
            
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[572][33793621] = { mnID = 590, name = L["Seer Kazal"] .. " - " .. REQUIRES_LABEL .. " " .. GARRISON_LOCATION_TOOLTIP .. " " .. LEVEL .. " " .. ACTION_SPELL_CAST_START_MASTER .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 477, 457, 669 }, type = "LFR" }
            end
            
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[539][29021652] = { mnID = 582, name = L["Seer Kazal"] .. " - " .. REQUIRES_LABEL .. " " .. GARRISON_LOCATION_TOOLTIP .. " " .. LEVEL .. " " .. ACTION_SPELL_CAST_START_MASTER .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 477, 457, 669 }, type = "LFR" }
            end
          end
        end
    
    
        --#################################
        --##### Continent Broken Isles ####
        --#################################
    
        if self.db.profile.showContinentBrokenIsles then
    
        --Broken Isles Dungeons
          if self.db.profile.showContinentDungeons then
            nodes[619][47076690] = { id = 777, type = "Dungeon" } -- Assault on Violet Hold
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
              nodes[619][45606186] = { mnID = 627, name = "", type = "HPortal", showInZone = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } --  Dalaran to Orgrimmar Portal
              nodes[619][33715775] = { mnID = 630, name = "", type = "HPortal", showInZone = true, TransportName = L["Portal"] .. " => " .. ORGRIMMAR } -- Portal to Orgrimmar from Azsuna
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[619][45296767] = { mnID = 627,  name = "" , type = "APortal", showInZone = false, TransportName = L["Portal"] .. " => " .. STORMWIND } --  Portal from Dalaran to Stormwind
              nodes[619][32905786] = { mnID = 630,  name = "" , type = "APortal", showInZone = true, TransportName = L["Portal"] .. " => " .. STORMWIND } -- Portal to Stormwind from Azsuna
             end
          end


        -- Broken Isles LFR
          if self.db.profile.showContinentLFR then
            nodes[619][46806495] = { mnID = 627, name = L["Archmage Timear"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 875, 786, 768, 861, 946 }, type = "LFR"}
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
              nodes[875][58486162] = { mnID = 1163, name = "", type = "HPortal", showInZone = true, TransportName = L["Dazar'alor"] .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] } -- Portalroom from Dazar'alor
              nodes[875][59107238] = { mnID = 1165, name = "", type = "HPortal", showInZone = true, TransportName = L["Zandalar"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["This Darkshore portal is only active if your faction is currently occupying Bashal'Aran"] .. "\n" .. " => " .. L["This Arathi Highlands portal is only active if your faction is currently occupying Ar'gorok"] } -- Portal to Arathi and Darkshore
            end
          end
    

        -- Zandalar RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][58486162] = { mnID = 1163, id = { 1176, 1031, 1179, 1036 }, type = "HIcon", showInZone = true, name = L["Dazar'alor"] .. "\n" .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. L["Silvermoon City"] .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. L["Thunder Bluff"] .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Nazjatar"] .. "\n" .. " " .. "\n" .. L["Eppu"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " " } -- Portalroom from Dazar'alor
            end
          end 

    
        -- Zandalar Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][57957497] = { mnID = 463, name = "", type = "HShip", showInZone = true, TransportName = L["Ship"] .. " => " .. L["Echo Isles, Durotar"] } -- Ship from Zandalar to Echo Isles 
            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end

          end


        -- Zandalar Transport
          if self.db.profile.showContinentTransport then

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[875][56027038] = { mnID = 876, name = L["(Dread-Admiral Tattersail) will take you to Drustvar, Tiragarde Sound or Stormsong Valley"], type = "Travel", showInZone = true, } -- Ship from Dazar'alor to Drustvar, Tiragarde Sound or Stormsong Valley
            end

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[875][33051846] = { mnID = 864, name = "", type = "Kul", showInZone = true, TransportName = L["Barnard 'The Smasher' Bayswort"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Vol'dun to Boralus
              nodes[875][62402600] = { mnID = 863, name = "", type = "DwarfF", showInZone = true, TransportName = L["Desha Stormwallow"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Nazmir to Boralus
              nodes[875][47177779] = { mnID = 862, name = "", type = "GilneanF", showInZone = true, TransportName = L["Daria Smithson"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Boralus, Tiragarde Sound"] } -- Transport from Zuldazar to Boralus 
            end
          end


        -- Zandalar LFR
          if self.db.profile.showContinentLFR then

            if self.faction == "Horde" or db.show.EnemyFaction then 
              nodes[875][56886153] = { mnID = 1164, name = L["Eppu"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR" }
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
              nodes[876][69206490] = { id = 1023, type = "Dungeon" } -- Siege of Boralus
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
    
    
        -- Kul Tiras Portals without RemoveBlizzPOIs
          if self.db.profile.showContinentPortals and not self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][59165485] = { mnID = 1161, name = "", type = "APortal", showInZone = true, TransportName = L["Boralus"] .. " " .. L["Portalroom"] .. "\n" .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. "\n" .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] } -- Boralus Portals
            end
          end


        -- Kul Tiras RemoveBlizzPOIs
          if self.db.profile.show.RemoveBlizzPOIs then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][58395547] = { mnID = 1161, id = { 1176, 1031, 1179, 1036 }, type = "AIcon", showInZone = true, name = L["Boralus"] .. " " .. "\n" .. " " .. "\n" .. L["Portalroom"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Silithus"] .. "\n" .. " => " .. L["Exodar"] .. "\n" .. " => " .. L["Ironforge"] .. "\n" .. " " .. "\n" .. L["Grand Admiral Jes-Tereth"] .. L["Travel"] .. "\n" .. " => " .. L["Nazmir"] .. "\n" .. " => " .. L["Zuldazar"] .. "\n" .. " => " .. L["Vol'dun"] .. "\n" .. " " .. "\n" .. L["Portals"] .. "\n" .. " " .. "\n" .. " => " .. L["Arathi Highlands"] .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. " " .. "\n" .. L["Ship"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " "  .."\n" .. L["Kiku"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " "} -- Boralus Transports
            end
          end
    
    
        -- Kul Tiras Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then

            end
          end

          -- Kul Tiras Transport
          if self.db.profile.showContinentTransport then

            nodes[876][20172422] = { mnID = 1462, name = "", type = "GoblinF", showInZone = true, TransportName = L["Captain Krooz"] .. " " .. SPLASH_BATTLEFORAZEROTH_8_2_0_FEATURE1_TITLE .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Dazar'alor"] } -- Ship from Mechagon to Zuldazar

            if self.faction == "Horde" or db.show.EnemyFaction then
              nodes[876][25676657] = { mnID = 896, name = "", type = "MOrcF", showInZone = true, TransportName = L["Swellthrasher"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Drustvar to Zuldazar
              nodes[876][54391406] = { mnID = 942, name = "", type = "Orc", showInZone = true, TransportName = L["Grok Seahandler"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Stormsong Valley to Zuldazar
              nodes[876][68326548] = { mnID = 895, name = "", type = "B11", showInZone = true, TransportName = L["Erul Dawnbrook"] .. " " .. L["Travel"] .. "\n" .. "\n" .. " => " .. L["Zuldazar"] } -- Transport from Tiragarde Sound to Zuldazar 
            end
          end


        -- Kul Tiras LFR
          if self.db.profile.showContinentLFR then

            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[876][60244960] = { mnID = 895, name = L["Kiku"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1176, 1031, 1179, 1036 }, type = "LFR" }
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
            nodes[1550][23795072] = { id = 1190, type = "Raid" } -- Castle Nathria
          end
    
    
        -- Shadowlands Portals
          if self.db.profile.showContinentPortals then
            nodes[1550][46555240] = { mnID = 1670,  name = "" , type = "Portal", showInZone = false, TransportName = L["Oribos"] .. " " .. L["Portals"] .. "\n" .. "\n" .. " => " .. ORGRIMMAR .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Zereth Mortis"] .. "\n" .. " => " .. L["The Maw"] .. "\n" .. " => " .. L["Korthia"] } -- Oribos to Stormwind City Portal
            nodes[1550][84378297] = { mnID = 1970,  name = "" , type = "Portal", showInZone = false, TransportName = L["Zereth Mortis"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Oribos"] } -- Zereth Mortis to Oribos
            nodes[1550][23470975] = { mnID = 1543,  name = "" , type = "Portal", showInZone = false, TransportName = L["The Maw"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Oribos"] } -- The Maw to Oribos
            nodes[1550][28181988] = { mnID = 1961,  name = "" , type = "Portal", showInZone = false, TransportName = L["Korthia"] .. " " .. L["Portal"] .. "\n" .. " => " .. L["Oribos"] } -- Korthis to Oribos
          end


          -- Shadowlands LFR
          if self.db.profile.showContinentLFR then
            nodes[1550][46704896] = { mnID = 1670, name = L["Ta'elfar"] .. "\n" .. L["Registrant"] .. " - " .. RAID_FINDER .. "\n" .. " ", id = { 1190, 1193, 1195 }, type = "LFR" }
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
            --nodes[1978][82052929] = { id = 1207, type = "Raid" } -- Amirdrassil, the Dream's Hope --node for worlquestracker map
          end
    
    
        -- Dragonflight Portals
          if self.db.profile.showContinentPortals then
            nodes[1978][56264965] = { mnID = 2112, name = "", type = "Portal", showInZone = true, TransportName = L["Valdrakken"] .. " " .. L["Portals"] .. "\n" ..  "\n" .. " => " .. L["Emerald Dream"] .. "\n" .. " => " .. L["Badlands"] .. "\n".." => " .. STORMWIND .. "\n" .. " => " .. ORGRIMMAR } --  Valdrakken Portals
            nodes[1978][30945509] = { mnID = 2200, name = "", type = "WayGateGreen", showInZone = true,  TransportName = L["Portal"] .. " => " .. L["Emerald Dream"] } -- Portal to The Emerald Dream
    
            if self.faction == "Horde" or db.show.EnemyFaction then

            end
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1978][25006083] = { mnID = "2239",  name = "", type = "APortal", showInZone = true, TransportName = L["Portals"] .. "\n" .. " => " .. STORMWIND .. "\n" .. " => " .. L["Darkshore"] .. "\n" .. " => " .. POSTMASTER_LETTER_HYJAL  .. "\n" .. " => " .. POSTMASTER_LETTER_LORLATHIL } -- Valdrakken to Stormwind City Portal
            end
          end
    

        -- Dragonflight Passage          
          if self.db.profile.showContinentPassage and not self.db.profile.show.ClassicIcons then
            nodes[1978][31065686] = { id = 1207, type = "PassageRaid", showInZone = true, } -- Amirdrassil, the Dream's Hope
          end
    

        -- Dragonflight ClassicIcons
          if self.db.profile.show.ClassicIcons then

            if self.db.profile.showContinentRaids then
              nodes[1978][31065686] = { id = 1207, type = "Raid", showInZone = true, } -- Amirdrassil, the Dream's Hope
            end
          end


        -- Dragonflight Zeppelin
          if self.db.profile.showContinentZeppelins then      
    
            if self.faction == "Horde" or db.show.EnemyFaction then 
              nodes[1978][59572607] = { mnID = 85, name = "", type = "HZeppelin", showInZone = true, TransportName = L["Zeppelin"] .. " => " .. ORGRIMMAR } -- Zeppelin from The Waking Shores to Orgrimmar 
            end
          end
    
    
        -- Dragonflight Ships
          if self.db.profile.showContinentShips then
    
            if self.faction == "Alliance" or db.show.EnemyFaction then
              nodes[1978][59732701] = { mnID = 84, name = "", type = "AShip", showInZone = true, TransportName = L["Ship"] .. " => " .. STORMWIND } -- Ship from The Waking Shores to Stormwind
            end
          end
        end 
      end   
  end
end 