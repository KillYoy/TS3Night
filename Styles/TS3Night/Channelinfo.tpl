<!--
TeamSpeak 3 Channel Infoframe Template (EN)
Copyright 2009-2016 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replacable variables for channels:
CHANNEL_NAME
CHANNEL_ID
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
CHANNEL_ICON
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

<style type="text/css">
	.TextMessage_ChannelLink {
		font-size: 16px;
	}
	.Highlight {
		color: rgb(49,141,183);
	}
	.Moderated {
		color: rgb(202,58,58);
	}
	.Label_Audio {
		/*color: rgb(255,195,0);*/
	}
	.Description_Title {
		font-size: 13px;
		/*font-weight: bold;*/
	}
	.Description {
		font-size: 11px;
	}
</style>
	<div class="InfoFrame_Title">
		<img src="%%?CHANNEL_ICON%%" title="Channel Icon" width="16" height="16"/>
		<a href="channelid://%%CHANNEL_ID%%" class="TextMessage_ChannelLink"> %%CHANNEL_NAME%%</a>
	<hr/>
	<table class="InfoFrame_Table">
		<tr><td class="Label">Topic:</td><td>%%?CHANNEL_TOPIC%%</td></tr>
		<tr><td class="Label">Current Clients: </td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
		<tr>
			<td class="Label">Audio Codec:</td>
			<td class="Label_Audio">%%CHANNEL_CODEC%% %%CHANNEL_CODEC_QUALITY%%<img src="styles:/TS3Night/Images/Encrypted.png" alt="%%?CHANNEL_VOICE_DATA_ENCRYPTED_FLAG%%"<br><br>Bitrate: %%CHANNEL_CODEC_BITRATE%%/s</td>
		</tr>
			<tr><td class="Label">Moderated:</td><td class="Moderated"><img src="iconpath:MODERATED" height="12" width="12" alt="%%?CHANNEL_NEEDED_TALK_POWER%%" />&nbsp;&nbsp;Yes</td></tr>
			<tr><td class="Label">Properties:</td><td class="Highlight">%%?CHANNEL_FLAGS%%</td></tr>
			<tr><td class="Label">Delete Timer:</td><td class="Highlight">%%?TEMP_CHANNEL_TIME_TO_DELETE%%</td></tr>
		%%?PLUGIN_INFO_DATA%%
		</table>
		<hr/>
	<table class="InfoFrame_Table" width="100%"><td class="Description_Title"> Description:</td></tr><tr><td class="Description">%%?CHANNEL_DESCRIPTION%%</td></table>
</div>
