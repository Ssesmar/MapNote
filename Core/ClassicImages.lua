local ADDON_NAME, ns = ...

function ns.ChangeToClassicImagesRetail()

    -- Portal Icons
    if ns.Addon.db.profile.activate.ClassicPortals then
        ns.icons["Portal"] = ns.icons["PortalOld"]
        ns.icons["PortalS"] = ns.icons["PortalSOld"]
        ns.icons["APortal"] = ns.icons["APortalOld"]
        ns.icons["HPortal"] = ns.icons["HPortalOld"]
        ns.icons["HPortalS"] = ns.icons["HPortalSOld"]
        ns.icons["APortalS"] = ns.icons["APortalSOld"]
        ns.icons["PassagePortal"] = ns.icons["PassagePortalOld"]
        ns.icons["PassageAPortal"] = ns.icons["PassageAPortalOld"]
        ns.icons["PassageHPortal"] = ns.icons["PassageHPortalOld"]
    else ns.Addon.db.profile.activate.ClassicPortals = false
        ns.icons["Portal"] = ns.icons["PortalNew"]
        ns.icons["PortalS"] = ns.icons["PortalSNew"]
        ns.icons["HPortal"] = ns.icons["HPortalNew"]    
        ns.icons["APortal"] = ns.icons["APortalNew"]
        ns.icons["APortalS"] = ns.icons["APortalSNew"]
        ns.icons["HPortalS"] = ns.icons["HPortalSNew"]
        ns.icons["PassagePortal"] = ns.icons["PassagePortalNew"]
        ns.icons["PassageAPortal"] = ns.icons["PassageAPortalNew"]
        ns.icons["PassageHPortal"] = ns.icons["PassageHPortalNew"]
    end

    -- Ship Icons
    if ns.Addon.db.profile.activate.ClassicShips then
        ns.icons["Ship"] = ns.icons["ShipOld"]
        ns.icons["AShip"] = ns.icons["AShipOld"]
        ns.icons["HShip"] = ns.icons["HShipOld"]
    else ns.Addon.db.profile.activate.ClassicShips = false
        ns.icons["Ship"] = ns.icons["ShipNew"]
        ns.icons["AShip"] = ns.icons["AShipNew"]
        ns.icons["HShip"] = ns.icons["HShipNew"]
    end

    -- Zeppelin Icons
    if ns.Addon.db.profile.activate.ClassicZeppelin then
        ns.icons["Zeppelin"] = ns.icons["ZeppelinOld"]
        ns.icons["HZeppelin"] = ns.icons["HZeppelinOld"]
    else ns.Addon.db.profile.activate.ClassicZeppelin = false
        ns.icons["Zeppelin"] = ns.icons["ZeppelinNew"]
        ns.icons["HZeppelin"] = ns.icons["HZeppelinNew"]
    end

    -- Bank Icons
    if ns.Addon.db.profile.activate.ClassicBank then
        ns.icons["Bank"] = ns.icons["BankOld"]
    else ns.Addon.db.profile.activate.ClassicBank = false
        ns.icons["Bank"] = ns.icons["BankNew"]
    end

    -- Profession Icons
    if ns.Addon.db.profile.activate.ClassicProfession then
        ns.icons["Engineer"] = ns.icons["OriginalEngineer"]
        ns.icons["Alchemy"] = ns.icons["OriginalAlchemy"]
        ns.icons["Blacksmith"] = ns.icons["OriginalBlacksmith"]
        ns.icons["Skinning"] = ns.icons["OriginalSkinning"]
        ns.icons["Enchanting"] = ns.icons["OriginalEnchanting"]
        ns.icons["Tailoring"] = ns.icons["OriginalTailoring"]
        ns.icons["Jewelcrafting"] = ns.icons["OriginalJewelcrafting"]
        ns.icons["Leatherworking"] = ns.icons["OriginalLeatherworking"]
        ns.icons["Herbalism"] = ns.icons["OriginalHerbalism"]
        ns.icons["Mining"] = ns.icons["OriginalMining"]
        ns.icons["Inscription"] = ns.icons["OriginalInscription"]
        ns.icons["Archaeology"] = ns.icons["OriginalArchaeology"]
        ns.icons["Fishing"] = ns.icons["OriginalFishing"]
        ns.icons["Cooking"] = ns.icons["OriginalCooking"]
    elseif not ns.Addon.db.profile.activate.ClassicProfession then
        ns.icons["Engineer"] = ns.icons["EngineerNew"]
        ns.icons["Alchemy"] = ns.icons["AlchemyNew"]
        ns.icons["Blacksmith"] = ns.icons["BlacksmithNew"]
        ns.icons["Skinning"] = ns.icons["SkinningNew"]
        ns.icons["Enchanting"] = ns.icons["EnchantingNew"]
        ns.icons["Tailoring"] = ns.icons["TailoringNew"]
        ns.icons["Jewelcrafting"] = ns.icons["JewelcraftingNew"]
        ns.icons["Leatherworking"] = ns.icons["LeatherworkingNew"]
        ns.icons["Herbalism"] = ns.icons["HerbalismNew"]
        ns.icons["Mining"] = ns.icons["MiningNew"]
        ns.icons["Inscription"] = ns.icons["InscriptionNew"]
        ns.icons["Archaeology"] = ns.icons["ArchaeologyNew"]
        ns.icons["Fishing"] = ns.icons["FishingNew"]
        ns.icons["Cooking"] = ns.icons["CookingNew"]
    end

end

