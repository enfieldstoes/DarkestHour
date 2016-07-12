//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DHMetrics extends Actor;

var private Hashtable_string_Object Players;
var private array<DHMetricsFrag>    Frags;

function PostBeginPlay()
{
    super.PostBeginPlay();

    Players = class'Hashtable_string_Object'.static.Create(128);
}

function string Dump()
{
    local Object Object;
    local HashtableIterator_string_Object PlayersIterator;
    local JSONObject Root;
    local JSONObject ServerObject;
    local array<DHMetricsPlayer> PlayersArray;
    local FileLog F;

    Root = new class'JSONObject';

    // Server
    ServerObject = new class'JSONObject';
    ServerObject.PutString("name", Level.Game.GameReplicationInfo.ServerName);

    Root.Put("server", ServerObject);

    PlayersIterator = Players.CreateIterator();

    // Players
    while (PlayersIterator.Next(, Object))
    {
        PlayersArray[PlayersArray.Length] = DHMetricsPlayer(Object);
    }

    Root.Put("players", class'JSONArray'.static.CreateFromSerializableArray(PlayersArray));

    // Frags
    Root.Put("frags", class'JSONArray'.static.CreateFromSerializableArray(Frags));

    StopWatch(false);

    F = Spawn(class'FileLog');
    F.OpenLog("nope", "log");
    F.Logf(Root.Encode());
    F.CloseLog();
    F.Destroy();

    StopWatch(true);

    return Root.Encode();
}

function OnPlayerLogin(PlayerController PC)
{
    local Object O;
    local DHMetricsPlayer P;

    if (!Players.Get(PC.GetPlayerIDHash(), O))
    {
        P = new class'DHMetricsPlayer';
        P.ID = PC.GetPlayerIDHash();
        P.NetworkAddress = PC.GetPlayerNetworkAddress();
        Players.Put(P.ID, P);
    }
    else
    {
        P = DHMetricsPlayer(O);

        if (P == none)
        {
            return;
        }
    }

    OnPlayerChangeName(PC);
}

function OnPlayerChangeName(PlayerController PC)
{
    local int i;
    local Object O;
    local DHMetricsPlayer P;
    local bool bNameExists;

    if (PC == none || !Players.Get(PC.GetPlayerIDHash(), O))
    {
        return;
    }

    P = DHMetricsPlayer(O);

    if (P == none)
    {
        return;
    }

    for (i = 0; i < P.Names.Length; ++i)
    {
        if (P.Names[i] == PC.PlayerReplicationInfo.PlayerName)
        {
            bNameExists = true;
        }
    }

    if (!bNameExists)
    {
        P.Names[P.Names.Length] = PC.PlayerReplicationInfo.PlayerName;
    }
}

function OnPlayerFragged(PlayerController Killer, PlayerController Victim, class<DamageType> DamageType, vector HitLocation, int HitIndex)
{
    local DHMetricsFrag F;

    F = new class'DHMetricsFrag';

    F.KillerID = Killer.GetPlayerIDHash();
    F.VictimID = Victim.GetPlayerIDHash();
    F.DamageType = DamageType;
    F.VictimLocation = HitLocation;
    F.HitIndex  = HitIndex;

    Frags[Frags.Length] = F;
}

