local iac_listeners = require "defads.shared.iac_listeners"

local M = {}

function M.create()
	local instance = {}

	instance.id = webview.create(function(self, webview_id, request_id, type, data)
		print("callback", webview_id, request_id, type, data)
		pprint(data)
		if type == webview.CALLBACK_RESULT_URL_OK then
			print("CALLBACK_RESULT_URL_OK")
			webview.set_visible(webview_id, 1)
		elseif type == webview.CALLBACK_RESULT_URL_ERROR then
			print("CALLBACK_RESULT_URL_ERROR")
		elseif type == webview.CALLBACK_RESULT_EVAL_OK then
			print("CALLBACK_RESULT_EVAL_OK")
		elseif type == webview.CALLBACK_RESULT_EVAL_ERROR then
			print("CALLBACK_RESULT_EVAL_ERROR")
		else
			print("other type", type)
		end
	end)

	local function iac_listener(self, payload, t)
		print("defads.iac_listener")
		pprint(payload)
		local webview_id = string.match(payload.url, "/webview/(.*)/close")
		if not webview_id then
			print("Unable to get webview id")
			return
		end
		if tostring(webview_id) == tostring(instance.id) then
			instance.destroy()
		end
	end
	
	iac_listeners.add(iac_listener)

	
	function instance.destroy()
		print("defads.destroy()")
		if instance.id then
			iac_listeners.remove(iac_listener)
			webview.destroy(instance.id)
			instance.id = nil
		end
	end
	
	function instance.show(html)
		print(html)
		webview.open_raw(instance.id, html, { hidden = true })
	end
	
	
	return instance
end

function M.get_iac_base_url()
	local is_android = sys.get_sys_info().system_name == "Android"
	local is_ios = sys.get_sys_info().system_name == "iPhone OS"
	if is_android then
		return sys.get_config("android.package")
	elseif is_ios then
		return sys.get_config("ios.bundle_identifier")
	else
		return nil
	end
end

return M