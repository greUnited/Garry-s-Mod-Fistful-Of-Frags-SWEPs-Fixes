// Variables that are used on both client and server

SWEP.Base 				= "weapon_mad_fof_base"
SWEP.Category			= "Fistful Of Frags Weapons"
SWEP.ViewModelFOV			= 55
SWEP.ViewModelFlip		= false
SWEP.ViewModel			= "models/weapons/v_dualpeacemaker.mdl"
SWEP.WorldModel			= "models/weapons/w_dualpeacemaker.mdl"
SWEP.HoldType				= "duel"
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= false

SWEP.Primary.Sound 		= Sound("Weapom_Peacemaker.Single")
SWEP.Primary.Recoil		= 4
SWEP.Primary.Damage		= 32
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.03
SWEP.Primary.Delay 		= 0.6

SWEP.Primary.ClipSize		= 12				// Size of a clip
SWEP.Primary.DefaultClip	= 48				// Default number of bullets in a clip
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "fourtyfivecolt"

SWEP.Secondary.ClipSize		= -1					// Size of a clip
SWEP.Secondary.DefaultClip	= -1					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none"

SWEP.ShellEffect			= "none"	// "effect_mad_shell_pistol" or "effect_mad_shell_rifle" or "effect_mad_shell_shotgun"
SWEP.ShellDelay			= 0

SWEP.Pistol				= true
SWEP.Rifle				= false
SWEP.Shotgun			= false
SWEP.Sniper				= false

SWEP.IronSightsPos 		= Vector (-5.3822, -7.2721, 2.5181)
SWEP.IronSightsAng 		= Vector (1.3918, 0.0129, 0)
SWEP.RunArmOffset 		= Vector (0, 0, 5.5)
SWEP.RunArmAngle 		= Vector (-35, -3, 0)

/*---------------------------------------------------------
   Name: SWEP:Precache()
   Desc: Use this function to precache stuff.
---------------------------------------------------------*/
function SWEP:Precache()

    	util.PrecacheSound("weapons/peacemaker/peacemaker_single1.wav")
    	util.PrecacheSound("weapons/peacemaker/peacemaker_single2.wav")
    	util.PrecacheSound("weapons/peacemaker/peacemaker_single3.wav")
end

local clip1, clip2
clip1 				= 6
clip2 				= 6

/*---------------------------------------------------------
   Name: SWEP:PrimaryAttack()
   Desc: +attack1 has been pressed.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	// Holst/Deploy your fucking weapon
	if (not self.Owner:IsNPC() and self.Owner:KeyDown(IN_USE)) then
		bHolsted = !self.Weapon:GetDTBool(0)
		self:SetHolsted(bHolsted)

		self.Weapon:SetNextPrimaryFire(CurTime() + 0.3)
		self.Weapon:SetNextSecondaryFire(CurTime() + 0.3)

		self:SetIronsights(false)

		return
	end

	if (not self:CanClip1Attack() or not self:CanPrimaryAttack()) then return end
	
	self.Reloadaftershoot = CurTime() + self.Primary.Delay
	self.ActionDelay = (CurTime() + self.Primary.Delay + 0.05)
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)

	self.Weapon:EmitSound(self.Primary.Sound)
	
	clip1 = clip1 - 1

	if clip1 >= 0 then
		self:TakePrimaryAmmo(1)
	end
	
	self:ShootEffects2()
	self:ShootBulletInformation()

	self.Weapon:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
	
	if ((game.SinglePlayer() and SERVER) or CLIENT) then
		self.Weapon:SetNetworkedFloat("LastShootTime", CurTime())
	end
end
/*---------------------------------------------------------
   Name: SWEP:SetHolsted()
---------------------------------------------------------*/
function SWEP:SetHolsted(b)

	if (self.Owner) then
		if (b) then
			self.Owner:SetRunSpeed(self.Runspeed)
			self.Owner:SetWalkSpeed(self.Walkspeed)
		else
			if (self.WeightMod) then
				self.Owner:SetRunSpeed(self.Runspeed*self.Mass)
				self.Owner:SetWalkSpeed(self.Walkspeed*self.Mass)
			end
		end
	end

	if (self.Weapon) then
		self.Weapon:SetDTBool(0, b)
	end
