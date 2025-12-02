include('shared.lua')

SWEP.PrintName			= "Colt 1851 Navy"			// 'Nice' Weapon name (Shown on HUD)	
SWEP.Slot				= 1							// Slot in the weapon selection menu
SWEP.SlotPos			= 1							// Position in the slot
SWEP.Instructions		= "Uses .36 Ball ammo, Alternate Mode: E + Right Click, Switch Weapons: E + Left Click"

// Override this in your SWEP to set the icon in the weapon selection
if (file.Exists("materials/weapons/weapon_mad_fof_coltnavy.vmt","GAME")) then
	SWEP.WepSelectIcon	= surface.GetTextureID("weapons/weapon_mad_fof_coltnavy")
end