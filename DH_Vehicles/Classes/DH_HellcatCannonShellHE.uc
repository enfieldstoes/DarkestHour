//==============================================================================
// DH_HellcatCannonShellHE
//
// Darkest Hour Source - (c) Darkest Hour Team 2010
// Red Orchestra Source - (c) Tripwire Interactive 2006
//
// M18 American tank destroyed "Hellcat" - 76mm M42A1 HE
//==============================================================================
class DH_HellcatCannonShellHE extends DH_ROTankCannonShellHE;

defaultproperties
{
     MechanicalRanges(1)=(Range=400)
     MechanicalRanges(2)=(Range=800)
     MechanicalRanges(3)=(Range=1200)
     MechanicalRanges(4)=(Range=1600)
     MechanicalRanges(5)=(Range=2000)
     MechanicalRanges(6)=(Range=2400)
     MechanicalRanges(7)=(Range=2800)
     MechanicalRanges(8)=(Range=3200)
     MechanicalRanges(9)=(Range=4200)
     bMechanicalAiming=true
     DHPenetrationTable(0)=4.200000
     DHPenetrationTable(1)=3.800000
     DHPenetrationTable(2)=3.200000
     DHPenetrationTable(3)=2.900000
     DHPenetrationTable(4)=2.400000
     DHPenetrationTable(5)=2.000000
     DHPenetrationTable(6)=1.700000
     DHPenetrationTable(7)=1.300000
     DHPenetrationTable(8)=1.100000
     DHPenetrationTable(9)=1.000000
     DHPenetrationTable(10)=0.800000
     ShellDiameter=7.620000
     PenetrationMag=780.000000
     ShellImpactDamage=Class'DH_Vehicles.DH_HellcatCannonShellDamageAP'
     ImpactDamage=450
     BallisticCoefficient=1.368000
     Speed=47799.000000
     MaxSpeed=47799.000000
     Damage=400.000000
     DamageRadius=1140.000000
     MyDamageType=Class'DH_Vehicles.DH_HellcatCannonShellDamageHE'
     Tag="M42A1 HE"
}
