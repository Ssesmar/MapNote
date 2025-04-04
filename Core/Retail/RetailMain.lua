local ADDON_NAME, ns = ...

local buildVersion, buildNumber, buildDate, interfaceVersion, localizedVersion, buildInfo = GetBuildInfo()
ns.version = buildVersion -- ns.version == "11.1.0"

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
if not HandyNotes then return end

local ADDON_NAME = "HandyNotes_MapNotes"
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME)
ns.COLORED_ADDON_NAME = "|cffff0000Map|r|cff00ccffNotes|r"

local MapNotesMiniButton = LibStub("AceAddon-3.0"):NewAddon("MNMiniMapButton", "AceConsole-3.0")
local MNMMBIcon = LibStub("LibDBIcon-1.0", true)

local db = { }
local nodes = { }
local minimap = { }
local lfgIDs = { }
local extraInformations = { }

ns.RestoreStaticPopUpsRetail()

function MapNotesMiniButton:OnInitialize() --mmb.lua
  self.db = LibStub("AceDB-3.0"):New("MNMiniMapButtonRetailDB", { profile = { minimap = { hide = false, }, }, }) 
  MNMMBIcon:Register("MNMiniMapButton", ns.miniButton, self.db.profile.minimap)
end

local function updateextraInformation()
    table.wipe(extraInformations)
    for i=1,GetNumSavedInstances() do
        local name, _, _, _, locked, _, _, _, _, difficultyName, numEncounters, encounterProgress = GetSavedInstanceInfo(i)
        if (locked) then
          --print(name, difficultyName, numEncounters, encounterProgress)
          if (not extraInformations[name]) then
          extraInformations[name] = { }
          end
          extraInformations[name][difficultyName] = encounterProgress .. "/" .. numEncounters
        end
    end
end

local function ExtraToolTip()
  if ns.Addon.db.profile.TooltipInformations == false then
    ns.Addon.db.profile.ExtraTooltip = false
    elseif ns.Addon.db.profile.TooltipInformations == true then
      if not WorldMapFrame:IsShown() then
        ns.Addon.db.profile.ExtraTooltip = false
      elseif WorldMapFrame:IsShown() then
        ns.Addon.db.profile.ExtraTooltip = true
      end
  end
end

local pluginHandler = { }
function pluginHandler:OnEnter(uiMapId, coord)
ns.nodes[uiMapId][coord] = nodes[uiMapId][coord]
ns.minimap[uiMapId][coord] = minimap[uiMapId][coord]
  local nodeData = nil

