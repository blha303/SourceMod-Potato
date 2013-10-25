#include <sourcemod>
#include <sdktools>
 
public Plugin:myinfo =
{
	name = "Potato",
	author = "blha303",
	description = "My first plugin ever",
	version = "1.0.0.0",
	url = "http://github.com/blha303/"
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