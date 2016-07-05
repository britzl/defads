local iac_listeners = require "defads.shared.iac_listeners"

local M = {}

M.CLOSED = "CLOSED"
M.ERROR = "ERROR"

function M.create()
	local ok, id = pcall(webview.create, function(self, webview_id, request_id, type, data)
		if type == webview.CALLBACK_RESULT_URL_OK then
			webview.set_visible(webview_id, 1)
		elseif type == webview.CALLBACK_RESULT_URL_ERROR then
			instance.destroy(M.ERROR, "webview.CALLBACK_RESULT_URL_ERROR")
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
			instance.destroy(M.CLOSED, "Ok")
		end
	end
	
	iac_listeners.add(iac_listener)

	--- Destroy the 
	function instance.destroy(status, message)
		if instance.id then
			iac_listeners.remove(iac_listener)
			webview.destroy(instance.id)
			instance.id = nil
			instance.callback({ status = status or M.CLOSED, message = message or "" })
		end
	end
	
	function instance.show(html, callback)
		instance.callback = callback
		--print(html)
		webview.open_raw(instance.id, html, { hidden = true })
	end
	
	
	return instance
end

return M