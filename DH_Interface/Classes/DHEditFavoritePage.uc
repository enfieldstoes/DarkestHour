//==============================================================================
//	DHEditFavoritePage
//==============================================================================
class DHEditFavoritePage extends DHBrowser_OpenIP;

var automated GUILabel l_name;
var GameInfo.ServerResponseLine Server;

var localized string UnknownText;

function HandleParameters(string ServerIP, string ServerName)
{
	if (ServerIP != "")
		ed_Data.SetText(StripProtocol(ServerIP));

	if (ServerName == "")
		ServerName = UnknownText;

	l_Name.Caption = ServerName;
}

function ApplyURL(string URL)
{
	local string IP, port;

	if (URL == "")
		return;

	URL = StripProtocol(URL);
	if (!Divide(URL, ":", IP, Port))
	{
		IP = URL;
		Port = "7777";
	}

	Server.IP = IP;
	Server.Port = int(Port);
	Server.QueryPort = Server.Port + 1;
	Server.ServerName = l_name.Caption;
	Controller.CloseMenu(false);
}

defaultproperties
{
     Begin Object Class=GUILabel Name=ServerName
         TextAlign=TXTA_Center
         TextFont="DHMenuFont"
         WinTop=0.319479
         WinLeft=0.070313
         WinWidth=0.854492
         WinHeight=0.050000
     End Object
     l_name=GUILabel'DH_Interface.DHEditFavoritePage.ServerName'

     UnknownText="Unknown Server"
     Begin Object Class=DHmoEditBox Name=IpEntryBox
         ComponentJustification=TXTA_Left
         CaptionWidth=0.200000
         Caption="IP Address: "
         OnCreateComponent=IpEntryBox.InternalOnCreateComponent
         WinTop=0.487500
         WinLeft=0.302383
         WinWidth=0.408200
         TabOrder=0
     End Object
     ed_Data=DHmoEditBox'DH_Interface.DHEditFavoritePage.IpEntryBox'

     Begin Object Class=FloatingImage Name=MessageWindowFrameBackground
         Image=Texture'DH_GUI_Tex.Menu.DHDisplay1'
         DropShadowX=0
         DropShadowY=0
         StyleName="DHExitPageStyle"
         WinTop=0.060000
         WinWidth=0.510000
         WinHeight=0.800000
     End Object
     i_FrameBG=FloatingImage'DH_Interface.DHEditFavoritePage.MessageWindowFrameBackground'

}