end

/*---------------------------------------------------------
   Name: SWEP:PrimaryAttack()
   Desc: +attack1 has been pressed.
---------------------------------------------------------*/
function SWEP:SecondaryAttack()

	if not self:CanClip2Attack() or not self:CanPrimaryAttack() then return end

	self.Reloadaftershoot = CurTime() + self.Primary.Delay
	self.ActionDelay = (CurTime() + self.Primary.Delay + 0.05)
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)

	self.Weapon:EmitSound(self.Primary.Sound)
	clip2 = clip2 - 1

	if clip2 >= 0 then
		self:TakePrimaryAmmo(1)
	end

	self:ShootEffects()
	self:ShootBulletInformation()
	
	self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)

	if ((game.SinglePlayer() and SERVER) or CLIENT) then
		self.Weapon:SetNetworkedFloat("LastShootTime", CurTime())
	end
end

/*---------------------------------------------------------
   Name: SWEP:Deploy()
   Desc: Whip mine out.
---------------------------------------------------------*/
function SWEP:Deploy()

	if self.Weapon:GetDTBool(0) then
		bHolsted = !self.Weapon:GetDTBool(0)
		self:SetHolsted(bHolsted)
	end	

	self:DeployAnimation()
	
	if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
		self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
	end

	self.Weapon:SetNextPrimaryFire(CurTime() + self.DeployDelay + 0.05)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.DeployDelay + 0.05)
	self.ActionDelay = (CurTime() + self.DeployDelay + 0.05)

	self:SetIronsights(false)
	
	if ( self.Weapon:Clip1() == 12 ) then
		clip1 = 6
		clip2 = 6
	end
	
	if self.Weapon:GetDTBool(0) then
		return true
	end
end

/*---------------------------------------------------------
   Name: SWEP:Reload()
   Desc: Reload is being pressed.
---------------------------------------------------------*/
function SWEP:Reload()

	// When the weapon is already doing an animation, just return end because we don't want to interrupt it
	if (self.ActionDelay > CurTime()) or self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) then return end
		
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
		timer.Simple(2, function()
			clip1 = 6
			clip2 = 6
		end)
	end
end

/*---------------------------------------------------------
CanClip1Attack
---------------------------------------------------------*/
function SWEP:CanClip1Attack()
	if clip1 <= 0 and self.Primary.ClipSize > -1 then
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
		clip1 = 0
		return false
	end

	return true
end

/*---------------------------------------------------------
CanClip2Attack
---------------------------------------------------------*/
function SWEP:CanClip2Attack()
	if clip2 <= 0 and self.Primary.ClipSize > -1 then
		self.Weapon:SetNextSecondaryFire(CurTime() + 0.5)
		clip2 = 0
		return false
	end

	return true
end 
/*---------------------------------------------------------
   Name: SWEP:ShootEffects()
   Desc: A convenience function to shoot negroes.
---------------------------------------------------------*/
function SWEP:ShootEffects()
	
	self.Owner:MuzzleFlash()
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	local effectdata = EffectData()
		effectdata:SetOrigin(self.Owner:GetShootPos())
		effectdata:SetEntity(self.Weapon)
		effectdata:SetStart(self.Owner:GetShootPos())
		effectdata:SetNormal(self.Owner:GetAimVector())
		effectdata:SetAttachment(1)

	// Add a timer to solve this problem : in multiplayer, when you aim with the ironsights, tracers, effects, etc. still come from where the barrel is when you don't aim with ironsights
	timer.Simple(0, function()
		if not self.Owner then return end
		if not IsFirstTimePredicted() then return end

		if (self.Shotgun) then
			util.Effect("effect_sim_oldshotgunsmoke", effectdata)
		else
			util.Effect("effect_sim_oldgunsmoke", effectdata)
		end
	end)

	if ((game.SinglePlayer() and SERVER) or CLIENT) then
		self.Weapon:SetNetworkedFloat("LastShootTime", CurTime())
	end
	
