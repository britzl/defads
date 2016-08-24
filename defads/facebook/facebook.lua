local util = require "defads.shared.util"

local HTML = [[
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
	</head>
	<body style="width: 100%; height: auto; margin: 0px; padding 0px; background: black;">

<script>
  window.fbAsyncInit = function() {
    FB.Event.subscribe(
      'ad.loaded',
      function(placementId) {
        console.log('Audience Network ad loaded');
      }
    );
    FB.Event.subscribe(
      'ad.error',
      function(errorCode, errorMessage, placementId) {
        console.log('Audience Network error (' + errorCode + ') ' + errorMessage);
      }
    );
  };
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk/xfbml.ad.js#xfbml=1&version=v2.5&appId=538795206313502";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-ad" data-placementid="538795206313502_538795972980092" data-format="300x250" data-testmode="false"></div>

		__CLOSEBUTTON__
	</body>
</html>
]]

local M = {}

function M.html(webview_id, placement_id)
	local args = {
		__PLACEMENT_ID__ = placement_id,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(HTML, args)
end

return M