--local Highlight = CreateFrame("Frame",nil, UIParent)
--Highlight.tex = Highlight:CreateTexture()
--Highlight.tex:SetAllPoints(Highlight)
--Highlight.tex:SetColorTexture(0.5, 0.2, 1 , 0.5)
--Highlight:SetSize(20,20)
--Highlight:SetPoint("CENTER" , "Cursor")
--Highlight:SetScript ("OnEnter", function(self) end)
--Highlight:SetScript ("OnLeave", function(self) Highlight:Hide()  end)
--Highlight:EnableMouse(true)
--Highlight:SetMouseMotionEnabled(true)

  if (minimap[uiMapId] and minimap[uiMapId][coord]) then
    nodeData = minimap[uiMapId][coord]
  end

	if (nodes[uiMapId] and nodes[uiMapId][coord]) then
	  nodeData = nodes[uiMapId][coord]
	end

	if (not nodeData) then return end
	
	local tooltip = self:GetParent() == WorldMapButton and WorldMapTooltip or GameTooltip

	if ( self:GetCenter() > UIParent:GetCenter() ) then -- compare X coordinate
	  tooltip:SetOwner(self, "ANCHOR_LEFT")
	else
		tooltip:SetOwner(self, "ANCHOR_RIGHT")
	end

  if (not nodeData.name) then return end

	local instances = { strsplit("\n", nodeData.name) }

  ExtraToolTip()
	updateextraInformation()
	
	for i, v in pairs(instances) do
    --print(i, v)
	  if (db.extraInformation and (extraInformations[v] or (lfgIDs[v] and extraInformations[lfgIDs[v]]))) then
 	    if (extraInformations[v]) then
        --print("Dungeon/Raid is locked")
	      for a,b in pairs(extraInformations[v]) do
          --tooltip:AddLine(v .. ": " .. a .. " " .. b, nil, nil, nil, false)
	        tooltip:AddDoubleLine(v, a .. " " .. b, 1, 1, 1, 1, 1, 1)
 	      end
	    end
      if (lfgIDs[v] and extraInformations[lfgIDs[v]]) then
        for a,b in pairs(extraInformations[lfgIDs[v]]) do
          --tooltip:AddLine(v .. ": " .. a .. " " .. b, nil, nil, nil, false)
          tooltip:AddDoubleLine(v, a .. " " .. b, 1, 1, 1, 1, 1, 1)
        end
      end
	  else
	    tooltip:AddLine(v, nil, nil, nil, false)
      if ns.DeveloperMode == true then
        if nodeData.dnID then
          tooltip:AddLine("Type:  " .. nodeData.dnID, nil, nil, false)
        end
        if nodeData.type then
          tooltip:AddLine("IconName:  " .. nodeData.type, nil, nil, false)
        end
        tooltip:AddDoubleLine("uiMapID:  " .. uiMapId, "Coord:  " .. coord, nil, nil, false)
        tooltip:AddDoubleLine("uiMapID:  " .. uiMapId, "==>   " .. C_Map.GetMapInfo(uiMapId).name, nil, nil, false)
        if nodeData.mnID then
          tooltip:AddDoubleLine("mnID:  " .. nodeData.mnID,"==>   " .. C_Map.GetMapInfo(nodeData.mnID).name, nil, nil, false)
        end
        if nodeData.mnID2 then
          tooltip:AddDoubleLine("mnID2:  " .. nodeData.mnID2, C_Map.GetMapInfo(nodeData.mnID2).name, nil, nil, false)
        end
        if nodeData.mnID3 then
          tooltip:AddDoubleLine("mnID3:  " .. nodeData.mnID3, C_Map.GetMapInfo(nodeData.mnID3).name, nil, nil, false)
        end
        --if nodeData.id then
        --  tooltip:AddLine("Instance-ID:  " .. nodeData.id, nil, nil, false)
        --end
        tooltip:AddLine(" ", nil, nil, false)
      end
	  end

    if nodeData.delveID and ns.icons["Delves"] then -- Delves
      local delveIDname = C_Map.GetMapInfo(nodeData.delveID).name
      if delveIDname then
        tooltip:AddDoubleLine("|cffffffff" .. delveIDname, nil, nil, false)
        tooltip:AddDoubleLine(nodeData.TransportName, nil, nil, false)
      end
    end

    if nodeData.TransportName and not nodeData.delveID and not nodeData.dnID then
      --tooltip:AddDoubleLine(nodeData.TransportName, nil, nil, false)
    end

    if nodeData.TransportName and not nodeData.delveID then
      tooltip:AddDoubleLine(nodeData.TransportName, nil, nil, false)
    end

    if nodeData.dnID then -- outputs the names we set and displays it in the tooltip
      tooltip:AddDoubleLine(nodeData.dnID, nil, nil, false)
    end

    if (nodeData.dnID and nodeData.mnID) and not nodeData.mnID2 and not nodeData.mnID3 then -- outputs the Zone or Dungeonmap name and displays it in the tooltip
      local mnIDname = C_Map.GetMapInfo(nodeData.mnID).name
      if mnIDname then
        tooltip:AddDoubleLine("==> " .. mnIDname, nil, nil, false)
      end
    end

    if nodeData.mnID and nodeData.mnID2 or nodeData.mnID3 then -- outputs the Zone or Dungeonmap name and displays it in the tooltip
      local mnIDname = C_Map.GetMapInfo(nodeData.mnID).name
      if mnIDname then
        tooltip:AddDoubleLine("\n" .. KEY_BUTTON1 .. " ==> " .. mnIDname, nil, nil, false)
      end
    end

    if nodeData.mnID2 then
      local mnID2name = C_Map.GetMapInfo(nodeData.mnID2).name
      if mnID2name then 
        tooltip:AddDoubleLine(KEY_BUTTON2 .. " ==> " .. mnID2name, nil, nil, false)
      end
    end

    if nodeData.mnID3 then
      local mnID3name = C_Map.GetMapInfo(nodeData.mnID3).name
      if mnID3name then 
        tooltip:AddDoubleLine(KEY_BUTTON3 .. " ==> " .. mnID3name, nil, nil, false)
      end
    end

    if not nodeData.dnID and nodeData.mnID and not nodeData.id and not nodeData.TransportName and not nodeData.wwwName and not ns.icons["Delves"] then -- outputs the Zone or Dungeonmap name and displays it in the tooltip
      local mnIDname = C_Map.GetMapInfo(nodeData.mnID).name
      if mnIDname then
        tooltip:AddDoubleLine(" ==> " .. mnIDname, nil, nil, false)
      end
    end

    if nodeData.mnID and not (nodeData.dnID or nodeData.id or nodeData.TransportName) then
      local mnIDname = C_Map.GetMapInfo(nodeData.mnID).name
      local type = nodeData.typem
      if mnIDname then
        tooltip:AddDoubleLine(" ==> " .. mnIDname, nil, nil, false)
      end
    end

    local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted
    if nodeData.questID then

      if IsQuestFlaggedCompleted(nodeData.questID) == false then
      
        if nodeData.wwwName then
          tooltip:AddDoubleLine("\n" .. nodeData.wwwName, nil, nil, false)
        end

        if nodeData.wwwLink and nodeData.showWWW == true then
          tooltip:AddDoubleLine("|cffffffff" .. nodeData.wwwLink, nil, nil, false)
          tooltip:AddLine("\n" .. L["Has not been unlocked yet"] .. "\n" .. "\n", 1, 0, 0)
          if ns.Addon.db.profile.ExtraTooltip then
            tooltip:AddDoubleLine("|cff00ff00".. "< " .. L["Middle mouse button to post the link in the chat"] .. " >" .. "\n" .. "< " .. L["Activate the „Link“ function from MapNotes in the General tab to create clickable links and email addresses in the chat"] .. " >", nil, nil, false)
          end
        end
      end

      if IsQuestFlaggedCompleted(nodeData.questID) then
          nodeData.showWWW = false
          nodeData.wwwName = false
      end

    end

    if nodeData.achievementID then
      local _, name, _, completed, _, _, _, description, _, _, _, _, wasEarnedByMe = GetAchievementInfo(nodeData.achievementID)

      --if wasEarnedByMe == false or completed == false then
      if completed == false then
        tooltip:AddLine("\n" .. description, nil, nil, false)

        if nodeData.wwwName then
          tooltip:AddDoubleLine(nodeData.wwwName, nil, nil, false)
        end

        if nodeData.wwwLink and nodeData.showWWW == true then
          tooltip:AddDoubleLine("|cffffffff" .. nodeData.wwwLink, nil, nil, false)
          tooltip:AddLine("\n" .. L["Has not been unlocked yet"], 1, 0, 0)
          if ns.Addon.db.profile.ExtraTooltip then
            tooltip:AddDoubleLine("\n" .. "|cff00ff00".. "< " .. L["Middle mouse button to post the link in the chat"] .. " >" .. "\n" .. "< " .. L["Use the addon 'Prat', 'Chat Copy Paste' for example to then copy this link from the chat"] .. " >", nil, nil, false)
          end
        end
        
      end

      -- if wasEarnedByMe == true and completed == true then
      if completed == true then
        nodeData.showWWW = false
        nodeData.wwwName = false
      end

    end

    -- Dungeons ,Raids and Multi
    if nodeData.type then

      -- Dungeons
      if nodeData.id and nodeData.type == "Dungeon" and not ns.MapType0 then -- Delves
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.id and nodeData.lfgid and nodeData.type == "PassageDungeon" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.id and nodeData.type == "PassageDungeon" and not nodeData.mnID then
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end
      
      if nodeData.mnID and nodeData.type == "PassageDungeon" then -- 
        --tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "PassageDungeonMulti" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "VInstanceD" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "MultiVInstanceD" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "MultipleD" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      -- Raids
      if nodeData.type == "Raid" and not ns.MapType0 then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID, nil, nil, false)
      end

      if nodeData.id and nodeData.type == "PassageRaid" and not nodeData.mnID then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "PassageRaid" then -- 
        --tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "PassageRaidMulti" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "MultiVInstanceR" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID .. " & " .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "VInstanceR" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "MultipleR" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID, nil, nil, false)
      end

      -- Mixed Raid & Dungeon
      if nodeData.mnID and nodeData.type == "MultiVInstance" then -- 
        tooltip:AddDoubleLine("|cffffffff" .. CALENDAR_TYPE_RAID .. " & " .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

      if nodeData.mnID and nodeData.type == "MultipleM" then -- 
        --tooltip:AddLine("|cffffffff" .. CALENDAR_TYPE_RAID .. " / " .. CALENDAR_TYPE_DUNGEON, nil, nil, false)
      end

    end

    -- Extra Tooltip
    if ns.Addon.db.profile.ExtraTooltip then

      if nodeData.id and not nodeData.mnID then  -- instance entrances
        if ns.Addon.db.profile.journal and not ns.CapitalIDs then
          tooltip:AddDoubleLine("|cff00ff00" .. L["< Left Click to open Adventure Guide >"], nil, nil, false) -- instance entrances into adventure guide
        end

        if ns.Addon.db.profile.tomtom and not ns.CapitalIDs then
          tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift + Right Click add TomTom waypoint >"], nil, nil, false) -- instance entrances tomtom
        end
      end

      if nodeData.mnID or nodeData.delveID or nodeData.dnID then

        if not ns.Addon.db.profile.activate.ShiftWorld then 
          if not nodeData.hideInfo == true and not ns.MapType0 then
            if nodeData.mnID then
              tooltip:AddDoubleLine("|cff00ff00" .. L["< Left Click to show map >"], nil, nil, false)
            end

            if nodeData.delveID then
              tooltip:AddDoubleLine("|cff00ff00" .. L["< Left Click to show delve map >"], nil, nil, false)
            end

            if not (ns.MapType1 or ns.MapType0 or ns.icons["Delves"]) then
              if ns.Addon.db.profile.tomtom and not ns.CapitalIDs then
                tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift + Right Click add TomTom waypoint >"], nil, nil, false)
              end
            end
            
          end
        elseif ns.Addon.db.profile.activate.ShiftWorld then

          if not nodeData.hideInfo == true and not ns.MapType0 then

            if nodeData.mnID then
              tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift Left Click to show map >"], nil, nil, false)
            end

            if nodeData.delveID then
              tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift Left Click to show map >"], nil, nil, false)
            end

            if not (ns.MapType1 or ns.MapType0 or ns.icons["Delves"]) then
              if ns.Addon.db.profile.tomtom and not ns.CapitalIDs then
                tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift + Right Click add TomTom waypoint >"], nil, nil, false)
              end
            end
    
          end

        end

        if not (ns.MapType1 or ns.MapType0 or ns.icons["Delves"]) then
          if ns.Addon.db.profile.tomtom and not ns.CapitalIDs then
            tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift + Right Click add TomTom waypoint >"], nil, nil, false)
          end
        end

        if ns.Addon.db.profile.tomtom then
          if ns.AllZoneIDs or WorldMapFrame:GetMapID() == 12 or WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 101 or WorldMapFrame:GetMapID() == 113 or WorldMapFrame:GetMapID() == 424 or WorldMapFrame:GetMapID() == 619
          or WorldMapFrame:GetMapID() == 875 or WorldMapFrame:GetMapID() == 876 or WorldMapFrame:GetMapID() == 905 or WorldMapFrame:GetMapID() == 1978 or WorldMapFrame:GetMapID() == 1550 or WorldMapFrame:GetMapID() == 572
          or WorldMapFrame:GetMapID() == 2274 or WorldMapFrame:GetMapID() == 948 then
            if (not nodeData.hideInfo == true) then
              tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift + Right Click add TomTom waypoint >"], nil, nil, false)
            end
          end
        end

      end

      if nodeData.mnID and nodeData.leaveDelve and ns.icons["Delves"] then

        if ns.Addon.db.profile.tomtom then
          tooltip:AddDoubleLine("|cff00ff00" .. L["< Shift + Right Click add TomTom waypoint >"], nil, nil, false)
        end
        
        if not ns.Addon.db.profile.activate.ShiftWorld then 
          tooltip:AddDoubleLine("|cff00ff00" .. "< " .. MIDDLE_BUTTON_STRING .. " " .. INSTANCE_LEAVE .. " (" .. DELVES_LABEL .. ") >", nil, nil, false)
        elseif ns.Addon.db.profile.activate.ShiftWorld then
          tooltip:AddDoubleLine("|cff00ff00" .. "< " .. SHIFT_KEY .. " + " .. MIDDLE_BUTTON_STRING .. " " .. INSTANCE_LEAVE .. " (" .. DELVES_LABEL .. ") >", nil, nil, false)
        end
      end
    end

    if ns.Addon.db.profile.ExtraTooltip and ns.Addon.db.profile.DeleteIcons then
      if not nodeData.hideInfo == true and not ns.MapType0 then
        tooltip:AddDoubleLine("|cffff0000" .. L["< Alt + Right click to delete this icon >"], nil, nil, false)
      end
    end

    tooltip:Show()
  end
end

SLASH_DeveloperMode1 = "/mndev";
function SlashCmdList.DeveloperMode(msg, editbox)
  if ns.DeveloperMode == true then
    ns.DeveloperMode = false
    print("MapNotes DeveloperMode = Off")
  else
    ns.DeveloperMode = true 
    print("MapNotes DeveloperMode = On")
  end
end


function pluginHandler:OnLeave(uiMapID, coord)
    if self:GetParent() == WorldMapButton then
      WorldMapTooltip:Hide()
    else
      GameTooltip:Hide()
    end
end


do
	local tablepool = setmetatable({}, {__mode = "uiMapId"})

	local function deepCopy(object)
		local lookup_table = {}
		local function _copy(object)
			if type(object) ~= "table" then
				return object
			elseif lookup_table[object] then
				return lookup_table[object]
			end

			local new_table = {}
			  lookup_table[object] = new_table
			for index, value in pairs(object) do
				new_table[_copy(index)] = _copy(value)
			end

			return setmetatable(new_table, getmetatable(object))
		end
			return _copy(object)
	end

	local function iter(t, prestate, uiMapID) -- Azeroth / Zone / Minimap / Inside Dungeon settings

		if not t then return end

		local data = t.data
		local state, value = next(data, prestate)

		while value do
			local alpha
		  local icon = ns.icons[value.type]
      local scale
      local mapInfo = C_Map.GetMapInfo(t.uiMapId)

			local allLocked = true
			local anyLocked = false

      ns.SyncSingleScaleAlpha() -- synch single Icons
      ns.SyncWithMinimapScaleAlpha() -- sync Capitals with Capitals - Minimap and/or Zones with Minimap Alpha/Scale
      ns.ChangeToClassicImagesRetail() -- function to change the icon style from new images to old images

      ns.pathIcons = value.type == "PathO" or value.type == "PathRO" or value.type == "PathLO" or value.type == "PathU" or value.type == "PathLU" or value.type == "PathRU" or value.type == "PathL" or value.type == "PathR"
      
      ns.professionIcons = value.type == "Alchemy" or value.type == "Engineer" or value.type == "Cooking" or value.type == "Fishing" or value.type == "Archaeology" or value.type == "Mining" or value.type == "Jewelcrafting" 
                            or value.type == "Blacksmith" or value.type == "Leatherworking" or value.type == "Skinning" or value.type == "Tailoring" or value.type == "Herbalism" or value.type == "Inscription"
                            or value.type == "Enchanting" or value.type == "FishingClassic" or value.type == "ProfessionOrders" or value.type == "ProfessionsMixed"

      ns.instanceIcons = value.type == "Dungeon" or value.type == "Raid" or value.type == "PassageDungeon" or value.type == "PassageDungeonRaidMulti" or value.type == "PassageRaid" or value.type == "VInstance" or value.type == "MultiVInstance" 
                          or value.type == "Multiple" or value.type == "LFR" or value.type == "Gray" or value.type == "VKey1" or value.type == "Delves" or value.type == "VInstanceD" or value.type == "VInstanceR" or value.type == "MultiVInstanceD" 
                          or value.type == "MultiVInstanceR" or value.type == "DelvesPassage"

      ns.transportIcons = value.type == "Portal" or value.type == "PortalS" or value.type == "HPortal" or value.type == "APortal" or value.type == "HPortalS" or value.type == "APortalS" or value.type == "PassageHPortal" 
                          or value.type == "PassageAPortal" or value.type == "PassagePortal" or value.type == "Zeppelin" or value.type == "HZeppelin" or value.type == "AZeppelin" or value.type == "Ship" or value.type == "TorghastUp"
                          or value.type == "AShip" or value.type == "HShip" or value.type == "Carriage" or value.type == "TravelL" or value.type == "TravelH" or value.type == "TravelA" or value.type == "Tport2" 
                          or value.type == "OgreWaygate" or value.type == "WayGateGreen" or value.type == "Ghost" or value.type == "DarkMoon" or value.type == "Mirror" or value.type == "TravelM" or value.type == "B11M" 
                          or value.type == "MOrcF" or value.type == "UndeadF" or value.type == "GoblinF" or value.type == "GilneanF" or value.type == "KulM" or value.type == "DwarfF" or value.type == "OrcM" or value.type == "WayGateGolden"
                          
      ns.generalIcons = value.type == "Exit" or value.type == "PassageUpL" or value.type == "PassageDownL" or value.type == "PassageRightL" or value.type == "PassageLeftL" or value.type == "Innkeeper" 
                        or value.type == "Auctioneer" or value.type == "Bank" or value.type == "MNL" or value.type == "Barber" or value.type == "Transmogger" or value.type == "ItemUpgrade" or value.type == "PvPVendor" 
                        or value.type == "PvEVendor" or value.type == "DragonFlyTransmog" or value.type == "Catalyst" or value.type == "PathO" or value.type == "PathRO" or value.type == "PathLO" 
                        or value.type == "PathU" or value.type == "PathLU" or value.type == "PathRU" or value.type == "PathL" or value.type == "PathR" or value.type == "BlackMarket" or value.type == "Mailbox"
                        or value.type == "StablemasterN" or value.type == "StablemasterH" or value.type == "StablemasterA" or value.type == "HIcon" or value.type == "AIcon" or value.type == "InnkeeperN" 
                        or value.type == "InnkeeperH" or value.type == "InnkeeperA" or value.type == "MailboxN" or value.type == "MailboxH" or value.type == "MailboxA" or value.type == "PvPVendorH" or value.type == "PvPVendorA" 
                        or value.type == "PvEVendorH" or value.type == "PvEVendorA" or value.type == "MMInnkeeperH" or value.type == "MMInnkeeperA" or value.type == "MMStablemasterH" or value.type == "MMStablemasterA"
                        or value.type == "MMMailboxH" or value.type == "MMMailboxA" or value.type == "MMPvPVendorH" or value.type == "MMPvPVendorA" or value.type == "MMPvEVendorH" or value.type == "MMPvEVendorA" 
                        or value.type == "ZonePvEVendorH" or value.type == "ZonePvPVendorH" or value.type == "ZonePvEVendorA" or value.type == "ZonePvPVendorA" or value.type == "TradingPost" or value.type == "PassageCaveUp"
                        or value.type == "PassageCaveDown"

      ns.AllZoneIDs = ns.KalimdorIDs
                      or ns.EasternKingdomIDs
                      or ns.OutlandIDs
                      or ns.NorthrendIDs
                      or ns.DraenorIDs
                      or ns.PandariaIDs
                      or ns.BrokenIslesIDs
                      or ns.ZandalarIDs
                      or ns.KulTirasIDs
                      or ns.ShadowlandIDs
                      or ns.DragonIsleIDs
                      or ns.KhazAlgar

      ns.MapType0 = mapInfo.mapType == 0 -- Cosmic map
      ns.MapType1 = mapInfo.mapType == 1 -- World map
      ns.MapType2 = mapInfo.mapType == 2 -- Continent maps
      ns.MapType3 = mapInfo.mapType == 3 -- Zone maps
      ns.MapType4 = mapInfo.mapType == 4 -- Dungeon maps
      ns.MapType5 = mapInfo.mapType == 5 -- Micro maps
      ns.MapType6 = mapInfo.mapType == 6 -- Orphan maps

      ns.ContinentIDs = WorldMapFrame:GetMapID() == 12 or WorldMapFrame:GetMapID() == 13 or WorldMapFrame:GetMapID() == 101 or WorldMapFrame:GetMapID() == 113 or WorldMapFrame:GetMapID() == 424 or WorldMapFrame:GetMapID() == 619
                      or WorldMapFrame:GetMapID() == 875 or WorldMapFrame:GetMapID() == 876 or WorldMapFrame:GetMapID() == 905 or WorldMapFrame:GetMapID() == 1978 or WorldMapFrame:GetMapID() == 1550 or WorldMapFrame:GetMapID() == 572
                      or WorldMapFrame:GetMapID() == 2274 or WorldMapFrame:GetMapID() == 948

      ns.CapitalIDs = WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85 or WorldMapFrame:GetMapID() == 90 
                      or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 111 or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 
                      or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 392 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394 or WorldMapFrame:GetMapID() == 407 or WorldMapFrame:GetMapID() == 503 
                      or WorldMapFrame:GetMapID() == 582 or WorldMapFrame:GetMapID() == 590 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 627 
                      or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 629 or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 
                      or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 2339
                      or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2266

      ns.AllianceCapitalIDs = WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87 or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 393 or WorldMapFrame:GetMapID() == 394
                      or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 622 or WorldMapFrame:GetMapID() == 582

      ns.HordeCapitalsIDs = WorldMapFrame:GetMapID() == 85 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110 or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 392
                      or WorldMapFrame:GetMapID() == 391 or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 624 or WorldMapFrame:GetMapID() == 590

      ns.NeutralCapitalIDs = WorldMapFrame:GetMapID() == 2339 or WorldMapFrame:GetMapID() == 111 or WorldMapFrame:GetMapID() == 1670 or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 1672
                      or WorldMapFrame:GetMapID() == 125 or WorldMapFrame:GetMapID() == 126 or WorldMapFrame:GetMapID() == 627 or WorldMapFrame:GetMapID() == 626 or WorldMapFrame:GetMapID() == 628 or WorldMapFrame:GetMapID() == 269
                      or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 407

      ns.CapitalMiniMapIDs = C_Map.GetBestMapForUnit("player") == 84 or C_Map.GetBestMapForUnit("player") == 87 or C_Map.GetBestMapForUnit("player") == 89 or C_Map.GetBestMapForUnit("player") == 103 or C_Map.GetBestMapForUnit("player") == 85 or C_Map.GetBestMapForUnit("player") == 90 
                      or C_Map.GetBestMapForUnit("player") == 86 or C_Map.GetBestMapForUnit("player") == 88 or C_Map.GetBestMapForUnit("player") == 110 or C_Map.GetBestMapForUnit("player") == 111 or C_Map.GetBestMapForUnit("player") == 125 or C_Map.GetBestMapForUnit("player") == 126 
                      or C_Map.GetBestMapForUnit("player") == 391 or C_Map.GetBestMapForUnit("player") == 392 or C_Map.GetBestMapForUnit("player") == 393 or C_Map.GetBestMapForUnit("player") == 394 or C_Map.GetBestMapForUnit("player") == 407 or C_Map.GetBestMapForUnit("player") == 503 
                      or C_Map.GetBestMapForUnit("player") == 582 or C_Map.GetBestMapForUnit("player") == 590 or C_Map.GetBestMapForUnit("player") == 622 or C_Map.GetBestMapForUnit("player") == 624 or C_Map.GetBestMapForUnit("player") == 626 or C_Map.GetBestMapForUnit("player") == 627 
                      or C_Map.GetBestMapForUnit("player") == 628 or C_Map.GetBestMapForUnit("player") == 629 or C_Map.GetBestMapForUnit("player") == 1161 or C_Map.GetBestMapForUnit("player") == 1163 or C_Map.GetBestMapForUnit("player") == 1164 or C_Map.GetBestMapForUnit("player") == 1165 
                      or C_Map.GetBestMapForUnit("player") == 1670 or C_Map.GetBestMapForUnit("player") == 1671 or C_Map.GetBestMapForUnit("player") == 1672 or C_Map.GetBestMapForUnit("player") == 1673 or C_Map.GetBestMapForUnit("player") == 2112 or C_Map.GetBestMapForUnit("player") == 2339
                      or C_Map.GetBestMapForUnit("player") == 499 or C_Map.GetBestMapForUnit("player") == 500 or C_Map.GetBestMapForUnit("player") == 2266

      ns.KalimdorIDs = WorldMapFrame:GetMapID() == 1 or WorldMapFrame:GetMapID() == 7 or WorldMapFrame:GetMapID() == 10 or WorldMapFrame:GetMapID() == 11 or WorldMapFrame:GetMapID() == 57 or WorldMapFrame:GetMapID() == 62 
                      or WorldMapFrame:GetMapID() == 63 or WorldMapFrame:GetMapID() == 64 or WorldMapFrame:GetMapID() == 65 or WorldMapFrame:GetMapID() == 66 or WorldMapFrame:GetMapID() == 67 or WorldMapFrame:GetMapID() == 68 
                      or WorldMapFrame:GetMapID() == 69 or WorldMapFrame:GetMapID() == 70 or WorldMapFrame:GetMapID() == 71 or WorldMapFrame:GetMapID() == 74 or WorldMapFrame:GetMapID() == 75 or WorldMapFrame:GetMapID() == 76 
                      or WorldMapFrame:GetMapID() == 77 or WorldMapFrame:GetMapID() == 78 or WorldMapFrame:GetMapID() == 80 or WorldMapFrame:GetMapID() == 81 or WorldMapFrame:GetMapID() == 83 or WorldMapFrame:GetMapID() == 97 
                      or WorldMapFrame:GetMapID() == 106 or WorldMapFrame:GetMapID() == 199 or WorldMapFrame:GetMapID() == 327 or WorldMapFrame:GetMapID() == 460 or WorldMapFrame:GetMapID() == 461 or WorldMapFrame:GetMapID() == 462 
                      or WorldMapFrame:GetMapID() == 468 or WorldMapFrame:GetMapID() == 1527 or WorldMapFrame:GetMapID() == 198 or WorldMapFrame:GetMapID() == 249
          
      ns.EasternKingdomIDs = WorldMapFrame:GetMapID() == 14 or WorldMapFrame:GetMapID() == 15 or WorldMapFrame:GetMapID() == 16 or WorldMapFrame:GetMapID() == 17 or WorldMapFrame:GetMapID() == 18 
                      or WorldMapFrame:GetMapID() == 19 or WorldMapFrame:GetMapID() == 21 or WorldMapFrame:GetMapID() == 22 or WorldMapFrame:GetMapID() == 23 or WorldMapFrame:GetMapID() == 25 or WorldMapFrame:GetMapID() == 26 
                      or WorldMapFrame:GetMapID() == 27 or WorldMapFrame:GetMapID() == 28 or WorldMapFrame:GetMapID() == 30 or WorldMapFrame:GetMapID() == 32 or WorldMapFrame:GetMapID() == 33 or WorldMapFrame:GetMapID() == 34 
                      or WorldMapFrame:GetMapID() == 35 or WorldMapFrame:GetMapID() == 36 or WorldMapFrame:GetMapID() == 37 or WorldMapFrame:GetMapID() == 42 or WorldMapFrame:GetMapID() == 47 or WorldMapFrame:GetMapID() == 48 
                      or WorldMapFrame:GetMapID() == 49 or WorldMapFrame:GetMapID() == 50 or WorldMapFrame:GetMapID() == 51 or WorldMapFrame:GetMapID() == 52 or WorldMapFrame:GetMapID() == 55 or WorldMapFrame:GetMapID() == 56 
                      or WorldMapFrame:GetMapID() == 94 or WorldMapFrame:GetMapID() == 210 or WorldMapFrame:GetMapID() == 224 or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 425 or WorldMapFrame:GetMapID() == 427 
                      or WorldMapFrame:GetMapID() == 465 or WorldMapFrame:GetMapID() == 467 or WorldMapFrame:GetMapID() == 469 or WorldMapFrame:GetMapID() == 499 or WorldMapFrame:GetMapID() == 500 or WorldMapFrame:GetMapID() == 2070 
                      or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 203 or WorldMapFrame:GetMapID() == 204 or WorldMapFrame:GetMapID() == 205 or WorldMapFrame:GetMapID() == 241 or WorldMapFrame:GetMapID() == 244 
                      or WorldMapFrame:GetMapID() == 245 or WorldMapFrame:GetMapID() == 201 or WorldMapFrame:GetMapID() == 95 or WorldMapFrame:GetMapID() == 122 or WorldMapFrame:GetMapID() == 217 or WorldMapFrame:GetMapID() == 226
          
      ns.OutlandIDs = WorldMapFrame:GetMapID() == 100 or WorldMapFrame:GetMapID() == 102 or WorldMapFrame:GetMapID() == 104 or WorldMapFrame:GetMapID() == 105 or WorldMapFrame:GetMapID() == 107 or WorldMapFrame:GetMapID() == 108
                      or WorldMapFrame:GetMapID() == 109
          
      ns.NorthrendIDs = WorldMapFrame:GetMapID() == 114 or WorldMapFrame:GetMapID() == 115 or WorldMapFrame:GetMapID() == 116 or WorldMapFrame:GetMapID() == 117 or WorldMapFrame:GetMapID() == 118 or WorldMapFrame:GetMapID() == 119
                      or WorldMapFrame:GetMapID() == 120 or WorldMapFrame:GetMapID() == 121 or WorldMapFrame:GetMapID() == 123 or WorldMapFrame:GetMapID() == 127 or WorldMapFrame:GetMapID() == 170
          
      ns.PandariaIDs = WorldMapFrame:GetMapID() == 371 or WorldMapFrame:GetMapID() == 376 or WorldMapFrame:GetMapID() == 379 or WorldMapFrame:GetMapID() == 388 or WorldMapFrame:GetMapID() == 390 or WorldMapFrame:GetMapID() == 418
                      or WorldMapFrame:GetMapID() == 422 or WorldMapFrame:GetMapID() == 433 or WorldMapFrame:GetMapID() == 434 or WorldMapFrame:GetMapID() == 504 or WorldMapFrame:GetMapID() == 554 or WorldMapFrame:GetMapID() == 1530
                      or WorldMapFrame:GetMapID() == 507
          
      ns.DraenorIDs = WorldMapFrame:GetMapID() == 525 or WorldMapFrame:GetMapID() == 534 or WorldMapFrame:GetMapID() == 535 or WorldMapFrame:GetMapID() == 539 or WorldMapFrame:GetMapID() == 542 or WorldMapFrame:GetMapID() == 543
                      or WorldMapFrame:GetMapID() == 550 or WorldMapFrame:GetMapID() == 588
          
      ns.BrokenIslesIDs = WorldMapFrame:GetMapID() == 630 or WorldMapFrame:GetMapID() == 634 or WorldMapFrame:GetMapID() == 641 or WorldMapFrame:GetMapID() == 646 or WorldMapFrame:GetMapID() == 650 or WorldMapFrame:GetMapID() == 652
                      or WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 680 or WorldMapFrame:GetMapID() == 830 or WorldMapFrame:GetMapID() == 882 or WorldMapFrame:GetMapID() == 885 or WorldMapFrame:GetMapID() == 905
                      or WorldMapFrame:GetMapID() == 941 or WorldMapFrame:GetMapID() == 790 or WorldMapFrame:GetMapID() == 971
          
      ns.ZandalarIDs = WorldMapFrame:GetMapID() == 862 or WorldMapFrame:GetMapID() == 863 or WorldMapFrame:GetMapID() == 864 or WorldMapFrame:GetMapID() == 1355 or WorldMapFrame:GetMapID() == 1528
          
      ns.KulTirasIDs = WorldMapFrame:GetMapID() == 895 or WorldMapFrame:GetMapID() == 896 or WorldMapFrame:GetMapID() == 942 or WorldMapFrame:GetMapID() == 1462 or WorldMapFrame:GetMapID() == 1169
          
      ns.ShadowlandIDs = WorldMapFrame:GetMapID() == 1525 or WorldMapFrame:GetMapID() == 1533 or WorldMapFrame:GetMapID() == 1536 or WorldMapFrame:GetMapID() == 1543 or WorldMapFrame:GetMapID() == 1565 or WorldMapFrame:GetMapID() == 1961
                      or WorldMapFrame:GetMapID() == 1970 or WorldMapFrame:GetMapID() == 2016
          
      ns.DragonIsleIDs = WorldMapFrame:GetMapID() == 2022 or WorldMapFrame:GetMapID() == 2023 or WorldMapFrame:GetMapID() == 2024 or WorldMapFrame:GetMapID() == 2025 or WorldMapFrame:GetMapID() == 2026 or WorldMapFrame:GetMapID() == 2133
                      or WorldMapFrame:GetMapID() == 2151 or WorldMapFrame:GetMapID() == 2200 or WorldMapFrame:GetMapID() == 2239
          
      ns.KhazAlgar = WorldMapFrame:GetMapID() == 2248 or WorldMapFrame:GetMapID() == 2214 or WorldMapFrame:GetMapID() == 2215 or WorldMapFrame:GetMapID() == 2255 or  WorldMapFrame:GetMapID() == 2256 or WorldMapFrame:GetMapID() == 2213 
                      or WorldMapFrame:GetMapID() == 2216 or WorldMapFrame:GetMapID() == 2369 or WorldMapFrame:GetMapID() == 2346

      ns.ZoneIDs = WorldMapFrame:GetMapID() == 750 or WorldMapFrame:GetMapID() == 652 or WorldMapFrame:GetMapID() == 2266 or WorldMapFrame:GetMapID() == 2322

			if value.name == nil then value.name = value.id or value.mnID end

			local instances = { strsplit("\n", value.name) }
			for i, v in pairs(instances) do
				if (not extraInformations[v] and not extraInformations[lfgIDs[v]]) then
					allLocked = false
				else
					anyLocked = true
				end
			end

      -- new assigned function single
      if anyLocked and db.graySingleID and allLocked then
        icon = ns.icons["Gray"]
      end

      -- new assigned function multi
      if (anyLocked and db.grayMultipleID) then
        icon = ns.icons["Gray"]
      end

      if (value.type == "LFR") then
        icon = ns.icons["LFR"]
      end

      if (value.type == "HIcon") then
        icon = ns.icons["HIcon"]
      end

      if (value.type == "AIcon") then
        icon = ns.icons["AIcon"]
      end

      if (anyLocked and db.invertlockout) or (allLocked and not db.invertlockout) then
				alpha = db.mapnoteAlpha
      else
				alpha = db.mapnoteAlpha
			end

      -- MiniMap Instance World
      if ns.instanceIcons and (value.showOnMinimap == true) then
        scale = db.MiniMapInstanceScale
        alpha = db.MiniMapInstanceAlpha
      end

      -- MiniMap Transport (Zeppeline/Ship/Carriage) icons
      if not ns.CapitalMiniMapIDs and ns.transportIcons and (value.showOnMinimap == true) then
        scale = db.MiniMapTransportScale
        alpha = db.MiniMapTransportAlpha
      end

      -- Profession Minimap icons in Zone
      if not ns.CapitalMiniMapIDs and ns.professionIcons and (value.showOnMinimap == true) then
        scale = db.MiniMapProfessionsScale
        alpha = db.MiniMapProfessionsAlpha
      end

      -- MiniMap General icons
      if not ns.CapitalMiniMapIDs and ns.generalIcons and (value.showOnMinimap == true) or ns.ZoneIDs and not value.showInZone then
        scale = db.MiniMapGeneralScale
        alpha = db.MiniMapGeneralAlpha
      end

      -- MiniMap single icon scale / alpha
      if not ns.CapitalMiniMapIDs or ns.ZoneIDs and (value.showOnMinimap == true)  then

        -- Instance Icons
        if value.type == "Raid" then
          scale = db.MiniMapScaleRaids
          alpha = db.MiniMapAlphaRaids
        end

        if value.type == "Dungeon" then
          scale = db.MiniMapScaleDungeons
          alpha = db.MiniMapAlphaDungeons
        end        

        if value.type == "PassageDungeon" or value.type == "PassageRaid" or value.type == "DelvesPassage" then
          scale = db.MiniMapScalePassage
          alpha = db.MiniMapAlphaPassage
        end

        if value.type == "Multiple" or value.type == "MultipleM" or value.type == "MultipleR" or value.type == "MultipleD" or value.type == "PassageDungeonRaidMulti" then
          scale = db.MiniMapScaleMultiple
          alpha = db.MiniMapAlphaMultiple
        end

        if value.type == "VInstance" or value.type == "MultiVInstance" or value.type == "VKey1" or value.type == "VInstanceD" or value.type == "VInstanceR" or value.type == "MultiVInstanceD" or value.type == "MultiVInstanceR" then
          scale = db.MiniMapScaleOldVanilla
          alpha = db.MiniMapAlphaOldVanilla
        end

        if value.type == "LFR" then
          scale = db.MiniMapScaleLFR
          alpha = db.MiniMapAlphaLFR
        end

        -- Transport Icons
        if value.type == "Portal" or value.type == "PortalS" or value.type == "HPortal" or value.type == "APortal" or value.type == "HPortalS" or value.type == "APortalS" or value.type == "PassageHPortal" 
          or value.type == "PassageAPortal" or value.type == "WayGateGolden" or value.type == "WayGateGreen" or value.type == "DarkMoon" or value.type == "TorghastUp" then
          scale = db.MiniMapScalePortals
          alpha = db.MiniMapAlphaPortals
        end

        if value.type == "DarkMoon" then
          scale = db.MiniMapScaleDarkmoon
          alpha = db.MiniMapAlphaDarkmoon
        end

        if value.type == "Zeppelin" or value.type == "HZeppelin" or value.type == "AZeppelin" then
          scale = db.MiniMapScaleZeppelins
          alpha = db.MiniMapAlphaZeppelins
        end

        if value.type == "Ship" or value.type == "AShip" or value.type == "HShip" then
          scale = db.MiniMapScaleShips
          alpha = db.MiniMapAlphaShips
        end

        if value.type == "Carriage" or value.type == "TravelM" or value.type == "TravelA" or value.type == "MoleMachine" or value.type == "RocketDrill" then
          scale = db.MiniMapScaleTransport
          alpha = db.MiniMapAlphaTransport
        end

        if value.type == "OgreWaygate" then
          scale = db.MiniMapScaleOgreWaygate
          alpha = db.MiniMapAlphaOgreWaygate
        end

        if value.type == "Tport2" then
          scale = db.MiniMapScaleTeleporter
          alpha = db.MiniMapAlphaTeleporter
        end

        if value.type == "Mirror" then
          scale = db.MiniMapScaleMirror
          alpha = db.MiniMapAlphaMirror
        end

        if value.type == "B11M"  or value.type == "MOrcF" or value.type == "UndeadF" or value.type == "GoblinF" or value.type == "GilneanF" or value.type == "KulM" or value.type == "DwarfF" or value.type == "OrcM" then
          scale = db.MiniMapScaleTravel
          alpha = db.MiniMapAlphaTravel
        end

        -- General icons

        -- General Icons
        if value.type == "MNL" then
          scale = db.MiniMapScaleMapNotesIcons
          alpha = db.MiniMapAlphaMapNotesIcons
        end

        if value.type == "HIcon" or value.type == "AIcon" then
          scale = db.MiniMapScaleHordeAllyIcons
          alpha = db.MiniMapAlphaHordeAllyIcons
        end

        if value.type == "Innkeeper" or value.type == "InnkeeperN" or value.type == "InnkeeperH" or value.type == "InnkeeperA" or value.type == "MMInnkeeperH" or value.type == "MMInnkeeperA" then
          scale = db.MiniMapScaleInnkeeper
          alpha = db.MiniMapAlphaInnkeeper
        end

        if value.type == "Auctioneer" or value.type == "BlackMarket" then
          scale = db.MiniMapScaleAuctioneer
          alpha = db.MiniMapAlphaAuctioneer
        end

        if value.type == "Bank" then
          scale = db.MiniMapScaleBank
          alpha = db.MiniMapAlphaBank
        end

        if value.type == "Barber" then
          scale = db.MiniMapScaleBarber
          alpha = db.MiniMapAlphaBarber
        end

        if value.type == "Mailbox" or value.type == "MailboxN" or value.type == "MailboxH" or value.type == "MailboxA" or value.type == "MMMailboxH" or value.type == "MMMailboxA" then
          scale = db.MiniMapScaleMailbox
          alpha = db.MiniMapAlphaMailbox
        end

        if value.type == "PvPVendor" or value.type == "PvPVendorH" or value.type == "PvPVendorA" or value.type == "ZonePvPVendorH" or value.type == "ZonePvPVendorA" then
          scale = db.MiniMapScalePvPVendor
          alpha = db.MiniMapAlphaPvPVendor
        end

        if value.type == "PvEVendor" or value.type == "PvEVendorH" or value.type == "PvEVendorA" or value.type == "ZonePvEVendorH" or value.type == "ZonePvEVendorA" then
          scale = db.MiniMapScalePvEVendor
          alpha = db.MiniMapAlphaPvEVendor
        end

        if value.type == "StablemasterN" or value.type == "StablemasterH" or value.type == "StablemasterA" or value.type == "MMStablemasterH" or value.type == "MMStablemasterA" then
          scale = db.MiniMapScaleStablemaster
          alpha = db.MiniMapAlphaStablemaster
        end

        if value.type == "Catalyst" then
          scale = db.MiniMapScaleCatalyst
          alpha = db.MiniMapAlphaCatalyst
        end

        if value.type == "Zidormi" then
          scale = db.MiniMapScaleZidormi
          alpha = db.MiniMapAlphaZidormi
        end

        if value.type == "Transmogger" then
          scale = db.MiniMapScaleTransmogger
          alpha = db.MiniMapAlphaTransmogger
        end

        if value.type == "ItemUpgrade" then
          scale = db.MiniMapScaleItemUpgrade
          alpha = db.MiniMapAlphaItemUpgrade
        end

        if ns.pathIcons or ns.ZoneIDs and not value.showInZone and not WorldMapFrame:GetMapID() == 2322 then
          scale = db.MiniMapScalePaths
          alpha = db.MiniMapAlphaPaths
        end

      end

      -- inside Dungeon
      if (mapInfo.mapType == 4 or mapInfo.mapType == 6) and not ns.CapitalIDs and not ns.ZoneIDs then
          scale = db.dungeonScale
          alpha = db.dungeonAlpha
      end

      -- Dungeon Single scale / alpha
      if (mapInfo.mapType == 4 or mapInfo.mapType == 6) and not ns.CapitalIDs and not ns.ZoneIDs then

        if value.type == "Exit" then
          scale = db.DungeonMapScaleExit
          alpha = db.DungeonMapAlphaExit
        end

        if value.type == "Portal" or value.type == "PortalS" or value.type == "HPortal" or value.type == "APortal" or value.type == "HPortalS" or value.type == "APortalS" or value.type == "PassageHPortal" 
          or value.type == "PassageAPortal" then
          scale = db.DungeonMapScalePortal
          alpha = db.DungeonMapAlphaPortal
        end

        if value.type == "PassageUpL" or value.type == "PassageDownL" or value.type == "PassageRightL" or value.type == "PassageLeftL" then
          scale = db.DungeonMapScalePassage
          alpha = db.DungeonMapAlphaPassage
        end

        if value.type == "Tport2" or value.type == "TravelM" or value.type == "TravelL" or value.type == "TravelH" or value.type == "TravelA" then
          scale = db.DungeonMapScaleTransport
          alpha = db.DungeonMapAlphaTransport
        end

        if value.type == "PvEVendor" or value.type == "PvPVendor" then
          scale = db.DungeonMapScaleVendor
          alpha = db.DungeonMapAlphaVendor
        end

      end


      -- Profession Minimap icons in Capitals
      if ns.professionIcons and ns.CapitalMiniMapIDs and (value.showOnMinimap == true) then
        scale = db.MinimapCapitalsProfessionsScale
        alpha = db.MinimapCapitalsProfessionsAlpha
      end

      -- Capitals Minimap Transport (Zeppeline/Ship/Carriage) icons
      if ns.CapitalMiniMapIDs and ns.transportIcons and (value.showOnMinimap == true) then
        scale = db.MinimapCapitalsTransportScale
        alpha = db.MinimapCapitalsTransportAlpha
      end

      -- Capitals Minimap Instance (Dungeon/Raid/Passage/Multi) icons
      if ns.CapitalMiniMapIDs and ns.instanceIcons and (value.showOnMinimap == true) then
        scale = db.MinimapCapitalsInstanceScale
        alpha = db.MinimapCapitalsInstanceAlpha
      end

      -- Capitals Minimap General (Innkeeper/Exit/Passage) icons
      if ns.CapitalMiniMapIDs and ns.generalIcons and (value.showOnMinimap == true) then
        scale = db.MinimapCapitalsGeneralScale
        alpha = db.MinimapCapitalsGeneralAlpha
      end

      -- Instance icons World
      if ns.instanceIcons and (not value.showOnMinimap == true) then
        scale = db.ZoneInstanceScale
        alpha = db.ZoneInstanceAlpha
      end

      -- Zone Transport icons
      if not ns.CapitalIDs and ns.transportIcons and (value.showOnMinimap == false) then
        scale = db.ZoneTransportScale
        alpha = db.ZoneTransportAlpha
      end

      -- Zone Profession icons 
      if not ns.CapitalIDs and ns.professionIcons and (value.showOnMinimap == false) then
        scale = db.ZoneProfessionsScale
        alpha = db.ZoneProfessionsAlpha
      end

      -- Zones General icons
      if not ns.CapitalIDs and ns.generalIcons and (value.showOnMinimap == false) then
        scale = db.ZoneGeneralScale
        alpha = db.ZoneGeneralAlpha
      end

      -- Zone single icon scale / alpha
      if not ns.CapitalIDs and (value.showOnMinimap == false) then

        -- Instance Icons
        if value.type == "Raid" then
          scale = db.ZoneScaleRaids
          alpha = db.ZoneAlphaRaids
        end

        if value.type == "Dungeon" then
          scale = db.ZoneScaleDungeons
          alpha = db.ZoneAlphaDungeons
        end        

        if value.type == "PassageDungeon" or value.type == "PassageRaid" then
          scale = db.ZoneScalePassage
          alpha = db.ZoneAlphaPassage
        end

        if value.type == "Multiple" or value.type == "MultipleM" or value.type == "MultipleR" or value.type == "MultipleD" or value.type == "PassageDungeonRaidMulti" then
          scale = db.ZoneScaleMultiple
          alpha = db.ZoneAlphaMultiple
        end

        if value.type == "VInstance" or value.type == "MultiVInstance" or value.type == "VKey1" or value.type == "VInstanceD" or value.type == "VInstanceR" or value.type == "MultiVInstanceD" or value.type == "MultiVInstanceR" then
          scale = db.ZoneScaleOldVanilla
          alpha = db.ZoneAlphaOldVanilla
        end

        if value.type == "LFR" then
          scale = db.ZoneScaleLFR
          alpha = db.ZoneAlphaLFR
        end

        -- Transport Icons
        if value.type == "Portal" or value.type == "PortalS" or value.type == "HPortal" or value.type == "APortal" or value.type == "HPortalS" or value.type == "APortalS" or value.type == "PassageHPortal" 
          or value.type == "PassageAPortal" or value.type == "WayGateGolden" or value.type == "WayGateGreen" or value.type == "TorghastUp" then
          scale = db.ZoneScalePortals
          alpha = db.ZoneAlphaPortals
        end

        if value.type == "DarkMoon" then
          scale = db.ZoneScaleDarkmoon
          alpha = db.ZoneAlphaDarkmoon
        end

        if value.type == "Zeppelin" or value.type == "HZeppelin" or value.type == "AZeppelin" then
          scale = db.ZoneScaleZeppelins
          alpha = db.ZoneAlphaZeppelins
        end

        if value.type == "Ship" or value.type == "AShip" or value.type == "HShip" then
          scale = db.ZoneScaleShips
          alpha = db.ZoneAlphaShips
        end

        if value.type == "Carriage" or value.type == "TravelM" or value.type == "TravelA" or value.type == "MoleMachine" or value.type == "RocketDrill" then
          scale = db.ZoneScaleTransport
          alpha = db.ZoneAlphaTransport
        end

        if value.type == "OgreWaygate" then
          scale = db.ZoneScaleOgreWaygate
          alpha = db.ZoneAlphaOgreWaygate
        end

        if value.type == "Tport2" then
          scale = db.ZoneScaleTeleporter
          alpha = db.ZoneAlphaTeleporter
        end

        if value.type == "Mirror" then
          scale = db.ZoneScaleMirror
          alpha = db.ZoneAlphaMirror
        end

        if value.type == "B11M"  or value.type == "MOrcF" or value.type == "UndeadF" or value.type == "GoblinF" or value.type == "GilneanF" or value.type == "KulM" or value.type == "DwarfF" or value.type == "OrcM" then
          scale = db.ZoneScaleTravel
          alpha = db.ZoneAlphaTravel
        end

        -- General Icons
        if value.type == "MNL" then
          scale = db.ZoneScaleMapNotesIcons
          alpha = db.ZoneAlphaMapNotesIcons
        end

        if value.type == "HIcon" or value.type == "AIcon" then
          scale = db.ZoneScaleHordeAllyIcons
          alpha = db.ZoneAlphaHordeAllyIcons
        end

        if value.type == "Innkeeper" or value.type == "InnkeeperN" or value.type == "InnkeeperH" or value.type == "InnkeeperA" then
          scale = db.ZoneScaleInnkeeper
          alpha = db.ZoneAlphaInnkeeper
        end

        if value.type == "Auctioneer" or value.type == "BlackMarket" then
          scale = db.ZoneScaleAuctioneer
          alpha = db.ZoneAlphaAuctioneer
        end

        if value.type == "Bank" then
          scale = db.ZoneScaleBank
          alpha = db.ZoneAlphaBank
        end

        if value.type == "Barber" then
          scale = db.ZoneScaleBarber
          alpha = db.ZoneAlphaBarber
        end

        if value.type == "Mailbox" or value.type == "MailboxN" or value.type == "MailboxH" or value.type == "MailboxA" then
          scale = db.ZoneScaleMailbox
          alpha = db.ZoneAlphaMailbox
        end

        if value.type == "PvPVendor" or value.type == "PvPVendorH" or value.type == "PvPVendorA" or value.type == "ZonePvPVendorH" or value.type == "ZonePvPVendorA" then
          scale = db.ZoneScalePvPVendor
          alpha = db.ZoneAlphaPvPVendor
        end

        if value.type == "PvEVendor" or value.type == "PvEVendorH" or value.type == "PvEVendorA" or value.type == "ZonePvEVendorH" or value.type == "ZonePvEVendorA" then
          scale = db.ZoneScalePvEVendor
          alpha = db.ZoneAlphaPvEVendor
        end

        if value.type == "StablemasterN" or value.type == "StablemasterH" or value.type == "StablemasterA" then
          scale = db.ZoneScaleStablemaster
          alpha = db.ZoneAlphaStablemaster
        end

        if value.type == "Catalyst" then
          scale = db.ZoneScaleCatalyst
          alpha = db.ZoneAlphaCatalyst
        end

        if value.type == "Zidormi" then
          scale = db.ZoneScaleZidormi
          alpha = db.ZoneAlphaZidormi
        end

        if value.type == "Transmogger" then
          scale = db.ZoneScaleTransmogger
          alpha = db.ZoneAlphaTransmogger
        end

        if value.type == "ItemUpgrade" then
          scale = db.ZoneScaleItemUpgrade
          alpha = db.ZoneAlphaItemUpgrade
        end

        if ns.pathIcons then
          scale = db.ZoneScalePaths
          alpha = db.ZoneAlphaPaths
        end
        
      end

      -- Capitals Profession icons 
      if ns.CapitalIDs and ns.professionIcons and (value.showOnMinimap == false) then
        scale = db.CapitalsProfessionsScale
        alpha = db.CapitalsProfessionsAlpha
      end

      -- Capitals General (Innkeeper/Exit/Passage) icons
      if ns.CapitalIDs and ns.generalIcons and (value.showOnMinimap == false) then
        scale = db.CapitalsGeneralScale
        alpha = db.CapitalsGeneralAlpha
      end

      -- Capitals Transport (Zeppeline/Ship/Carriage) icons
      if ns.CapitalIDs and ns.transportIcons and (value.showOnMinimap == false) then
        scale = db.CapitalsTransportScale
        alpha = db.CapitalsTransportAlpha
      end

      -- Capitals Instance (Dungeon/Raid/Passage/Multi) icons
      if ns.CapitalIDs and ns.instanceIcons and (value.showOnMinimap == false) then
        scale = db.CapitalsInstanceScale
        alpha = db.CapitalsInstanceAlpha
      end
      
      if t.uiMapId == 947 then-- Azeroth World Map
        scale = db.azerothScale
        alpha = db.azerothAlpha
      end

      if t.uiMapId == 946 then-- Cosmos World Map
        scale = db.cosmosScale
        alpha = db.cosmosAlpha
      end

      -- mapType == X
      -- X = 0 =	Cosmic 	
      -- X = 1 =	World 	
      -- X = 2 =	Continent 	
      -- X = 3 =	Zone 	
      -- X = 4 =	Dungeon 	
      -- X = 5 =	Micro 	
      -- X = 6 =	Orphan 	

      if t.uiMapId == 948 -- Mahlstrom Continent 
        or (mapInfo.mapType == 0 and (ns.dbChar.AzerothDeletedIcons[t.uiMapId] and not ns.dbChar.AzerothDeletedIcons[t.uiMapId][state])) -- Cosmos
        or (mapInfo.mapType == 1 and (ns.dbChar.AzerothDeletedIcons[t.uiMapId] and not ns.dbChar.AzerothDeletedIcons[t.uiMapId][state])) -- Azeroth
        or (not ns.CapitalIDs and (mapInfo.mapType == 4 or mapInfo.mapType == 6) and (ns.dbChar.DungeonDeletedIcons[t.uiMapId] and not ns.dbChar.DungeonDeletedIcons[t.uiMapId][state])) -- Dungeon
        or (not ns.CapitalIDs and (ns.dbChar.ZoneDeletedIcons[t.uiMapId] and not ns.dbChar.ZoneDeletedIcons[t.uiMapId][state] and value.showInZone) and (mapInfo.mapType == 3 or mapInfo.mapType == 5 )) -- Zone without Capitals
        or (ns.CapitalIDs and (ns.dbChar.CapitalsDeletedIcons[t.uiMapId] and not ns.dbChar.CapitalsDeletedIcons[t.uiMapId][state] and value.showInZone)) -- Capitals
        or (ns.CapitalIDs and ns.dbChar.MinimapCapitalsDeletedIcons[t.minimapId] and not ns.dbChar.MinimapCapitalsDeletedIcons[t.minimapId][state] and value.showOnMinimap) -- Minimap Capitals
        or (not ns.CapitalIDs and (mapInfo.mapType == 3 or mapInfo.mapType == 5) and ns.dbChar.MinimapZoneDeletedIcons[t.minimapId] and not ns.dbChar.MinimapZoneDeletedIcons[t.minimapId][state] and value.showOnMinimap) -- Minimap Zones
      then
        return state, nil, icon, scale, alpha
      end
			state, value = next(data, state)
		end
		wipe(t)
		tablepool[t] = true
	end

	local function iterCont(t, prestate) -- continent settings
		if not t then return end

    local state, value
  	local continent = t.C[t.Z]
    local data = nodes[continent]


		while continent do

			if data then -- Only if there is data for this continent
				state, value = next(data, prestate)

				while state do -- Have we reached the end of this continent?
          local alpha
          local icon = ns.icons[value.type]
          local mapInfo = C_Map.GetMapInfo(WorldMapFrame:GetMapID())

					local allLocked = true
					local anyLocked = false
          
					local instances = { strsplit("\n", value.name) }
					for i, v in pairs(instances) do
						if (not extraInformations[v] and not extraInformations[lfgIDs[v]]) then
							allLocked = false
						else
							anyLocked = true
						end
					end

          -- new assigned function single
          if anyLocked and db.graySingleID and allLocked then
            icon = ns.icons["Gray"]
          end

          -- new assigned function multi
          if (anyLocked and db.grayMultipleID) then
            icon = ns.icons["Gray"]
          end

          if (value.type == "LFR") then
            icon = ns.icons["LFR"]
          end
    
          if (value.type == "HIcon") then
            icon = ns.icons["HIcon"]
          end
    
          if (value.type == "AIcon") then
            icon = ns.icons["AIcon"]
          end

          if (anyLocked and db.invertlockout) or (allLocked and not db.invertlockout) then
						alpha = db.continentAlpha
          else
            alpha = db.continentAlpha
          end
              
          if (mapInfo.mapType == 2 and (ns.dbChar.ContinentDeletedIcons[t.contId] and not ns.dbChar.ContinentDeletedIcons[t.contId][state]) and value.showOnContinent) then -- Continent
            return state, continent, icon, db.continentScale, alpha
          end

					state, value = next(data, state)  -- Get next data
				end
			end
      -- Get next continent
			t.Z = next(t.C, t.Z)
			continent = t.C[t.Z]
			data = nodes[continent]
			prestate = nil
		end
		wipe(t)
		tablepool[t] = true
	end

function pluginHandler:GetNodes2(uiMapId, isMinimapUpdate)
  --print(uiMapId)
      local C = deepCopy(HandyNotes:GetContinentZoneList(uiMapId)) -- Is this a continent?
      if C then
          table.insert(C, uiMapId)
          local tbl = next(tablepool) or {}
          tablepool[tbl] = nil
          tbl.C = C
          tbl.Z = next(C)
          tbl.contId = uiMapId
          return iterCont, tbl, nil
      else
          if (nodes[uiMapId] == nil) then return iter end 
          local tbl = next(tablepool) or {}
          tablepool[tbl] = nil
          tbl.minimapUpdate = isMinimapUpdate
          tbl.uiMapId = uiMapId
          tbl.minimapId = uiMapId
          if (isMinimapUpdate and minimap[uiMapId]) then
              tbl.data = minimap[uiMapId]
          else
              tbl.data = nodes[uiMapId]
          end
          return iter, tbl, nil
      end
  end
end

local waypoints = {}
local function setWaypoint(uiMapID, coord)
    local dungeon = nodes[uiMapID][coord]

    local waypoint = nodes[dungeon]
    if waypoint and TomTom:IsValidWaypoint(waypoint) then
        return
    end
    
    local title = dungeon.name
    local x, y = HandyNotes:getXY(coord)
    waypoints[dungeon] = TomTom:AddWaypoint(uiMapID , x, y, {
        title = dungeon.dnID or dungeon.TransportName or dungeon.name,
        persistent = nil,
        minimap = true,
        world = true
    })
end

function pluginHandler:OnClick(button, pressed, uiMapId, coord, value)

local delveID = nodes[uiMapId][coord].delveID
local leaveDelve = nodes[uiMapId][coord].leaveDelve
local mnID = nodes[uiMapId][coord].mnID
local mnID2 = nodes[uiMapId][coord].mnID2
local mnID3 = nodes[uiMapId][coord].mnID3
local wwwLink = nodes[uiMapId][coord].wwwLink
ns.achievementID = nodes[uiMapId][coord].achievementID
ns.questID = nodes[uiMapId][coord].questID

local mapInfo = C_Map.GetMapInfo(uiMapId)
local CapitalIDs = WorldMapFrame:GetMapID() == 84 or WorldMapFrame:GetMapID() == 87  or WorldMapFrame:GetMapID() == 89 or WorldMapFrame:GetMapID() == 103 or WorldMapFrame:GetMapID() == 85
                or WorldMapFrame:GetMapID() == 90 or WorldMapFrame:GetMapID() == 86 or WorldMapFrame:GetMapID() == 88 or WorldMapFrame:GetMapID() == 110  or WorldMapFrame:GetMapID() == 111
                or WorldMapFrame:GetMapID() == 125  or WorldMapFrame:GetMapID() == 126  or WorldMapFrame:GetMapID() == 391  or WorldMapFrame:GetMapID() == 392  or WorldMapFrame:GetMapID() == 393
                or WorldMapFrame:GetMapID() == 394  or WorldMapFrame:GetMapID() == 407  or WorldMapFrame:GetMapID() == 582  or WorldMapFrame:GetMapID() == 590  or WorldMapFrame:GetMapID() == 622
                or WorldMapFrame:GetMapID() == 624  or WorldMapFrame:GetMapID() == 626  or WorldMapFrame:GetMapID() == 627  or WorldMapFrame:GetMapID() == 628  or WorldMapFrame:GetMapID() == 629
                or WorldMapFrame:GetMapID() == 1161 or WorldMapFrame:GetMapID() == 1163 or WorldMapFrame:GetMapID() == 1164 or WorldMapFrame:GetMapID() == 1165 or WorldMapFrame:GetMapID() == 1670
                or WorldMapFrame:GetMapID() == 1671 or WorldMapFrame:GetMapID() == 1672 or WorldMapFrame:GetMapID() == 1673 or WorldMapFrame:GetMapID() == 2112 or WorldMapFrame:GetMapID() == 2339
                or WorldMapFrame:GetMapID() == 503 or WorldMapFrame:GetMapID() == 2266

  StaticPopupDialogs["Delete_Icon?"] = {
    text = TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. ": " .. L["Delete this icon"] .. " ? " .. TextIconMNL4:GetIconString(),
    button1 = YES,
    button2 = NO,
    showAlert = true,
    exclusive  = true,
    OnAccept = function()
      if CapitalIDs then
        ns.dbChar.CapitalsDeletedIcons[uiMapId][coord] = true
        ns.dbChar.MinimapCapitalsDeletedIcons[uiMapId][coord] = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Capitals"] .. " & " .. L["Capitals"] .. " - " .. MINIMAP_LABEL .. " - " .. "|cff00ff00" .. L["A icon has been deleted"])
      end
    
      if mapInfo.mapType == 1 then -- Azeroth
        ns.dbChar.AzerothDeletedIcons[uiMapId][coord] = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", AZEROTH .. " - " .. "|cff00ff00" .. L["A icon has been deleted"])
      end
    
      if mapInfo.mapType == 2 then -- Continent
        ns.dbChar.ContinentDeletedIcons[uiMapId][coord] = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Continents"] .. " - " .. "|cff00ff00" .. L["A icon has been deleted"])
      end
    
      if not CapitalIDs and mapInfo.mapType == 3 then -- Zone
        ns.dbChar.ZoneDeletedIcons[uiMapId][coord] = true
        ns.dbChar.MinimapZoneDeletedIcons[uiMapId][coord] = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", L["Zones"] .. " & " .. MINIMAP_LABEL .. " - " .. "|cff00ff00" .. L["A icon has been deleted"])
      end
    
      if not CapitalIDs and (mapInfo.mapType == 4 or mapInfo.mapType == 6) then -- Dungeon
        ns.dbChar.DungeonDeletedIcons[uiMapId][coord] = true
        print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00", DUNGEONS .. " - " .. "|cff00ff00" .. L["A icon has been deleted"])
      end
      HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
    end,
    OnCancel = function()
      print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. "|cffffff00 ".. CALENDAR_DELETE_EVENT .. " " .. "|cffff0000" .. L["canceled"])
    end,
    timeout = 5,
    whileDead = true,
    hideOnEscape = true,
  }

  if (not pressed) then return end

  if (button == "RightButton" and db.tomtom and TomTom and IsShiftKeyDown()) then
      setWaypoint(uiMapId, coord)
      return
  end

  if (button == "RightButton") and IsAltKeyDown() then
    if ns.Addon.db.profile.DeleteIcons then
      StaticPopup_Show("Delete_Icon?")
    end
  end

  if (button == "LeftButton" and mnID and mnID2 or mnID3 and not IsShiftKeyDown() and not IsAltKeyDown()) then
    WorldMapFrame:SetMapID(mnID)
  end

  if (button == "RightButton" and mnID2 and not IsShiftKeyDown() and not IsAltKeyDown()) then
    WorldMapFrame:SetMapID(mnID2)
  end

  if (button == "MiddleButton" and mnID3 and not IsShiftKeyDown() and not IsAltKeyDown()) then
      WorldMapFrame:SetMapID(mnID3)
  end

  if not ns.Addon.db.profile.activate.ShiftWorld then

    if (not pressed) then return end

    if (button == "MiddleButton") and leaveDelve and ns.icons["Delves"] then
      StaticPopup_Show("Leave_Delve?")
    end

    if (button == "MiddleButton") then
      if wwwLink and not (ns.achievementID or ns.questID) then
        print(wwwLink)
      elseif ns.questID then
        --SendChatMessage("www.wowhead.com/quest=" .. questID, "WHISPER", "Common", GetUnitName("PLAYER"));
        print("|cffff0000Map|r|cff00ccffNotes|r", "|cffffff00" .. LOOT_JOURNAL_LEGENDARIES_SOURCE_QUEST, COMMUNITIES_INVITE_MANAGER_COLUMN_TITLE_LINK .. ":" .. "|r", "https://www.wowhead.com/quest=" .. ns.questID)
      elseif ns.achievementID then
        print("|cffff0000Map|r|cff00ccffNotes|r", "|cffffff00" .. LOOT_JOURNAL_LEGENDARIES_SOURCE_ACHIEVEMENT, COMMUNITIES_INVITE_MANAGER_COLUMN_TITLE_LINK .. ":" .. "|r", "https://www.wowhead.com/achievement=" .. ns.achievementID)
        --SendChatMessage("MapNotes: https://www.wowhead.com/achievement=" .. achievementID, "WHISPER", "Common", GetUnitName("PLAYER"));
      end
    end

    if (button == "LeftButton" and not IsAltKeyDown()) then

      if mnID then
        WorldMapFrame:SetMapID(mnID)
        return
      end

      if delveID then
        WorldMapFrame:SetMapID(delveID)
        return
      end
    end

    if (button == "LeftButton" and db.journal and not IsAltKeyDown()) then

      if nodes[uiMapId][coord].mnID and nodes[uiMapId][coord].id then
        mnID = nodes[uiMapId][coord].mnID[1] --change id function to mnID function
      else
        mnID = nodes[uiMapId][coord].mnID --single coords function
      end

      if nodes[uiMapId][coord].delveIDs then
        mnID = nodes[uiMapId][coord].delveIDs[1] --change id function to mnID function
      else
        mnID = nodes[uiMapId][coord].delveIDs --single coords function
      end

      local dungeonID
      if (type(nodes[uiMapId][coord].id) == "table") then
        dungeonID = nodes[uiMapId][coord].id[1] --multi coords journal function
      else
        dungeonID = nodes[uiMapId][coord].id --single coords function
      end

      if (not dungeonID) then return end

      local name, _, _, _, _, _, _, link = EJ_GetInstanceInfo(dungeonID)
      if not link then return end
      local difficulty = string.match(link, "journal:.-:.-:(.-)|h") 
      if (not dungeonID or not difficulty) then return end

      if (not EncounterJournal_OpenJournal) then
        UIParentLoadAddOn("Blizzard_EncounterJournal")
      end
      if WorldMapFrame:IsMaximized() then
        WorldMapFrame:Minimize()
      end
      EncounterJournal_OpenJournal(difficulty, dungeonID)
      _G.EncounterJournal:SetScript("OnShow", nil)
    end

  end

  if ns.Addon.db.profile.activate.ShiftWorld then

    if (not pressed) then return end

    if IsShiftKeyDown() and (button == "MiddleButton") and leaveDelve and ns.icons["Delves"] then
      StaticPopup_Show("Leave_Delve?")
    end

    if IsShiftKeyDown() and (button == "MiddleButton") then
      local wwwLink = nodes[uiMapId][coord].wwwLink
      if wwwLink then
        print(wwwLink)
      end
    end

    if IsShiftKeyDown() and (button == "LeftButton" ) then

      if mnID then
        WorldMapFrame:SetMapID(mnID)
        return
      end

      if delveID then
        WorldMapFrame:SetMapID(delveID)
        return
      end
    end

    if IsShiftKeyDown() and (button == "LeftButton" and db.journal) then
      
      if nodes[uiMapId][coord].mnID and nodes[uiMapId][coord].id then
        mnID = nodes[uiMapId][coord].mnID[1] --change id function to mnID function
      else
        mnID = nodes[uiMapId][coord].mnID --single coords function
      end

      local dungeonID
      if (type(nodes[uiMapId][coord].id) == "table") then
        dungeonID = nodes[uiMapId][coord].id[1] --multi coords journal function
      else
        dungeonID = nodes[uiMapId][coord].id --single coords journal function
      end

      if (not dungeonID) then return end

      local name, _, _, _, _, _, _, link = EJ_GetInstanceInfo(dungeonID)
      if not link then return end
      local difficulty = string.match(link, "journal:.-:.-:(.-)|h") 
      if (not dungeonID or not difficulty) then return end
      if (not EncounterJournal_OpenJournal) then 
        UIParentLoadAddOn("Blizzard_EncounterJournal")
      end
      if WorldMapFrame:IsMaximized() then 
        WorldMapFrame:Minimize() 
      end
      EncounterJournal_OpenJournal(difficulty, dungeonID)
      _G.EncounterJournal:SetScript("OnShow", nil)
    end
  end
