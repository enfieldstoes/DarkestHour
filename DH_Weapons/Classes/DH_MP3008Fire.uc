//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DH_MP3008Fire extends DHAutomaticFire;

defaultproperties
{
    ProjectileClass=class'DH_Weapons.DH_MP3008Bullet'
    AmmoClass=class'ROAmmo.MP32Rd9x19Ammo'
    FireRate=0.105 // 570rpm
    Spread=148.0

    // Recoil
    RecoilRate=0.075
    MaxVerticalRecoilAngle=260
    MaxHorizontalRecoilAngle=90
    RecoilCurve=(Points=((InVal=0.0,OutVal=0.7),(InVal=5.0,OutVal=0.85),(InVal=12.0,OutVal=1.0),(InVal=10000000000.0,OutVal=1.0))))
    RecoilFallOffFactor=9.0

    FlashEmitterClass=class'ROEffects.MuzzleFlash1stMP'
    FireSounds(0)=SoundGroup'DH_WeaponSounds.Sten.Sten_fire_g1'
    FireSounds(1)=SoundGroup'DH_WeaponSounds.Sten.Sten_fire_g2'
    FireSounds(2)=SoundGroup'DH_WeaponSounds.Sten.Sten_fire_g3'
    NoAmmoSound=Sound'Inf_Weapons_Foley.Misc.dryfire_smg'
    //PreFireAnim="Shoot1_start"
    ShellEjectClass=class'ROAmmo.ShellEject1st9x19mm'
    //ShellIronSightOffset=(X=15.0,Y=0.0,Z=-1.5)
    //ShellRotOffsetIron=(Pitch=-500)
    
    FireIronLastAnim="iron_shoot_last"
    FireLastAnim="shoot_last"
}
