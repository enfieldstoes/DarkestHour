//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_M2MortarProjectileSmoke extends DHMortarProjectileSmoke;

#exec OBJ LOAD FILE=..\StaticMeshes\DH_Mortars_stc.usx

defaultproperties
{
    BallisticCoefficient=1.0
    MaxSpeed=4800.0
    Tag="M302 WP"
}
