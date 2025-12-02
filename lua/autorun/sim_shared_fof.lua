AddCSLuaFile()

SIM = {}

include("autorun/weapon_sounds_fof.lua")
if (CLIENT) then
	include("autorun/client/sim_menu_updated.lua")
else
	AddCSLuaFile("autorun/client/sim_menu_updated.lua")
	AddCSLuaFile("autorun/server/Holster.lua")
end