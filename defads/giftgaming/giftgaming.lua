local HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin: 0px; padding 0px; background: black; overflow:hidden">
	__CLOSEBUTTON__
	<iframe
		width="640"
		height="1010"
		frameborder="0"
		src="http://api.giftgaming.com/gift?apikey=__APIKEY__&width=640&height=1010&test=true"/>
</body>
</html>
]]

local util = require "defads.shared.util"


local M = {}

function M.html(webview_id, apikey)
	local args = {
		__APIKEY__ = apikey,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}	
	return util.inject(HTML, args)
end


return M
