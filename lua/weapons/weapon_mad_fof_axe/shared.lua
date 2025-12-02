// Variables that are used on both client and server

SWEP.Base 				= "weapon_mad_fof_base"
SWEP.Category			= "Fistful Of Frags Weapons"
SWEP.ViewModelFlip		= false
SWEP.ViewModel			= Model("models/weapons/v_axe.mdl")
SWEP.WorldModel			= Model("models/weapons/w_axe.mdl")
SWEP.HoldType				= "melee"
SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false
SWEP.Primary.Recoil		= 5
SWEP.Primary.Damage		= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Cone			= 0.075
SWEP.Primary.Delay 		= 0.7

SWEP.Primary.ClipSize		= -1					// Size of a clip
SWEP.Primary.DefaultClip	= 1					// Default number of bullets in a clip
SWEP.Primary.Automatic		= true				// Automatic/Semi Auto
SWEP.Primary.Ammo			= ""

SWEP.Secondary.ClipSize		= -1					// Size of a clip
SWEP.Secondary.DefaultClip	= -1					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none"

SWEP.ShellEffect			= "none"				// "effect_mad_shell_pistol" or "effect_mad_shell_rifle" or "effect_mad_shell_shotgun"
SWEP.ShellDelay			= 0

SWEP.Pistol				= true
SWEP.Rifle				= false
SWEP.Shotgun			= false
SWEP.Sniper				= false

SWEP.RunArmOffset 		= Vector (0.3671, 0.1571, 5.7856)
SWEP.RunArmAngle	 		= Vector (-37.4833, 2.7476, 0)

SWEP.Sequence			= 0

/*---------------------------------------------------------
   Name: SWEP:Precache()
---------------------------------------------------------*/
function SWEP:Precache()
	
	util.PrecacheSound("weapons/iceaxe/iceaxe_swing1.wav")
	util.PrecacheSound("weapons/blade_hit1.wav")
	util.PrecacheSound("weapons/blade_hit2.wav")
	util.PrecacheSound("weapons/blade_hit3.wav")
	util.PrecacheSound("weapons/blade_hit4.wav")
end

/*---------------------------------------------------------
   Name: SWEP:SetHolsted()
---------------------------------------------------------*/
function SWEP:SetHolsted(b)

	if (self.Owner) then
		if (b) then
			self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
		else
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		end
	end

	if (self.Weapon) then
		self.Weapon:SetDTBool(0, b)
	end
end

/*---------------------------------------------------------
   Name: SWEP:EntityFaceBack
   Desc: Is the entity face back to the player?
---------------------------------------------------------*/
function SWEP:EntsInSphereBack(pos, range)

	local ents = ents.FindInSphere(pos, range)

	for k, v in pairs(ents) do
		if v ~= self and v ~= self.Owner and (v:IsNPC() or v:IsPlayer()) and IsValid(v) and self:EntityFaceBack(v) then
			return true
		end
	end

	return false
end

/*---------------------------------------------------------
   Name: SWEP:EntityFaceBack
   Desc: Is the entity face back to the player?
---------------------------------------------------------*/
function SWEP:EntityFaceBack(ent)

	local angle = self.Owner:GetAngles().y - ent:GetAngles().y

	if angle < -180 then angle = 360 + angle end
	if angle <= 90 and angle >= -90 then return true end

	return false
end

/*---------------------------------------------------------
   Name: SWEP:PrimaryAttack()
   Desc: +attack1 has been pressed.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	// Holst/Deploy your fucking weapon
	if (not self.Owner:KeyDown(IN_SPEED) and not self.Weapon:GetDTBool(3) and not self.Owner:KeyDown(IN_RELOAD) and self.Owner:KeyDown(IN_USE)) then
		bHolsted = !self.Weapon:GetDTBool(0)
		self:SetHolsted(bHolsted)

		self.Weapon:SetNextPrimaryFire(CurTime() + 1.0)
		self.Weapon:SetNextSecondaryFire(CurTime() + 1.0)

		self:SetIronsights(false)

		return
	end

	if self.Weapon:GetDTBool(0) or self.Owner:KeyDown(IN_SPEED) then return end
	
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	timer.Create( "strike1", 0.15, 1, function()
	
	if not IsValid(self.Owner) then return end
	local tr = {}
	tr.start = self.Owner:GetShootPos()
	tr.endpos = self.Owner:GetShootPos() + (self.Owner:GetAimVector() * 70)
	tr.filter = self.Owner
	tr.mask = MASK_SHOT
	local trace = util.TraceLine(tr)
		
		if (trace.Hit) then
			if trace.Entity:IsPlayer() or string.find(trace.Entity:GetClass(),"npc") or string.find(trace.Entity:GetClass(),"prop_ragdoll") then
				if self:EntsInSphereBack(tr.endpos, 12) then

					self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
					self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)

					bullet = {}
					bullet.Num    = 1
					bullet.Src    = self.Owner:GetShootPos()
					bullet.Dir    = self.Owner:GetAimVector()
					bullet.Spread = Vector(0, 0, 0)
					bullet.Tracer = 0
					bullet.Force  = 1
					bullet.Damage = 80
					self.Owner:FireBullets(bullet)
					self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
					self.Weapon:EmitSound("Weapoi_Knife.Hit")
					return
				end 
			

				bullet = {}
				bullet.Num    = 1
				bullet.Src    = self.Owner:GetShootPos()
				bullet.Dir    = self.Owner:GetAimVector()
				bullet.Spread = Vector(0, 0, 0)
				bullet.Tracer = 0
				bullet.Force  = 1
				bullet.Damage = 60
				self.Owner:FireBullets(bullet) 
				self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
				self.Weapon:EmitSound("Weapoi_Knife.Hit")
				
			else
			
				bullet = {}
				bullet.Num    = 1
				bullet.Src    = self.Owner:GetShootPos()
				bullet.Dir    = self.Owner:GetAimVector()
				bullet.Spread = Vector(0, 0, 0)
				bullet.Tracer = 0
				bullet.Force  = 1
				bullet.Damage = 25
				self.Owner:FireBullets(bullet) 
				self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
				self.Weapon:EmitSound("Weapoi_Knife.HitWall")
	
				util.Decal("ManhackCut", trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal)
			end
		else
			self.Weapon:SendWeaponAnim(ACT_VM_MISSCENTER)
			self.Weapon:EmitSound("Weapoi_Knife.Slash")
		end 
	end )
	if ((game.SinglePlayer() and SERVER) or CLIENT) then
		self.Weapon:SetNetworkedFloat("LastShootTime", CurTime())
	end

	self:IdleAnimation(1)
end
/*---------------------------------------------------------
   Name: SWEP:SecondaryAttack()
   Desc: +attack2 has been pressed.
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
end
