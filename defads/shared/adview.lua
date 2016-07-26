--- Adview instance to simplify working with webview and HTML ads
-- @usage
-- local ad = adview.create()
-- ad.show(some_html)
--
-- iac.set_listener(function(self, payload, type)
--    ad.iac(payload)
-- end)

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
	local instance = {}

	--- Destroy the adview instance
	-- @param result Optional result code to pass back to the callback (defaults to @RESULT_CLOSED)
	-- @param message Optional message to pass back to the callback (defaults to an empty string)
	function instance.destroy(result, message)
		if instance.id then
			webview.destroy(instance.id)
			instance.id = nil
			if instance.callback then instance.callback({ result = result or M.RESULT_CLOSED, message = message or "" }) end
		end
	end

	--- Show HTML content in the adview instance
	-- @param html
	-- @param callback Optional callback to invoke when the adview is destroyed
	function instance.show(html, callback)
		assert(html, "You must provide some HTML to show")
		instance.callback = callback
		--print(html)
		webview.open_raw(instance.id, html, { hidden = true })
	end

	--- Call this function when the application has received an IAC callback. If the IAC
	-- callback originated from this adview instance (typically a close button) the
	-- instance will be destroyed
	-- @param payload IAC payload
	function instance.iac(payload)
		assert(payload, "You must provide a payload")
		local webview_id = string.match(payload.url, "/adview/(.*)/close")
		if webview_id and tostring(webview_id) == tostring(instance.id) then
			instance.destroy(M.RESULT_CLOSED, "Ok")
		end
	end

	local ok, id = pcall(webview.create, function(self, webview_id, request_id, result, data)
		if result == webview.CALLBACK_RESULT_URL_OK then
			webview.set_visible(webview_id, 1)
		elseif result == webview.CALLBACK_RESULT_URL_ERROR then
			instance.destroy(M.RESULT_ERROR, "webview.CALLBACK_RESULT_URL_ERROR")
		end
	end)
	if not ok then
		return
	end

	instance.id = id

	return instance
end

return M
