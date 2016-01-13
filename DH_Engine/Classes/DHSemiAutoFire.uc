//==============================================================================
// Darkest Hour: Europe '44-'45
// Darklight Games (c) 2008-2015
//==============================================================================

class DHSemiAutoFire extends DHProjectileFire
    abstract;

defaultproperties
{
    PreLaunchTraceDistance=6035.2 //100m
    PctRestDeployRecoil=0.75
    bDelayedRecoil=true
    DelayedRecoilTime=0.05
    HipSpreadModifier=6.5
}
