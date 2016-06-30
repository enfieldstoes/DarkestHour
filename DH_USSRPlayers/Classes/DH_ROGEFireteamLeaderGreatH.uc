//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_ROGEFireteamLeaderGreatH extends DH_ROGE_Heer_Greatcoat;

function class<ROHeadgear> GetHeadgear()
{
    if (FRand() < 0.2)
    {
        return Headgear[0];
    }
    else
    {
        return Headgear[1];
    }
}

defaultproperties
{
    MyName="Fireteam Leader"
    AltName="Gefreiter"
    Article="a "
    PluralName="Fireteam Leaders"
    InfoText="The fireteam leader is the NCO tasked to coordinate his team's movement in accordance with the squad's objective. As the direct assistant to the squad leader, he is expected to provide a comparable level of support to his men."
    menuImage=Texture'DHGermanCharactersTex.Icons.WSS_Ass'
    SleeveTexture=texture'Weapons1st_tex.Arms.german_sleeves'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_G41Weapon',Amount=9,AssociatedAttachment=class'ROInventory.ROKar98AmmoPouch')
    PrimaryWeapons(1)=(Item=Class'DH_Weapons.DH_MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
    Grenades(0)=(Item=class'DH_Weapons.DH_StielGranateWeapon',Amount=2)
    Headgear(0)=Class'DH_GerPlayers.DH_HeerHelmetThree'
    Headgear(1)=Class'DH_GerPlayers.DH_HeerHelmetTwo'
    PrimaryWeaponType=WT_SMG
    bEnhancedAutomaticControl=True
    Limit=1
    Limit33to44=2        // How many people can be this role on a 33 to 44 player server?
    LimitOver44=2
}