end


local Addon = CreateFrame("Frame")
Addon:RegisterEvent("PLAYER_LOGIN")
Addon:SetScript("OnEvent", function(self, event, ...) return self[event](self, ...)end)

local function updateStuff()
  updateextraInformation()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function Addon:ZONE_CHANGED_NEW_AREA()
  local mapID = C_Map.GetBestMapForUnit("player")
  if mapID then
    if ns.Addon.db.profile.ZoneChanged then
      print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Location"] .. ": ", "|cff00ff00" .. "==>  " .. C_Map.GetMapInfo(mapID).name .. "  <==")
    end
  end
end

local subzone = GetSubZoneText()
function Addon:ZONE_CHANGED_INDOORS()
    if ns.Addon.db.profile.ZoneChanged and ns.Addon.db.profile.ZoneChangedDetail and not ns.CapitalMiniMapIDs then
      print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Location"] .. ": ", "|cff00ff00" .. "==>  " .. "|cff00ff00" .. GetZoneText() .. " " .. "|cff00ccff" .. GetSubZoneText().. "|cff00ff00" .. "  <==")
    end
end

function Addon:ZONE_CHANGED()
  local mapID = C_Map.GetBestMapForUnit("player")
  if mapID then
    if ns.Addon.db.profile.ZoneChanged and ns.Addon.db.profile.ZoneChangedDetail and not ns.CapitalMiniMapIDs then
      print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. "|cffffff00" .. " " .. L["Location"] .. ": ", "|cff00ff00" .. "==>  " .. GetZoneText() .. " " .. "|cff00ccff" .. GetSubZoneText() .. "|cff00ff00" .. "  <==")
    end
  end
