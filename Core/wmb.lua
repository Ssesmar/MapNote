local ADDON_NAME, ns = ...

local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin


function WorldMapOptionsButtonMixin:OnLoad()

end


function WorldMapOptionsButtonMixin:OnClick(button)
local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

    if button == "LeftButton" then

        if not LibStub("AceConfigDialog-3.0"):Close("MNMiniMapButton") then
            LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton")
        end 

    end

    if button == "MiddleButton" then

        if not ns.Addon.db.profile.show.HideMapNote then
            ns.Addon.db.profile.show.HideMapNote = true
        else
            ns.Addon.db.profile.show.HideMapNote = false
        end

    end

    if button == "RightButton" then 

        if WorldMapFrame:GetMapID() == 946 then -- World Map
        
            if not ns.Addon.db.profile.show.CosmosMap then
                ns.Addon.db.profile.show.CosmosMap = true
            else
                ns.Addon.db.profile.show.CosmosMap = false
            end

        end

        if WorldMapFrame:GetMapID() == 947 then-- Azeroth World Map

            if not ns.Addon.db.profile.show.Azeroth then
                ns.Addon.db.profile.show.Azeroth = true
            else
                ns.Addon.db.profile.show.Azeroth = false
            end

        end

        if info.mapType == 2 then -- Continent Maps
        
            if not ns.Addon.db.profile.show.Continent then
                ns.Addon.db.profile.show.Continent = true
            else
                ns.Addon.db.profile.show.Continent = false
            end

        end

        if info.mapType == 4 then -- Dungeon Maps
        
            if not ns.Addon.db.profile.show.DungeonMap then
                ns.Addon.db.profile.show.DungeonMap = true
            else
                ns.Addon.db.profile.show.DungeonMap = false
            end

        end

        if info.mapType == 3 or WorldMapFrame:GetMapID() == 1670 then -- Zone Maps
        
            if not ns.Addon.db.profile.show.ZoneMap then
                ns.Addon.db.profile.show.ZoneMap = true
            else
                ns.Addon.db.profile.show.ZoneMap = false
            end

        end



    end
    ns.Addon:FullUpdate()
    HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end


function WorldMapOptionsButtonMixin:OnMouseDown(button)
    self.Icon:SetPoint('TOPLEFT', 8, -8)

end


function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end


function WorldMapOptionsButtonMixin:OnEnter()
local info = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, COLORED_ADDON_NAME)
    GameTooltip:AddLine(L["Left-click => Open/Close"] .. "|cffffcc00" .. " " .. HUD_EDIT_MODE_MICRO_MENU_LABEL,1,1,1)
    GameTooltip:AddLine(" ",1,1,1)
    GameTooltip:AddLine(MIDDLE_BUTTON_STRING .. " => " .. "|cffffcc00" .. L["Disable MapNotes, all icons will be hidden on each map and all categories will be disabled"] .. " " .. SHOW .. " / " .. HIDE,1,1,1,1)
    GameTooltip:AddLine(" ",1,1,1)

    if WorldMapFrame:GetMapID() == 946 then -- World Map
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. WORLD_MAP .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    if WorldMapFrame:GetMapID() == 947 then-- Azeroth World Map
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Azeroth map"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end    

    if info.mapType == 2 then -- Continent Maps
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000" .. L["Continent map"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end


    if info.mapType == 3 or WorldMapFrame:GetMapID() == 1670 then -- Zone Maps
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. L["Zone map"] .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

    if info.mapType == 4 then -- Dungeon Maps
        GameTooltip:AddLine(HELPFRAME_REPORT_PLAYER_RIGHT_CLICK .. " => " .. "|cffff0000".. DUNGEONS .. "|cffffcc00" .. " " .. L["icons"] .. " " .. SHOW .. " / " .. HIDE,1,1,1)
        GameTooltip:Show()
    end

end


function WorldMapOptionsButtonMixin:Refresh()

end