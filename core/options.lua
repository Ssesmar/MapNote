local ADDON_NAME, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)

function ns.LoadOptions(self)
  
ns.options = {
  type = "group",
  name = TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString(),
  childGroups = "tab",
  desc = L["Shows locations of raids, dungeons, portals ,ship and zeppelins icons on different maps"],
  get = function(info) return ns.Addon.db.profile[info[#info]] end,
  set = function(info, v) ns.Addon.db.profile[info[#info]] = v HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") end,
  args = {  
    GeneralTab = {
      type = "group",
      name = L["General"],
      desc = L["General settings that apply to Azeroth / Continent / Dungeon map at the same time"],
      order = 0,
      args = {
        Description = {
          type = "header",
          name = L["Description"],
          order = 0.1,
          },
        DescriptionText = {
          name = "|cff00ccff" .. L["Show different icons on different maps. All icons are clickable (except on the minimap) and have a function Map icons work with or without the shift key. Simply change the Shift function!"],
          type = "description",
          order = 0.2,
          },          
        General = {
          type = "header",
          name = L["General"],
          order = 1,
          },
        ShiftWorld = {
          type = "toggle",
          name = "|cffff0000" .. "" .. L["Shift function!"],
          desc = L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."],
          order = 1.1,
          get = function() return ns.Addon.db.profile.show.ShiftWorld end,
          set = function(info, v) ns.Addon.db.profile.show.ShiftWorld = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.show.ShiftWorld then print(COLORED_ADDON_NAME .. "|cffffff00", L["Shift function"], "|cff00ff00" .. L["is deactivated"] .. " " .. L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"]) else
            if ns.Addon.db.profile.show.ShiftWorld then print(COLORED_ADDON_NAME .. "|cffffff00", L["Shift function"], "|cffff0000" .. L["is activated"] .. " " .. L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"]) end end end,
          },
        ClassicIcons = {
          type = "toggle",
          name = "|cffff0000" .. "" .. CLASSIC_STYLE,
          desc = L["Changes all passage symbols on all maps to dungeon, raid or multiple symbols. In addition, the passage option will be disabled everywhere and the symbols will be added to the respective raids, dungeons or multiple options (The dungeon map remains unchanged from all this)"],
          order = 1.2,
          get = function() return ns.Addon.db.profile.show.ClassicIcons end,
          set = function(info, v) ns.Addon.db.profile.show.ClassicIcons = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.show.ClassicIcons then print(COLORED_ADDON_NAME .. "|cffffff00", CLASSIC_STYLE, "|cff00ff00" .. L["is deactivated"]) else
            if ns.Addon.db.profile.show.ClassicIcons then print(COLORED_ADDON_NAME .. "|cffffff00", CLASSIC_STYLE, "|cffff0000" .. L["is activated"]) end end end,
          },
        ScaleHeader = {
          type = "header",
          name = "",
          order = 2,
          },
        mapnoteScale = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          order = 2.1,
          },
        mapnoteAlpha = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          order = 2.2,
          },
        HideHeader = {
         type = "header",
         name = "",
         order = 5,
          },
        hideAddon = {
          type = "toggle",
          name = "|cffff0000" .. L["hide MapNotes!"] .."\n",
          desc = L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"],
          order = 5.1,
          get = function() return ns.Addon.db.profile.show.HideMapNote end,
          set = function(info, v) ns.Addon.db.profile.show.HideMapNote = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.HideMapNote then print(COLORED_ADDON_NAME .. "|cffff0000", L["All MapNotes icons have been hidden"]) else
                if not ns.Addon.db.profile.show.HideMapNote then print(COLORED_ADDON_NAME .. "|cff00ff00", L["All set icons have been restored"]) end end end,
          },  
        hideMMB = {
          type = "toggle",
          name = "|cffff0000" .. "" .. L["hide minimap button"],
          desc = L["Hide the minimap button on the minimap"],
          order = 5.2,
          get = function() return ns.Addon.db.profile.HideMMB end,
          set = function(info, v) ns.Addon.db.profile.HideMMB = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.HideMMB then MNMMBIcon:Show("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], "|cff00ff00" .. L["is activated"]) else
            if ns.Addon.db.profile.HideMMB then MNMMBIcon:Hide("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        GeneralHeader = {
          type = "header",
          name = L["General settings / Additional functions"],
          order = 10,
          },
        journal = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconJournal:GetIconString() .. " " .. L["Adventure guide"],
          desc = L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] .. " " .. L["Left-clicking on a multiple icon will open the map where the dungeons are located"],
          order = 10.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.journal then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Adventure guide"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.journal then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Adventure guide"], "|cffff0000" .. L["is deactivated"]) end end end,
          },    
        tomtom = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconTomTom:GetIconString() .. " " .. L["TomTom waypoints"],
          desc = L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"],
          order = 10.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.tomtom then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["TomTom waypoints"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.tomtom then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["TomTom waypoints"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        assignedID = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconKilledBosses:GetIconString() .. " " .. L["extra information"],
          desc = L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"],
          order = 10.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.assignedID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["extra information"], "|cff00ff00" .. L["is activated"]) else 
            if not ns.Addon.db.profile.assignedID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["extra information"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        assignedgray = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote or ns.Addon.db.profile.graymultipleID end,
          type = "toggle",
          name = TextIconLocked:GetIconString() .. " " .. TextIconRaid:GetIconString() .. " " .. TextIconDungeon:GetIconString() .. " " .. L["gray single"],
          desc = L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"],
          order = 10.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.assignedgray then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["gray single"], "|cff00ff00" .. L["is activated"]) else 
            if not ns.Addon.db.profile.assignedgray then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["gray single"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        graymultipleID = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconLocked:GetIconString() .. " " .. TextIconMultipleM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " .. L["gray all"],
          desc = L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"],
          order = 10.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.graymultipleID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["gray all"], "|cff00ff00" .. L["is activated"]) else 
            if not ns.Addon.db.profile.graymultipleID then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["gray all"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showEnemyFaction = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconHorde:GetIconString() ..  " " .. TextIconAlliance:GetIconString() .. " " .. L["enemy faction"],
          desc = L["Shows enemy faction (horde/alliance) icons"],
          order = 10.6,
          get = function() return ns.Addon.db.profile.show.EnemyFaction end,
          set = function(info, v) ns.Addon.db.profile.show.EnemyFaction = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.EnemyFaction then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["enemy faction"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.EnemyFaction then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["enemy faction"], "|cffff0000" ..  L["is deactivated"]) end end end,
         },
        InfoHeader = {
          type = "header",
          name = L["Informations"],
          order = 19,
          },
        infoChat = {
          name = "|cffffff00" .. "" .. L["to show MapNotes info in chat: /mn, /MN"].. "\n",
          type = "description",
          order = 19.2,
        },
        infoOpen = {
          name = "|cffffff00" .. "" .. L["to open MapNotes menu: /mno, /MNO"].. "\n",
          type = "description",
          order = 19.4,
        },
        infoClose = {
          name = "|cffffff00" ..  "" .. L["to close MapNotes menu: /mnc, /MNC"].. "\n",
          type = "description",
          order = 19.5,
        },
        infoShow = {
          name = "|cffffff00" ..  "" .. L["to show minimap button: /mnb or /MNB"].. "\n",
          type = "description",
          order = 19.6,
        },
        infoHide = {
          name = "|cffffff00" ..  "" .. L["to hide minimap button: /mnbh or /MNBH"].. "\n",
          type = "description",
          order = 19.7,
        },
      }
    },
    AzerothTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Azeroth map"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 2,
      args = {
        Azerothheader1 = {
          type = "header",
          name = L["Azeroth map"],
          order = 20,
          },
        showAzeroth = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 20.1,
          get = function() return ns.Addon.db.profile.show.Azeroth end,
          set = function(info, v) ns.Addon.db.profile.show.Azeroth = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.show.Azeroth then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Azeroth map"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Azeroth then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Azeroth map"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        --azerothScale = {
        --  disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
        --  type = "range",
        --  name = L["symbol size"],
        --  desc = L["Changes the size of the icons"],
        --  min = 0.5, max = 2, step = 0.1,
        --  order = 20.2,
        --  },
        --azerothAlpha = {
        --  disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
        --  type = "range",
        --  name = L["symbol visibility"],
        --  desc = L["Changes the visibility of the icons"],
        --  min = 0, max = 1, step = 0.1,
        --  order = 20.3,
        -- },
        Azerothheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 21
          },
        AzerothDescriptionText = {
          name = "|cff00ccff" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order =21.1,
          },      
        showAzerothRaids = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 22.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 22.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.showAzerothDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
            if not ns.Addon.db.profile.showAzerothDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPassage = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 22.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.showAzerothPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
            if not ns.Addon.db.profile.showAzerothPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple on this map"],
          order = 22.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.howAzerothMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPortals = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 22.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 22.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothShips = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 22.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothTransport = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
          desc = L["Show icons of other transport possibilities on this map"],
          order = 22.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 22.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.showAzerothOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        Azerothheader3 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 24
          },
        showAzerothKalimdor = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPandaria = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Pandaria"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Broken Isles"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
          },  
        showAzerothZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Zandalar"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Kul Tiras"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 24.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showAzerothDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dragon Isles"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showAzerothDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Dragon Isles"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
          },
        AzerothInfoHeader = {
          type = "header",
          name = L["Informations"],
          order = 29,
          },
        Azerothdesc = {
          type = "description",
          name = "|cffffff00" .. L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"],
          order = 29.9
        },
      }
    },
    ContinentTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Continent map"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 3,
      args = {
        continentheader1 = {
          type = "header",
          name = L["Continent map"],
          order = 30,
          },
        showContinent = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 30.1,
          get = function() return ns.Addon.db.profile.show.Continent end,
          set = function(info, v) ns.Addon.db.profile.show.Continent = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.Continent then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Continent map"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Continent then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Continent map"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        --continentScale = {
        --  disabled = function() return not ns.Addon.db.profile.show.Continent end,
        --  type = "range",
        --  name = L["symbol size"],
        --  desc = L["Changes the size of the icons"],
        --  min = 0.5, max = 2, step = 0.1,
        --  order = 30.2,
        --  },
        --continentAlpha = {
        --  disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
        --  type = "range",
        --  name = L["symbol visibility"],
        --  desc = L["Changes the visibility of the icons"],
        --  min = 0, max = 1, step = 0.1,
        --  order = 30.3,
        --},
        continentheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 31.0,
          },
        ContinentDescriptionText = {
          name = "|cff00ccff" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order =31.1,
          },      
        showContinentRaids = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 32.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 32.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPassage = {
          disabled = function() return not ns.Addon.db.profile.show.Continent or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 32.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.showContinentPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
            if not ns.Addon.db.profile.showContinentPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 32.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPortals = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 32.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentPortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 32.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentShips = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 32.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentTransport = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
          desc = L["Show icons of other transport possibilities on this map"],
          order = 32.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 32.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.showContinentOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showContinentOgreWaygates = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"],
          desc = L["Show Ogre Waygate icons from Garrison on this map"],
          order = 33.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentOgreWaygates then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ogre Waygate"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentOgreWaygates then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Ogre Waygate"], "|cffff0000" .. L["are hidden"])end end end,
          },
        continentheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 33.1
          },
        showContinentKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentOutland = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentOutland then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentOutland then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPandaria = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Pandaria"], L["icons"],"|cff00ff00" .. L["are shown"]) else 
                  if not ns.Addon.db.profile.showContinentPandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDraenor = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
          desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentDraenor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentDraenor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 33.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentShadowlands = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
          desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentShadowlands then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentShadowlands then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showContinentDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showContinentDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Continent map"], L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
        },
        ContinentInfoHeader = {
          type = "header",
          name = L["Informations"],
          order = 35,
          },
        Continenthdesc = {
          type = "description",
          name = "|cffffff00" .. L["Individual icons that are too close to other icons on this map are not 100% accurately placed on this map! For more precise coordinates, please use the points on the zone map"],
          order = 35.1
        },
      }
    },
    ZoneTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Zone / Minimap"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 4,
      args = {
        zoneheader1 = {
          type = "header",
          name = L["Zone / Minimap"],
          order = 40,
          },
        showZoneMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 40.3,
          get = function() return ns.Addon.db.profile.show.ZoneMap end,
          set = function(info, v) ns.Addon.db.profile.show.ZoneMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.ZoneMap then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Zone / Minimap"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.ZoneMap then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Zone / Minimap"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        --zoneScale = {
        --  disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
        --  type = "range",
        --  name = L["symbol size"],
        --  desc = L["Changes the size of the icons"],
        --  min = 0.5, max = 2, step = 0.1,
        --  order = 40.2,
        --  },
        --zoneAlpha = {
        --  disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
        --  type = "range",
        --  name = L["symbol visibility"],
        --  desc = L["Changes the visibility of the icons"],
        --  min = 0, max = 1, step = 0.1,
        --  order = 40.3,
        --},
        zoneheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 41.0,
          },
        ZoneDescriptionText = {
          name = "|cff00ccff" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order =41.1,
          },      
        showZoneRaids = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 42.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneRaids then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 42.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneDungeons then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePassage = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap or ns.Addon.db.profile.show.ClassicIcons end,
          type = "toggle",
          name = TextIconPassageRaidM:GetIconString() .. " " .. TextIconPassageDungeonM:GetIconString() .. " " .. TextIconPassageRaidMultiM:GetIconString() .. " " .. TextIconPassageDungeonMultiM:GetIconString() .. " " ..L["Passages"],
          desc = L["Show icons of passage to raids and dungeons on this map"],
          order = 42.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.showZonePassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
            if not ns.Addon.db.profile.showZonePassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 42.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneMultiple then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePortals = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 42.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZonePortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZonePortals then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 42.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneZeppelins then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneShips = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 42.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneShips then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneTransport = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
          desc = L["Show icons of other transport possibilities on this map"],
          order = 42.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Azeroth map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneOldVanilla = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconVRaid:GetIconString() .. " " .. TextIconVKey1:GetIconString() .. " " .. L["Old Instances"],
          desc = L["Show vanilla versions of dungeons and raids such as Naxxramas, Scholomance or Scarlet Monastery, which require achievements or other things"],
          order = 42.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.showZoneOldVanilla then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Old Instances"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        showZoneOgreWaygates = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconOgreWaygate:GetIconString() .. " " .. L["Ogre Waygate"],
          desc = L["Show Ogre Waygate icons from Garrison on this map"],
          order = 43.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneOgreWaygates then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Ogre Waygate"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneOgreWaygates then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Ogre Waygate"], "|cffff0000" .. L["are hidden"])end end end,
          },
        zoneheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 43.1,
          },
        showZoneKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneKalimdor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneEasternKingdom then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneOutland = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneOutland then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneOutland then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneNorthrend then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePandaria = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconPandaria:GetIconString() .. " " .. L["Pandaria"],
          desc = L["Show all Pandaria MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZonePandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Pandaria"], L["icons"],"|cff00ff00" .. L["are shown"]) else 
                  if not ns.Addon.db.profile.showZonePandaria then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Pandaria"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDraenor = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDraenor:GetIconString() .. " " .. L["Draenor"],
          desc = L["Show all Draenor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneDraenor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Draenor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneDraenor then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Draenor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneBrokenIsles = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconLegion:GetIconString() .. " " .. L["Broken Isles"],
          desc = L["Show all Broken Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Broken Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneBrokenIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Broken Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneZandalar = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconZandalar:GetIconString() .. " " .. L["Zandalar"],
          desc = L["Show all Zandalar MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Zandalar"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneZandalar then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Zandalar"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneKulTiras = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconKT:GetIconString() .. " " .. L["Kul Tiras"],
          desc = L["Show all Kul Tiras MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Kul Tiras"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneKulTiras then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Kul Tiras"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneShadowlands = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconSL:GetIconString() .. " " .. L["Shadowlands"],
          desc = L["Show all Shadowlands MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneShadowlands then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Shadowlands"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneShadowlands then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Shadowlands"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDragonIsles = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDF:GetIconString() .. " " .. L["Dragon Isles"],
          desc = L["Show all Dragon Isles MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 44.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showZoneDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Dragon Isles"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showZoneDragonIsles then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Zone / Minimap"], L["Dragon Isles"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
        },
        Description = {
          type = "header",
          name = L["Informations"],
          order = 45,
          },
        DescriptionText = {
          name = "|cffffff00" .. L["Settings apply to the zone map and the mini map at the same time"],
          type = "description",
          order = 45.1,
          },      
      }
    },
    DungeonMapTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Dungeon map"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 5,
      args = {
        DungeonMapheader1 = {
          type = "header",
          name = L["Dungeon map"],
          order = 50,
          },
        showDungeonMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Enables the display of all possible icons on this map"],
          order = 50.1,
          get = function() return ns.Addon.db.profile.show.DungeonMap end,
          set = function(info, v) ns.Addon.db.profile.show.DungeonMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.DungeonMap then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Dungeon map"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.DungeonMap then print(COLORED_ADDON_NAME.."|cffffff00 ".. L["Dungeon map"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        --dungeonScale = {
        --  disabled = function() return not ns.Addon.db.profile.show.Continent end,
        --  type = "range",
        --  name = L["symbol size"],
        --  desc = L["Changes the size of the icons"],
        --  min = 0.5, max = 2, step = 0.1,
        --  order = 50.2,
        --  },
        --dungeonAlpha = {
        --  disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
        --  type = "range",
        --  name = L["symbol visibility"],
        --  desc = L["Changes the visibility of the icons"],
        --  min = 0, max = 1, step = 0.1,
        --  order = 50.3,
        --  },          
        DungeonMapheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 51.0,
          },
        DungeonMapDescriptionText = {
          name = "|cff00ccff" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order = 51.1,
          },      
        showDungeonExit = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconExit:GetIconString() .. " " .. L["Exits"] .. "\n",
          desc = L["Show icons of MapNotes dungeon exit on this map"],
          order = 52.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showDungeonExit then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Exits"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showDungeonExit then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Exits"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showDungeonPortal = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. L["Portals"] .. "\n",
          desc = L["Show icons of portals on this map"],
          order = 52.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showDungeonPortal then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showDungeonPortal then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },            
        showDungeonPassage = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconPassageup:GetIconString() .. " " .. TextIconPassagedown:GetIconString() .. " " .. TextIconPassageright:GetIconString() .. " " .. TextIconPassageleft:GetIconString() .. " " .. L["Passages"] .. "\n",
          desc = L["Show icons of passage on this map"],
          order = 52.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showDungeonPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Passages"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showDungeonPassage then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Passages"], "|cffff0000" .. L["are hidden"])end end end,
          },
          showDungeonTransport = {
          disabled = function() return not ns.Addon.db.profile.show.DungeonMap end,
          type = "toggle",
          name = TextIconTravelL:GetIconString() .. " " .. TextIconTransportHelper:GetIconString() .. " " .. L["Transport"] .. "\n",
          desc = L["Show icons of other transport possibilities on this map"],
          order = 52.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.showDungeonTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if not ns.Addon.db.profile.showDungeonTransport then print(COLORED_ADDON_NAME, "|cffffff00" .. L["Dungeon map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
      }
    }
  }
}
end