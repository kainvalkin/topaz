-----------------------------------
-- Zone: Abyssea-Misareaux
--  NPC: qm5 (???)
-- Spawns Cep-Kamuy
-- !pos -160 -15 638 216
-----------------------------------
require("scripts/globals/abyssea")
-----------------------------------

function onTrade(player,npc,trade)
    abysseaOnTrade(player,npc,trade)
end

function onTrigger(player,npc)
    abysseaOnTrigger(player,npc)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
