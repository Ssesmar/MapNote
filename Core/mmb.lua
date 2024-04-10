local ADDON_NAME, ns = ...

local iconLink = "Interface\\Addons\\" .. ADDON_NAME .. "\\images\\"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)

ns.miniButton = {
text = COLORED_ADDON_NAME,
type = "data source",
icon = iconLink .. "MNL4",
OnTooltipShow = function(tooltip)
  if not tooltip or not tooltip.AddLine then return end
  tooltip:AddLine(COLORED_ADDON_NAME)
  tooltip:AddLine(" ")
  tooltip:AddLine(L["Left-click => Open/Close"] .. " " .. COLORED_ADDON_NAME,1,1,1)
  tooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. MINIMAP_LABEL .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
  tooltip:AddLine(L["Shift + Right-click => hide"] .. " " .. "|cffffff00" .. L["-> MiniMapButton <-"],1,1,1)
  tooltip:AddLine(L["Middle-Mouse-Button => Open/Close"] .. " " .. "|cff00ccff" .. "-> " .. WORLDMAP_BUTTON .." <-",1,1,1)
  end,
OnClick = function(self, button)
  
    if button == "RightButton" and not IsShiftKeyDown() then
      if not ns.Addon.db.profile.show.MiniMap then
        ns.Addon.db.profile.show.MiniMap = true
        print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, "|cff00ff00" .. L["is activated"])
      else
        ns.Addon.db.profile.show.MiniMap = false
        print(TextIconMNL4:GetIconString() .. " " .. COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00 ".. MINIMAP_LABEL, "|cffff0000" .. L["is deactivated"])
      end
    end

    if IsShiftKeyDown() and button == "RightButton" then
      MNMMBIcon:Hide("MNMiniMapButton")
      ns.Addon.db.profile.show.HideMMB = true
      LibStub("AceConfigDialog-3.0"):Close("HandyNotes") 
      print(COLORED_ADDON_NAME .. "|cffffff00 " .. L["-> MiniMapButton <-"], "|cffff0000" .. L["is deactivated"]) 
      print(COLORED_ADDON_NAME .. "|cffffff00 " .. L["to show minimap button: /mnb or /MNB"])
      print(COLORED_ADDON_NAME .. "|cffffff00 ".. L["to open MapNotes menu: /mno, /MNO"])
    end

  if button == "LeftButton" then
    if not LibStub("AceConfigDialog-3.0"):Close("MNMiniMapButton") then
      LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton")
      LibStub("AceConfigDialog-3.0"):Close("HandyNotes")
    end 
  end

  if button == "MiddleButton" then
    if WorldMapFrame:IsShown() then
      ToggleWorldMap()
      WorldMapFrame:Hide()
    else 
      ToggleWorldMap()
      WorldMapFrame:Show()
    end
  end

  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end }