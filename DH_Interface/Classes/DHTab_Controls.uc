//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2014
//==============================================================================

class DHTab_Controls extends ROTab_Controls;

struct ControlProfileBinds
{
    var array<string> KeyNames;
    var array<string> KeyValues;
};

var automated moComboBox            co_ControlProfiles;
var localized string                ControlProfiles[7];
var() ControlProfileBinds           ControlProfileBindings[7];

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
    local int i;

    super.InitComponent(MyController, MyOwner);

    i_BG1.ManageComponent(co_ControlProfiles);

    for (i = 0; i < arraycount(ControlProfiles); i++)
    {
        co_ControlProfiles.AddItem(ControlProfiles[i]);
    }
}

// Overridden to stop default button from not assigning fixed keys
function ResetClicked()
{
    SetUpProfileControls(1);
}

function InternalOnChange(GUIComponent Sender)
{
    super.InternalOnChange(Sender);

    if (Sender == co_ControlProfiles)
    {
        SetUpProfileControls(co_ControlProfiles.GetIndex());
        co_ControlProfiles.SetIndex(0);
    }
}

function SetUpProfileControls(int Index)
{
    local int i;

    if (Index < 1)
    {
        return;
    }

    // Always rebuild & set common controls (defaults)
    if (Controller != none)
    {
        Controller.ResetKeyboard(); //UT/RO defaults

        //Integrity check
        if (ControlProfileBindings[Index].KeyNames.Length != ControlProfileBindings[Index].KeyValues.Length)
        {
            Warn("A control profile doesn't have the same number of keys to commands and may not work as expected!!!");
        }

        //DH Defaults
        for (i=0;i<ControlProfileBindings[1].KeyNames.Length;++i)
        {
            PlayerOwner().ConsoleCommand("set input" @ ControlProfileBindings[1].KeyNames[i] @ ControlProfileBindings[1].KeyValues[i]);
        }
    }
    // If profile is not 0 or 1 add in controls
    if (Index > 1)
    {
        for (i=0;i<ControlProfileBindings[Index].KeyNames.Length;++i)
        {
            PlayerOwner().ConsoleCommand("set input" @ ControlProfileBindings[Index].KeyNames[i] @ ControlProfileBindings[Index].KeyValues[i]);
        }
    }

    MapBindings();
    Initialize();
}

defaultproperties
{
    ControlProfiles(0)="Current"
    ControlProfiles(1)="Defaults (Reset)"
    ControlProfiles(2)="Revised Classic"
    ControlProfiles(3)="Contemporary"
    ControlProfiles(4)="Neutral"
    ControlProfiles(5)="Factory"
    ControlProfiles(6)="Portside"

    Begin Object Class=DHGUIProportionalContainer Name=InputBK1
        HeaderBase=texture'DH_GUI_Tex.Menu.DHDisplay_withcaption'
        Caption="Bindings"
        LeftPadding=0.000000
        RightPadding=0.000000
        TopPadding=0.000000
        BottomPadding=0.000000
        ImageOffset(2)=10.000000
        WinTop=0.004000
        WinLeft=0.021641
        WinWidth=0.956718
        WinHeight=0.958
        OnPreDraw=InputBK1.InternalPreDraw
    End Object
    i_BG1=DHGUIProportionalContainer'DH_Interface.DHTab_Controls.InputBK1'
    Begin Object Class=GUILabel Name=HintLabel
        TextAlign=TXTA_Center
        bMultiLine=true
        VertAlign=TXTA_Center
        FontScale=FNS_Small
        StyleName="DHSmallText"
        WinTop=0.950000
        WinHeight=0.050000
        bBoundToParent=true
        bScaleToParent=true
    End Object
    l_Hint=GUILabel'DH_Interface.DHTab_Controls.HintLabel'
    Begin Object Class=DHGUIMultiColumnListBox Name=BindListBox
        HeaderColumnPerc(0)=0.500000
        HeaderColumnPerc(1)=0.250000
        HeaderColumnPerc(2)=0.250000
        SelectedStyleName="DHListSelectionStyle"
        OnCreateComponent=DHTab_Controls.InternalOnCreateComponent
        StyleName="DHNoBox"
        WinTop=0.05
        WinHeight=0.900000
        TabOrder=0
        bBoundToParent=true
        bScaleToParent=true
    End Object
    lb_Binds=DHGUIMultiColumnListBox'DH_Interface.DHTab_Controls.BindListBox'
    Begin Object Class=DHmoComboBox Name=ControlProfilesComboBox
        bReadOnly=true
        ComponentJustification=TXTA_Left
        Caption="Control Profiles"
        OnCreateComponent=ControlProfilesComboBox.InternalOnCreateComponent
        IniOption="@Internal"
        WinTop=0.0
        WinLeft=0.01
        WinWidth=0.6
        ComponentWidth=0.4
        CaptionWidth=0.2
        OnChange=DHTab_Controls.InternalOnChange
    End Object
    co_ControlProfiles=DHmoComboBox'DH_Interface.DHTab_Controls.ControlProfilesComboBox'
    SectionStyleName="DHListSection"
    PanelCaption="Controls"

    //****************
    //Profile Bindings
    //****************
    //Default (With DH fixes)
    ControlProfileBindings(1)=(KeyNames=("Tab","GreyMinus","F2","F3","Minus","Equals"),KeyValues=("ShowScores","CommunicationMenu","ShowVoteMenu","CommunicationMenu","",""))
    //Revised Classic
    ControlProfileBindings(2)=(KeyNames=("RightMouse","MiddleMouse"),KeyValues=("ROIronSights","AltFire"))
    //Contemporary
    ControlProfileBindings(3)=(KeyNames=("F","Z","V","RightMouse","MiddleMouse"),KeyValues=("Use","Prone","Deploy","ROIronSights","AltFire"))
    //Neutral
    ControlProfileBindings(4)=(KeyNames=("",""),KeyValues=("",""))
    //Factory
    ControlProfileBindings(5)=(KeyNames=("",""),KeyValues=("",""))
    //Portside
    ControlProfileBindings(6)=(KeyNames=("V","Z","G","H","T","Y","U","I","CapsLock","RightMouse","MiddleMouse","Alt","",""),KeyValues=("Use","Prone","ThrowWeapon","ThrowMGAmmo","VoiceTalk","Talk","TeamTalk","VehicleTalk","Walking","ROIronSights","AltFire","ShowObjectives","",""))
}
