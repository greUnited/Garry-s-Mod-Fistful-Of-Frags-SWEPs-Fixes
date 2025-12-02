// Variables that are used on both client and server

SWEP.Base 				= "weapon_mad_fof_base"
SWEP.Category			= "Fistful Of Frags Weapons"
SWEP.ViewModelFOV			= 45
SWEP.ViewModelFlip		= false
SWEP.ViewModel 			= "models/weapons/v_carbine.mdl"
SWEP.WorldModel 			= "models/weapons/w_carbine.mdl"
SWEP.HoldType				= "ar2"
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Primary.Sound 		= Sound("Weapom_Carbine.Single")
SWEP.Primary.Recoil		= 6
SWEP.Primary.Damage		= 75
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.015
SWEP.Primary.Delay 		= 1

SWEP.Primary.ClipSize		= 1					// Size of a clip
SWEP.Primary.DefaultClip	= 15					// Default number of bullets in a clip
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "fiftysmith"

SWEP.Secondary.ClipSize		= -1					// Size of a clip
SWEP.Secondary.DefaultClip	= -1					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none"

SWEP.ShellEffect			= "none"	// "effect_mad_shell_pistol" or "effect_mad_shell_rifle" or "effect_mad_shell_shotgun"
SWEP.ShellDelay			= 0

SWEP.Pistol				= false
SWEP.Rifle				= true
SWEP.Shotgun			= false
SWEP.Sniper				= false

SWEP.IronSightsPos 		= Vector (-4.68, -4.9651, 3.7411)
SWEP.IronSightsAng 		= Vector (0.1011, -0.0492, 0)
SWEP.RunArmOffset 		= Vector (7.3474, 0, 5.53)
SWEP.RunArmAngle 			= Vector (-22.4753, 24, 0)

/*---------------------------------------------------------
   Name: SWEP:Precache()
   Desc: Use this function to precache stuff.
---------------------------------------------------------*/
function SWEP:Precache()

    	util.PrecacheSound("weapons/carbine/smith_carbine_fire.wav")
end