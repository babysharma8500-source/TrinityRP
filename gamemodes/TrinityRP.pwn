#include <a_samp>

main()
{
    print("=================================");
    print("      Trinity RP Loading...");
    print("=================================");
}

public OnGameModeInit()
{
    SetGameModeText("Trinity RP");
    ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
    DisableInteriorEnterExits();
    UsePlayerPedAnims();

    print("Trinity RP Started!");

    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, -1, "Welcome to Trinity RP!");
    return 1;
}
