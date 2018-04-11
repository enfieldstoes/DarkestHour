//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2018
//==============================================================================

class DHConstructionSupplyAttachment_Vehicle extends DHConstructionSupplyAttachment;

// Overridden as vehicle's should collect initial supply amount from main supply cache
function SetInitialSupply(optional int Amount)
{
    local DHGameReplicationInfo GRI;
    local int SupplyCollected;

    GRI = DHGameReplicationInfo(Level.Game.GameReplicationInfo);

    if (GRI != none)
    {
        SupplyCollected = GRI.CollectSupplyFromMainCache(GetTeamIndex(), default.SupplyCountMax);

        if (SupplyCollected >= 0)
        {
            SetSupplyCount(SupplyCollected);
        }
        else
        {
            SetSupplyCount(SupplyCountMax);
        }

        SupplyPointIndex = GRI.AddSupplyPoint(self);
    }
}

simulated function string GetHumanReadableName()
{
    local ROVehicle ROV;

    ROV = ROVehicle(Base);

    if (ROV != none)
    {
        return ROV.VehicleNameString @ super.GetHumanReadableName();
    }

    return super.GetHumanReadableName();
}

defaultproperties
{
    SupplyCount=2000
    SupplyCountMax=2000
    bCanBeResupplied=true
    bShouldMapIconBeRotated=true
    MapIcon=Texture'DH_GUI_Tex.GUI.supply_point'
}