end

function Addon:OnProfileChanged(event, database, profileKeys)
  db = database.profile
  ns.dbChar = database.profile.deletedIcons
  ns.FogOfWar = database.profile.FogOfWarColor
  HandyNotes:GetModule("FogOfWarButton"):Refresh()
  if ns.Addon.db.profile.CoreChatMassage then
    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Profile has been changed"])
  end
  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function Addon:OnProfileReset(event, database, profileKeys)
	db = database.profile
  ns.dbChar = database.profile.deletedIcons
  ns.FogOfWar = database.profile.FogOfWarColor
  wipe(ns.dbChar.CapitalsDeletedIcons)
  wipe(ns.dbChar.MinimapCapitalsDeletedIcons)
  wipe(ns.dbChar.CapitalsDeletedIcons)
  wipe(ns.dbChar.MinimapCapitalsDeletedIcons)
  wipe(ns.dbChar.AzerothDeletedIcons)
  wipe(ns.dbChar.ContinentDeletedIcons)
  wipe(ns.dbChar.ZoneDeletedIcons)
  wipe(ns.dbChar.MinimapZoneDeletedIcons)
  wipe(ns.dbChar.DungeonDeletedIcons)
  if ns.Addon.db.profile.CoreChatMassage then
    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Profile has been reset to default"])
  end
  HandyNotes:GetModule("FogOfWarButton"):Refresh()
  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function Addon:OnProfileCopied(event, database, profileKeys)
	db = database.profile
  ns.dbChar = database.profile.deletedIcons
  ns.FogOfWar = database.profile.FogOfWarColor
  HandyNotes:GetModule("FogOfWarButton"):Refresh()
  if ns.Addon.db.profile.CoreChatMassage then
    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Profile has been adopted"])
  end
  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function Addon:OnProfileDeleted(event, database, profileKeys)
	db = database.profile
  ns.dbChar = database.profile.deletedIcons
  ns.FogOfWar = database.profile.FogOfWarColor
  HandyNotes:GetModule("FogOfWarButton"):Refresh()
  if ns.Addon.db.profile.CoreChatMassage then
    print(TextIconMNL4:GetIconString() .. " " .. ns.COLORED_ADDON_NAME .. " " .. TextIconMNL4:GetIconString() .. " " .. "|cffffff00" .. L["Profile has been deleted"])
  end
  ns.Addon:FullUpdate()
  HandyNotes:SendMessage("HandyNotes_NotifyUpdate", "MapNotes")
