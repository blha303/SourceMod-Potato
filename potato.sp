#include <sourcemod>
#include <sdktools>
 
public Plugin:myinfo =
{
	name = "Potato",
	author = "blha303",
	description = "Joke plugin",
	version = "1.0.0.1",
	url = "http://github.com/blha303/SourceMod-Potato"
}
 
public OnPluginStart()
{
	RegAdminCmd("potato", Command_Potato, ADMFLAG_GENERIC);
}
 
public Action:Command_Potato(client, args)
{
	KickClient(client, "No.");
 
	return Plugin_Handled;
}