end
/*---------------------------------------------------------
   Name: SWEP:ShootEffects()
   Desc: A convenience function to shoot negroes.
---------------------------------------------------------*/
function SWEP:ShootEffects2()
	
	self.Owner:MuzzleFlash()
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	local effectdata = EffectData()
		effectdata:SetOrigin(self.Owner:GetShootPos())
		effectdata:SetEntity(self.Weapon)
		effectdata:SetStart(self.Owner:GetShootPos())
		effectdata:SetNormal(self.Owner:GetAimVector())
		effectdata:SetAttachment(2)

	// Add a timer to solve this problem : in multiplayer, when you aim with the ironsights, tracers, effects, etc. still come from where the barrel is when you don't aim with ironsights
	timer.Simple(0, function()
		if not self.Owner then return end
		if not IsFirstTimePredicted() then return end

		if (self.Shotgun) then
			util.Effect("effect_sim_oldshotgunsmoke", effectdata)
		else
			util.Effect("effect_sim_oldgunsmoke", effectdata)
		end
	end)

	if ((game.SinglePlayer() and SERVER) or CLIENT) then
		self.Weapon:SetNetworkedFloat("LastShootTime", CurTime())
	end
	
end


/*---------------------------------------------------------
   Name: SWEP:ShootBullet()
   Desc: Siminov goes rrrer
---------------------------------------------------------*/
local TracerName = "Tracer"

function SWEP:ShootBullet(damage, recoil, num_bullets, aimcone)

	num_bullets 		= num_bullets or 1
	aimcone 			= aimcone or 0

	if self.Tracer == 1 then
		TracerName = "Ar2Tracer"
	elseif self.Tracer == 2 then
		TracerName = "AirboatGunHeavyTracer"
	else
		TracerName = "Tracer"
	end
	
	local bullet = {}
		bullet.Num 		= num_bullets
		bullet.Src 		= self.Owner:GetShootPos()			// Source
		bullet.Dir 		= self.Owner:GetAimVector()			// Dir of bullet
		bullet.Spread 	= Vector(aimcone, aimcone, 0)			// Aim Cone
		bullet.Tracer	= 7							// Show a tracer on every x bullets
		bullet.TracerName = TracerName
		bullet.Force	= damage * 0.5					// Amount of force to give to phys objects
		bullet.Damage	= damage
		bullet.Callback	= function(attacker, tr, dmginfo) 
						if not self.Owner:IsNPC() and self.Owner:GetNetworkedInt("Fuel") > 0 then
							self:ShootFire(attacker, tr, dmginfo) 
						end

						return self:RicochetCallback_Redirect(attacker, tr, dmginfo) 
					  end

	self.Owner:FireBullets(bullet)

	// Realistic recoil. Only on snipers and shotguns. Disable for the admin gun because if you put the max damage, you'll fly like you never fly!
	if (SERVER and (self.Sniper or self.Shotgun) and not self.Owner:GetActiveWeapon():GetClass() == ("weapon_sim_admin")) then
		self.Owner:SetVelocity(self.Owner:GetAimVector() * -(damage * num_bullets))
	end

	// Recoil
	if (not self.Owner:IsNPC()) and ((game.SinglePlayer() and SERVER) or (not game.SinglePlayer() and CLIENT)) then
		local eyeangle 	= self.Owner:EyeAngles()
		eyeangle.pitch 	= eyeangle.pitch - recoil
		self.Owner:SetEyeAngles(eyeangle)
	end
end