end

function Addon:PLAYER_ENTERING_WORLD()
  if (not self.faction) then
      self.faction = UnitFactionGroup("player")
      self:PopulateTable()
      self:PopulateMinimap()
      self:ProcessTable()
  end
    updateextraInformation()
    updateStuff()
end

function Addon:PLAYER_LOGIN() -- OnInitialize()
  ns.LoadOptions(self)
  ns.BlizzardDelvesAddTT()
  ns.BlizzardDelvesAddFunction()
  ns.Addon = Addon

  -- Register Database Profile
  self.db = LibStub("AceDB-3.0"):New("HandyNotes_MapNotesRetailDB", ns.defaults)
  self.db.RegisterCallback(self, "OnProfileChanged", "OnProfileChanged")
	self.db.RegisterCallback(self, "OnProfileCopied", "OnProfileCopied")
	self.db.RegisterCallback(self, "OnProfileReset", "OnProfileReset")
  self.db.RegisterCallback(self, "OnProfileDeleted", "OnProfileDeleted")

  -- default profile database
  db = self.db.profile
  -- deleted icons database
  ns.dbChar = self.db.profile.deletedIcons
  -- FogOfWar color database
  ns.FogOfWar = self.db.profile.FogOfWarColor

  -- Register options 
  HandyNotes:RegisterPluginDB("MapNotes", pluginHandler, ns.options)
  LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MapNotes", ns.options)

  -- Get the option table for profiles
  ns.options.args.profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)

  -- Check for any lockout changes when we zone
  Addon:RegisterEvent("PLAYER_ENTERING_WORLD")

  -- Check if we changed the Zone
  Addon:RegisterEvent("ZONE_CHANGED_NEW_AREA")
  Addon:RegisterEvent("ZONE_CHANGED")
  Addon:RegisterEvent("ZONE_CHANGED_INDOORS")

  -- Check for Links
  ns.CreateAndCopyLink()

  -- Check for Class
  ns.AutomaticClassDetectionCapital()

  -- Check for Professions
  ns.AutomaticProfessionDetection()

  -- Check if Blizz Instance entrances is true then remove Blizzard Pins
  if ns.Addon.db.profile.activate.RemoveBlizzInstances then
    SetCVar("showDungeonEntrancesOnMap", 0)
  elseif not ns.Addon.db.profile.activate.RemoveBlizzInstances then
    SetCVar("showDungeonEntrancesOnMap", 1)
  end

  -- Check if Blizz Delves entrances is true then remove Blizzard Pins
  if ns.Addon.db.profile.activate.ShowBlizzDelves then
    SetCVar("showDelveEntrancesOnMap", 0)
  elseif not ns.Addon.db.profile.activate.ShowBlizzDelves then
    SetCVar("showDelveEntrancesOnMap", 1)
  end

  if ns.Addon.db.profile.activate.HideMMB then -- minimap button
    MNMMBIcon:Hide("MNMiniMapButton")
  end

  -- Register Worldmapbutton
  ns.WorldMapButton = LibStub("Krowi_WorldMapButtons-1.4"):Add(ADDON_NAME .. "WorldMapOptionsButtonTemplate","BUTTON")
  if ns.Addon.db.profile.activate.HideWMB
    then ns.WorldMapButton:Hide()
    else ns.WorldMapButton:Show()
  end

  function ns.RemoveBlizzPOIs()
    if (ns.Addon.db.profile.activate.HideMapNote) then return end

    for pin in WorldMapFrame:EnumeratePinsByTemplate("AreaPOIPinTemplate") do

      if ns.Addon.db.profile.activate.RemoveBlizzPOIs then

        for _, poiID in pairs(ns.BlizzAreaPoisInfo) do

          ns.poi = C_AreaPoiInfo.GetAreaPOIInfo(WorldMapFrame:GetMapID(), pin.poiInfo.areaPoiID)

          if (ns.poi ~= nil and ns.poi.areaPoiID == poiID) then
              WorldMapFrame:RemovePin(pin)
          end

        end

      end

      if ns.Addon.db.profile.activate.RemoveBlizzPOIsZidormi then

        for _, poiID in pairs(ns.BlizzAreaPoisInfoZidormi) do

          ns.poi = C_AreaPoiInfo.GetAreaPOIInfo(WorldMapFrame:GetMapID(), pin.poiInfo.areaPoiID)

          if (ns.poi ~= nil and ns.poi.areaPoiID == poiID) then
              WorldMapFrame:RemovePin(pin)
          end

        end

      end

    end

  end

  hooksecurefunc(AreaPOIPinMixin, "OnMouseEnter", function()
    if (ns.Addon.db.profile.activate.HideMapNote) then return end

    for pin in WorldMapFrame:EnumeratePinsByTemplate("AreaPOIPinTemplate") do

      if ns.Addon.db.profile.activate.RemoveBlizzPOIs then

        for _, poiID in pairs(ns.BlizzAreaPoisInfo) do

          ns.poi = C_AreaPoiInfo.GetAreaPOIInfo(WorldMapFrame:GetMapID(), pin.poiInfo.areaPoiID)

          if (ns.poi ~= nil and ns.poi.areaPoiID == poiID) then
            ns.RemoveBlizzPOIs()
          end

        end

      end

      if ns.Addon.db.profile.activate.RemoveBlizzPOIsZidormi then

        for _, poiID in pairs(ns.BlizzAreaPoisInfoZidormi) do

          ns.poi = C_AreaPoiInfo.GetAreaPOIInfo(WorldMapFrame:GetMapID(), pin.poiInfo.areaPoiID)

          if (ns.poi ~= nil and ns.poi.areaPoiID == poiID) then
            ns.RemoveBlizzPOIs()
          end

        end

      end

    end
  end)

  hooksecurefunc(WorldMapFrame,"OnMapChanged", function()
   ns.RemoveBlizzPOIs()
  end)

  WorldMapFrame:HookScript("OnShow", function()
    ns.RemoveBlizzPOIs()
  end)

