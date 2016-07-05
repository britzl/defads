local util = require "defads.shared.util"


local INTERSTITIAL_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>

<body>
	<div id="mainContainer">
		<script type="text/javascript">
			var Appnext = {
				android_id: '__ANDROID_ID__',
				ios_id: '__IOS_ID__',
				cat: '',
				pbk: '',
				b_title: '',
				b_color: '',
				skip_url: '__IAC_URL__',
				skip_title: '',
				mute: '',
				timeout: '',
				times_to_show: '',
				times_to_show_reset: '',
				creative:'managed',
				subid: ''
			};
			(function(){
			var _s=document.createElement('script');
			_s.type='text/javascript';
			_s.async=true;
			_s.src='https://appnext-a.akamaihd.net/tools/tags/video/manage_script.js';
			(document.body)?document.body.appendChild(_s):document.head.appendChild(_s);
			})();
		</script>
	</div>
</body>
</html>
]]

local VIDEO_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>

<body>
	<div id="appnextiframe"> </div>
	   <script type="text/javascript">
	        (function(){

	            var Appnext = {
	              android_id: '__ANDROID_ID__',
	              ios_id: '__IOS_ID__',
	              cnt: '',
	              pbk: '',
	              mute: '',
	              creative:'',
	              subid:'',
	              show_skip:'',
	              parent_url:window.location.origin,
	              b_title:"",
	              title:""
	            };
	            var block = document.querySelector('#appnextiframe')
	            var iframe = document.createElement('iframe');
	            iframe.style.width='300px';
	            iframe.style.height='250px';
	            iframe.style.border=0;
	            var src = 'https://appnext-a.akamaihd.net/tools/tags/c/widget300x250b/index.html?';
	            for (var param in  Appnext) src+='&'+param+'='+Appnext[param];
	            iframe.src=src;
	            block.appendChild(iframe);
	            var v = function(){
	                if (iframe.getBoundingClientRect().top-window.innerHeight<0){
	                    iframe.contentWindow.postMessage('vimp', 'https://appnext-a.akamaihd.net');
	                }
	            }

	            window.addEventListener("message", function(event){
	                var origin = event.origin || event.originalEvent.origin;
	                if (origin!=="https://appnext-a.akamaihd.net")return;
	                if(event.data=='noAds'){
	                    block.removeChild(iframe);
	                    document.location = "__IAC_URL__";
	                }
	                if(event.data=='registerVimp'){
	                    window.addEventListener('touchmove',v,true);
	                    v();
	                }
	                if(event.data=='removeVimp'){
	                    window.removeEventListener('touchmove',v,true);
	                    document.location = "__IAC_URL__";
	                }

	            }, false);
	        })();
	    </script>
	    __CLOSEBUTTON__
</body>
</html>
]]


local M = {}

function M.interstitial(webview_id, android_id, ios_id)
	local args = {
		__ANDROID_ID__ = android_id,
		__IOS_ID__ = ios_id,
		__IAC_URL__ = util.iac_url(webview_id),
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(INTERSTITIAL_HTML, args)
end

function M.video(webview_id, android_id, ios_id)
	local args = {
		__ANDROID_ID__ = android_id,
		__IOS_ID__ = ios_id,
		__IAC_URL__ = util.iac_url(webview_id),
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(VIDEO_HTML, args)
end

return M
