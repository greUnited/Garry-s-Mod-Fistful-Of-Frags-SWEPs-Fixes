// Smith Carbine .50
// Sound Design by Dimitris Plagiannis (dimitris@sonicvalley.com)
local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = "^weapons/carbine/smith_carbine_fire.wav"
instbl["name"] = "Weapom_Carbine.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/carbine/carbine_dry.wav"
instbl["name"] = "Weapom_Carbine.Empty"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/carbine/carbine_open.wav"
instbl["name"] = "Weapom_Carbine.Open"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/carbine/carbine_close.wav"
instbl["name"] = "Weapom_Carbine.Close"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/carbine/carbine_extract.wav"
instbl["name"] = "Weapom_Carbine.Extract"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/carbine/carbine_insert.wav"
instbl["name"] = "Weapom_Carbine.Insert"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/carbine/carbine_cock.wav"
instbl["name"] = "Weapom_Carbine.Cock"
sound.Add(instbl)

// Coachgun
// Sound Design by Kim Burgess (kim@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["soundlevel"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/coachgun/coach_fire1.wav","^weapons/coachgun/coach_fire2.wav"}
instbl["name"] = "Weapom_Coachgun.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/coachgun/coach_dry.wav"
instbl["name"] = "Weapom_Coachgun.Empty"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/coachgun/coach_open.wav"
instbl["name"] = "Weapom_Coachgun.Open"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/coachgun/coach_close.wav"
instbl["name"] = "Weapom_Coachgun.Close"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/coachgun/coach_insert.wav"
instbl["name"] = "Weapom_Coachgun.Insert"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/coachgun/coach_extract.wav"
instbl["name"] = "Weapom_Coachgun.Extract"
sound.Add(instbl)

// Bow
// Sound Design by Luke Hatton (luke@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["soundlevel"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = {")weapons/bow/bow_fire1.wav",")weapons/bow/bow_fire2.wav"}
instbl["name"] = "Weapom_Bow.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons_ins/tokarev/toka_clipin.wav"
instbl["name"] = "Weapoi_Takarov.Magin"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons_ins/tokarev/toka_clipout.wav"
instbl["name"] = "Weapoi_Takarov.Magout"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons_ins/tokarev/toka_boltforward.wav"
instbl["name"] = "Weapoi_Takarov.SlideForward"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons_ins/tokarev/toka_boltback.wav"
instbl["name"] = "Weapoi_Takarov.SlideBack"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons_ins/tokarev/makarov-empty.wav"
instbl["name"] = "Weapoi_Takarov.Empty"

sound.Add(instbl)

// Colt Navy .36 Revolver
// Sound Design by Luke Hatton (luke@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["soundlevel"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.40"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/coltnavy/navy_fire1.wav","^weapons/coltnavy/navy_fire2.wav","^weapons/coltnavy/navy_fire3.wav"}
instbl["name"] = "Weapom_ColtNavy.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/coltnavy/navy_spin.wav"
instbl["name"] = "Weapom_ColtNavy.Spin"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/coltnavy/navy_spin_finger.wav"
instbl["name"] = "Weapom_ColtNavy.DrawSpin"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/coltnavy/navy_insert.wav"
instbl["name"] = "Weapom_ColtNavy.Insert"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/coltnavy/navy_close.wav"
instbl["name"] = "Weapom_ColtNavy.Close"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/coltnavy/navy_close.wav"
instbl["name"] = "Weapom_ColtNavy.Open"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/coltnavy/navy_close.wav"
instbl["name"] = "Weapom_ColtNavy.OpenClose"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {")weapons/coltnavy/navy_cock_fast1.wav",")weapons/coltnavy/navy_cock_fast2.wav"}
instbl["name"] = "Weapom_ColtNavy.Cockfast"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {")weapons/coltnavy/navy_cock1.wav",")weapons/coltnavy/navy_cock2.wav"}
instbl["name"] = "Weapom_ColtNavy.Cock"
sound.Add(instbl)

// Deringer Pocket Pistol .41
// Sound Design by Hermann Rauth (hermann@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["soundlevel"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.40"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/deringer/deringer_single1.wav","^weapons/deringer/deringer_single2.wav","^weapons/deringer/deringer_single3.wav"}
instbl["name"] = "Weapom_Deringer.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "1"
instbl["soundlevel"] = "100"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1.0"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/deringer/deringer_cock.wav"
instbl["name"] = "Weapom_Deringer.Cock"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/deringer/deringer_empty.wav"
instbl["name"] = "Weapom_Deringer.Empty"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"weapons/deringer/deringer_insert1.wav","weapons/deringer/deringer_insert2.wav"}
instbl["name"] = "Weapom_Deringer.ExtractInsert"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/deringer/deringer_open.wav"
instbl["name"] = "Weapom_Deringer.OpenClose"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/deringer/deringer_open.wav"
instbl["name"] = "Weapom_Deringer.Open"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/deringer/deringer_close.wav"
instbl["name"] = "Weapom_Deringer.Close"
sound.Add(instbl)