end

function Addon:PopulateMinimap()
  for uiMapId,uiMapIdDetails in pairs(nodes) do
      if (minimap[uiMapId]) then
          for coords,icondetails in pairs(uiMapIdDetails) do 
              if (icondetails.showOnMinimap) then
                  minimap[uiMapId][coords] = icondetails
              end
          end
      end
  end
end

function Addon:PopulateTable()
  ns.nodes = nodes
  ns.minimap = minimap

  table.wipe(nodes)
  table.wipe(minimap)

  ns.SyncWithMinimap(self) -- sync Capitals with Capitals - Minimap and/or Zones with Minimap

  ns.LoadMapNotesNodesInfo() -- load nodes\Retail\RetailMapNotesNodesInfo.lua
  ns.LoadMapNotesMinimapInfo() -- load nodes\Retail\RetailMapNotesMinimapNodesInfo.lua

  ns.LoadMiniMapLocationinfo(self) -- load nodes\Retail\RetailMiniMapNodes.lua
  ns.LoadMiniMapDungeonLocationinfo(self) -- load nodes\Retail\RetailMiniMapDungeonNodes.lua
  
  ns.LoadAzerothNodesLocationInfo(self) -- load nodes\Retail\RetailAzerothNodeslocation.lua
  ns.LoadContinentNodesLocationinfo(self) -- load nodes\Retail\RetailContinentNodesLocation.lua

  ns.LoadZoneMapNodesLocationinfo(self) -- load nodes\Retail\RetailZoneNodesLocation.lua
  ns.LoadZoneDungeonMapNodesLocationinfo(self) -- load OnlyZoneDungeonNodesLocation.lua
   
  ns.LoadGeneralZoneLocationinfo(self) -- load nodes\Retail\RetailGeneralZoneNodes.lua
  ns.LoadGeneralMiniMapLocationinfo(self) -- load nodes\Retail\RetailGeneralMiniMapNodes.lua

  ns.LoadPathsZoneLocationinfo(self) -- load nodes\Retail\RetailPathsZoneNodes.lua
  ns.LoadPathsMiniMapLocationinfo(self) -- load nodes\Retail\RetailPathsMiniMapNodes.lua

  ns.LoadInsideDungeonNodesLocationInfo(self) -- load nodes\Retail\RetailInsideDungeonNodesLocation.lua

  ns.LoadWorldNodesLocationInfo(self) -- load nodes\Retail\RetailWorldNodesLocation.lua

  ns.LoadCapitalsLocationinfo(self) -- load nodes\Retail\RetailCapitals.lua
  ns.LoadMinimapCapitalsLocationinfo(self) -- load nodes\Retail\RetailMinimapCapitals.lua

