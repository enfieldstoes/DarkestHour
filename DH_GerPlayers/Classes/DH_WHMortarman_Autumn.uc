//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2016
//==============================================================================

class DH_WHMortarman_Autumn extends DH_HeerAutumn;

defaultproperties
{
    bCanUseMortars=true
    MyName="Mortar Operator"
    AltName="Werferschütze"
    Article="a "
    PluralName="Mortar Operators"
    Models(0)="WHAu_1"
    Models(1)="WHAu_2"
    Models(2)="WHAu_3"
    Models(3)="WHAu_4"
    Models(4)="WHAu_5"
    Models(5)="WHAu_6"
    SleeveTexture=texture'DHGermanCharactersTex.GerSleeves.SplinterASleeve'
    PrimaryWeapons(0)=(Item=class'DH_Weapons.DH_Kar98Weapon',AssociatedAttachment=class'ROInventory.ROKar98AmmoPouch')
    GivenItems(0)="DH_Mortars.DH_Kz8cmGrW42Weapon"
    GivenItems(1)="DH_Equipment.DHBinocularsItem"
    Headgear(0)=class'DH_GerPlayers.DH_HeerHelmetCover'
    Headgear(1)=class'DH_GerPlayers.DH_HeerHelmetNoCover'
    Limit=1
}
