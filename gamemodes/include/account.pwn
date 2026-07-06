#if defined _ACCOUNT_SYSTEM
    #endinput
#endif
#define _ACCOUNT_SYSTEM

new PlayerPassword[MAX_PLAYERS][64];
new bool:PlayerLogged[MAX_PLAYERS];
new PlayerName[MAX_PLAYERS][24];
stock ShowRegisterDialog(playerid)
{
    GetPlayerName(playerid, PlayerName[playerid], MAX_PLAYER_NAME);

    ShowPlayerDialog(
        playerid,
        DIALOG_REGISTER,
        DIALOG_STYLE_PASSWORD,
        "Trinity RP - Registration",
        "Welcome to Trinity RP!\n\nCreate a password for your account:",
        "Register",
        "Quit"
    );

    return 1;
}
