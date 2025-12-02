include('shared.lua')

SWEP.PrintName			= "Axe"						// 'Nice' Weapon name (Shown on HUD)	
SWEP.Slot				= 0							// Slot in the weapon selection menu
SWEP.SlotPos			= 1							// Position in the slot
SWEP.Instructions			= "Uses No Ammo, Switch Weapons: E + Left Click"

// Override this in your SWEP to set the icon in the weapon selection
if (file.Exists("materials/weapons/weapon_ins_sim_kabar.vmt","GAME")) then
	SWEP.WepSelectIcon	= surface.GetTextureID("weapons/weapon_ins_sim_kabar")
end