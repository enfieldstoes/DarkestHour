//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DH_MP3008Attachment extends DHWeaponAttachment;

defaultproperties
{
    Mesh=SkeletalMesh'DH_Weapons3rd_2_anm.mp3008_3rd'
    MenuImage=Texture'DH_Sten_tex.interface.mp3008'
    mMuzFlashClass=class'ROEffects.MuzzleFlash3rdMP'
    ROShellCaseClass=class'ROAmmo.RO3rdShellEject9x19mm'

    MuzzleBoneName="tipnew"

    WA_Idle="Idle_mp40"
    WA_IdleEmpty="Idle_mp40"
    WA_Fire="shoot_mp40"
    WA_Reload="reloadhalf_mp40"
    WA_ReloadEmpty="reloadempty_mp40"
    WA_ProneReload="prone_reloadhalf_mp40"
    WA_ProneReloadEmpty="prone_reloadempty_mp40"

    PA_MovementAnims(0)="stand_jogF_mp40"
    PA_MovementAnims(1)="stand_jogB_mp40"
    PA_MovementAnims(2)="stand_jogL_mp40"
    PA_MovementAnims(3)="stand_jogR_mp40"
    PA_MovementAnims(4)="stand_jogFL_mp40"
    PA_MovementAnims(5)="stand_jogFR_mp40"
    PA_MovementAnims(6)="stand_jogBL_mp40"
    PA_MovementAnims(7)="stand_jogBR_mp40"
    PA_CrouchAnims(0)="crouch_walkF_mp40"
    PA_CrouchAnims(1)="crouch_walkB_mp40"
    PA_CrouchAnims(2)="crouch_walkL_mp40"
    PA_CrouchAnims(3)="crouch_walkR_mp40"
    PA_CrouchAnims(4)="crouch_walkFL_mp40"
    PA_CrouchAnims(5)="crouch_walkFR_mp40"
    PA_CrouchAnims(6)="crouch_walkBL_mp40"
    PA_CrouchAnims(7)="crouch_walkBR_mp40"
    PA_ProneIronAnims(0)="prone_slowcrawlF_mp40"
    PA_ProneIronAnims(1)="prone_slowcrawlB_mp40"
    PA_ProneIronAnims(2)="prone_slowcrawlL_mp40"
    PA_ProneIronAnims(3)="prone_slowcrawlR_mp40"
    PA_ProneIronAnims(4)="prone_slowcrawlL_mp40"
    PA_ProneIronAnims(5)="prone_slowcrawlR_mp40"
    PA_ProneIronAnims(6)="prone_slowcrawlB_mp40"
    PA_ProneIronAnims(7)="prone_slowcrawlB_mp40"
    PA_WalkAnims(0)="stand_walkFhip_mp40"
    PA_WalkAnims(1)="stand_walkBhip_mp40"
    PA_WalkAnims(2)="stand_walkLhip_mp40"
    PA_WalkAnims(3)="stand_walkRhip_mp40"
    PA_WalkAnims(4)="stand_walkFLhip_mp40"
    PA_WalkAnims(5)="stand_walkFRhip_mp40"
    PA_WalkAnims(6)="stand_walkBLhip_mp40"
    PA_WalkAnims(7)="stand_walkBRhip_mp40"
    PA_WalkIronAnims(0)="stand_walkFiron_mp40"
    PA_WalkIronAnims(1)="stand_walkBiron_mp40"
    PA_WalkIronAnims(2)="stand_walkLiron_mp40"
    PA_WalkIronAnims(3)="stand_walkRiron_mp40"
    PA_WalkIronAnims(4)="stand_walkFLiron_mp40"
    PA_WalkIronAnims(5)="stand_walkFRiron_mp40"
    PA_WalkIronAnims(6)="stand_walkBLiron_mp40"
    PA_WalkIronAnims(7)="stand_walkBRiron_mp40"
    PA_SprintAnims(0)="stand_sprintF_mp40"
    PA_SprintAnims(1)="stand_sprintB_mp40"
    PA_SprintAnims(2)="stand_sprintL_mp40"
    PA_SprintAnims(3)="stand_sprintR_mp40"
    PA_SprintAnims(4)="stand_sprintFL_mp40"
    PA_SprintAnims(5)="stand_sprintFR_mp40"
    PA_SprintAnims(6)="stand_sprintBL_mp40"
    PA_SprintAnims(7)="stand_sprintBR_mp40"
    PA_SprintCrouchAnims(0)="crouch_sprintF_mp40"
    PA_SprintCrouchAnims(1)="crouch_sprintB_mp40"
    PA_SprintCrouchAnims(2)="crouch_sprintL_mp40"
    PA_SprintCrouchAnims(3)="crouch_sprintR_mp40"
    PA_SprintCrouchAnims(4)="crouch_sprintFL_mp40"
    PA_SprintCrouchAnims(5)="crouch_sprintFR_mp40"
    PA_SprintCrouchAnims(6)="crouch_sprintBL_mp40"
    PA_SprintCrouchAnims(7)="crouch_sprintBR_mp40"
    PA_TurnRightAnim="stand_turnRhip_mp40"
    PA_TurnLeftAnim="stand_turnLhip_mp40"
    PA_TurnIronRightAnim="stand_turnRiron_mp40"
    PA_TurnIronLeftAnim="stand_turnLiron_mp40"
    PA_CrouchTurnIronRightAnim="crouch_turnRiron_mp40"
    PA_CrouchTurnIronLeftAnim="crouch_turnRiron_mp40"
    PA_ProneTurnRightAnim="prone_turnR_mp40"
    PA_ProneTurnLeftAnim="prone_turnL_mp40"
    PA_StandToProneAnim="StandtoProne_mp40"
    PA_CrouchToProneAnim="CrouchtoProne_mp40"
    PA_ProneToStandAnim="PronetoStand_mp40"
    PA_ProneToCrouchAnim="PronetoCrouch_mp40"
    PA_DiveToProneStartAnim="prone_diveF_kar"
    PA_DiveToProneEndAnim="prone_diveend_kar"
    PA_CrouchTurnRightAnim="crouch_turnR_mp40"
    PA_CrouchTurnLeftAnim="crouch_turnL_mp40"
    PA_CrouchIdleRestAnim="crouch_idle_mp40"
    PA_IdleCrouchAnim="crouch_idle_mp40"
    PA_IdleRestAnim="stand_idlehip_mp40"
    PA_IdleWeaponAnim="stand_idlehip_mp40"
    PA_IdleIronRestAnim="stand_idleiron_mp40"
    PA_IdleIronWeaponAnim="stand_idleiron_mp40"
    PA_IdleCrouchIronWeaponAnim="crouch_idleiron_mp40"
    PA_IdleProneAnim="prone_idle_mp40"
    PA_ReloadAnim="stand_reloadhalf_mp40"
    PA_ProneReloadAnim="prone_reloadhalf_mp40"
    PA_ReloadEmptyAnim="stand_reloadhalf_mp40"
    PA_ProneReloadEmptyAnim="prone_reloadhalf_mp40"
    PA_ProneIdleRestAnim="prone_idle_mp40"
    PA_Fire="stand_shoothip_mp40"
    PA_IronFire="stand_shootiron_mp40"
    PA_CrouchFire="crouch_shoot_mp40"
    PA_CrouchIronFire="crouch_shootiron_mp40"
    PA_ProneFire="prone_shoot_mp40"
    PA_MoveStandFire(0)="stand_shootFhip_mp40"
    PA_MoveStandFire(1)="stand_shootFhip_mp40"
    PA_MoveStandFire(2)="stand_shootLRhip_mp40"
    PA_MoveStandFire(3)="stand_shootLRhip_mp40"
    PA_MoveStandFire(4)="stand_shootFLhip_mp40"
    PA_MoveStandFire(5)="stand_shootFRhip_mp40"
    PA_MoveStandFire(6)="stand_shootFRhip_mp40"
    PA_MoveStandFire(7)="stand_shootFLhip_mp40"
    PA_MoveCrouchFire(0)="crouch_shootF_mp40"
    PA_MoveCrouchFire(1)="crouch_shootF_mp40"
    PA_MoveCrouchFire(2)="crouch_shootLR_mp40"
    PA_MoveCrouchFire(3)="crouch_shootLR_mp40"
    PA_MoveCrouchFire(4)="crouch_shootF_mp40"
    PA_MoveCrouchFire(5)="crouch_shootF_mp40"
    PA_MoveCrouchFire(6)="crouch_shootF_mp40"
    PA_MoveCrouchFire(7)="crouch_shootF_mp40"
    PA_MoveWalkFire(0)="stand_shootFwalk_mp40"
    PA_MoveWalkFire(1)="stand_shootFwalk_mp40"
    PA_MoveWalkFire(2)="stand_shootLRwalk_mp40"
    PA_MoveWalkFire(3)="stand_shootLRwalk_mp40"
    PA_MoveWalkFire(4)="stand_shootFLwalk_mp40"
    PA_MoveWalkFire(5)="stand_shootFRwalk_mp40"
    PA_MoveWalkFire(6)="stand_shootFRwalk_mp40"
    PA_MoveWalkFire(7)="stand_shootFLwalk_mp40"
    PA_MoveStandIronFire(0)="stand_shootiron_mp40"
    PA_MoveStandIronFire(1)="stand_shootiron_mp40"
    PA_MoveStandIronFire(2)="stand_shootLRiron_mp40"
    PA_MoveStandIronFire(3)="stand_shootLRiron_mp40"
    PA_MoveStandIronFire(4)="stand_shootFLiron_mp40"
    PA_MoveStandIronFire(5)="stand_shootFRiron_mp40"
    PA_MoveStandIronFire(6)="stand_shootFRiron_mp40"
    PA_MoveStandIronFire(7)="stand_shootFLiron_mp40"
    PA_AltFire="stand_idlestrike_kar"
    PA_CrouchAltFire="stand_idlestrike_kar"
    PA_ProneAltFire="prone_idlestrike_bayo"
    PA_FireLastShot="stand_shoothip_mp40"
    PA_IronFireLastShot="stand_shootiron_mp40"
    PA_CrouchFireLastShot="crouch_shoot_mp40"
    PA_ProneFireLastShot="prone_shoot_mp40"
    PA_AirStillAnim="jump_mid_mp40"
    PA_AirAnims(0)="jumpF_mid_mp40"
    PA_AirAnims(1)="jumpB_mid_mp40"
    PA_AirAnims(2)="jumpL_mid_mp40"
    PA_AirAnims(3)="jumpR_mid_mp40"
    PA_TakeoffStillAnim="jump_takeoff_mp40"
    PA_TakeoffAnims(0)="jumpF_takeoff_mp40"
    PA_TakeoffAnims(1)="jumpB_takeoff_mp40"
    PA_TakeoffAnims(2)="jumpL_takeoff_mp40"
    PA_TakeoffAnims(3)="jumpR_takeoff_mp40"
    PA_LandAnims(0)="jumpF_land_mp40"
    PA_LandAnims(1)="jumpB_land_mp40"
    PA_LandAnims(2)="jumpL_land_mp40"
    PA_LandAnims(3)="jumpR_land_mp40"
    PA_DodgeAnims(0)="jumpF_mid_mp40"
    PA_DodgeAnims(1)="jumpB_mid_mp40"
    PA_DodgeAnims(2)="jumpL_mid_mp40"
    PA_DodgeAnims(3)="jumpR_mid_mp40"
}
