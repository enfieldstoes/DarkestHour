//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DH_SSHelmetSnow extends DHHeadgear;

static function StaticPrecache(LevelInfo L)
{
//  L.AddPrecacheMaterial(Material'GermanCharactersTex.WSS.WSSParkaSnow1');
}

defaultproperties
{
    Mesh=SkeletalMesh'dhgear_anm.Ger_HelmetCover'
    Skins(0)=texture'DHGermanCharactersTex.WSS.WSSParkaSnow1'
}
