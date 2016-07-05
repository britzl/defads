local util = require "defads.shared.util"

local HTML = [[
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
	</head>
	<body style="width: 100%; height: auto; margin: 0px; padding 0px; background: black;">
		<script type="text/javascript" src="http://ad.leadbolt.net/show_app_ad.js?section_id=__SECTION_ID__"></script>
		__CLOSEBUTTON__
	</body>
</html>
]]

local M = {}

function M.html(webview_id, section_id)
	local args = {
		__SECTION_ID__ = section_id,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(CLOSEBUTTON_HTML, args)
end

return M