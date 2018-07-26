//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHScoreEvent_TeamKill extends DHScoreEvent;

static function DHScoreEvent_TeamKill Create()
{
    return new class'DHScoreEvent_TeamKill';
}

defaultproperties
{
    HumanReadableName="Friendly Fire"
    CategoryClass=class'DHScoreCategory_Combat'
    Value=-500
}

