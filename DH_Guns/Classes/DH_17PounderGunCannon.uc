//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_17PounderGunCannon extends DHATGunCannon;

defaultproperties
{
    SecondarySpread=0.00156
    ReloadSoundOne=sound'DH_Vehicle_Reloads.Reloads.reload_01s_01'
    ReloadSoundTwo=sound'DH_Vehicle_Reloads.Reloads.reload_02s_03'
    ReloadSoundThree=sound'DH_Vehicle_Reloads.Reloads.reload_01s_04'
    CannonFireSound(0)=SoundGroup'DH_AlliedVehicleSounds.17pounder.DH17pounder'
    CannonFireSound(1)=SoundGroup'DH_AlliedVehicleSounds.17pounder.DH17pounder'
    CannonFireSound(2)=SoundGroup'DH_AlliedVehicleSounds.17pounder.DH17pounder'
    ProjectileDescriptions(0)="APCBC"
    RangeSettings(1)=100
    RangeSettings(2)=200
    RangeSettings(3)=300
    RangeSettings(4)=400
    RangeSettings(5)=500
    RangeSettings(6)=600
    RangeSettings(7)=700
    RangeSettings(8)=800
    RangeSettings(9)=900
    RangeSettings(10)=1000
    RangeSettings(11)=1100
    RangeSettings(12)=1200
    RangeSettings(13)=1300
    RangeSettings(14)=1400
    RangeSettings(15)=1500
    RangeSettings(16)=1600
    RangeSettings(17)=1700
    RangeSettings(18)=1800
    RangeSettings(19)=1900
    RangeSettings(20)=2000
    VehHitpoints(0)=(PointRadius=9.0,PointScale=1.0,PointBone="com_player",PointOffset=(X=-12.0,Y=-12.0,Z=-35.0))
    VehHitpoints(1)=(PointRadius=15.0,PointScale=1.0,PointBone="com_player",PointOffset=(X=-12.0,Y=-12.0,Z=-55.0))
    YawBone="Turret"
    YawStartConstraint=-6000.0
    YawEndConstraint=6000.0
    PitchBone="gun01"
    PitchUpLimit=15000
    PitchDownLimit=45000
    WeaponFireAttachmentBone="Barrel"
    GunnerAttachmentBone="com_player"
    WeaponFireOffset=20.0
    RotationsPerSecond=0.02
    FireInterval=4.0
    FireSoundVolume=512.0
    FireForce="Explosion05"
    ProjectileClass=class'DH_Guns.DH_17PounderCannonShell'
    ShakeRotMag=(Z=110.0)
    ShakeRotRate=(Z=1100.0)
    ShakeRotTime=2.0
    ShakeOffsetMag=(Z=5.0)
    ShakeOffsetRate=(Z=100.0)
    ShakeOffsetTime=2.0
    AIInfo(0)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.5)
    AIInfo(1)=(bLeadTarget=true,WarnTargetPct=0.75,RefireRate=0.015)
    CustomPitchUpLimit=3004
    CustomPitchDownLimit=64444
    MaxPositiveYaw=5460
    MaxNegativeYaw=-5460
    bLimitYaw=true
    BeginningIdleAnim="com_idle_close"
    InitialPrimaryAmmo=60
    InitialSecondaryAmmo=30
    PrimaryProjectileClass=class'DH_Guns.DH_17PounderCannonShell'
    SecondaryProjectileClass=class'DH_Guns.DH_17PounderCannonShellHE'
    Mesh=SkeletalMesh'DH_17PounderGun_anm.17Pounder_turret'
    Skins(0)=texture'DH_Artillery_Tex.17pounder.17Pounder'
    Skins(1)=texture'Weapons1st_tex.Bullets.Bullet_Shell_Rifle_MN'
    SoundVolume=130
    SoundRadius=200.0
}
