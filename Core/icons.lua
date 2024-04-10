local ADDON_NAME, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\Images\\"

ns.icons = { 
--Addon Logo
["MNL"] = iconLink .. "MNL4",
--expansion 
["LKalimdor"] = "interface/characterframe/temporaryportrait-male-orc.blp",
["LEK"] = "Interface/CharacterFrame/TemporaryPortrait-Female-Human",
["LBC"] = "Interface/Icons/Achievement_Boss_Illidan",
["LDF"] = "Interface/CharacterFrame/TemporaryPortrait-Male-Dracthyr",
["LZ"] = "Interface/CharacterFrame/TemporaryPortrait-Female-ZandalariTroll",
["LKT"] = "Interface/CharacterFrame/TemporaryPortrait-Male-KulTiran",
["LLG"] = "Interface/Icons/artifactability_HavocDemonHunter_AnguishoftheDeceiver",
["LMOP"] = "Interface/CharacterFrame/TEMPORARYPORTRAIT-FEMALE-PANDAREN",
["LWotlk"] = "interface/lfgframe/ui-lfr-portrait",
--instance
["LFR"] = iconLink .. "LFR",
["Dungeon"] = iconLink .. "Dungeon", -- zone icons
["Raid"] = iconLink .. "Raid", -- zone icons
["VInstance"] = iconLink .. "vanillaInstance",
["VKey1"] = iconLink .. "vkey1",
["MultipleM"] = iconLink .. "multipleM",
["MultipleD"] = iconLink .. "multipleD",
["MultipleR"] = iconLink .. "multipleR",
["Gray"] = iconLink .. "gray",
--zeppelin
["Zeppelin"] = iconLink .. "zeppelin",
["HZeppelin"] = iconLink .. "zeppelinH",
--portal
["Portal"] = iconLink .. "portal",
["HPortal"] = iconLink .. "hportal",
["HPortalS"] = iconLink .. "hportalS",
["APortal"] = iconLink .. "aportal",
["APortalS"] = iconLink .. "aportalS",
--ship
["Ship"] = iconLink .. "ship",
["HShip"] = iconLink .. "shipH",
["AShip"] = iconLink .. "shipA",
--world passage
["PassageDungeonRaid"] = iconLink .. "PassageDungeon",
["PassageDungeon"] = iconLink .. "PassageDungeon", -- zone icons
["PassageRaid"] = iconLink .. "passageRaid", -- zone icons
["PassageDungeonRaidMulti"] = iconLink .. "PassageDungeonRaidMulti", -- zone icons
["PassageRaidMulti"] = iconLink .. "passageRaidMulti",
["PassageDungeonMulti"] = iconLink .. "PassageDungeonMulti",
--inside dungeon icons
["Exit"] = "interface/TARGETINGFRAME/UI-RaidTargetingIcon_7",
["PassageUpL"] = iconLink .. "passageupL",
["PassageDownL"] = iconLink .. "passagedownL",
["PassageRightL"] = iconLink .. "passagerightL",
["PassageLeftL"] = iconLink .. "passageleftL",
["PassageUpM"] = iconLink .. "passageupM",
["PassageDownM"] = iconLink .. "passagedownM",
["PassageRightM"] = iconLink .. "passagerightM",
["PassageLeftM"] = iconLink .. "passageleftM",
--transport
["TransportHelper"] = iconLink .. "tport",
["Tport2"] = iconLink .. "tport2",
["OgreWaygate"] = "Interface/Minimap/Vehicle-AllianceWarlockPortal",
["WayGateGolden"] = iconLink .. "WayGateGolden",
["WayGateGreen"] = iconLink .. "WayGateGreen",
["GPortal"] = iconLink .. "GPortal",
["Carriage"] = iconLink .. "Carriage",
--travel
["TravelL"] = iconLink .. "travelL",
["TravelM"] = iconLink .. "travelm",
--special icons
["HIcon"] = iconLink .. "HIcon",
["AIcon"] = iconLink .. "AIcon",
["TravelH"] = "interface/worldstateframe/hordeflag",
["TravelA"] = "interface/worldstateframe/allianceflag",
["NT"] = iconLink .. "NeutralTower",
--portrait icons
["B11M"] = "interface/characterframe/temporaryportrait-male-bloodelf",
["MOrcF"] = "interface/characterframe/temporaryportrait-female-magharorc",
["OrcM"] = "interface/characterframe/temporaryportrait-male-orc",
["UndeadF"] = "interface/characterframe/temporaryportrait-female-scourge",
["GoblinF"] = "interface/characterframe/temporaryportrait-female-goblin",
["GilneanF"] = "interface/characterframe/temporaryportrait-female-gilnean",
["KulM"] = "interface/characterframe/temporaryportrait-male-kultiran",
["DwarfF"] = "interface/characterframe/temporaryportrait-female-dwarf",
}

