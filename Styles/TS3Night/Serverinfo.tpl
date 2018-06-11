<!--
TeamSpeak 3 Server Infoframe Template (EN)
Copyright 2009-2016 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use 
%%?SERVER_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Replacable variables for server:
SERVER_NAME
SERVER_VERSION
SERVER_VERSION_SHORT
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
-->

<style type="text/css">
	.InfoFrame_Title {
		font-size: 17px;
	}
</style>
	<div class="InfoFrame_Title">
		<img src="%%?SERVER_ICON%%"
		%%?SERVER_ICON%%" title="Server Icon" width="16" height="16"/>
		&nbsp;
		<a href="channelid://0" class="TextMessage_ServerLink">%%SERVER_NAME%%</a>
	</div>
	<hr />
	<table class="InfoFrame_Table">
		<tr>
			<td class="Label">Address: </td>
			<td>
			%%SERVER_ADDRESS%%
			:%%?SERVER_PORT%%
			</td>
		</tr>
		<tr>
			<td class="Label">Uptime:</td>
			<td>%%SERVER_UPTIME%%</td>
		</tr>
		<tr>
			<td class="Bottom Label">Version:</td>
			<td class="Bottom">%%SERVER_VERSION_SHORT%% on %%SERVER_PLATFORM%% <img src="styles:/TS3Night/Images/%%SERVER_PLATFORM%%.png" alt="" /></td>
		</tr>
		<tr>
			<td class="Label">License:</td>
			<td>%%SERVER_LICENSE%%</td>
		</tr>
	</table>
	<hr/>
		<table class="InfoFrame_Table">
			<tr>
				<td class="Label">Current Clients:</td>
				<td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
				<td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="Important">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</td>
			</tr>
				<tr title="Total ServerQuery Connections: %%SERVER_QUERY_CLIENT_CONNECTIONS%%">
				<td class="label">Current Queries:</td>
				<td>%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</td>
			</tr>
			<tr>
				<td class="Label">Current Channels:</td>
				<td>%%SERVER_CHANNELS_ONLINE%%</td>
			</tr>
		%%?PLUGIN_INFO_DATA%%
	</table>
	<br/>
</div>
