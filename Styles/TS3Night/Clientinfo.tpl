<!--
TeamSpeak 3 Client Infoframe Template
Copyright 2009-2016 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<style type="text/css">
	.TextMessage_UserLink {
		font-size: 14px;
	}
	.Highlight {
		color: rgb(49,141,183);
	}
	.Important {
		color: rgb(202,58,58);
	}
	.Volume {
		color: rgb(255,195,0);
	}
	td.Permission_Group {
		color: rgb(202,58,58);
		font-size: 13px;
		padding-top: 4px;
	}
	td.Group_List {
		padding: 3px px 0px 8px;
	}
</style>
<div class="InfoFrame" title="<table><tr><td><b><nobr>Client ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_ID%%</nobr></td></tr><tr><td><b><nobr>Database ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_DATABASE_ID%%</nobr></td></tr><tr><td><b><nobr>Unique ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_UNIQUE_ID%%</nobr></td></tr></table>"
	<div class="InfoFrame_Title">
		<img src="%%?CLIENT_COUNTRY_IMAGE%%" title="%%CLIENT_COUNTRY_TOOLTIP%%"/>
		&nbsp;
		<a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">%%CLIENT_NAME%%</a>
		&nbsp;
		<span class="InfoFrame_CustomNick" title="Custom Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
	<hr/>
	<table class="InfoFrame_Table">
		<tr><td class="Label">Description: </td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
	</table>
	<table class="InfoFrame_Table">
		<tr><td class="Label">Online since:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
		<tr><td class="label">First login: </td><td>%%CLIENT_CREATED%%</td></tr>
		<tr><td class="label">Total logins: </td><td>%%CLIENT_TOTALCONNECTIONS%%</td></tr>
		<tr>
		<td class="Bottom Label">Version:</td>
		<td class="Bottom">%%CLIENT_VERSION_SHORT%% on %%CLIENT_PLATFORM%% <img src="styles:/TS3Night/Images/%%CLIENT_PLATFORM%%.png"/></td>
		<tr><td class="Label">Volume Modifier: </td><td class="Volume">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
		</tr>
	</table>
	<hr/>
		<br/><table class="InfoFrame_Table">%%?PLUGIN_INFO_DATA%%</table>
	<table class="InfoFrame_Table_Permissions">
		<tr><td class="Permission_Group"><img src="iconpath:PERMISSIONS_SERVER_GROUPS?size=16x16" height="12" width="12"> Server Groups:</td></tr>
		<tr><td class="Group_List"><div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
		</td></tr>
		<tr><td class="Permission_Group"><img src="iconpath:PERMISSIONS_CHANNEL_GROUPS?size=16x16" height="12" width="12"> Channel Group:</td></tr>
		<tr><td class="Group_List"><div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
		</td></tr>
		<tr><td class="Important"><br/>*** Client requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</td></tr>
		<tr><td class="Important">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
	</table>
</div>
