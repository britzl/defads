--- Adview instance to simplify working with webview and HTML ads
-- @usage
-- local ad = adview.create()
-- ad.show(some_html)

local iac_listeners = require "defads.shared.iac_listeners"

local M = {}

--- Result code to pass back to the adview callback when the adview is closed
M.RESULT_CLOSED = "RESULT_CLOSED"
--- Result code to pass back to the adview callback when there was a problem showing the adview content
M.RESULT_ERROR = "RESULT_ERROR"

M.MSG_AD_CLOSED = "ad_closed"
M.MSG_AD_ERROR = "ad_error"

--- Create an adview instance
-- @return instance
function M.create()
	local ok, id = pcall(webview.create, function(self, webview_id, request_id, type, data)
		if type == webview.CALLBACK_RESULT_URL_OK then
			webview.set_visible(webview_id, 1)
		elseif type == webview.CALLBACK_RESULT_URL_ERROR then
			instance.destroy(M.RESULT_ERROR, "webview.CALLBACK_RESULT_URL_ERROR")
		end
	end)
	if not ok then
		return
	end

	local instance = {}
	instance.id = id

	local function iac_listener(self, payload, t)
		local webview_id = string.match(payload.url, "/webview/(.*)/close")
		if webview_id and tostring(webview_id) == tostring(instance.id) then
			instance.destroy(M.RESULT_CLOSED, "Ok")
		end
	end

	iac_listeners.add(iac_listener)

	--- Destroy the adview instance
	-- @param result Optional result code to pass back to the callback (defaults to @RESULT_CLOSED)
	-- @param message Optional message to pass back to the callback (defaults to an empty string)
	function instance.destroy(result, message)
		if instance.id then
			iac_listeners.remove(iac_listener)
			webview.destroy(instance.id)
			instance.id = nil
			if instance.callback then instance.callback({ result = result or M.RESULT_CLOSED, message = message or "" }) end
		end
	end

	--- Show HTML content in the advbiew instance
	-- @param html
	-- @param callback Optional callback to invoke when the adview is destroyed
	function instance.show(html, callback)
		assert(html, "You must provide some HTML to show")
		instance.callback = callback
		--print(html)
		webview.open_raw(instance.id, html, { hidden = true })
	end


	return instance
end

return M
