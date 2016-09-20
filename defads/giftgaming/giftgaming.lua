local util = require "defads.shared.util"

local HTML = [[
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
	</head>
	<body style="width: 100%; height: auto; margin: 0px; padding 0px; background: black;">
		__CLOSEBUTTON__
		<iframe src="http://api.giftgaming.com/gift?apikey=__APIKEY__&test=__TEST__"
			frameborder="0"
			style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
	</body>
</html>
]]

local M = {}

function M.html(webview_id, apikey, test)
	local args = {
		__APIKEY__ = apikey,
		__TEST__ = test and "true" or "false",
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(HTML, args)
end

return M