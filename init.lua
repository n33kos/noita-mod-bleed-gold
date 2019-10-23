dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/perks/perk.lua")
dofile("data/scripts/perks/perk_list.lua")
dofile("mods/bleed_gold/files/scripts/perks/perk_list.lua")

function OnModInit()
	ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/bleed_gold/files/scripts/perks/perk_list.lua" )
end

function OnPlayerSpawned( player_entity )
    if tonumber(StatsGetValue("playtime")) > 1 then
        return
	end

	local perk_entity = perk_spawn( 0, 0, "BLEED_GOLD" )
	perk_pickup( perk_entity, player_entity, EntityGetName( perk_entity ), false, false )
end