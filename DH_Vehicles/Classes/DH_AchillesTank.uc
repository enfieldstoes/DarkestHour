//==============================================================================
// DH_AchillesTank
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// M10 British tank destroyer "Achilles IC"
//==============================================================================
class DH_AchillesTank extends DH_ROTreadCraftB;

#exec OBJ LOAD FILE=..\textures\DH_VehiclesUK_tex.utx
#exec OBJ LOAD FILE=..\textures\DH_VehiclesUS_tex.utx
#exec OBJ LOAD FILE=..\Animations\DH_Wolverine_anm.ukx

simulated function SetupTreads()
{
    LeftTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
    if (LeftTreadPanner != none)
    {
        LeftTreadPanner.Material = Skins[LeftTreadIndex];
        LeftTreadPanner.PanDirection = rot(0, 32768, 16384);
        LeftTreadPanner.PanRate = 0.0;
        Skins[LeftTreadIndex] = LeftTreadPanner;
    }
    RightTreadPanner = VariableTexPanner(Level.ObjectPool.AllocateObject(class'VariableTexPanner'));
    if (RightTreadPanner != none)
    {
        RightTreadPanner.Material = Skins[RightTreadIndex];
        RightTreadPanner.PanDirection = rot(32768, 0, 16384);
        RightTreadPanner.PanRate = 0.0;
        Skins[RightTreadIndex] = RightTreadPanner;
    }
}

