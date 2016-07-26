local M = {}


function M.inject(html, args)
	for k,v in pairs(args) do
		html = html:gsub(k, v)
	end
	return html
end


function M.iac_base_url()
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


function M.iac_url(webview_id)
	return M.iac_base_url() .. "://adview/" .. webview_id .. "/close"
end

function M.closebutton(webview_id)
	return [[
		<script>
			document.body.innerHTML += "<div id='closebutton' onclick='closeAd()' style='background: #000000; font:bold 24px arial; padding: 2% 4% 2% 4%; color:white; text-decoration: none; position:fixed; z-index:1000; top:0px; right:0px; text-transform:uppercase; border:6px solid white; cursor:pointer;'> X </div>";
			function closeAd(){
				document.location = "]] .. M.iac_url(webview_id) .. [[";
			}
		</script>
	]]
end


return M