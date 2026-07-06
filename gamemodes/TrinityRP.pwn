#include <a_samp>

#include "include/dialogs.pwn"
#include "include/player.pwn"
#include "include/account.pwn"

main()
{
    print("==============================");
    print(" Trinity RP Loading...");
    print("==============================");
}

public OnGameModeInit()
{
    SetGameModeText("Trinity RP");

    ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
    DisableInteriorEnterExits();
    UsePlayerPedAnims();

    AddPlayerClass(
        0,
        1958.3783,
        1343.1572,
        15.3746,
        270.0,
        0,0,
        0,0,
        0,0
    );

    print("Trinity RP Started!");

    return 1;
}

public OnPlayerConnect(playerid)
{
    SendClientMessage(playerid, -1, "Welcome to Trinity RP!");
    return 1;
}
