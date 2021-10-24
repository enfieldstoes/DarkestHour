//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2021
//==============================================================================

class DH_StenMkIIIAttachment extends DHWeaponAttachment;

defaultproperties
{
    Mesh=SkeletalMesh'DH_Weapons3rd_2_anm.StenMk3_3rd'
    MenuImage=Texture'DH_Sten_tex.interface.stenmk3'
    mMuzFlashClass=class'DH_Effects.DHMuzzleFlash3rdSMG'
    ROShellCaseClass=class'ROAmmo.RO3rdShellEject9x19mm'
    
    MuzzleBoneName="tipnew"
    ShellEjectionBoneName="weapon_ejectnew"

    WA_Idle="idle_sten"
    WA_IdleEmpty="idle_sten"
    WA_Fire="shoot_sten"
    WA_Reload="reload_sten"
    WA_ReloadEmpty="reload_sten"
    WA_ProneReload="prone_reload_sten"
    WA_ProneReloadEmpty="prone_reload_sten"

    PA_MovementAnims(0)="stand_jogF_Kar"
    PA_MovementAnims(1)="stand_jogB_Kar"
    PA_MovementAnims(2)="stand_jogL_Kar"
    PA_MovementAnims(3)="stand_jogR_Kar"
    PA_MovementAnims(4)="stand_jogFL_Kar"
    PA_MovementAnims(5)="stand_jogFR_Kar"
    PA_MovementAnims(6)="stand_jogBL_Kar"
    PA_MovementAnims(7)="stand_jogBR_Kar"
    PA_CrouchAnims(0)="crouch_walkF_Kar"
    PA_CrouchAnims(1)="crouch_walkB_Kar"
    PA_CrouchAnims(2)="crouch_walkL_Kar"
    PA_CrouchAnims(3)="crouch_walkR_Kar"
    PA_CrouchAnims(4)="crouch_walkFL_Kar"
    PA_CrouchAnims(5)="crouch_walkFR_Kar"
    PA_CrouchAnims(6)="crouch_walkBL_Kar"
    PA_CrouchAnims(7)="crouch_walkBR_Kar"
    PA_ProneIronAnims(0)="Prone_slowcrawlF_Kar"
    PA_ProneIronAnims(1)="Prone_slowcrawlB_Kar"
    PA_ProneIronAnims(2)="Prone_slowcrawlL_Kar"
    PA_ProneIronAnims(3)="Prone_slowcrawlR_Kar"
    PA_ProneIronAnims(4)="Prone_slowcrawlL_Kar"
    PA_ProneIronAnims(5)="Prone_slowcrawlR_Kar"
    PA_ProneIronAnims(6)="Prone_slowcrawlB_Kar"
    PA_ProneIronAnims(7)="Prone_slowcrawlB_Kar"
    PA_WalkAnims(0)="stand_walkFhip_Kar"
    PA_WalkAnims(1)="stand_walkBhip_Kar"
    PA_WalkAnims(2)="stand_walkLhip_Kar"
    PA_WalkAnims(3)="stand_walkRhip_Kar"
    PA_WalkAnims(4)="stand_walkFLhip_Kar"
    PA_WalkAnims(5)="stand_walkFRhip_Kar"
    PA_WalkAnims(6)="stand_walkBLhip_Kar"
    PA_WalkAnims(7)="stand_walkBRhip_Kar"
    PA_WalkIronAnims(0)="stand_walkFiron_Kar"
    PA_WalkIronAnims(1)="stand_walkBiron_Kar"
    PA_WalkIronAnims(2)="stand_walkLiron_Kar"
    PA_WalkIronAnims(3)="stand_walkRiron_Kar"
    PA_WalkIronAnims(4)="stand_walkFLiron_Kar"
    PA_WalkIronAnims(5)="stand_walkFRiron_Kar"
    PA_WalkIronAnims(6)="stand_walkBLiron_Kar"
    PA_WalkIronAnims(7)="stand_walkBRiron_Kar"
    PA_SprintAnims(0)="stand_sprintF_Kar"
    PA_SprintAnims(1)="stand_sprintB_Kar"
    PA_SprintAnims(2)="stand_sprintL_Kar"
    PA_SprintAnims(3)="stand_sprintR_Kar"
    PA_SprintAnims(4)="stand_sprintFL_Kar"
    PA_SprintAnims(5)="stand_sprintFR_Kar"
    PA_SprintAnims(6)="stand_sprintBL_Kar"
    PA_SprintAnims(7)="stand_sprintBR_Kar"
    PA_SprintCrouchAnims(0)="crouch_sprintF_Kar"
    PA_SprintCrouchAnims(1)="crouch_sprintB_Kar"
    PA_SprintCrouchAnims(2)="crouch_sprintL_Kar"
    PA_SprintCrouchAnims(3)="crouch_sprintR_Kar"
    PA_SprintCrouchAnims(4)="crouch_sprintFL_Kar"
    PA_SprintCrouchAnims(5)="crouch_sprintFR_Kar"
    PA_SprintCrouchAnims(6)="crouch_sprintBL_Kar"
    PA_SprintCrouchAnims(7)="crouch_sprintBR_Kar"
    PA_TurnRightAnim="stand_turnRhip_Kar"
    PA_TurnLeftAnim="stand_turnLhip_Kar"
    PA_TurnIronRightAnim="stand_turnRiron_Kar"
    PA_TurnIronLeftAnim="stand_turnLiron_Kar"
    PA_CrouchTurnIronRightAnim="crouch_turnRiron_Kar"
    PA_CrouchTurnIronLeftAnim="crouch_turnRiron_Kar"
    PA_ProneTurnRightAnim="Prone_turnR_Kar"
    PA_ProneTurnLeftAnim="Prone_turnL_Kar"
    PA_StandToProneAnim="StandtoProne_Kar"
    PA_CrouchToProneAnim="CrouchtoProne_Kar"
    PA_ProneToStandAnim="PronetoStand_Kar"
    PA_ProneToCrouchAnim="PronetoCrouch_Kar"
    PA_DiveToProneStartAnim="prone_diveF_kar"
    PA_DiveToProneEndAnim="prone_diveend_kar"
    PA_CrouchTurnRightAnim="crouch_turnR_Kar"
    PA_CrouchTurnLeftAnim="crouch_turnL_Kar"
    PA_CrouchIdleRestAnim="crouch_idle_Kar"
    PA_IdleCrouchAnim="crouch_idle_Kar"
    PA_IdleRestAnim="stand_idlehip_Kar"
    PA_IdleWeaponAnim="stand_idlehip_Kar"
    PA_IdleIronRestAnim="stand_idleiron_Kar"
    PA_IdleIronWeaponAnim="stand_idleiron_Kar"
    PA_IdleCrouchIronWeaponAnim="crouch_idleiron_Kar"
    PA_IdleProneAnim="Prone_idle_Kar"
    PA_ReloadAnim="stand_reload_sten"  //
    PA_ProneReloadAnim="prone_reload_sten" //
    PA_ReloadEmptyAnim="stand_reload_sten" //
    PA_ProneReloadEmptyAnim="prone_reload_sten"  //
    PA_ProneIdleRestAnim="Prone_idle_Kar"
    PA_Fire="stand_shoothip_Kar"
    PA_IronFire="stand_shootiron_Kar"
    PA_CrouchFire="crouch_shoot_Kar"
    PA_CrouchIronFire="crouch_shootiron_Kar"
    PA_ProneFire="prone_shoot_Kar"
    PA_MoveStandFire(0)="stand_shootFhip_Kar"
    PA_MoveStandFire(1)="stand_shootFhip_Kar"
    PA_MoveStandFire(2)="stand_shootLRhip_Kar"
    PA_MoveStandFire(3)="stand_shootLRhip_Kar"
    PA_MoveStandFire(4)="stand_shootFLhip_Kar"
    PA_MoveStandFire(5)="stand_shootFRhip_Kar"
    PA_MoveStandFire(6)="stand_shootFRhip_Kar"
    PA_MoveStandFire(7)="stand_shootFLhip_Kar"
    PA_MoveCrouchFire(0)="crouch_shootF_Kar"
    PA_MoveCrouchFire(1)="crouch_shootF_Kar"
    PA_MoveCrouchFire(2)="crouch_shootLR_Kar"
    PA_MoveCrouchFire(3)="crouch_shootLR_Kar"
    PA_MoveCrouchFire(4)="crouch_shootF_Kar"
    PA_MoveCrouchFire(5)="crouch_shootF_Kar"
    PA_MoveCrouchFire(6)="crouch_shootF_Kar"
    PA_MoveCrouchFire(7)="crouch_shootF_Kar"
    PA_MoveWalkFire(0)="stand_shootFwalk_Kar"
    PA_MoveWalkFire(1)="stand_shootFwalk_Kar"
    PA_MoveWalkFire(2)="stand_shootLRwalk_Kar"
    PA_MoveWalkFire(3)="stand_shootLRwalk_Kar"
    PA_MoveWalkFire(4)="stand_shootFLwalk_Kar"
    PA_MoveWalkFire(5)="stand_shootFRwalk_Kar"
    PA_MoveWalkFire(6)="stand_shootFRwalk_Kar"
    PA_MoveWalkFire(7)="stand_shootFLwalk_Kar"
    PA_MoveStandIronFire(0)="stand_shootiron_Kar"
    PA_MoveStandIronFire(1)="stand_shootiron_Kar"
    PA_MoveStandIronFire(2)="stand_shootLRiron_Kar"
    PA_MoveStandIronFire(3)="stand_shootLRiron_Kar"
    PA_MoveStandIronFire(4)="stand_shootFLiron_Kar"
    PA_MoveStandIronFire(5)="stand_shootFRiron_Kar"
    PA_MoveStandIronFire(6)="stand_shootFRiron_Kar"
    PA_MoveStandIronFire(7)="stand_shootFLiron_Kar"
    PA_AltFire="stand_idlestrike_kar"
    PA_CrouchAltFire="stand_idlestrike_kar"
    PA_ProneAltFire="prone_idlestrike_bayo"
    PA_FireLastShot="stand_shoothip_Kar"
    PA_IronFireLastShot="stand_shootiron_Kar"
    PA_CrouchFireLastShot="crouch_shoot_Kar"
    PA_ProneFireLastShot="prone_shoot_Kar"
    PA_AirStillAnim="jump_mid_pps43"
    PA_AirAnims(0)="jumpF_mid_pps43"
    PA_AirAnims(1)="jumpB_mid_pps43"
    PA_AirAnims(2)="jumpL_mid_pps43"
    PA_AirAnims(3)="jumpR_mid_pps43"
    PA_TakeoffStillAnim="jump_takeoff_pps43"
    PA_TakeoffAnims(0)="jumpF_takeoff_pps43"
    PA_TakeoffAnims(1)="jumpB_takeoff_pps43"
    PA_TakeoffAnims(2)="jumpL_takeoff_pps43"
    PA_TakeoffAnims(3)="jumpR_takeoff_pps43"
    PA_LandAnims(0)="jumpF_land_pps43"
    PA_LandAnims(1)="jumpB_land_pps43"
    PA_LandAnims(2)="jumpL_land_pps43"
    PA_LandAnims(3)="jumpR_land_pps43"
    PA_DodgeAnims(0)="jumpF_mid_pps43"
    PA_DodgeAnims(1)="jumpB_mid_pps43"
    PA_DodgeAnims(2)="jumpL_mid_pps43"
    PA_DodgeAnims(3)="jumpR_mid_pps43"
}
