local util = require "defads.shared.util"

local HTML_APIKEY = [[
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

local HTML_PLAYERKEY = [[
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
	</head>
	<body style="width: 100%; height: auto; margin: 0px; padding 0px; background: black;">
		__CLOSEBUTTON__
		<iframe src="http://api.giftgaming.com/gift?playerkey=__PLAYERKEY__&test=__TEST__"
			frameborder="0"
			style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
	</body>
</html>
]]

local M = {}

M.MSG_PREFETCH_OK = "prefetch_ok"
M.MSG_PREFETCH_FAILED = "prefetch_failed"

local playerkey = nil

function M.html(webview_id, apikey, test)
	local args = {
		__APIKEY__ = apikey or "",
		__PLAYERKEY__ = playerkey or "",
		__TEST__ = test and "true" or "false",
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	if apikey then
		return util.inject(HTML_APIKEY, args)
	else
		return util.inject(HTML_PLAYERKEY, args)
	end
end


local function response_ok(response)
	return response.status >= 200 and response.status < 300 and response.response
end

function M.prefetch(apikey, test, sender)
	assert(apikey, "You must provide a apikey")
	assert(sender, "You must provide a sender url")
	if not playerkey then
		local url = ("http://api.giftgaming.com/playerkey?apikey=%s"):format(apikey)
		http.request(url, "GET", function(self, id, response)
			if response_ok(response) and response.response ~= "" then
				playerkey = response.response
				M.prefetch(apikey, test, sender)
			else
				msg.post(sender, M.MSG_PREFETCH_FAILED)
			end
		end)
	else
		local url = ("http://api.giftgaming.com/prefetch?playerkey=%s&test=true"):format(playerkey, test and "true" or "false")
		http.request(url, "GET", function(self, id, response)
			if response_ok(response) and response.response == "SPONSOR_AVAILABLE" then
				msg.post(sender, M.MSG_PREFETCH_OK)
			else
				msg.post(sender, M.MSG_PREFETCH_FAILED)
			end
		end)
	end
end


return M