end

function Addon:UpdateInstanceNames(node)
  local dungeonInfo = EJ_GetInstanceInfo
    local id = node.id
      if (node.lfgid) then
        dungeonInfo = GetLFGDungeonInfo
        id = node.lfgid
      end

      if (type(id) == "table") then
        for i,v in pairs(node.id) do
          local name = dungeonInfo(v)
            self:UpdateAlter(v, name)
            if (node.name) then
              node.name = node.name .. "\n" .. name
            else
                node.name = name
              if ns.Addon.db.profile.TooltipInformations then

                if not ns.Addon.db.profile.activate.ShiftWorld then 

                  if not ns.Addon.db.profile.DeleteIcons and not ns.Addon.db.profile.tomtom then
                    node.name = "|cff00ff00" .. L["< Left Click to show map >"] .. "|r" .."\n" .. name
                  end

                  if ns.Addon.db.profile.DeleteIcons and ns.Addon.db.profile.tomtom then
                    node.name = "|cff00ff00" .. L["< Left Click to show map >"] .. "\n" .."|cffff0000" .. L["< Alt + Right click to delete this icon >"] .. "|r" .. "\n" .. name
                  end

                  if ns.Addon.db.profile.DeleteIcons and not ns.Addon.db.profile.tomtom then
                    node.name = "|cff00ff00" .. L["< Left Click to show map >"] .. "\n" .."|cffff0000" .. L["< Alt + Right click to delete this icon >"] .."|r" .."\n" .. name
                  end

                  if ns.Addon.db.profile.tomtom and not ns.Addon.db.profile.DeleteIcons then
                      node.name = "|cff00ff00" .. L["< Left Click to show map >"] .."\n" .. name
                  end

                elseif ns.Addon.db.profile.activate.ShiftWorld then 

                  if not ns.Addon.db.profile.DeleteIcons and not ns.Addon.db.profile.tomtom then
                    node.name = "|cff00ff00" .. L["< Shift Left Click to show map >"] .. "|r" .."\n" .. name
                  end

                  if ns.Addon.db.profile.DeleteIcons and ns.Addon.db.profile.tomtom then
                    node.name = "|cff00ff00" .. L["< Shift Left Click to show map >"] .. "\n" .."|cffff0000" .. L["< Alt + Right click to delete this icon >"] .. "|r" .. "\n" .. name
                  end

                  if ns.Addon.db.profile.DeleteIcons and not ns.Addon.db.profile.tomtom then
                    node.name = "|cff00ff00" .. L["< Shift Left Click to show map >"] .. "\n" .."|cffff0000" .. L["< Alt + Right click to delete this icon >"] .."|r" .."\n" .. name
                  end

                  if ns.Addon.db.profile.tomtom and not ns.Addon.db.profile.DeleteIcons then
                      node.name = "|cff00ff00" .. L["< Shift Left Click to show map >"] .."\n" .. name
                  end

                end

              end

            end
        end
      elseif (id) then
        node.name = dungeonInfo(id)
        self:UpdateAlter(id, node.name)
      end
end

function Addon:ProcessTable()
  table.wipe(lfgIDs)
  ns.lfgIDs = lfgIDs

  function Addon:UpdateAlter(id, name)
    if (lfgIDs[id]) then
      local lfgIDs1, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, lfgIDs2 = GetLFGDungeonInfo(lfgIDs[id])
        if (lfgIDs2 and lfgIDs1 == name) then
      	  lfgIDs1 = lfgIDs2
        end

      if (lfgIDs1) then
        if (lfgIDs1 == name) then
        else
        lfgIDs[id] = nil
        lfgIDs[name] = lfgIDs1
        end
      end
    end
  end

  for i,v in pairs(nodes) do
    for j,u in pairs(v) do
      self:UpdateInstanceNames(u)
    end
  end

  for i,v in pairs(minimap) do
    for j,u in pairs(v) do
      if (not u.name) then
	      self:UpdateInstanceNames(u)
      end
    end
  end
end

function Addon:FullUpdate()
  self:PopulateTable()
  self:PopulateMinimap()
  self:ProcessTable()
end