simulated function Tick(float DeltaTime)
{
    //local PlayerController PC;
    local float MotionSoundTemp;
    local KRigidBodyState BodyState;
    local float MySpeed;
    local int i;

    KGetRigidBodyState(BodyState);
    LinTurnSpeed = 0.5 * BodyState.AngVel.Z;

    // Damaged treads cause vehicle to swerve and turn without control
    if (Controller != none)
    {
        if (bLeftTrackDamaged)
        {
            Throttle = FClamp(Throttle, -0.50, 0.50);
            if (Controller.IsA('ROPlayer'))
                ROPlayer(Controller).aStrafe = -32768;
            else if (Controller.IsA('ROBot'))
                Steering = 1;
        }
        else if (bRightTrackDamaged)
        {
            Throttle = FClamp(Throttle, -0.50, 0.50);
            if (Controller.IsA('ROPlayer'))
                ROPlayer(Controller).aStrafe = 32768;
            else if (Controller.IsA('ROBot'))
                Steering = -1;
        }
    }

    // Only need these effects client side
    if (Level.Netmode != NM_DedicatedServer)
    {
        if (bDisableThrottle)
        {
            if (bWantsToThrottle)
            {
                IntendedThrottle=1.0;
            }
            else if (IntendedThrottle > 0)
            {
                IntendedThrottle -= (DeltaTime * 0.5);
            }
            else
            {
                IntendedThrottle=0;
            }
        }
        else
        {
            if (bLeftTrackDamaged)
            {
                 if (LeftTreadSoundAttach.AmbientSound != TrackDamagedSound)
                    LeftTreadSoundAttach.AmbientSound = TrackDamagedSound;
                 LeftTreadSoundAttach.SoundVolume= IntendedThrottle * 255;
            }

            if (bRightTrackDamaged)
            {
                 if (RightTreadSoundAttach.AmbientSound != TrackDamagedSound)
                    RightTreadSoundAttach.AmbientSound = TrackDamagedSound;
                 RightTreadSoundAttach.SoundVolume= IntendedThrottle * 255;
            }

            SoundVolume = FMax(255 * 0.3,IntendedThrottle * 255);

            if (SoundVolume != default.SoundVolume)
            {
                SoundVolume = default.SoundVolume;
            }

            if (bLeftTrackDamaged && Skins[LeftTreadIndex] != DamagedTreadPanner)
                Skins[LeftTreadIndex]=DamagedTreadPanner;

            if (bRightTrackDamaged && Skins[RightTreadIndex] != DamagedTreadPanner)
                Skins[RightTreadIndex]=DamagedTreadPanner;
        }

        // Shame on you Psyonix, for calling VSize() 3 times every tick, when it only needed to be called once.
        // VSize() is very CPU intensive - Ramm
        MySpeed = VSize(Velocity);

        // Setup sounds that are dependent on velocity
        MotionSoundTemp =  MySpeed/MaxPitchSpeed * 255;
        if (MySpeed > 0.1)
        {
            MotionSoundVolume =  FClamp(MotionSoundTemp, 0, 255);
        }
        else
        {
            MotionSoundVolume=0;
        }
        UpdateMovementSound();

        if (LeftTreadPanner != none)
        {
            LeftTreadPanner.PanRate = MySpeed / TreadVelocityScale;
            if (Velocity dot vector(Rotation) < 0)
                LeftTreadPanner.PanRate = -1 * LeftTreadPanner.PanRate;
            LeftTreadPanner.PanRate += LinTurnSpeed;
        }

        if (RightTreadPanner != none)
        {
            RightTreadPanner.PanRate = MySpeed / TreadVelocityScale;
            if (Velocity Dot vector(Rotation) < 0)
                RightTreadPanner.PanRate = -1 * RightTreadPanner.PanRate;
            RightTreadPanner.PanRate -= LinTurnSpeed;
        }

        // Animate the tank wheels
        LeftWheelRot.pitch += LeftTreadPanner.PanRate * WheelRotationScale;
        RightWheelRot.pitch += RightTreadPanner.PanRate * WheelRotationScale;

        for(i=0; i<LeftWheelBones.Length; i++)
        {
              SetBoneRotation(LeftWheelBones[i], LeftWheelRot);
        }

        for(i=0; i<RightWheelBones.Length; i++)
        {
              SetBoneRotation(RightWheelBones[i], RightWheelRot);
        }

        if (MySpeed >= MaxCriticalSpeed)
        {
            if (Controller.IsA('ROPlayer'))
                ROPlayer(Controller).aForward = -32768; //forces player to pull back on throttle
        }
    }

    // This will slow the tank way down when it tries to turn at high speeds
    if (ForwardVel > 0.0)
        WheelLatFrictionScale = InterpCurveEval(AddedLatFriction, ForwardVel);
    else
        WheelLatFrictionScale = default.WheelLatFrictionScale;

    if (bEngineOnFire || (bOnFire && Health > 0))
    {
        if (DamagedEffectHealthFireFactor != 1.0)
        {
            DamagedEffectHealthFireFactor = 1.0;
            DamagedEffect.UpdateDamagedEffect(true, 0, false, false);
        }

        if (bOnFire && DriverHatchFireEffect == none)
        {
            // Lets randomise the fire start times to desync them with the turret and engine ones
            if (Level.TimeSeconds - DriverHatchBurnTime > 0.2)
            {
                if (FRand() < 0.1)
                {
                    DriverHatchFireEffect = Spawn(FireEffectClass);
                    AttachToBone(DriverHatchFireEffect, FireAttachBone);
                    DriverHatchFireEffect.SetRelativeLocation(FireEffectOffset);
                    DriverHatchFireEffect.SetEffectScale(DamagedEffectScale);
                    DriverHatchFireEffect.UpdateDamagedEffect(true, 0, false, false);
                }
                DriverHatchBurnTime = Level.TimeSeconds;
            }

            if (!bTurretFireTriggered && WeaponPawns[0] != none)
            {
                DH_ROTankCannon(WeaponPawns[0].Gun).bOnFire = true;
                bTurretFireTriggered = true;
            }
        }

        TakeFireDamage(DeltaTime);
    }
    else if (EngineHealth <= 0 && Health > 0)
    {
        if (DamagedEffectHealthFireFactor != 0)
        {
            DamagedEffectHealthFireFactor = 0.0;
            DamagedEffectHealthHeavySmokeFactor = 1.0;
            DamagedEffect.UpdateDamagedEffect(false, 0, false, false); // reset fire effects
            DamagedEffect.UpdateDamagedEffect(false, 0, false, true);  // set the tank to smoke instead of burn
        }
    }

    Super(ROWheeledVehicle).Tick(DeltaTime);

    if (bEngineDead || bEngineOff || (bLeftTrackDamaged && bRightTrackDamaged))
    {
        velocity=vect(0,0,0);
        Throttle=0;
        ThrottleAmount=0;
        bWantsToThrottle=false;
        bDisableThrottle=true;
        Steering=0;
    }

    if (Level.NetMode != NM_DedicatedServer)
    {
        CheckEmitters();
    }
}


