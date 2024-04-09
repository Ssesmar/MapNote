local ADDON_NAME, ns = ...

local COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
local HideAllNodes = LibStub("LibDBIcon-1.0", true) -- test


local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin


function WorldMapOptionsButtonMixin:OnLoad()

end

function WorldMapOptionsButtonMixin:OnClick(button)

    if button == "LeftButton" then
        if not LibStub("AceConfigDialog-3.0"):Close("MNMiniMapButton") then
            LibStub("AceConfigDialog-3.0"):Open("MNMiniMapButton")
        end 
    end

    if button == "RightButton" then 
        HideAllNodes:Hide("HideMapNotes") -- test
        if not ns.Addon.db.profile.show.HideMapNote then
            ns.Addon.db.profile.show.HideMapNote = true
        else
            ns.Addon.db.profile.show.HideMapNote = false
        end
    end

end

function WorldMapOptionsButtonMixin:OnMouseDown(button)
    self.Icon:SetPoint('TOPLEFT', 8, -8)

end

function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end

function WorldMapOptionsButtonMixin:OnEnter()

    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, COLORED_ADDON_NAME)
    GameTooltip:AddLine(L["Left-click => Open/Close"],1,1,1)
    GameTooltip:Show()

end

function WorldMapOptionsButtonMixin:Refresh()

end