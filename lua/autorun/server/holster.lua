
function VehicleWeaponFix( ply, ent )
   
   if ply.InVec then
   ply.InVec = false
   ply:GetViewModel():SetNoDraw(false)
   end

   if ent:IsVehicle() then
   ply.InVec = true
   ply:GetViewModel():SetNoDraw(true)
   end
   
end
hook.Add("PlayerUse","VehicleWeaponFixHookLolFag",VehicleWeaponFix)


