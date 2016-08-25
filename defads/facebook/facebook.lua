local util = require "defads.shared.util"

local HTML_SYNC = [[
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
    js.src = "//connect.facebook.net/en_US/sdk/xfbml.ad.js#xfbml=1&version=v2.5&appId=__APP_ID__";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<div class="fb-ad" data-placementid="__PLACEMENT_ID__" data-format="__FORMAT__" data-testmode="false"></div>


		__CLOSEBUTTON__
	</body>
</html>
]]

-- this version doesn't really seem to work
-- none of the callbacks are triggered
local HTML_ASYNC = [[
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
	</head>
	<body style="width: 100%; height: auto; margin: 0px; padding 0px; background: black;">

<div style="display:none; position: relative;">
  <iframe style="display:none;"></iframe>
  <script type="text/javascript">
    var data = {
      placementid: '__PLACEMENT_ID__',
      format: '__FORMAT__',
      testmode: false,
      onAdLoaded: function(element) {
        console.log('Audience Network ad loaded');
        element.style.display = 'block';
      },
      onAdError: function(errorCode, errorMessage) {
        console.log('Audience Network error (' + errorCode + ') ' + errorMessage);
      }
    };
    (function(w,l,d,t){var a=t();var b=d.currentScript||(function(){var c=d.getElementsByTagName('script');return c[c.length-1];})();var e=b.parentElement;e.dataset.placementid=data.placementid;var f=function(v){try{return v.document.referrer;}catch(e){}return'';};var g=function(h){var i=h.indexOf('/',h.indexOf('://')+3);if(i===-1){return h;}return h.substring(0,i);};var j=[l.href];var k=false;var m=false;if(w!==w.parent){var n;var o=w;while(o!==n){var h;try{m=m||(o.$sf&&o.$sf.ext);h=o.location.href;}catch(e){k=true;}j.push(h||f(n));n=o;o=o.parent;}}var p=l.ancestorOrigins;if(p){if(p.length>0){data.domain=p[p.length-1];}else{data.domain=g(j[j.length-1]);}}data.url=j[j.length-1];data.channel=g(j[0]);data.width=screen.width;data.height=screen.height;data.pixelratio=w.devicePixelRatio;data.placementindex=w.ADNW&&w.ADNW.Ads?w.ADNW.Ads.length:0;data.crossdomain=k;data.safeframe=!!m;var q={};q.iframe=e.firstElementChild;var r='https://www.facebook.com/audiencenetwork/web/?sdk=5.3';for(var s in data){q[s]=data[s];if(typeof(data[s])!=='function'){r+='&'+s+'='+encodeURIComponent(data[s]);}}q.iframe.src=r;q.tagJsInitTime=a;q.rootElement=e;q.events=[];w.addEventListener('message',function(u){if(u.source!==q.iframe.contentWindow){return;}u.data.receivedTimestamp=t();if(this.sdkEventHandler){this.sdkEventHandler(u.data);}else{this.events.push(u.data);}}.bind(q),false);q.tagJsIframeAppendedTime=t();w.ADNW=w.ADNW||{};w.ADNW.Ads=w.ADNW.Ads||[];w.ADNW.Ads.push(q);w.ADNW.init&&w.ADNW.init(q);})(window,location,document,Date.now||function(){return+new Date;});
  </script>
  <script type="text/javascript" src="https://connect.facebook.net/en_US/fbadnw.js" async></script>
</div>

		__CLOSEBUTTON__
	</body>
</html>
]]

local M = {}

function M.html(webview_id, app_id, placement_id)
	local args = {
		__APP_ID__ = app_id,
		__PLACEMENT_ID__ = placement_id,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
		__FORMAT__ = "300x250",
	}
	return util.inject(HTML_SYNC, args)
end

return M