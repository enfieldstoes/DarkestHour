//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2023
//==============================================================================

class DH_RKKA_GreatcoatRadioOperatorLate extends DHSOVRadioOperatorRoles;

defaultproperties
{
    RolePawns(0)=(PawnClass=class'DH_SovietPlayers.DH_SovietGreatcoatBrownStrapsLatePawn',Weight=2.0)
    RolePawns(1)=(PawnClass=class'DH_SovietPlayers.DH_SovietGreatcoatGreyStrapsLatePawn',Weight=1.0)

    Headgear(0)=class'DH_SovietPlayers.DH_SovietFurHat'
    Headgear(1)=class'DH_SovietPlayers.DH_SovietSideCap'
    Headgear(2)=class'DH_SovietPlayers.DH_SovietHelmet'
    HeadgearProbabilities(0)=0.3
    HeadgearProbabilities(1)=0.3
    HeadgearProbabilities(2)=0.4
}