TextIcon = IconClass
TextIconMNL4 = TextIcon(iconLink .. "MNL4", 64, 64, 1, 50, 1, 50) 
--portal
TextIconPortal = TextIcon(iconLink .. "portal", 64, 64, 1, 50, 1, 50) 
TextIconHPortal = TextIcon(iconLink .. "hportal", 64, 64, 1, 50, 1, 50)
TextIconAPortal = TextIcon(iconLink .. "aportal", 64, 64, 1, 50, 1, 50)
TextIconWayGateGolden = TextIcon(iconLink .. "WayGateGolden", 50, 50, 1, 50, 1, 50)
TextIconWayGateGreen = TextIcon(iconLink .. "WayGateGreen", 50, 50, 1, 50, 1, 50)
--instance

TextIconLFR = TextIcon(iconLink .. "LFR", 64, 64, 1, 50, 1, 50)
TextIconDungeon = TextIcon(iconLink .. "Dungeon", 64, 64, 1, 50, 1, 50)
TextIconRaid = TextIcon(iconLink .. "Raid", 64, 64, 1, 50, 1, 50)
TextIconVInstance = TextIcon(iconLink .. "vanillaInstance", 64, 64, 1, 50, 1, 50)
TextIconVKey1 = TextIcon(iconLink .. "vkey1", 64, 64, 1, 50, 1, 50)
TextIconMultipleM = TextIcon(iconLink .. "multipleM", 64, 64, 1, 50, 1, 50)
TextIconMultipleD = TextIcon(iconLink .. "multipleD", 64, 64, 1, 50, 1, 50)
TextIconMultipleR = TextIcon(iconLink .. "multipleR", 64, 64, 1, 50, 1, 50)
TextIconMultipleMgray = TextIcon(iconLink .. "multipleMgray", 64, 64, 1, 50, 1, 50)
TextIconMultipleDgray = TextIcon(iconLink .. "multipleDgray", 64, 64, 1, 50, 1, 50)
TextIconMultipleRgray = TextIcon(iconLink .. "multipleRgray", 64, 64, 1, 50, 1, 50)
TextIconPassageDungeonRaidM = TextIcon(iconLink .. "PassageDungeonRaid", 64, 64, 1, 50, 1, 50)
TextIconPassageDungeonM = TextIcon(iconLink .. "PassageDungeon", 64, 64, 1, 50, 1, 50)
TextIconPassageRaidM = TextIcon(iconLink .. "PassageRaid", 64, 64, 1, 50, 1, 50)
TextIconPassageDungeonRaidMultiM = TextIcon(iconLink .. "PassageDungeonRaidMulti", 64, 64, 1, 50, 1, 50)
TextIconPassageDungeonMultiM = TextIcon(iconLink .. "PassageDungeonMulti", 64, 64, 1, 50, 1, 50)
TextIconPassageRaidMultiM = TextIcon(iconLink .. "PassageRaidMulti", 64, 64, 1, 50, 1, 50)
TextIconLocked = TextIcon(iconLink .. "gray", 64, 64, 1, 50, 1, 50)
--zeppelin
TextIconZeppelin = TextIcon(iconLink .. "zeppelin", 64, 64, 1, 50, 1, 50)
TextIconHZeppelin = TextIcon(iconLink .. "zeppelinH", 64, 64, 1, 50, 1, 50)
TextIconAZeppelin = TextIcon(iconLink .. "zeppelinA", 64, 64, 1, 50, 1, 50)
--ship
TextIconShip = TextIcon(iconLink .. "ship", 64, 64, 1, 50, 1, 50)
TextIconHShip = TextIcon(iconLink .. "shipH", 64, 64, 1, 50, 1, 50)
TextIconAShip = TextIcon(iconLink .. "shipA", 70, 70, 1, 50, 1, 50)
--inside dungeon icons
TextIconExit = TextIcon("interface/TARGETINGFRAME/UI-RaidTargetingIcon_7", 64, 64, 1, 50, 1, 50)
TextIconPassageup = TextIcon(iconLink .. "PassageUpL", 50, 50, 1, 50, 1, 50)
TextIconPassagedown = TextIcon(iconLink .. "PassageDownL", 50, 50, 1, 50, 1, 50)
TextIconPassageright = TextIcon(iconLink .. "PassageRightL", 50, 50, 1, 50, 1, 50)
TextIconPassageleft = TextIcon(iconLink .. "PassageLeftL", 50, 50, 1, 50, 1, 50)
--special icon
TextIconNT = TextIcon("iconLink" .. "NeutralTower", 64, 64, 1, 50, 1, 50)
TextIconTravelA = TextIcon("interface/worldstateframe/allianceflag", 64, 64, 1, 50, 1, 50)
TextIconTravelH = TextIcon("interface/worldstateframe/hordeflag", 64, 64, 1, 50, 1, 50)
TextIconTravelL = TextIcon(iconLink .. "travelL", 64, 64, 1, 50, 1, 50)
TextIconAIcon = TextIcon(iconLink .. "AIcon", 64, 64, 1, 50, 1, 50)
TextIconHIcon = TextIcon(iconLink .. "HIcon", 64, 64, 1, 50, 1, 50)
--transport
TextIconTransportHelper = TextIcon(iconLink .. "tport", 64, 64, 1, 50, 1, 50)
TextIconTransport = TextIcon(iconLink .. "tport2", 64, 64, 1, 50, 1, 50)
TextIconOgreWaygate = TextIcon("Interface/Minimap/Vehicle-AllianceWarlockPortal", 64, 64, 1, 50, 1, 50)
TextIconCarriage = TextIcon("interface/minimap/vehicle-carriage")
--information
TextIconCheck = TextIcon("Interface/Buttons/UI-CheckBox-Up", 64, 64, 1, 50, 1, 50)
TextIconHorde = TextIcon("interface/pvprankbadges/pvprankhorde")
TextIconAlliance = TextIcon("interface/pvprankbadges/pvprankalliance")
TextIconTomTom = TextIcon(iconLink .."tomtompoint")
TextIconJournal = TextIcon("interface/icons/inv_misc_book_09")
TextIconKilledBosses = TextIcon("Interface/TargetingFrame/UI-RaidTargetingIcon_8")
--expansions
TextIconKalimdor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Orc")
TextIconEK = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-Human")
TextIconBC = TextIcon("Interface/Icons/Achievement_Boss_Illidan")
TextIconNorthrend = TextIcon("interface/lfgframe/ui-lfr-portrait")
TextIconPandaria = TextIcon("Interface/CharacterFrame/TEMPORARYPORTRAIT-FEMALE-PANDAREN")
TextIconDraenor = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-MagharOrc")
TextIconLegion = TextIcon("Interface/Icons/artifactability_HavocDemonHunter_AnguishoftheDeceiver")
TextIconZandalar = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Female-ZandalariTroll")
TextIconKT = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-KulTiran")
TextIconSL = TextIcon("interface/icons/achievement_leader_sylvanas")
TextIconDF = TextIcon("Interface/CharacterFrame/TemporaryPortrait-Male-Dracthyr")
--portrait icons
TextIconDwarfF = TextIcon("interface/characterframe/temporaryportrait-female-dwarf")
TextIconGoblinF = TextIcon("interface/characterframe/temporaryportrait-female-goblin")
TextIconUndeadF = TextIcon("interface/characterframe/temporaryportrait-female-scourge")
TextIconGilneanF = TextIcon("interface/characterframe/temporaryportrait-female-gilnean")

-- 1 number --self.IconFileX = IconFileX or 0    -- the total X (horizontal) pixels in the image file - not just the icon we want
-- 2 number --self.IconFileY = IconFileY or 0    -- the total Y (vertical) pixels in the image file
-- 3 number --self.StartX = StartX or 0        -- The starting point in the file where the icon begins, counted from the left border, in pixels
-- 4 number --self.EndX = EndX or 0            -- The ending point in the file where the icon ends, counted from the left border, in pixels
-- 5 number --self.StartY = StartY or 0        -- The starting point in the file where the icon begins, counted from the top border, in pixels
-- 6 number --self.EndY = EndY or 0            -- The ending point in the file where the icon ends, counted from the top border, in pixels