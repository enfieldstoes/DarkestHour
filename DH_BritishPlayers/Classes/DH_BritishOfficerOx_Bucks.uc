//=============================================================================
// DH_BritishOfficerOx&Bucks
//=============================================================================
class DH_BritishOfficerOx_Bucks extends DH_Ox_Bucks;

function class<ROHeadgear> GetHeadgear()
{
	if (FRand() < 0.2)
	{
		if (FRand() < 0.5)
			return Headgear[2];
		else
			return Headgear[1];
	}
	else
	{
		return Headgear[0];
	}
}

defaultproperties
{
     bIsArtilleryOfficer=true
     MyName="Artillery Officer"
     AltName="Artillery Officer"
     Article="an "
     PluralName="Artillery Officers"
     InfoText="The artillery officer is tasked with directing artillery fire upon the battlefield through the use of long-range observation. Coordinating his efforts with a radio operator, he is able to target locations for off-grid artillery to lay down a  barrage with devastating effect."
     menuImage=Texture'DHBritishCharactersTex.Icons.Para_Off'
     Models(0)="paraOf1"
     Models(1)="paraOf2"
     Models(2)="paraOf3"
     SleeveTexture=Texture'DHBritishCharactersTex.Sleeves.Brit_Para_sleeves'
     PrimaryWeapons(0)=(Item=Class'DH_Weapons.DH_EnfieldNo4Weapon',Amount=6)
     SecondaryWeapons(0)=(Item=Class'DH_Weapons.DH_EnfieldNo2Weapon',Amount=1)
     GivenItems(0)="DH_Equipment.DH_USArtyBinocularsItem"
     Headgear(0)=Class'DH_BritishPlayers.DH_BritishParaHelmet1'
     Headgear(1)=Class'DH_BritishPlayers.DH_BritishAirborneBeretOx_Bucks'
     Headgear(2)=Class'DH_BritishPlayers.DH_BritishAirborneBeretOx_Bucks'
     PrimaryWeaponType=WT_SMG
     bEnhancedAutomaticControl=true
     limit=1
}
