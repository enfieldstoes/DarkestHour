//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_MG34Attachment extends DHHighROFWeaponAttachment;

defaultproperties
{
    Mesh=SkeletalMesh'Weapons3rd_anm.mg34'
    MenuImage=Texture'InterfaceArt_tex.Menu_weapons.mg34'
    mMuzFlashClass=class'ROEffects.MuzzleFlash3rdMG'
    ROShellCaseClass=class'ROAmmo.RO3rdShellEject762x54mm'
    bAltFireFlash=true
    bBarrelCanOverheat=true

    ClientProjectileClass=class'DH_Weapons.DH_MG34Bullet'
    bUsesTracers=true
    TracerFrequency=7
    ClientTracerClass=class'DH_MG34TracerBullet'

    WA_Idle="idle_mg34"
    WA_IdleEmpty="idle_mg34"
    WA_Fire="shoot_mg34"
    WA_Reload="reload_mg34"
    WA_ReloadEmpty="reload_mg34"
    WA_ProneReload="prone_reload_mg34"
    WA_ProneReloadEmpty="prone_reload_mg34"

    PA_MovementAnims(0)="stand_jogF_mg34"
    PA_MovementAnims(1)="stand_jogB_mg34"
    PA_MovementAnims(2)="stand_jogL_mg34"
    PA_MovementAnims(3)="stand_jogR_mg34"
    PA_MovementAnims(4)="stand_jogFL_mg34"
    PA_MovementAnims(5)="stand_jogFR_mg34"
    PA_MovementAnims(6)="stand_jogBL_mg34"
    PA_MovementAnims(7)="stand_jogBR_mg34"
    PA_CrouchAnims(0)="crouch_walkF_mg34"
    PA_CrouchAnims(1)="crouch_walkB_mg34"
    PA_CrouchAnims(2)="crouch_walkL_mg34"
    PA_CrouchAnims(3)="crouch_walkR_mg34"
    PA_CrouchAnims(4)="crouch_walkFL_mg34"
    PA_CrouchAnims(5)="crouch_walkFR_mg34"
    PA_CrouchAnims(6)="crouch_walkBL_mg34"
    PA_CrouchAnims(7)="crouch_walkBR_mg34"
    PA_ProneIronAnims(0)="prone_slowcrawlF_mg34"
    PA_ProneIronAnims(1)="prone_slowcrawlB_mg34"
    PA_ProneIronAnims(2)="prone_slowcrawlL_mg34"
    PA_ProneIronAnims(3)="prone_slowcrawlR_mg34"
    PA_ProneIronAnims(4)="prone_slowcrawlL_mg34"
    PA_ProneIronAnims(5)="prone_slowcrawlR_mg34"
    PA_ProneIronAnims(6)="prone_slowcrawlB_mg34"
    PA_ProneIronAnims(7)="prone_slowcrawlB_mg34"
    PA_WalkAnims(0)="stand_walkFrest_mg34"
    PA_WalkAnims(1)="stand_walkBrest_mg34"
    PA_WalkAnims(2)="stand_walkLrest_mg34"
    PA_WalkAnims(3)="stand_walkRrest_mg34"
    PA_WalkAnims(4)="stand_walkFLrest_mg34"
    PA_WalkAnims(5)="stand_walkFRrest_mg34"
    PA_WalkAnims(6)="stand_walkBLrest_mg34"
    PA_WalkAnims(7)="stand_walkBRrest_mg34"
    PA_WalkIronAnims(0)="stand_walkFhip_mg34"
    PA_WalkIronAnims(1)="stand_walkBhip_mg34"
    PA_WalkIronAnims(2)="stand_walkLhip_mg34"
    PA_WalkIronAnims(3)="stand_walkRhip_mg34"
    PA_WalkIronAnims(4)="stand_walkFLhip_mg34"
    PA_WalkIronAnims(5)="stand_walkFRhip_mg34"
    PA_WalkIronAnims(6)="stand_walkBLhip_mg34"
    PA_WalkIronAnims(7)="stand_walkBRhip_mg34"
    PA_SprintAnims(0)="stand_sprintF_mg34"
    PA_SprintAnims(1)="stand_sprintB_mg34"
    PA_SprintAnims(2)="stand_sprintL_mg34"
    PA_SprintAnims(3)="stand_sprintR_mg34"
    PA_SprintAnims(4)="stand_sprintFL_mg34"
    PA_SprintAnims(5)="stand_sprintFR_mg34"
    PA_SprintAnims(6)="stand_sprintBL_mg34"
    PA_SprintAnims(7)="stand_sprintBR_mg34"
    PA_SprintCrouchAnims(0)="crouch_sprintF_mg34"
    PA_SprintCrouchAnims(1)="crouch_sprintB_mg34"
    PA_SprintCrouchAnims(2)="crouch_sprintL_mg34"
    PA_SprintCrouchAnims(3)="crouch_sprintR_mg34"
    PA_SprintCrouchAnims(4)="crouch_sprintFL_mg34"
    PA_SprintCrouchAnims(5)="crouch_sprintFR_mg34"
    PA_SprintCrouchAnims(6)="crouch_sprintBL_mg34"
    PA_SprintCrouchAnims(7)="crouch_sprintBR_mg34"
    PA_TurnRightAnim="stand_turnRrest_mg34"
    PA_TurnLeftAnim="stand_turnLrest_mg34"
    PA_TurnIronRightAnim="stand_turnRhip_mg34"
    PA_TurnIronLeftAnim="stand_turnLhip_mg34"
    PA_CrouchTurnIronRightAnim="crouch_turnR_mg34"
    PA_CrouchTurnIronLeftAnim="crouch_turnL_mg34"
    PA_ProneTurnRightAnim="prone_turnR_mg34"
    PA_ProneTurnLeftAnim="prone_turnL_mg34"
    PA_StandToProneAnim="StandtoProne_mg34"
    PA_CrouchToProneAnim="CrouchtoProne_mg34"
    PA_ProneToStandAnim="PronetoStand_mg34"
    PA_ProneToCrouchAnim="PronetoCrouch_mg34"
    PA_DiveToProneStartAnim="prone_diveF_kar"
    PA_DiveToProneEndAnim="prone_diveend_kar"
    PA_CrouchTurnRightAnim="crouch_turnR_mg34"
    PA_CrouchTurnLeftAnim="crouch_turnL_mg34"
    PA_CrouchIdleRestAnim="crouch_idle_mg34"
    PA_IdleCrouchAnim="crouch_idle_mg34"
    PA_IdleRestAnim="stand_idlerest_mg34"
    PA_IdleWeaponAnim="stand_idlerest_mg34"
    PA_IdleIronRestAnim="stand_idlehip_mg34"
    PA_IdleIronWeaponAnim="stand_idlehip_mg34"
    PA_IdleCrouchIronWeaponAnim="crouch_idle_mg34"
    PA_IdleProneAnim="prone_idle_mg34"
    PA_IdleDeployedAnim="stand_idleiron_mg34"
    PA_IdleDeployedProneAnim="prone_idle_mg34"
    PA_IdleDeployedCrouchAnim="crouch_idleiron_mg34"
    PA_ReloadAnim="stand_reload_mg34"
    PA_ProneReloadAnim="prone_reload_mg34"
    PA_ReloadEmptyAnim="stand_reload_mg34"
    PA_ProneReloadEmptyAnim="prone_reload_mg34"
    PA_ProneIdleRestAnim="prone_idle_mg34"
    PA_StandWeaponDeployAnim="stand_idleiron_mg34"
    PA_ProneWeaponDeployAnim="prone_idle_mg34"
    PA_StandWeaponUnDeployAnim="stand_idleiron_mg34"
    PA_ProneWeaponUnDeployAnim="prone_idle_mg34"
    PA_Fire="stand_shoothip_mg34"
    PA_IronFire="stand_shoothip_mg34"
    PA_CrouchFire="crouch_shoot_mg34"
    PA_CrouchIronFire="crouch_shootiron_mg34"
    PA_ProneFire="prone_shoot_mg34"
    PA_DeployedFire="stand_shootiron_mg34"
    PA_CrouchDeployedFire="crouch_shootiron_mg34"
    PA_ProneDeployedFire="prone_shoot_mg34"
    PA_MoveStandFire(0)="stand_shootFwalk_mg34"
    PA_MoveStandFire(1)="stand_shootFwalk_mg34"
    PA_MoveStandFire(2)="stand_shootLRwalk_mg34"
    PA_MoveStandFire(3)="stand_shootLRwalk_mg34"
    PA_MoveStandFire(4)="stand_shootFLwalk_mg34"
    PA_MoveStandFire(5)="stand_shootFRwalk_mg34"
    PA_MoveStandFire(6)="stand_shootFRwalk_mg34"
    PA_MoveStandFire(7)="stand_shootFLwalk_mg34"
    PA_MoveCrouchFire(0)="crouch_shootF_mg34"
    PA_MoveCrouchFire(1)="crouch_shootF_mg34"
    PA_MoveCrouchFire(2)="crouch_shootLR_mg34"
    PA_MoveCrouchFire(3)="crouch_shootLR_mg34"
    PA_MoveCrouchFire(4)="crouch_shootF_mg34"
    PA_MoveCrouchFire(5)="crouch_shootF_mg34"
    PA_MoveCrouchFire(6)="crouch_shootF_mg34"
    PA_MoveCrouchFire(7)="crouch_shootF_mg34"
    PA_MoveWalkFire(0)="stand_shootFwalk_mg34"
    PA_MoveWalkFire(1)="stand_shootFwalk_mg34"
    PA_MoveWalkFire(2)="stand_shootLRwalk_mg34"
    PA_MoveWalkFire(3)="stand_shootLRwalk_mg34"
    PA_MoveWalkFire(4)="stand_shootFLwalk_mg34"
    PA_MoveWalkFire(5)="stand_shootFRwalk_mg34"
    PA_MoveWalkFire(6)="stand_shootFRwalk_mg34"
    PA_MoveWalkFire(7)="stand_shootFLwalk_mg34"
    PA_MoveStandIronFire(0)="stand_shootFwalk_mg34"
    PA_MoveStandIronFire(1)="stand_shootFwalk_mg34"
    PA_MoveStandIronFire(2)="stand_shootLRwalk_mg34"
    PA_MoveStandIronFire(3)="stand_shootLRwalk_mg34"
    PA_MoveStandIronFire(4)="stand_shootFLwalk_mg34"
    PA_MoveStandIronFire(5)="stand_shootFRwalk_mg34"
    PA_MoveStandIronFire(6)="stand_shootFRwalk_mg34"
    PA_MoveStandIronFire(7)="stand_shootFLwalk_mg34"
    PA_AltFire="stand_shoothip_mg34"
    PA_CrouchAltFire="crouch_shoot_mg34"
    PA_ProneAltFire="prone_shoot_mg34"
    PA_FireLastShot="stand_shoothip_mg34"
    PA_IronFireLastShot="stand_shootiron_mg34"
    PA_CrouchFireLastShot="crouch_shoot_mg34"
    PA_ProneFireLastShot="prone_shoot_mg34"
}