static function StaticPrecache(LevelInfo L)
{
        Super.StaticPrecache(L);

        L.AddPrecacheMaterial(Material'DH_VehiclesUK_tex.ext_vehicles.Achilles_body_ext');
        L.AddPrecacheMaterial(Material'DH_VehiclesUK_tex.ext_vehicles.Achilles_turret_ext');
        L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.treads.M10_treads');
        L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.M10_body_int');
        L.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.M10_body_int2');
}

simulated function UpdatePrecacheMaterials()
{
        Level.AddPrecacheMaterial(Material'DH_VehiclesUK_tex.ext_vehicles.Achilles_body_ext');
        Level.AddPrecacheMaterial(Material'DH_VehiclesUK_tex.ext_vehicles.Achilles_turret_ext');
        Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.treads.M10_treads');
        Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.M10_body_int');
        Level.AddPrecacheMaterial(Material'DH_VehiclesUS_tex.int_vehicles.M10_body_int2');

    Super.UpdatePrecacheMaterials();
}

defaultproperties
{
     LeftTreadIndex=3
     MaxCriticalSpeed=820.000000
     TreadDamageThreshold=0.750000
     UFrontArmorFactor=3.800000
     URightArmorFactor=1.900000
     ULeftArmorFactor=1.900000
     URearArmorFactor=2.500000
     UFrontArmorSlope=55.000000
     URightArmorSlope=38.000000
     ULeftArmorSlope=38.000000
     PointValue=3.000000
     MaxPitchSpeed=150.000000
     TreadVelocityScale=110.000000
     LeftTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_L03'
     RightTreadSound=Sound'Vehicle_Engines.tracks.track_squeak_R03'
     RumbleSound=Sound'DH_AlliedVehicleSounds.Sherman.inside_rumble01'
     LeftTrackSoundBone="Track_L"
     RightTrackSoundBone="Track_R"
     RumbleSoundBone="placeholder_int"
     VehicleHudTurret=TexRotator'DH_InterfaceArt_tex.Tank_Hud.Wolverine_turret_rot'
     VehicleHudTurretLook=TexRotator'DH_InterfaceArt_tex.Tank_Hud.Wolverine_turret_look'
     VehicleHudThreadsPosX(0)=0.360000
     VehicleHudThreadsPosX(1)=0.640000
     VehicleHudThreadsPosY=0.510000
     VehicleHudThreadsScale=0.720000
     LeftWheelBones(0)="Wheel_L_1"
     LeftWheelBones(1)="Wheel_L_2"
     LeftWheelBones(2)="Wheel_L_3"
     LeftWheelBones(3)="Wheel_L_4"
     LeftWheelBones(4)="Wheel_L_5"
     LeftWheelBones(5)="Wheel_L_6"
     LeftWheelBones(6)="Wheel_L_7"
     LeftWheelBones(7)="Wheel_L_8"
     LeftWheelBones(8)="Wheel_L_9"
     LeftWheelBones(9)="Wheel_L_10"
     LeftWheelBones(10)="Wheel_L_11"
     RightWheelBones(0)="Wheel_R_1"
     RightWheelBones(1)="Wheel_R_2"
     RightWheelBones(2)="Wheel_R_3"
     RightWheelBones(3)="Wheel_R_4"
     RightWheelBones(4)="Wheel_R_5"
     RightWheelBones(5)="Wheel_R_6"
     RightWheelBones(6)="Wheel_R_7"
     RightWheelBones(7)="Wheel_R_8"
     RightWheelBones(8)="Wheel_R_9"
     RightWheelBones(9)="Wheel_R_10"
     RightWheelBones(10)="Wheel_R_11"
     WheelRotationScale=2000
     TreadHitMinAngle=1.300000
     FrontLeftAngle=332.000000
     RearLeftAngle=208.000000
     GearRatios(4)=0.750000
     TransRatio=0.100000
     SteerBoneName="Steering"
     LeftLeverBoneName="lever_L"
     LeftLeverAxis=AXIS_Z
     RightLeverBoneName="lever_R"
     RightLeverAxis=AXIS_Z
     ExhaustEffectClass=Class'ROEffects.ExhaustPetrolEffect'
     ExhaustEffectLowClass=Class'ROEffects.ExhaustPetrolEffect_simple'
     ExhaustPipes(0)=(ExhaustPosition=(X=-100.000000,Z=40.000000),ExhaustRotation=(Pitch=31000,Yaw=-16384))
     PassengerWeapons(0)=(WeaponPawnClass=Class'DH_Vehicles.DH_AchillesCannonPawn',WeaponBone="Turret_placement")
     IdleSound=SoundGroup'Vehicle_Engines.SU76.SU76_engine_loop'
     StartUpSound=Sound'Vehicle_Engines.SU76.SU76_engine_start'
     ShutDownSound=Sound'Vehicle_Engines.SU76.SU76_engine_stop'
     DestroyedVehicleMesh=StaticMesh'DH_allies_vehicles_stc.M10.Achilles_dest'
     DamagedEffectOffset=(X=-127.000000,Y=20.000000,Z=105.000000)
     VehicleTeam=1
     SteeringScaleFactor=0.750000
     BeginningIdleAnim="driver_hatch_idle_close"
     DriverPositions(0)=(PositionMesh=SkeletalMesh'DH_Wolverine_anm.Achilles_body_int',TransitionUpAnim="Overlay_Out",ViewPitchUpLimit=1,ViewPitchDownLimit=65535,ViewPositiveYawLimit=5500,ViewNegativeYawLimit=-5500,ViewFOV=85.000000,bDrawOverlays=true)
     DriverPositions(1)=(PositionMesh=SkeletalMesh'DH_Wolverine_anm.Achilles_body_int',TransitionUpAnim="driver_hatch_open",TransitionDownAnim="Overlay_In",DriverTransitionAnim="VPanzer3_driver_idle_open",ViewPitchUpLimit=3000,ViewPitchDownLimit=61922,ViewPositiveYawLimit=8000,ViewNegativeYawLimit=-8000,ViewFOV=85.000000)
     DriverPositions(2)=(PositionMesh=SkeletalMesh'DH_Wolverine_anm.Achilles_body_int',TransitionDownAnim="driver_hatch_close",DriverTransitionAnim="VPanzer3_driver_idle_open",ViewPitchUpLimit=10000,ViewPitchDownLimit=62000,ViewPositiveYawLimit=16000,ViewNegativeYawLimit=-16000,bExposed=true,ViewFOV=85.000000)
     VehicleHudImage=Texture'DH_InterfaceArt_tex.Tank_Hud.wolverine_body'
     VehicleHudOccupantsX(0)=0.430000
     VehicleHudOccupantsX(2)=0.000000
     VehicleHudOccupantsY(0)=0.320000
     VehicleHudOccupantsY(2)=0.000000
     VehicleHudEngineX=0.510000
     VehHitpoints(0)=(PointOffset=(X=2.000000),bPenetrationPoint=false)
     VehHitpoints(1)=(PointRadius=35.000000,PointOffset=(X=-90.000000,Z=-35.000000),DamageMultiplier=1.000000)
     VehHitpoints(2)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=20.000000,Y=55.000000,Z=-8.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(3)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(X=20.000000,Y=-55.000000,Z=-8.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     VehHitpoints(4)=(PointRadius=15.000000,PointScale=1.000000,PointBone="body",PointOffset=(Z=-8.000000),DamageMultiplier=5.000000,HitPointType=HP_AmmoStore)
     DriverAttachmentBone="driver_attachment"
     Begin Object Class=SVehicleWheel Name=LF_Steering
         bPoweredWheel=true
         SteerType=VST_Steered
         BoneName="steer_wheel_LF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=10.000000,Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(0)=SVehicleWheel'DH_Vehicles.DH_AchillesTank.LF_Steering'

     Begin Object Class=SVehicleWheel Name=RF_Steering
         bPoweredWheel=true
         SteerType=VST_Steered
         BoneName="steer_wheel_RF"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=10.000000,Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(1)=SVehicleWheel'DH_Vehicles.DH_AchillesTank.RF_Steering'

     Begin Object Class=SVehicleWheel Name=LR_Steering
         bPoweredWheel=true
         SteerType=VST_Inverted
         BoneName="steer_wheel_LR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-30.000000,Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(2)=SVehicleWheel'DH_Vehicles.DH_AchillesTank.LR_Steering'

     Begin Object Class=SVehicleWheel Name=RR_Steering
         bPoweredWheel=true
         SteerType=VST_Inverted
         BoneName="steer_wheel_RR"
         BoneRollAxis=AXIS_Y
         BoneOffset=(X=-30.000000,Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(3)=SVehicleWheel'DH_Vehicles.DH_AchillesTank.RR_Steering'

     Begin Object Class=SVehicleWheel Name=Left_Drive_Wheel
         bPoweredWheel=true
         BoneName="drive_wheel_L"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(4)=SVehicleWheel'DH_Vehicles.DH_AchillesTank.Left_Drive_Wheel'

     Begin Object Class=SVehicleWheel Name=Right_Drive_Wheel
         bPoweredWheel=true
         BoneName="drive_wheel_R"
         BoneRollAxis=AXIS_Y
         BoneOffset=(Z=10.000000)
         WheelRadius=33.000000
     End Object
     Wheels(5)=SVehicleWheel'DH_Vehicles.DH_AchillesTank.Right_Drive_Wheel'

     VehicleMass=13.000000
     bFPNoZFromCameraPitch=true
     DrivePos=(X=-3.000000,Y=0.000000,Z=4.000000)
     DriveAnim="VPanzer3_driver_idle_close"
     ExitPositions(0)=(X=98.000000,Y=-100.000000,Z=156.000000)
     ExitPositions(1)=(Y=-100.000000,Z=156.000000)
     EntryRadius=375.000000
     FPCamPos=(X=120.000000,Y=-21.000000,Z=17.000000)
     TPCamDistance=600.000000
     TPCamLookat=(X=-50.000000)
     TPCamWorldOffset=(Z=250.000000)
     DriverDamageMult=1.000000
     VehiclePositionString="in an Achilles Mk.IC"
     VehicleNameString="Achilles Mk.IC"
     MaxDesireability=1.900000
     FlagBone="Mg_placement"
     FlagRotation=(Yaw=32768)
     HUDOverlayOffset=(X=5.000000)
     HUDOverlayFOV=85.000000
     PitchUpLimit=5000
     PitchDownLimit=60000
     HealthMax=500.000000
     Health=500
     Mesh=SkeletalMesh'DH_Wolverine_anm.Achilles_body_ext'
     Skins(0)=Texture'DH_VehiclesUK_tex.ext_vehicles.Achilles_body_ext'
     Skins(1)=Texture'DH_VehiclesUK_tex.ext_vehicles.Achilles_turret_ext'
     Skins(2)=Texture'DH_VehiclesUS_tex.Treads.M10_treads'
     Skins(3)=Texture'DH_VehiclesUS_tex.Treads.M10_treads'
     Skins(4)=Texture'DH_VehiclesUS_tex.int_vehicles.M10_body_int2'
     Skins(5)=Texture'DH_VehiclesUS_tex.int_vehicles.M10_body_int'
     SoundRadius=800.000000
     TransientSoundRadius=1500.000000
     CollisionRadius=175.000000
     CollisionHeight=60.000000
     Begin Object Class=KarmaParamsRBFull Name=KParams0
         KInertiaTensor(0)=1.000000
         KInertiaTensor(3)=3.000000
         KInertiaTensor(5)=3.000000
         KCOMOffset=(Z=-0.900000)
         KLinearDamping=0.050000
         KAngularDamping=0.050000
         KStartEnabled=true
         bKNonSphericalInertia=true
         KMaxAngularSpeed=0.900000
         bHighDetailOnly=false
         bClientOnly=false
         bKDoubleTickRate=true
         bDestroyOnWorldPenetrate=true
         bDoSafetime=true
         KFriction=0.500000
         KImpactThreshold=700.000000
     End Object
     KParams=KarmaParamsRBFull'DH_Vehicles.DH_AchillesTank.KParams0'

}