function ns.ChangeToClassicImages()

        -- Portal Icons
    if ns.Addon.db.profile.activate.ClassicPortals then
        ns.icons["Portal"] = ns.icons["PortalOld"]
        ns.icons["PortalS"] = ns.icons["PortalSOld"]
        ns.icons["APortal"] = ns.icons["APortalOld"]
        ns.icons["HPortal"] = ns.icons["HPortalOld"]
        ns.icons["HPortalS"] = ns.icons["HPortalSOld"]
        ns.icons["APortalS"] = ns.icons["APortalSOld"]
        ns.icons["PassagePortal"] = ns.icons["PassagePortalOld"]
        ns.icons["PassageAPortal"] = ns.icons["PassageAPortalOld"]
        ns.icons["PassageHPortal"] = ns.icons["PassageHPortalOld"]
    else ns.Addon.db.profile.activate.ClassicPortals = false
        ns.icons["Portal"] = ns.icons["PortalNew"]
        ns.icons["PortalS"] = ns.icons["PortalSNew"]
        ns.icons["HPortal"] = ns.icons["HPortalNew"]
        ns.icons["APortal"] = ns.icons["APortalNew"]
        ns.icons["APortalS"] = ns.icons["APortalSNew"]
        ns.icons["HPortalS"] = ns.icons["HPortalSNew"]
        ns.icons["PassagePortal"] = ns.icons["PassagePortalNew"]
        ns.icons["PassageAPortal"] = ns.icons["PassageAPortalNew"]
        ns.icons["PassageHPortal"] = ns.icons["PassageHPortalNew"]
    end

    -- Ship Icons
    if ns.Addon.db.profile.activate.ClassicShips then
        ns.icons["Ship"] = ns.icons["ShipOld"]
        ns.icons["AShip"] = ns.icons["AShipOld"]
        ns.icons["HShip"] = ns.icons["HShipOld"]
    else ns.Addon.db.profile.activate.ClassicShips = false
        ns.icons["Ship"] = ns.icons["ShipNew"]
        ns.icons["AShip"] = ns.icons["AShipNew"]
        ns.icons["HShip"] = ns.icons["HShipNew"]
    end

    -- Zeppelin Icons
    if ns.Addon.db.profile.activate.ClassicZeppelin then
        ns.icons["Zeppelin"] = ns.icons["ZeppelinOld"]
        ns.icons["HZeppelin"] = ns.icons["HZeppelinOld"]
    else ns.Addon.db.profile.activate.ClassicZeppelin = false
        ns.icons["Zeppelin"] = ns.icons["ZeppelinNew"]
        ns.icons["HZeppelin"] = ns.icons["HZeppelinNew"]
    end

    -- Bank Icons
    if ns.Addon.db.profile.activate.ClassicBank then
        ns.icons["Bank"] = ns.icons["BankOld"]
    else ns.Addon.db.profile.activate.ClassicBank = false
        ns.icons["Bank"] = ns.icons["BankNew"]
    end

    -- Profession Classic & Cataclysm Icons
    if ns.Addon.db.profile.activate.ClassicClassicProfession then
        ns.icons["Engineer"] = ns.icons["ClassicOriginalEngineer"]
        ns.icons["Alchemy"] = ns.icons["ClassicOriginalAlchemy"]
        ns.icons["Blacksmith"] = ns.icons["ClassicOriginalBlacksmith"]
        ns.icons["Skinning"] = ns.icons["ClassicOriginalSkinning"]
        ns.icons["Enchanting"] = ns.icons["ClassicOriginalEnchanting"]
        ns.icons["Tailoring"] = ns.icons["ClassicOriginalTailoring"]
        ns.icons["Jewelcrafting"] = ns.icons["ClassicOriginalJewelcrafting"]
        ns.icons["Leatherworking"] = ns.icons["ClassicOriginalLeatherworking"]
        ns.icons["Herbalism"] = ns.icons["ClassicOriginalHerbalism"]
        ns.icons["Mining"] = ns.icons["ClassicOriginalMining"]
        ns.icons["Inscription"] = ns.icons["ClassicOriginalInscription"]
        ns.icons["Archaeology"] = ns.icons["ClassicOriginalArchaeology"]
        ns.icons["Fishing"] = ns.icons["ClassicOriginalFishing"]
        ns.icons["Cooking"] = ns.icons["ClassicOriginalCooking"]
    elseif not ns.Addon.db.profile.activate.ClassicClassicProfession then
        ns.icons["Engineer"] = ns.icons["EngineerNew"]
        ns.icons["Alchemy"] = ns.icons["AlchemyNew"]
        ns.icons["Blacksmith"] = ns.icons["BlacksmithNew"]
        ns.icons["Skinning"] = ns.icons["SkinningNew"]
        ns.icons["Enchanting"] = ns.icons["EnchantingNew"]
        ns.icons["Tailoring"] = ns.icons["TailoringNew"]
        ns.icons["Jewelcrafting"] = ns.icons["JewelcraftingNew"]
        ns.icons["Leatherworking"] = ns.icons["LeatherworkingNew"]
        ns.icons["Herbalism"] = ns.icons["HerbalismNew"]
        ns.icons["Mining"] = ns.icons["MiningNew"]
        ns.icons["Inscription"] = ns.icons["InscriptionNew"]
        ns.icons["Archaeology"] = ns.icons["ArchaeologyNew"]
        ns.icons["Fishing"] = ns.icons["FishingNew"]
        ns.icons["Cooking"] = ns.icons["CookingNew"]
    end

end