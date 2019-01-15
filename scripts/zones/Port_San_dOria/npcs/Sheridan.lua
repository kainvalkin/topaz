-----------------------------------
-- Area: Port San d'Oria
--  NPC: Sheridan
-- Involved in Quests: Riding on the Clouds
-- !pos -19 -8 -129 232
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/quests");
local ID = require("scripts/zones/Port_San_dOria/IDs");
-----------------------------------

function onTrade(player,npc,trade)

    if (player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE) == QUEST_ACCEPTED) then
        if (trade:hasItemQty(532,1) and trade:getItemCount() == 1) then -- Trade Magicmart Flyer
            player:messageSpecial(ID.text.FLYER_REFUSED);
        end
    end

    if (player:getQuestStatus(JEUNO,RIDING_ON_THE_CLOUDS) == QUEST_ACCEPTED and player:getVar("ridingOnTheClouds_1") == 5) then
        if (trade:hasItemQty(1127,1) and trade:getItemCount() == 1) then -- Trade Kindred seal
            player:setVar("ridingOnTheClouds_1",0);
            player:tradeComplete();
            player:addKeyItem(dsp.ki.SCOWLING_STONE);
            player:messageSpecial(ID.text.KEYITEM_OBTAINED,dsp.ki.SCOWLING_STONE);
        end
    end

end;

function onTrigger(player,npc)
    if player:getVar("thePickpocket") == 1 then
        player:showText(npc, ID.text.PICKPOCKET_SHERIDAN)
    else
        player:startEvent(572);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;