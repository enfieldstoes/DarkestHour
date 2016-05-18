//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_BrenCarrierMG extends DHVehicleMG;

defaultproperties
{
    // MG mesh
    Mesh=SkeletalMesh'DH_BrenCarrier_anm.Bren_mg_ext'
    Skins(0)=texture'DH_Weapon_tex.AlliedSmallArms.BrenGun'
    bForceSkelUpdate=true // necessary for new player hit detection system, as makes server update the MG mesh skeleton, which it wouldn't otherwise as server doesn't draw mesh
    GunnerAttachmentBone="com_attachment"

    // Movement
    RotationsPerSecond=0.5
    YawBone="Gun_protection"
    MaxPositiveYaw=7500
    MaxNegativeYaw=-7000
    PitchBone="Gun_protection"
    CustomPitchUpLimit=3500
    CustomPitchDownLimit=63000

    // Ammo
    ProjectileClass=class'DH_Weapons.DH_BrenBullet'
    InitialPrimaryAmmo=30
    NumMGMags=20
    FireInterval=0.125
    TracerProjectileClass=class'DH_Weapons.DH_BrenTracerBullet'
    TracerFrequency=5
    HudAltAmmoIcon=texture'DH_InterfaceArt_tex.weapon_icons.Bren_ammo'

    // Weapon fire
    WeaponFireAttachmentBone="Tip"
    AmbientEffectEmitterClass=class'DH_Vehicles.DH_VehicleBrenMGEmitter'
    FireSoundClass=sound'DH_WeaponSounds.Bren.Bren_Loop011'
    FireEndSound=sound'DH_WeaponSounds.Bren.Bren_LoopEnd'
    ShakeOffsetMag=(X=0.5,Y=0.0,Z=0.2)
    ShakeOffsetRate=(X=5.0,Y=5.0,Z=5.0)
    ShakeRotMag=(X=25.0,Y=0.0,Z=10.0)
    ShakeRotRate=(X=50.0,Y=50.0,Z=50.0)

    // Reload (HUDProportion overrides to better suit the curved magazine of the bren gun)
    HUDOverlayReloadAnim="reload_empty"
    ReloadStages(0)=(Sound=none,Duration=1.83) // no sounds because HUD overlay reload animation plays them
    ReloadStages(1)=(Sound=none,Duration=1.83,HUDProportion=0.67)
    ReloadStages(2)=(Sound=none,Duration=1.67)
    ReloadStages(3)=(Sound=none,Duration=1.67,HUDProportion=0.35)
}
