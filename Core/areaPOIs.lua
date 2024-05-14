local ADDON_NAME, ns = ...

local function RemoveBlizzPOIs()
    if (not ns.Addon.db.profile.show.RemoveBlizzPOIs) then return end
  
    for pin in WorldMapFrame:EnumeratePinsByTemplate("AreaPOIPinTemplate") do
        for _, poiID in pairs(ns.BlizzAreaPoisInfo) do
            local poi = C_AreaPoiInfo.GetAreaPOIInfo(WorldMapFrame:GetMapID(), pin.areaPoiID)
            if (poi ~= nil and poi.areaPoiID == poiID) then
                WorldMapFrame:RemovePin(pin)
            end
        end
    end
  end
  
  hooksecurefunc(WorldMapFrame, "OnMapChanged", function()
    RemoveBlizzPOIs()
  end)
  
  WorldMapFrame:HookScript("OnShow", function()
    RemoveBlizzPOIs()
  end)