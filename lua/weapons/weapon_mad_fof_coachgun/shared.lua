// Variables that are used on both client and server

SWEP.Base 				= "weapon_mad_fof_base"
SWEP.Category			= "Fistful Of Frags Weapons"
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip		= false
SWEP.ViewModel			= "models/weapons/v_coachgun.mdl"
SWEP.WorldModel			= "models/weapons/w_coachgun.mdl"
SWEP.HoldType				= "ar2"
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Primary.Sound 		= Sound("Weapom_Coachgun.Single")
SWEP.Primary.Recoil		= 10
SWEP.Primary.Damage		= 12
SWEP.Primary.NumShots		= 8
SWEP.Primary.Cone			= 0.03
SWEP.Primary.Delay 		= 0

SWEP.Primary.ClipSize		= 2				// Size of a clip
SWEP.Primary.DefaultClip	= 20				// Default number of bullets in a clip
SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "shotgunshell"

SWEP.Secondary.ClipSize		= -1					// Size of a clip
SWEP.Secondary.DefaultClip	= -1					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none"

SWEP.ShellEffect			= "none"	// "effect_mad_shell_pistol" or "effect_mad_shell_rifle" or "effect_mad_shell_shotgun"
SWEP.ShellDelay			= 0

SWEP.Type				= 1 					// 1 = Automatic/Semi-Automatic mode, 2 = Suppressor mode, 3 = Burst fire mode
SWEP.Mode				= true

SWEP.Pistol				= false
SWEP.Rifle				= false
SWEP.Shotgun			= true
SWEP.Sniper				= false

SWEP.IronSightsPos 		= Vector (-5.8205, -2, 4.4958)
SWEP.IronSightsAng 		= Vector (0.1289, -0.0233, 0)
SWEP.RunArmOffset 		= Vector (1.1505, 0, 5.7803)
SWEP.RunArmAngle 			= Vector (-19.6556, 3.7158, 0)

SWEP.Penetration			= false
SWEP.Ricochet			= false

SWEP.data 				= {}
SWEP.data.NormalMsg		= "Both Barrels"
SWEP.data.ModeMsg			= "Single Barrel"

/*---------------------------------------------------------
   Name: SWEP:Precache()
   Desc: Use this function to precache stuff.
---------------------------------------------------------*/
function SWEP:Precache()

    	util.PrecacheSound("weapons/coachgun/coach_fire1.wav")
    	util.PrecacheSound("weapons/coachgun/coach_fire2.wav")
end
/*---------------------------------------------------------
   Name: SWEP:ShootAnimation()
---------------------------------------------------------*/
function SWEP:ShootAnimation()
		
	if ( self.Weapon:Clip1() == 0 ) then
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	else
		self.Weapon:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
	end
end
/*---------------------------------------------------------
   Name: SWEP:Reload()
   Desc: Reload is being pressed.
---------------------------------------------------------*/
function SWEP:Reload()

	// When the weapon is already doing an animation, just return end because we don't want to interrupt it
	if (self.ActionDelay > CurTime()) or self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) or(self:Clip1() > 0) then return end
		
	self.Weapon:SetNextPrimaryFire(CurTime() + 1.0)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.DeployDelay + 1.0)
	self.ActionDelay = (CurTime())
	
	if (SERVER) then
		if ( self.Reloadaftershoot > CurTime() ) then return end 
	end
	
	// Need to call the default reload before the real reload animation
	self.Weapon:DefaultReload(ACT_VM_RELOAD)

	if (self.Weapon:Clip1() < self.Primary.ClipSize) and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		self:SetIronsights(false)
		self:ReloadAnimation()
	end
end
