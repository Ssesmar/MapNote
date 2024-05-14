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
  desc = "",
  get = function(info) return ns.Addon.db.profile[info[#info]] end,
  set = function(info, v) ns.Addon.db.profile[info[#info]] = v HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") end,
  args = {  
    GeneralTab = {
      type = "group",
      name = GENERAL,
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
          order = 0.1,
          },  
        General = {
          type = "header",
          name = L["General"],
          order = 0.2,
          },
        hideAddon = {
          type = "toggle",
          name = "|cffff0000" .. L["hide MapNotes!"],
          desc = L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"],
          order = 0.5,
          width = 1.10,
          get = function() return ns.Addon.db.profile.show.HideMapNote end,
          set = function(info, v) ns.Addon.db.profile.show.HideMapNote = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.HideMapNote then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffff0000", L["All MapNotes icons have been hidden"]) else
                if not ns.Addon.db.profile.show.HideMapNote then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cff00ff00", L["All set icons have been restored"]) end end end,
          },  
        hideMMB = {
          type = "toggle",
          name = "|cffff0000" .. L["hide minimap button"],
          desc = L["Hide the MapNotes button on the minimap"],
          order = 0.7,
          width = 1.25,
          get = function() return ns.Addon.db.profile.show.HideMMB end,
          set = function(info, v) ns.Addon.db.profile.show.HideMMB = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.show.HideMMB then MNMMBIcon:Show("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], "|cff00ff00" .. L["is activated"]) else
            if ns.Addon.db.profile.show.HideMMB then MNMMBIcon:Hide("MNMiniMapButton") print(COLORED_ADDON_NAME .. "|cffffff00", L["-> MiniMapButton <-"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        hideWMB = {
          type = "toggle",
          name = "|cffff0000" .. L["hide worldmap button"],
          desc = L["Hide the MapNotes button on the worldmap"],
          order = 0.8,
          width = 1.20,
          get = function() return ns.Addon.db.profile.show.HideWMB end,
          set = function(info, v) ns.Addon.db.profile.show.HideWMB = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if not ns.Addon.db.profile.show.HideWMB then ns.WorldMapButton:Show() LibStub("Krowi_WorldMapButtons-1.4").SetPoints(); print(COLORED_ADDON_NAME .. "|cffffff00", L["-> WorldMapButton <-"], "|cff00ff00" .. L["is activated"]) else
            if ns.Addon.db.profile.show.HideWMB then ns.WorldMapButton:Hide() LibStub("Krowi_WorldMapButtons-1.4").SetPoints(); print(COLORED_ADDON_NAME .. "|cffffff00", L["-> WorldMapButton <-"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        DescriptionHeader2 = {
          type = "header",
          name = "",
          order = 1.6,
          },
        RemoveBlizzPOIs = {
          -- disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = COLORED_ADDON_NAME .. " " .. L["icons"],
          desc = TextIconMNL4:GetIconString() ..  " " .. TextIconHIcon:GetIconString() ..  " " .. TextIconAIcon:GetIconString() .. " " .. L["Hides certain Blizzard icons (e.g. Horde/Alliance/Neutral capitals icon or general travel icons on the map) and replaces them with almost identical MapNotes icons, providing additional information and functionality"] .. "\n" .. "\n" .. TextIconRaid:GetIconString() .. " " .. TextIconDungeon:GetIconString() .. " " ..  L["Also disables all Blizzard Instance icons on the zone map. However, these can be reactivated on the map at the top right under the 'Map filter' dungeon entrance magnifying glass. Disable and enable MapNotes VS again. blizzard, deactivates the instance icons on the zone map again"] .. "\n" .. "\n" .. L["Removes the Blizzard symbols only where MapNotes symbols and Blizzard symbols overlap, thereby making the tooltip and the function of the MapNote symbols usable again on the overlapping points"],
          order = 1.7,
          width = 1.05,
          get = function() return ns.Addon.db.profile.show.RemoveBlizzPOIs end,
          set = function(info, v) ns.Addon.db.profile.show.RemoveBlizzPOIs = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.show.RemoveBlizzPOIs then SetCVar("showDungeonEntrancesOnMap", 0) print(COLORED_ADDON_NAME, "|cffffff00" .. SLASH_TEXTTOSPEECH_BLIZZARD .. " " .. L["icons"], "|cffff0000" .. L["are hidden"] ) else
                if not ns.Addon.db.profile.show.RemoveBlizzPOIs then SetCVar("showDungeonEntrancesOnMap", 1) print(COLORED_ADDON_NAME, "|cffffff00" .. SLASH_TEXTTOSPEECH_BLIZZARD .. " " ..L["icons"], "|cff00ccff" .. L["are shown"] )end end end,
          },
        showEnemyFaction = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = L["enemy faction"],
          desc = TextIconHorde:GetIconString() ..  " " .. TextIconAlliance:GetIconString() .. " " .. L["Shows enemy faction (horde/alliance) icons"],
          order = 1.8,
          width = 0.90,
          get = function() return ns.Addon.db.profile.show.EnemyFaction end,
          set = function(info, v) ns.Addon.db.profile.show.EnemyFaction = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.EnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["enemy faction"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.EnemyFaction then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["enemy faction"], "|cffff0000" ..  L["is deactivated"]) end end end,
         },
        ShiftWorld = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = L["Shift function!"],
          desc = L["When enabled, you must press Shift before left- or right-clicking to interact with MapNotes icons. But this has an advantage because there are so many icons in the game, including from other addons, so you don't accidentally click on a symbol and change the map, or mistakenly create a TomTom point."],
          order = 1.9,
          width = 0.8,
          get = function() return ns.Addon.db.profile.show.ShiftWorld end,
          set = function(info, v) ns.Addon.db.profile.show.ShiftWorld = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.ShiftWorld then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Shift function"], "|cff00ff00" .. L["is deactivated"] .. " " .. L["You can now interact with MapNotes icons without having to press Shift + Click at the same time"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.ShiftWorld then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Shift function"], "|cffff0000" .. L["is activated"] .. " " .. L["You must now always press Shift + Click at the same time to interact with the MapNotes icons"]) end end end,
          },
        FogOfWar = {
          --disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = L["Unexplored Areas"],
          desc = L["Reveals unexplored areas and shows the individual areas of each zone that are actually still unexplored"],
          order = 2.1,
          width = 1.05,
          get = function() return ns.Addon.db.profile.show.FogOfWar end,
          set = function(info, v) ns.Addon.db.profile.show.FogOfWar = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            HandyNotes:GetModule("FogOfWarButton"):Refresh()
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.FogOfWar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Unexplored Areas"], "|cff00ff00" .. L["is deactivated"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.FogOfWar then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Unexplored Areas"], "|cffff0000" .. L["is activated"]) end end end,
          }, 
        FogOfWarAlphaReduce = {
          disabled = function() return not ns.Addon.db.profile.show.FogOfWar end,
          type = "toggle",
          name = L["Mist of the Unexplored"],
          desc = L["Leaves the unexplored areas revealed but adds a slight fog so you can still see which ones you haven't explored yet"],
          width = 2,
          order = 2.2,
          get = function() return ns.Addon.db.profile.show.FogOfWarAlphaReduce end,
          set = function(info, v) ns.Addon.db.profile.show.FogOfWarAlphaReduce = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
            HandyNotes:GetModule("FogOfWarButton"):Refresh()
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.show.FogOfWarAlphaReduce then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Mist of the Unexplored"], "|cffff0000" .. L["is deactivated"]) else
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.show.FogOfWarAlphaReduce then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Mist of the Unexplored"], "|cff00ff00" .. L["is activated"]) end end end,
          }, 
        GeneralHeader = {
          type = "header",
          name = L["General settings / Additional functions"],
          order = 3.0,
          },
        journal = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconJournal:GetIconString() .. " " .. L["Adventure guide"],
          desc = L["Left-clicking on a MapNotes raid (green), dungeon (blue) or multiple icon (green&blue) on the map opens the corresponding dungeon or raid map in the Adventure Guide (the map must not be open in full screen)"] .. " " .. L["Left-clicking on a multiple icon will open the map where the dungeons are located"],
          order = 3.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.journal then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Adventure guide"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.journal then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Adventure guide"], "|cffff0000" .. L["is deactivated"]) end end end,
          },    
        tomtom = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconTomTom:GetIconString() .. " " .. L["TomTom waypoints"],
          desc = L["Shift+right click on a raid, dungeon, multiple symbol, portal, ship, zeppelin, passage or exit from MapNotes on the continent or dungeon map creates a TomTom waypoint to this point (but the TomTom add-on must be installed for this)"],
          order = 3.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.tomtom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["TomTom waypoints"], "|cff00ff00" .. L["is activated"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.tomtom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["TomTom waypoints"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        extraInformation = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconKilledBosses:GetIconString() .. " " .. L["extra information"],
          desc = L["Displays additional information for dungeons or raids. E.g. the number of bosses already killed"],
          order = 3.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.assignedID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["extra information"], "|cff00ff00" .. L["is activated"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.assignedID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["extra information"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        assignedgray = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote or ns.Addon.db.profile.graymultipleID end,
          type = "toggle",
          name = TextIconLocked:GetIconString() .. " " .. TextIconRaid:GetIconString() .. " " .. TextIconDungeon:GetIconString() .. " " .. L["gray single"],
          desc = L["Colors only individual points of assigned dungeons and raids in gray (if you have an ID)"],
          order = 3.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.assignedgray then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray single"], "|cff00ff00" .. L["is activated"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.assignedgray then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray single"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        graymultipleID = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconLocked:GetIconString() .. " " .. TextIconMultipleM:GetIconString() .. " " .. L["gray all"],
          desc = L["Colors EVERYONE! Assigned dungeons and raids also have multiple points in gray (if you have an ID)"],
          order = 3.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.graymultipleID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray all"], "|cff00ff00" .. L["is activated"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.graymultipleID then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["gray all"], "|cffff0000" ..  L["is deactivated"]) end end end,
          },
        noChatMassage = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "toggle",
          name = TextIconMNL4:GetIconString() .. " " .. L["chat message"],
          desc = L["Disables MapNotes status chat messages excluding core information"],
          order = 3.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["chat message"], "|cff00ff00" .. L["is activated"]) else 
            if not ns.Addon.db.profile.noChatMassage then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["chat message"], "|cffff0000" .. L["is deactivated"] ) end end end,
          }, 
        DescriptionHeader3 = {
          type = "header",
          name = "",
          order = 4.0,
          },
        InfoTab = {
          type = "group",
          name = "-> " .. DESCRIPTION .. " <-",
          desc = L["A description of what this addon does and what functions it offers"],
          order = 1,
          args = {
          InfoDescriptionText = {
            name = "• " .. L["All icons can be activated or deactivated separately!"] .. "\n" .. "• " .. L["Shift function option: You can use the MapNotes symbols with or without shift-clicking"] .. "\n" .. "• " .. L["Hide MapNotes! option: All icons can also be hidden or shown with a single click"],
            type = "description",
            order = 10.1,
            },
          },
        },
        InfoTab2 = {
          type = "group",
          name = "-> " .. L["Worldmap function"] .. " <-",
          desc = "",
          order = 2,
          args = {
            InfoDescriptionText2 = {
              name = "• " .. L["Right-click on any icon adds a TomTom waypoint (except on the Azeroth and Minimap)"] .. "\n" .. "• " .. L["Left-click on a Instance icon opens the corresponding dungeon in the adventure guide"] .. "\n" .. "• " .. L["Azeroth/Continent Map: Left-click on a transport symbol opens the map where the symbol is"] .. "\n" .. "• " .. L["Zone map: Left-click on a transport symbol opens the map of the symbol's destination"],
              type = "description",
              order = 20.1,
              },
            },
          },
        InfoTab4 = {
          type = "group",
          name = L["-> MiniMapButton <-"],
          desc = "",
          order = 4,
          args = {
            InfoDescriptionText4 = {
              name = "• " .. L["Left-click opens or close the MapNote setting menu"] .. "\n" .. "\n" .. "• " .. HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " " .. MINIMAP_LABEL .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE .. "\n" .. "\n" .. "• " .. L["Shift+Right-click hide the minimap button"] .. "\n" .. "\n" .. "• " .. L["Middle-Mouse-Button => Open/Close"],
              type = "description",
              order = 40.1,
              },
            },
          },
        InfoTab5 = {
          type = "group",
          name = L["-> WorldMapButton <-"],
          desc = "",
          order = 5,
          args = {
            InfoDescriptionText5 = {
              name =  "• " .. L["Left-click => Open/Close"] .. " " .. COLORED_ADDON_NAME .. "\n" .. "\n" .. "• " .. "Middle-Mouse-Button" .. " => " .. L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] .. " " .. SHOW .. " / " .. HIDE  .. "\n" .. "\n" .. "• " .. HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. WORLDMAP_BUTTON .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,
              type = "description",
              order = 50.1,
              },
            },
          },
        InfoTab6 = {
          type = "group",
          name = "-> " .. L["Chat commands"] .. " <-",
          desc = "",
          order = 6,
          args = {
            InfoDescriptionText6 = {
              name =  "• " .. L["to show MapNotes info in chat: /mn, /MN"] .. "\n" .. "• " .. L["to open MapNotes menu: /mno, /MNO"] .. "\n" .. "• " .. L["to close MapNotes menu: /mnc, /MNC"] .. "\n" .. "• " .. L["to show minimap button: /mnb or /MNB"] .. "\n" .. "• " .. L["to hide minimap button: /mnbh or /MNBH"],
              type = "description",
              order = 60.1,
              },
            },
          },
      },
    },
    MiniMapTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = MINIMAP_LABEL,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 1,
      args = {
        MiniMapheader = {
          type = "header",
          name = MINIMAP_LABEL .. " " .. L["Informations"],
          order = 10,
          },
        MiniMapDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Some instance icons cannot be hidden because they were created by Blizzard itself and not by MapNotes"],
          type = "description",
          order = 10.1,
          },      
        MiniMaptheader1 = {
          type = "header",
          name = "",
          order = 10.3,
          },
        showMiniMapMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          width = 1,
          order = 10.4,
          get = function() return ns.Addon.db.profile.show.MiniMap end,
          set = function(info, v) ns.Addon.db.profile.show.MiniMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.MiniMap then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.MiniMap then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, "|cffff0000" .. L["is deactivated"]) end end end,
          },
        minimapScale = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,
          order = 10.8,
          },
        minimapAlpha = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,
          order = 10.9,
          },
        MiniMapheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 11.0,
          },
        showMiniMapRaids = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 12.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 12.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 12.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapPortals = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 12.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 12.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapShips = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 12.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapTransport = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconTransport:GetIconString() .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = "",
          order = 12.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapFP = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconTravel:GetIconString() .. " " .. TextIconTravelH:GetIconString() .. " " .. TextIconTravelA:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. MINIMAP_TRACKING_FLIGHTMASTER,
          desc = "",
          order = 12.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapGhost = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconGhost:GetIconString() .. " " .. SPIRIT_HEALER_RELEASE_RED,
          desc = "",
          order = 13.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapGhost then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapGhost then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        MiniMapheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 14.1,
          },
        showMiniMapKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapOutland = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showMiniMapNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.MiniMap end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 14.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showMiniMapNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showMiniMapNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. MINIMAP_LABEL, L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        },
      },
    AzerothTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = WORLD_MAP,
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 4,
      args = {
        Azerothheader = {
          type = "header",
          name = WORLD_MAP .. " " .. L["Informations"],
          order = 30,
          },
        AzerothDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"],
          type = "description",
          order = 30.1,
          },   
        Azerothheader1 = {
          type = "header",
          name = "",
          order = 30.5,
          },
        showAzeroth = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 30.6,
          get = function() return ns.Addon.db.profile.show.Azeroth end,
          set = function(info, v) ns.Addon.db.profile.show.Azeroth = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.show.Azeroth then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(947) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. WORLD_MAP, "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Azeroth then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(947) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. WORLD_MAP, "|cffff0000" .. L["is deactivated"]) end end end,
          },
        azerothScale = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,  
          order = 30.7,
          },
        azerothAlpha = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,  
          order = 30.8,
          },
        Azerothheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 31
          },
        showAzerothRaids = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 32.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 32.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
            if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
            if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple on this map"],
          order = 32.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.howAzerothMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothPortals = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 32.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 32.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothShips = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 32.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothTransport = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = "",
          order = 32.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        --showAzerothFP = {
        --  disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
        --  type = "toggle",
        --  name = TextIconTravel:GetIconString() .. " " .. TextIconTravelH:GetIconString() .. " " .. TextIconTravelA:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. MINIMAP_TRACKING_FLIGHTMASTER,
        --  desc = "",
        --  order = 32.9,
        --  set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
        --        if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
        --        if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
        --  },
        Azerothheader3 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 34
          },
        showAzerothKalimdor = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. WORLD_MAP, L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showAzerothNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.Azeroth end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 34.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showAzerothNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["icons"],  "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showAzerothNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Azeroth map"], L["Northrend"], L["icons"],  "|cffff0000" .. L["are hidden"])end end end,
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
        continentheader = {
          type = "header",
          name = CONTINENT .. "-" .. BRAWL_TOOLTIP_MAPS .. " " .. L["Informations"],
          order = 40,
          },
        ContinentDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-clicking on a icon on this map opens the corresponding instance in the adventure guide or the map in which the portal, ship, zeppelin or special transport icon is located"],
          type = "description",
          order = 40.1,
          },   
        continentheader1 = {
          type = "header",
          name = "",
          order = 40.5,
          },
        showContinent = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          order = 40.6,
          get = function() return ns.Addon.db.profile.show.Continent end,
          set = function(info, v) ns.Addon.db.profile.show.Continent = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.Continent and not WorldMapFrame:IsShown() then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(1414) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.Continent and not WorldMapFrame:IsShown() then OpenWorldMap(uiMapID) WorldMapFrame:SetMapID(1414) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Continent map"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
          continentScale = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 1.25,  
          order = 40.7,
          },
        continentAlpha = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 1.25,
          order = 40.8,
        },
        continentheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 41.0,
          },
        showContinentRaids = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 42.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 42.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 42.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentPortals = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 42.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentPortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 42.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentShips = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 42.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentTransport = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = "",
          order = 42.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        --showContinentFP = {
        --  disabled = function() return not ns.Addon.db.profile.show.Continent end,
        --  type = "toggle",
        --  name = TextIconTravel:GetIconString() .. " " .. TextIconTravelH:GetIconString() .. " " .. TextIconTravelA:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. MINIMAP_TRACKING_FLIGHTMASTER,
        --  desc = "",
        --  order = 42.9,
        --  set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
        --        if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
        --        if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
        --  },
        continentheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 43.1
          },
        showContinentKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentOutland = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showContinentNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.Continent end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 43.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showContinentNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showContinentNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Continent map"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        },
      },
    ZoneTab = {
      disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
      type = "group",
      name = L["Zone map"],
      desc = L["Certain icons can be displayed or not displayed. If the option (Activate icons) has been activated in this category"],
      order = 2,
      args = {
        zoneheader = {
          type = "header",
          name = L["Zone map"] .. " " .. L["Informations"],
          order = 50,
          },
        ZoneDescriptionText = {
          name = "|cffff0000" .. "======> " .. "|cffffff00" .. L["Left-click on one of these symbols on a map, the corresponding adventure guide or map of the destination will open"],
          type = "description",
          order = 50.1,
          },
        zonetheader1 = {
            type = "header",
            name = "",
            order = 50.3,
          },
        showZoneMap = {
          type = "toggle",
          name = L["Activate icons"],
          desc = L["Activates the display of all possible icons on this map"],
          width = 2.9,
          order = 50.4,
          get = function() return ns.Addon.db.profile.show.ZoneMap end,
          set = function(info, v) ns.Addon.db.profile.show.ZoneMap = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
                if ns.Addon.db.profile.show.ZoneMap then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], "|cff00ff00" .. L["is activated"]) else 
                if not ns.Addon.db.profile.show.ZoneMap then OpenWorldMap(uiMapID) print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. L["Zone map"], "|cffff0000" .. L["is deactivated"]) end end end,
          },
        zoneScale = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = COMMUNITIES_ROSTER_COLUMN_TITLE_ZONE .. " " .. L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 0.90,  
          order = 50.6,
          },
        zoneAlpha = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = COMMUNITIES_ROSTER_COLUMN_TITLE_ZONE .. " " .. L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 0.90,  
          order = 50.7,
          },
        instanceScale = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = INSTANCE .. " " .. L["symbol size"],
          desc = L["Changes the size of the icons"],
          min = 0.5, max = 3, step = 0.1,
          width = 0.90,  
          order = 50.8,
          },
        instanceAlpha = {
          disabled = function() return ns.Addon.db.profile.show.HideMapNote end,
          type = "range",
          name = INSTANCE .. " " .. L["symbol visibility"],
          desc = L["Changes the visibility of the icons"],
          min = 0, max = 1, step = 0.1,
          width = 0.90,  
          order = 50.9,
          },
        zoneheader2 = {
          type = "header",
          name = L["Show individual icons"],
          order = 51.0,
          },
        showZoneRaids = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconRaid:GetIconString() .. " " .. L["Raids"],
          desc = L["Show icons of raids on this map"],
          order = 52.1,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Raids"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneRaids then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Raids"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneDungeons = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconDungeon:GetIconString() .. " " .. L["Dungeons"],
          desc = L["Show icons of dungeons on this map"],
          order = 52.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Dungeons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneDungeons then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Dungeons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneMultiple = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconMultipleM:GetIconString() .. " " .. TextIconMultipleR:GetIconString() .. " " .. TextIconMultipleD:GetIconString() .. " " .. L["Multiple"],
          desc = L["Show icons of multiple (dungeons,raids) on this map"],
          order = 52.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Multiple"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneMultiple then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Multiple"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZonePortals = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconPortal:GetIconString() .. " " .. TextIconHPortal:GetIconString() .. " " .. TextIconAPortal:GetIconString() .. " " .. TextIconWayGateGreen:GetIconString().. " " .. TextIconWayGateGolden:GetIconString() .. " " .. L["Portals"],
          desc = L["Show icons of portals on this map"],
          order = 52.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZonePortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Portals"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZonePortals then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Portals"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneZeppelins = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconZeppelin:GetIconString() .. " " .. TextIconHZeppelin:GetIconString() .. " " .. L["Zeppelins"],
          desc = L["Show icons of zeppelins on this map"],
          order = 52.6,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Zeppelins"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneZeppelins then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Zeppelins"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneShips = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconShip:GetIconString() .. " " .. TextIconHShip:GetIconString() .. " " .. TextIconAShip:GetIconString() .. " " .. L["Ships"],
          desc = L["Show icons of ships on this map"],
          order = 52.7,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Ships"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneShips then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Ships"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneTransport = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconTransport:GetIconString() .. " " .. TextIconCarriage:GetIconString() .. " " .. L["Transport"],
          desc = "",
          order = 52.8,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneTransport then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneFP = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconTravel:GetIconString() .. " " .. TextIconTravelH:GetIconString() .. " " .. TextIconTravelA:GetIconString() .. " " .. TextIconTravelL:GetIconString() .. " " .. MINIMAP_TRACKING_FLIGHTMASTER,
          desc = "",
          order = 52.9,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneFP then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneGhost = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconGhost:GetIconString() .. " " .. SPIRIT_HEALER_RELEASE_RED,
          desc = "",
          order = 53.0,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneGhost then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneGhost then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Transport"], "|cffff0000" .. L["are hidden"])end end end,
          },
        zoneheader4 = {
          type = "header",
          name = L["Show all MapNotes for a specific map"],
          order = 53.1,
          },
        showZoneKalimdor= {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconKalimdor:GetIconString() .. " " .. L["Kalimdor"],
          desc = L["Show all Kalimdor MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.2,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Kalimdor"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneKalimdor then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Kalimdor"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneEasternKingdom = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconEK:GetIconString() .. " " .. L["Eastern Kingdom"],
          desc = L["Show all Eastern Kingdom MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.3,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Eastern Kingdom"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneEasternKingdom then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Eastern Kingdom"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },  
        showZoneOutland = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconBC:GetIconString() .. " " .. L["Outland"],
          desc = L["Show all Outland MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.4,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Outland"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneOutland then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Outland"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        showZoneNorthrend = {
          disabled = function() return not ns.Addon.db.profile.show.ZoneMap end,
          type = "toggle",
          name = TextIconNorthrend:GetIconString() .. " " .. L["Northrend"],
          desc = L["Show all Northrend MapNotes dungeon, raid, portal, zeppelin and ship icons on this map"],
          order = 53.5,
          set = function(info, v) ns.Addon.db.profile[info[#info]] = v self:FullUpdate() HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes") 
                if ns.Addon.db.profile.noChatMassage and ns.Addon.db.profile.showZoneNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Northrend"], L["icons"], "|cff00ff00" .. L["are shown"]) else 
                if ns.Addon.db.profile.noChatMassage and not ns.Addon.db.profile.showZoneNorthrend then print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Zone map"], L["Northrend"], L["icons"], "|cffff0000" .. L["are hidden"])end end end,
          },
        },
      },
  }
}
end