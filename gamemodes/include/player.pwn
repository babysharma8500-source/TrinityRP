#if defined _PLAYER_SYSTEM
    #endinput
#endif
#define _PLAYER_SYSTEM

new Float:SpawnPoints[][4] =
{
    {1958.3783, 1343.1572, 15.3746, 270.0}, // Trinity City Bus Stand
    {1481.0099, -1771.1240, 18.7958, 90.0}, // Nova City Bus Stand
    {-1985.7552, 138.2483, 27.6875, 180.0} // Capital City Bus Stand
};

public OnPlayerSpawn(playerid)
{
    new randspawn = random(sizeof(SpawnPoints));

    SetPlayerPos(
        playerid,
        SpawnPoints[randspawn][0],
        SpawnPoints[randspawn][1],
        SpawnPoints[randspawn][2]
    );

    SetPlayerFacingAngle(
        playerid,
        SpawnPoints[randspawn][3]
    );

    SetPlayerHealth(playerid, 100.0);
    SetPlayerArmour(playerid, 0.0);

    return 1;
}
