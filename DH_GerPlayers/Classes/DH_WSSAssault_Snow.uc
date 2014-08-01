// *************************************************************************
//
//	***   DH_WSSAssault   ***
//
// *************************************************************************

class DH_WSSAssault_Snow extends DH_WaffenSSSnow;

function class<ROHeadgear> GetHeadgear()
{
	if (FRand() < 0.2)
		return Headgear[0];
	else
		return Headgear[1];
}

defaultproperties
{
     MyName="Assault Trooper"
     AltName="Stoßtruppe"
     Article="an "
     PluralName="Assault Troopers"
     InfoText="The assault trooper is a specialized infantry class who is tasked with closing with the enemy and eliminating him from difficult positions such as houses and fortifications.  The assault trooper is generally better armed than most infantrymen."
     menuImage=Texture'DHGermanCharactersTex.Icons.WSS_Ass'
     Models(0)="SSS_1"
     Models(1)="SSS_2"
     Models(2)="SSS_3"
     Models(3)="SSS_4"
     Models(4)="SSS_5"
     Models(5)="SSS_6"
     SleeveTexture=Texture'Weapons1st_tex.Arms.RussianSnow_Sleeves'
     PrimaryWeapons(0)=(Item=Class'DH_Weapons.DH_STG44Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROSTG44AmmoPouch')
     PrimaryWeapons(1)=(Item=Class'DH_Weapons.DH_MP40Weapon',Amount=6,AssociatedAttachment=Class'ROInventory.ROMP40AmmoPouch')
     Grenades(0)=(Item=Class'DH_Weapons.DH_StielGranateWeapon',Amount=2)
     Headgear(0)=Class'DH_GerPlayers.DH_SSHelmetCover'
     Headgear(1)=Class'DH_GerPlayers.DH_SSHelmetSnow'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=true
     limit=4
}