// Fists
// Sound Design by Dimitris Plagiannis (dimitris@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "100"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"weapons/fists/fists_miss1.wav","weapons/fists/fists_miss2.wav","weapons/fists/fists_miss3.wav","weapons/fists/fists_miss4.wav"}
instbl["name"] = "Weapom_Fists.Miss"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "100"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"weapons/fists/fists_punch1.wav","weapons/fists/fists_punch2.wav","weapons/fists/fists_punch3.wav","weapons/fists/fists_punch4.wav"}
instbl["name"] = "Weapom_Fists.Hit"
sound.Add(instbl)

// Colt Peacemaker .45 Revolver

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/peacemaker/peacemaker_single1.wav","^weapons/peacemaker/peacemaker_single2.wav","^weapons/peacemaker/peacemaker_single3.wav"}
instbl["name"] = "Weapom_Peacemaker.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/peacemaker/peacemaker_spin.wav"
instbl["name"] = "Weapom_Peacemaker.Spin"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/peacemaker/peacemaker_insert1.wav","^weapons/peacemaker/peacemaker_insert2.wav","^weapons/peacemaker/peacemaker_insert3.wav"}
instbl["name"] = "Weapom_Peacemaker.Insert"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/peacemaker/peacemaker_cock.wav"
instbl["name"] = "Weapom_Peacemaker.Cock"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/peacemaker/peacemaker_close.wav"
instbl["name"] = "Weapom_Peacemaker.Close"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/peacemaker/peacemaker_open.wav"
instbl["name"] = "Weapom_Peacemaker.Open"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/peacemaker/peacemaker_empty.wav"
instbl["name"] = "Weapon_Peacemaker.Empty"
sound.Add(instbl)

// Sharps SharpShooter Rifle 
// Sound Design by Dimitris Plagiannis (dimitris@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = "^weapons/sharps/sharps_rifle_fire1.wav"
instbl["name"] = "Weapom_sharps.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/sharps/sharps_extract.wav"
instbl["name"] = "Weapom_sharps.Extract"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/sharps/sharps_open.wav"
instbl["name"] = "Weapom_Sharps.OpenBreech"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/sharps/sharps_cock.wav"
instbl["name"] = "Weapom_Sharps.Cock"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/sharps/sharps_insert.wav"
instbl["name"] = "Weapom_Sharps.Insert"
sound.Add(instbl)


// Henry Rifle .45 Repeating Rifle
// Sound Design by Hermann Rauth (hermann@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/henryrifle/henryrifle_single1.wav","^weapons/henryrifle/henryrifle_single2.wav","^weapons/henryrifle/henryrifle_single3.wav"}
instbl["name"] = "Weapom_HenryRifle.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/henryrifle/henryrifle_empty.wav"
instbl["name"] = "Weapom_HenryRifle.Empty"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"^weapons/henryrifle/henryrifle_insert1.wav","^weapons/henryrifle/henryrifle_insert2.wav","^weapons/henryrifle/henryrifle_insert3.wav"}
instbl["name"] = "Weapom_HenryRifle.Insert"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = ")weapons/henryrifle/henryrifle_lever.wav"
instbl["name"] = "Weapom_HenryRifle.Lever"
sound.Add(instbl)

// Winchester 
// Sound Design by Luke Hatton (luke@sonicvalley.com)

local instbl = {}
instbl["channel"] = "1"
instbl["level"] = "140"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "0.27"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/winchester_shotgun/shotgun_fire_1.wav"
instbl["name"] = "Weapom_winchester.Single"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"weapons/winchester_shotgun/shotgun_reload1.wav","weapons/winchester_shotgun/shotgun_reload2.wav","weapons/winchester_shotgun/shotgun_reload3.wav"}
instbl["name"] = "Weapom_Shotgun.NPC_Reload"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"weapons/winchester_shotgun/shotgun_pump1.wav","weapons/winchester_shotgun/shotgun_pump2.wav"}
instbl["name"] = "Weapom_Winchester.Lever"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = {"weapons/winchester_shotgun/shotgun_pump1.wav","weapons/winchester_shotgun/shotgun_pump2.wav"}
instbl["name"] = "Weapom_Shotgun.Special1"
sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/universal/uni-ironin.wav"
instbl["name"] = "Universal.IronIn"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/universal/uni-ironout.wav"
instbl["name"] = "Universal.IronOut"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/universal/uni-draw.wav"
instbl["name"] = "Universal.Draw"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/universal/uni-holster.wav"
instbl["name"] = "Universal.Holster"

sound.Add(instbl)

local instbl = {}
instbl["channel"] = "3"
instbl["level"] = "75"
instbl["volume"] = "1.0"
instbl["CompatibilityAttenuation"] = "1"
instbl["pitch"] = "95,105"
instbl["sound"] = "weapons/volcanic/volcanic_single.wav"
instbl["name"] = "Weapon.Volcanic"

sound.Add(instbl)
