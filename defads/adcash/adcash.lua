local HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin:0">
	<div style="width:100%; height:auto;">
		<script data-cfasync="false" type="text/javascript" src="http://www.onclickperformance.com/a/display.php?r=__ZONE_ID__&amp;js=1&amp;sdk=1.2&amp;udid=<device_udid_to_be_placed>"></script>
	</div>
	__CLOSEBUTTON__
</body>
</html>
]]

local util = require "defads.shared.util"


local M = {}

function M.html(webview_id, zone_id)
	local args = {
		__ZONE_ID__ = zone_id,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}	
	return util.inject(HTML, args)
end


return M
