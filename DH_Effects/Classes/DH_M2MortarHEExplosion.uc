//=============================================================================
// DH_M2MortarHEExplosion
//=============================================================================
// Impact effect for 60mm mortar high-explosive shell.
//=============================================================================
// Darkest Hour Source
// Copyright (C) 2011 Darklight Games
// Created by: Colin Basnett
//=============================================================================

class DH_M2MortarHEExplosion extends Emitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter39
         FadeOut=true
         FadeIn=true
         RespawnDeadParticles=false
         SpinParticles=true
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         TriggerDisabled=false
         ResetOnTrigger=true
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         FadeOutStartTime=0.500000
         FadeInEndTime=0.200000
         MaxParticles=12
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000))
         SpinCCWorCW=(X=1.000000)
         SpinsPerSecondRange=(X=(Min=-0.100000,Max=0.100000))
         StartSpinRange=(X=(Min=-0.500000,Max=0.500000))
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.140000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=7.000000)
         StartSizeRange=(X=(Min=25.000000,Max=35.000000),Y=(Min=25.000000,Max=35.000000),Z=(Min=45.000000,Max=50.000000))
         InitialParticlesPerSecond=512.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'Effects_Tex.explosions.LSmoke3'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(X=(Min=-96.000000,Max=96.000000),Y=(Min=-96.000000,Max=96.000000),Z=(Min=100.000000,Max=100.000000))
         VelocityLossRange=(Z=(Min=3.000000,Max=3.000000))
     End Object
     Emitters(0)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter39'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter40
         FadeOut=true
         FadeIn=true
         RespawnDeadParticles=false
         SpinParticles=true
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         TriggerDisabled=false
         ResetOnTrigger=true
         Acceleration=(Y=50.000000,Z=50.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         MaxParticles=16
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000))
         SpinCCWorCW=(X=1.000000)
         SpinsPerSecondRange=(X=(Min=-0.100000,Max=0.100000))
         StartSpinRange=(X=(Min=-0.500000,Max=0.500000))
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=4.000000)
         StartSizeRange=(X=(Min=25.000000,Max=35.000000),Y=(Min=25.000000,Max=35.000000),Z=(Min=45.000000,Max=50.000000))
         InitialParticlesPerSecond=100.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'Effects_Tex.explosions.DSmoke_2'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(X=(Min=-32.000000,Max=32.000000),Y=(Min=-32.000000,Max=32.000000),Z=(Min=1.000000,Max=1536.000000))
         VelocityLossRange=(Z=(Min=3.000000,Max=3.000000))
     End Object
     Emitters(1)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter40'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter41
         FadeOut=true
         FadeIn=true
         RespawnDeadParticles=false
         SpinParticles=true
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         TriggerDisabled=false
         ResetOnTrigger=true
         Acceleration=(Y=50.000000,Z=50.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         FadeOutStartTime=1.020000
         FadeInEndTime=0.210000
         MaxParticles=8
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000))
         AddLocationFromOtherEmitter=1
         SpinCCWorCW=(X=1.000000)
         SpinsPerSecondRange=(X=(Min=-0.100000,Max=0.100000))
         StartSpinRange=(X=(Min=-0.500000,Max=0.500000))
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=2.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=25.000000,Max=35.000000),Y=(Min=25.000000,Max=35.000000),Z=(Min=45.000000,Max=50.000000))
         InitialParticlesPerSecond=20.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'Effects_Tex.explosions.DSmoke_1'
         SecondsBeforeInactive=0.000000
         LifetimeRange=(Min=2.000000,Max=3.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=10.000000,Max=10.000000))
         VelocityLossRange=(Z=(Min=3.000000,Max=3.000000))
     End Object
     Emitters(2)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter41'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter42
         FadeOut=true
         RespawnDeadParticles=false
         SpinParticles=true
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         Acceleration=(Z=-75.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         FadeOutStartTime=0.130000
         MaxParticles=2
         StartSpinRange=(X=(Min=0.500000,Max=0.500000))
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=4.500000)
         StartSizeRange=(X=(Min=64.000000,Max=64.000000),Y=(Min=64.000000,Max=64.000000),Z=(Min=64.000000,Max=64.000000))
         InitialParticlesPerSecond=100.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'Effects_Tex.explosions.explosion_1frame'
         LifetimeRange=(Min=0.400000,Max=0.500000)
         StartVelocityRange=(Z=(Min=300.000000,Max=300.000000))
     End Object
     Emitters(3)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter42'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter43
         FadeOut=true
         FadeIn=true
         RespawnDeadParticles=false
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         BlendBetweenSubdivisions=true
         Acceleration=(Z=50.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255,A=255))
         FadeOutStartTime=0.102500
         FadeInEndTime=0.050000
         MaxParticles=1
         SizeScale(1)=(RelativeTime=0.140000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=1.500000)
         StartSizeRange=(X=(Min=50.000000,Max=50.000000),Y=(Min=50.000000,Max=50.000000),Z=(Min=50.000000,Max=50.000000))
         InitialParticlesPerSecond=30.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'Effects_Tex.explosions.impact_2frame'
         TextureUSubdivisions=2
         TextureVSubdivisions=1
         LifetimeRange=(Min=0.250000,Max=0.250000)
         StartVelocityRange=(Z=(Min=10.000000,Max=10.000000))
     End Object
     Emitters(4)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter43'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter44
         RespawnDeadParticles=false
         UseRevolution=true
         SpinParticles=true
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         Acceleration=(Z=-600.000000)
         ColorScale(0)=(Color=(B=25,G=25,R=25,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=82,G=84,R=95,A=255))
         MaxParticles=32
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=-0.500000,Max=0.500000))
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=0.500000,Max=1.500000),Y=(Min=0.500000,Max=1.500000),Z=(Min=3.000000,Max=5.000000))
         InitialParticlesPerSecond=500.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'Effects_Tex.explosions.shrapnel1'
         StartVelocityRange=(X=(Min=-345.000000,Max=450.000000),Y=(Min=-345.000000,Max=450.000000),Z=(Min=350.000000,Max=500.000000))
     End Object
     Emitters(5)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter44'

     Begin Object Class=SpriteEmitter Name=SpriteEmitter45
         UseColorScale=true
         FadeOut=true
         RespawnDeadParticles=false
         UseRevolution=true
         UseSizeScale=true
         UseRegularSizeScale=false
         UniformSize=true
         AutomaticInitialSpawning=false
         Acceleration=(Z=-1200.000000)
         DampingFactorRange=(X=(Min=0.200000,Max=0.200000),Y=(Min=0.200000,Max=0.200000),Z=(Min=0.200000,Max=0.200000))
         ColorScale(0)=(Color=(B=25,G=25,R=25,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=82,G=84,R=95,A=255))
         FadeOutStartTime=1.400000
         MaxParticles=16
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=0.500000,Max=2.000000),Y=(Min=0.500000,Max=2.000000),Z=(Min=3.000000,Max=5.000000))
         InitialParticlesPerSecond=500.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'Effects_Tex.BulletHits.dirtchunks'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=800.000000,Max=1000.000000))
     End Object
     Emitters(6)=SpriteEmitter'DH_Effects.DH_M2MortarHEExplosion.SpriteEmitter45'

     AutoDestroy=true
     bNoDelete=false
}
