local util = require "defads.shared.util"

local RESPONSIVE_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin:0">
	<div style="width:100%; height:auto;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<ins class="adsbygoogle"
			style="display:block"
			data-ad-client="__AD_CLIENT__"
			data-ad-slot="__AD_SLOT__"
			data-ad-format="auto"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>
	__CLOSEBUTTON__
</body>
</html>
]]


local FIXED_BANNER_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin:0">
	<div style="width:100%; height:auto;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- Medium test -->
		<ins class="adsbygoogle"
			style="display:inline-block;width:__WIDTH__px;height:__HEIGHT__px"
			data-ad-client="__AD_CLIENT__"
			data-ad-slot="__AD_SLOT__"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>
	__CLOSEBUTTON__
</body>
</html>
]]


local FIXED_BANNER_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin:0">
	<div style="width:100%; height:auto;">
		<script type="text/javascript">
			google_ad_client = "__AD_CLIENT__";
			google_ad_slot = "__AD_SLOT__";
			google_ad_width = __WIDTH__;
			google_ad_height = __HEIGHT__;
		</script>
		<script type="text/javascript"
		src="//pagead2.googlesyndication.com/pagead/show_ads.js">
		</script>
	</div>
	__CLOSEBUTTON__
</body>
</html>
]]



local M = {}

function M.responsive(webview_id, ad_client, ad_slot, args)
	local args = {
		__AD_CLIENT__ = ad_client,
		__AD_SLOT__ = ad_slot,
		__WEBVIEW_ID__ = webview_id,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}	
	return util.inject(RESPONSIVE_HTML, args)
end

function M.fixed(webview_id, ad_client, ad_slot, args, width, height, args)
	local args = {
		__AD_CLIENT__ = ad_client,
		__AD_SLOT__ = ad_slot,
		__WEBVIEW_ID__ = webview_id,
		__WIDTH = tostring(width),
		__HEIGHT__ = tostring(height),
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(FIXED_BANNER_HTML, args)
end


return M
