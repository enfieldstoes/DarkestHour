//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2022
//==============================================================================

class DHMortarHitEffect extends DHHitEffect;

defaultproperties
{
    HitEffects(0)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHMortarExplosion60mm',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')        // Default (Dirt?)
    HitEffects(1)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitRockEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')        // Rock
    HitEffects(2)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHMortarExplosion60mm',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')        // Dirt
    HitEffects(3)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitMetalEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')       // Metal
    HitEffects(4)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitWoodEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode02')        // Wood
    HitEffects(5)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHMortarExplosion60mm',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode02')        // Plant (Grass)
    HitEffects(6)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitFleshEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode02')       // Flesh (dead animals)
    HitEffects(7)=(HitDecal=class'ArtilleryMarkSnow',HitEffect=class'DHMortarExplosion60mmSnow',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode02')    // Ice
    HitEffects(8)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHMortarExplosion60mmSnow',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')    // Snow
    HitEffects(9)=(HitEffect=class'DHMortarExplosion60mmWater',bUseFlash=true,HitSound=Sound'ProjectileSounds.cannon_rounds.AP_Impact_Water')                       // Water
    HitEffects(10)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBreakingGlass',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')             // Glass
    HitEffects(11)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitGravelEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')     // Gravel
    HitEffects(12)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitConcreteEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')   // Concrete
    HitEffects(13)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitWoodEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')       // HollowWood
    HitEffects(14)=(HitDecal=class'ArtilleryMarkSnow',HitEffect=class'DHMortarExplosion60mm',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')       // Mud
    HitEffects(15)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitMetalArmorEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03') // MetalArmor
    HitEffects(16)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitPaperEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')      // Paper
    HitEffects(17)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitClothEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')      // Cloth
    HitEffects(18)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'ROBulletHitRubberEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode03')     // Rubber
    HitEffects(19)=(HitDecal=class'ArtilleryMarkSnow',HitEffect=class'DHMortarExplosion60mm',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')       // Poop

    //DH Custom impacts
    HitEffects(21)=(HitDecal=class'ArtilleryMarkSnow',HitEffect=class'DHMortarExplosion60mmSand',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')   // Sand EST_Custom01
    HitEffects(22)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHMortarExplosion60mmSand',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')   // Sand Bags EST_Custom02
    HitEffects(23)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHBulletHitBrickEffect',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')      // Brick EST_Custom03
    HitEffects(24)=(HitDecal=class'ArtilleryMarkDirt',HitEffect=class'DHMortarExplosion60mm',bUseFlash=true,HitSound=SoundGroup'Inf_Weapons.F1.f1_explode01')       // Hedgerow-Bush EST_Custom04

    MinSoundRadius=5300.0
    MaxSoundRadius=5500.0

    FlashEffect=class'DHFlashEffectMedium'
}
