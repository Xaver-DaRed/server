


xi.nyzul.baseWeapons =
{
    [xi.job.WAR] = xi.item.STURDY_AXE,
    [xi.job.MNK] = xi.item.BURNING_FISTS,
    [xi.job.WHM] = xi.item.WEREBUSTER,
    [xi.job.BLM] = xi.item.MAGES_STAFF,
    [xi.job.RDM] = xi.item.VORPAL_SWORD,
    [xi.job.THF] = xi.item.SWORDBREAKER,
    [xi.job.PLD] = xi.item.BRAVE_BLADE,
    [xi.job.DRK] = xi.item.DEATH_SICKLE,
    [xi.job.BST] = xi.item.DOUBLE_AXE,
    [xi.job.BRD] = xi.item.DANCING_DAGGER,
    [xi.job.RNG] = xi.item.KILLER_BOW,
    [xi.job.SAM] = xi.item.WINDSLICER,
    [xi.job.NIN] = xi.item.SASUKE_KATANA,
    [xi.job.DRG] = xi.item.RADIANT_LANCE,
    [xi.job.SMN] = xi.item.SCEPTER_STAFF,
    [xi.job.BLU] = xi.item.WIGHTSLAYER,
    [xi.job.COR] = xi.item.QUICKSILVER,
    [xi.job.PUP] = xi.item.INFERNO_CLAWS,
    [xi.job.DNC] = xi.item.MAIN_GAUCHE,
    [xi.job.SCH] = xi.item.ELDER_STAFF,
}

xi.nyzul.vigilWeaponDrop = function(player, mob)
    local instance = mob:getInstance()

    -- Only floor 100 Bosses to drop 1 random weapon guarenteed and 1 of the disk holders job
    -- will not drop diskholder's weapon if anyone already has it.
    if instance:getLocalVar('Nyzul_Current_Floor') == 100 then
        local diskHolder = GetPlayerByID(instance:getLocalVar('diskHolder'), instance)
        local chars      = instance:getChars()

        if diskHolder ~= nil then
            for _, entity in pairs(chars) do
                if not entity:hasItem(xi.nyzul.baseWeapons[diskHolder:getMainJob()]) then
                    player:addTreasure(xi.nyzul.baseWeapons[diskHolder:getMainJob()], mob)

                    break
                end
            end
        end

        player:addTreasure(xi.nyzul.baseWeapons[math.random(1, #xi.nyzul.baseWeapons)], mob)

    -- Every NM can randomly drop a vigil weapon
    elseif math.random(1, 100) <= 20 and xi.settings.main.ENABLE_VIGIL_DROPS then
        player:addTreasure(xi.nyzul.baseWeapons[math.random(1, #xi.nyzul.baseWeapons)], mob)
    end
end
