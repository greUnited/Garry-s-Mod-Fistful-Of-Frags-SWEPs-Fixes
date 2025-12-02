include('shared.lua')

SWEP.PrintName			= "Sharps Rifle 1874"			// 'Nice' Weapon name (Shown on HUD)	
SWEP.Slot				= 3							// Slot in the weapon selection menu
SWEP.SlotPos			= 1							// Position in the slot
SWEP.Instructions		= "Uses .45-70 ammo, Alternate Mode: E + Right Click, Switch Weapons: E + Left Click"

// Override this in your SWEP to set the icon in the weapon selection
if (file.Exists("materials/weapons/weapon_mad_fof_sharps.vmt","GAME")) then
	SWEP.WepSelectIcon	= surface.GetTextureID("weapons/weapon_mad_fof_sharps")
end