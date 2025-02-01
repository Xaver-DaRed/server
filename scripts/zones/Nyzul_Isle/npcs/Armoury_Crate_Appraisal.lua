-----------------------------------
-- Area:  Nyzul_Isle
-- NPC:   Armoury Crate
-- Notes: Dispenses Vigil Weapons.
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    xi.nyzul.vigilWeaponCrateOnTrigger(player, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
