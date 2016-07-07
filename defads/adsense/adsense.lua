local RESPONSIVE_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin:0">
	<div style="width:100%; height:auto;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<!-- Responsive -->
		<ins class="adsbygoogle"
			style="display:block"
			data-ad-client="__AD_CLIENT__"
			data-ad-slot="__AD_SLOT__"
			data-ad-format="auto"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>
	BELOW
	__CLOSEBUTTON__
</body>
</html>
]]

local FIXED_ASYNC_HTML = [[
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body style="margin:0">
	<div style="width:100%; height:auto;">
		<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
		<ins class="adsbygoogle"
			style="display:inline-block;width:__WIDTH__px;height:__HEIGHT__px"
			data-ad-client="__AD_CLIENT__"
			data-ad-slot="__AD_SLOT__"></ins>
		<script>
		(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
	</div>
	BELOW
	__CLOSEBUTTON__
</body>
</html>
]]


local FIXED_SYNC_HTML = [[
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
		<script type="text/javascript">
		try {
(function(){var o,e=this,t=function(o,e,t){return o.call.apply(o.bind,arguments)},n=function(o,e,t){if(!o)throw Error();if(2<arguments.length){var n=Array.prototype.slice.call(arguments,2);return function(){var t=Array.prototype.slice.call(arguments);return Array.prototype.unshift.apply(t,n),o.apply(e,t)}}return function(){return o.apply(e,arguments)}},r=function(o,e,i){return r=Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?t:n,r.apply(null,arguments)},i=(new Date).getTime(),a=function(o){return o=parseFloat(o),isNaN(o)||o>1||0>o?0:o},l=function(o,e){var t=parseInt(o,10);return isNaN(t)?e:t},g=/^([\w-]+\.)*([\w-]{2,})(\:[0-9]+)?$/,s=function(o,e){if(!o)return e;var t=o.match(g);return t?t[0]:e},u=l("100",-1),c=l("0",0),_=a("0"),d=a("0.05"),f=a("0.001"),p=a("0.01"),h=a(""),m=function(){return"r20160628"},v=/^true$/.test("false")?!0:!1,y=/^true$/.test("false")?!0:!1,w=/^true$/.test("true")?!0:!1,b=w||!y,j=String.prototype.trim?function(o){return o.trim()}:function(o){return o.replace(/^[\s\xa0]+|[\s\xa0]+$/g,"")},x=/&/g,k=/</g,S=/>/g,O=/"/g,E=/'/g,N=/\x00/g,A={"\x00":"\\0","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","	":"\\t","\x0B":"\\x0B",'"':'\\"',"\\":"\\\\","<":"<"},C={"'":"\\'"},I=function(o,e){return e>o?-1:o>e?1:0},T=Array.prototype.forEach?function(o,e,t){Array.prototype.forEach.call(o,e,t)}:function(o,e,t){for(var n=o.length,r="string"==typeof o?o.split(""):o,i=0;n>i;i++)i in r&&e.call(t,r[i],i,o)};o:{var M=e.navigator;if(M){var q=M.userAgent;if(q){o=q;break o}}o=""}var B,$=function(e){return-1!=o.indexOf(e)},L=$("Opera"),J=$("Trident")||$("MSIE"),P=$("Edge"),R=$("Gecko")&&!(-1!=o.toLowerCase().indexOf("webkit")&&!$("Edge"))&&!($("Trident")||$("MSIE"))&&!$("Edge"),D=-1!=o.toLowerCase().indexOf("webkit")&&!$("Edge"),F=function(){var o=e.document;return o?o.documentMode:void 0};o:{var z="",U=function(){var e=o;return R?/rv\:([^\);]+)(\)|;)/.exec(e):P?/Edge\/([\d\.]+)/.exec(e):J?/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(e):D?/WebKit\/(\S+)/.exec(e):L?/(?:Version)[ \/]?(\S+)/.exec(e):void 0}();if(U&&(z=U?U[1]:""),J){var H=F();if(null!=H&&H>parseFloat(z)){B=String(H);break o}}B=z}var W=B,G={},K=function(o){if(!G[o]){for(var e=0,t=j(String(W)).split("."),n=j(String(o)).split("."),r=Math.max(t.length,n.length),i=0;0==e&&r>i;i++){var a=t[i]||"",l=n[i]||"",g=RegExp("(\\d*)(\\D*)","g"),s=RegExp("(\\d*)(\\D*)","g");do{var u=g.exec(a)||["","",""],c=s.exec(l)||["","",""];if(0==u[0].length&&0==c[0].length)break;e=I(0==u[1].length?0:parseInt(u[1],10),0==c[1].length?0:parseInt(c[1],10))||I(0==u[2].length,0==c[2].length)||I(u[2],c[2])}while(0==e)}G[o]=e>=0}},V=e.document,X=V&&J?F()||("CSS1Compat"==V.compatMode?parseInt(W,10):5):void 0,Y=function(o){return Y[" "](o),o};Y[" "]=function(){};var Z;if(!(Z=!R&&!J)){var Q;(Q=J)&&(Q=9<=Number(X)),Z=Q}Z||R&&K("1.9.1"),J&&K("9");var oo=function(o){try{var e;if(e=!!o&&null!=o.location.href)o:{try{Y(o.foo),e=!0;break o}catch(t){}e=!1}return e}catch(t){return!1}},eo=function(o){try{var e=new Uint32Array(1);return o.crypto.getRandomValues(e),e[0]/65536/65536}catch(t){return Math.random()}},to=function(o,e){for(var t in o)Object.prototype.hasOwnProperty.call(o,t)&&e.call(void 0,o[t],t,o)},no=function(o){var e=o.length;if(0==e)return 0;for(var t=305419896,n=0;e>n;n++)t^=(t<<5)+(t>>2)+o.charCodeAt(n)&4294967295;return t>0?t:4294967296+t},ro=function(o,e){o.addEventListener?o.addEventListener("load",e,!1):o.attachEvent&&o.attachEvent("onload",e)},io=function(o,e,t,n,r){this.w=t||4e3,this.s=o||"&",this.A=e||",$",this.u=void 0!==n?n:"trn",this.C=r||null,this.v=!1,this.l={},this.B=0,this.j=[]},ao=function(o,e){var t={};return t[o]=e,[t]},lo=function(o,e,t,n){o.j.push(e),o.l[e]=ao(t,n)},go=function(o,e,t,n){e=e+"//"+t+n;var r=so(o)-n.length-0;if(0>r)return"";o.j.sort(function(o,e){return o-e}),n=null,t="";for(var i=0;i<o.j.length;i++)for(var a=o.j[i],l=o.l[a],g=0;g<l.length;g++){if(!r){n=null==n?a:n;break}var s=uo(l[g],o.s,o.A);if(s){if(s=t+s,r>=s.length){r-=s.length,e+=s,t=o.s;break}o.v&&(t=r,s[t-1]==o.s&&--t,e+=s.substr(0,t),t=o.s,r=0),n=null==n?a:n}}return i="",o.u&&null!=n&&(i=t+o.u+"="+(o.C||n)),e+i+""},so=function(o){if(!o.u)return o.w;var e,t=1;for(e in o.l)t=e.length>t?e.length:t;return o.w-o.u.length-t-o.s.length-1},uo=function(o,e,t,n,r){var i=[];return to(o,function(o,a){var l=co(o,e,t,n,r);l&&i.push(a+"="+l)}),i.join(e)},co=function(o,e,t,n,r){if(null==o)return"";if(e=e||"&",t=t||",$","string"==typeof t&&(t=t.split("")),o instanceof Array){if(n=n||0,n<t.length){for(var i=[],a=0;a<o.length;a++)i.push(co(o[a],e,t,n+1,r));return i.join(t[n])}}else if("object"==typeof o)return r=r||0,2>r?encodeURIComponent(uo(o,e,t,n,r+1)):"...";return encodeURIComponent(String(o))},_o=function(o,e,t,n){try{var r;if(t instanceof io?r=t:(r=new io,to(t,function(o,e){var t=r,n=t.B++,i=ao(e,o);t.j.push(n),t.l[n]=i})),Math.random()<(n||o.j)){var i=go(r,o.l,o.s,o.u+e+"&");fo(i)}}catch(a){}},fo=function(o){e.google_image_requests||(e.google_image_requests=[]);var t=e.document.createElement("img");t.src=o,e.google_image_requests.push(t)},po=document,ho=window,mo=null,vo=po.getElementsByTagName("script");vo&&vo.length&&(mo=vo[vo.length-1]);var yo=mo,wo=Object.prototype.hasOwnProperty,bo=function(o,e){for(var t in o)wo.call(o,t)&&e.call(void 0,o[t],t,o)},jo=function(o){return!(!o||!o.call)&&"function"==typeof o},xo=function(o,e){for(var t=1,n=arguments.length;n>t;++t)o.push(arguments[t])},ko=function(o,e){if(o.indexOf){var t=o.indexOf(e);return t>0||0===t}for(t=0;t<o.length;t++)if(o[t]===e)return!0;return!1},So=function(o){"google_onload_fired"in o||(o.google_onload_fired=!1,ro(o,function(){o.google_onload_fired=!0}))},Oo=function(o){return o=o.google_unique_id,"number"==typeof o?o:0},Eo=!!window.google_async_iframe_id,No=function(o){return(o=o.google_ad_modifications)?o.eids||[]:[]},Ao=function(o){return(o=o.google_ad_modifications)?o.loeids||[]:[]},Co=function(o,e,t){if(!o)return null;for(var n=0;n<o.length;++n)if((o[n].ad_slot||e)==e&&(o[n].ad_tag_origin||t)==t)return o[n];return null},Io=function(o,e){this.j=o,this.l=e},To=function(o,e,t){this.url=o,this.j=e,this.G=!!t,this.depth=null},Mo=function(o,e,t){this.u=o,this.w=e,this.s=t,this.l=null,this.v=this.j},qo=function(o,e,t){this.message=o,this.j=e||"",this.l=t||-1},Bo=function(o,e,t,n){var r;try{r=t()}catch(i){var a=o.s;try{var l=Jo(i),a=(n||o.v).call(o,e,l,void 0,void 0)}catch(g){o.j("pAR",g)}if(!a)throw i}finally{}return r},$o=function(o,e){var t=Lo;return function(){for(var n=[],r=0;r<arguments.length;++r)n[r]=arguments[r];return Bo(t,o,function(){return e.apply(void 0,n)})}};Mo.prototype.j=function(o,t,n,r,i){try{var a=i||this.w,l=new io;if(l.v=!0,lo(l,1,"context",o),t instanceof qo||(t=Jo(t)),lo(l,2,"msg",t.message.substring(0,512)),t.j&&lo(l,3,"file",t.j),0<t.l&&lo(l,4,"line",t.l.toString()),t={},this.l)try{this.l(t)}catch(g){}if(r)try{r(t)}catch(g){}r=[t],l.j.push(5),l.l[5]=r;var s;i=e,r=[];var u,c=null;do{t=i,oo(t)?(u=t.location.href,c=t.document&&t.document.referrer||null):(u=c,c=null),r.push(new To(u||"",t));try{i=t.parent}catch(g){i=null}}while(i&&t!=i);u=0;for(var _=r.length-1;_>=u;++u)r[u].depth=_-u;if(t=e,t.location&&t.location.ancestorOrigins&&t.location.ancestorOrigins.length==r.length-1)for(u=1;u<r.length;++u){var d=r[u];d.url||(d.url=t.location.ancestorOrigins[u-1]||"",d.G=!0)}for(var f=new To(e.location.href,e,!1),p=r.length-1,_=p;_>=0;--_){var h=r[_];if(h.url&&!h.G){f=h;break}}var h=null,m=r.length&&r[p].url;0!=f.depth&&m&&(h=r[p]),s=new Io(f,h),s.l&&lo(l,6,"top",s.l.url||""),lo(l,7,"url",s.j.url||""),_o(this.u,a,l,n)}catch(g){try{_o(this.u,a,{context:"ecmserr",rctx:o,msg:Po(g),url:s.j.url},n)}catch(v){}}return this.s};var Lo,Jo=function(o){return new qo(Po(o),o.fileName,o.lineNumber)},Po=function(o){var e=o.toString();if(o.name&&-1==e.indexOf(o.name)&&(e+=": "+o.name),o.message&&-1==e.indexOf(o.message)&&(e+=": "+o.message),o.stack){o=o.stack;var t=e;try{-1==o.indexOf(t)&&(o=t+"\n"+o);for(var n;o!=n;)n=o,o=o.replace(/((https?:\/..*\/)[^\/:]*:\d+(?:.|\n)*)\2/,"$1");e=o.replace(/\n */g,"\n")}catch(r){e=t}}return e};Lo=new Mo(new function(){this.l="http:"===ho.location.protocol?"http:":"https:",this.s="pagead2.googlesyndication.com",this.u="/pagead/gen_204?id=",this.j=.01},"jserror",!0);var Ro=function(o,e){Bo(Lo,o,e,Do)},Do=Lo.j,Fo=function(o,e){return $o(o,e)},zo={client:"google_ad_client",format:"google_ad_format",slotname:"google_ad_slot",output:"google_ad_output",ad_type:"google_ad_type",pse:"google_pstate_expt"};Lo.s=!v;var Uo=function(o,e){this.l=e>o?o:e,this.j=e>o?e:o};Uo.prototype.clone=function(){return new Uo(this.l,this.j)};var Ho,Wo=function(o){var e;try{e=parseInt(o.localStorage.getItem("google_experiment_mod"),10)}catch(t){return null}if(e>=0&&1e3>e)return e;e=Math.floor(1e3*eo(o));try{return o.localStorage.setItem("google_experiment_mod",""+e),e}catch(t){return null}},Go=null,Ko=function(){if(!Go){for(var o=window,e=o,t=0;o&&o!=o.parent&&(o=o.parent,t++,oo(o));)e=o;Go=e}return Go},Vo={m:"10573511",o:"10573512"},Xo={m:"10573507",o:"10573508"},Yo={m:"10573695",o:"10573696"},Zo={m:"10583695",o:"10583696"},Qo={X:{},na:{m:"453848102",o:"453848103"},ga:{m:"24819308",o:"24819309",T:"24819320",Z:"24819321"},ea:{m:"24819330",o:"24819331"},fa:{m:"108809120",$:"108809121"},ba:{m:"86724438",o:"86724439"},M:{m:"10573597",o:"10573598"},N:{m:"10573581",o:"10573582"},ja:{m:"10573605",o:"10573606"},Y:{m:"26835105",o:"26835106"},aa:{m:"35923720",o:"35923721"},D:{m:"35923760",o:"35923761"},L:{m:"20040000",o:"20040001"},V:{m:"20040016",o:"20040017"},ha:{m:"19188000",o:"19188001"},W:{P:"314159230",da:"314159231"},ca:{ka:"27285692",ma:"27285712",la:"27285713"},ia:{m:"27415010",o:"27415011"},S:{m:"618018082",R:"618018083",U:"618018084"}},oe=new function(){this.j=new Uo(100,199)},ee=function(o,e,t,n){return o.location&&o.location.hash=="#google_plle_"+n?e=n:(o=[t,n],1e-4>Math.random()||(t=Math.random(),!(e>t))?e=null:(t=eo(window),e=o[Math.floor(t*o.length)])),e},te=function(o,e,t){return Ro("files::getSrc",function(){if("https:"==ho.location.protocol&&"http"==t)throw t="https",Error("Requested url "+o+e)}),[t,"://",o,e].join("")},ne=function(o,e,t){return t||(t=b?"https":"http"),te(o,e,t)},re=function(){},ie=function(o,e,t){switch(typeof e){case"string":ge(e,t);break;case"number":t.push(isFinite(e)&&!isNaN(e)?String(e):"null");break;case"boolean":t.push(String(e));break;case"undefined":t.push("null");break;case"object":if(null==e){t.push("null");break}if(e instanceof Array||void 0!=e.length&&e.splice){var n=e.length;t.push("[");for(var r="",i=0;n>i;i++)t.push(r),ie(o,e[i],t),r=",";t.push("]");break}t.push("{"),n="";for(r in e)e.hasOwnProperty(r)&&(i=e[r],"function"!=typeof i&&(t.push(n),ge(r,t),t.push(":"),ie(o,i,t),n=","));t.push("}");break;case"function":break;default:throw Error("Unknown type: "+typeof e)}},ae={'"':'\\"',"\\":"\\\\","/":"\\/","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","	":"\\t","\x0B":"\\u000b"},le=/\uffff/.test("￿")?/[\\\"\x00-\x1f\x7f-\uffff]/g:/[\\\"\x00-\x1f\x7f-\xff]/g,ge=function(o,e){e.push('"'),e.push(o.replace(le,function(o){if(o in ae)return ae[o];var e=o.charCodeAt(0),t="\\u";return 16>e?t+="000":256>e?t+="00":4096>e&&(t+="0"),ae[o]=t+e.toString(16)})),e.push('"')},se=$("Safari")&&!(($("Chrome")||$("CriOS"))&&!$("Edge")||$("Coast")||$("Opera")||$("Edge")||$("Silk")||$("Android"))&&!($("iPhone")&&!$("iPod")&&!$("iPad")||$("iPad")||$("iPod")),ue=null,ce=R||D&&!se||L||"function"==typeof e.btoa,_e=function(o){var t;if(ce)t=e.btoa(o);else{t=[];for(var n=0,r=0;r<o.length;r++){for(var i=o.charCodeAt(r);i>255;)t[n++]=255&i,i>>=8;t[n++]=i}if(!ue)for(ue={},o=0;65>o;o++)ue[o]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(o);for(o=ue,n=[],r=0;r<t.length;r+=3){var a=t[r],l=(i=r+1<t.length)?t[r+1]:0,g=r+2<t.length,s=g?t[r+2]:0,u=a>>2,a=(3&a)<<4|l>>4,l=(15&l)<<2|s>>6,s=63&s;g||(s=64,i||(l=64)),n.push(o[u],o[a],o[l],o[s])}t=n.join("")}return t},de="google_ad_block google_ad_channel google_ad_client google_ad_format google_ad_height google_ad_host google_ad_host_channel google_ad_host_tier_id google_ad_modifications google_ad_output google_ad_region google_ad_section google_ad_slot google_ad_type google_ad_unit_key google_ad_dom_fingerprint google_ad_width google_adtest google_allow_expandable_ads google_alternate_ad_url google_alternate_color google_ama google_analytics_domain_name google_analytics_uacct google_analytics_url_parameters google_auto_format google_available_width google_captcha_token google_city google_color_bg google_color_border google_color_line google_color_link google_color_text google_color_url google_container_id google_content_recommendation_ui_type google_contents google_core_dbp google_country google_cpm google_ctr_threshold google_cust_age google_cust_ch google_cust_criteria google_cust_gender google_cust_id google_cust_interests google_cust_job google_cust_l google_cust_lh google_cust_u_url google_disable_video_autoplay google_delay_requests_count google_delay_requests_delay google_ed google_eids google_enable_content_recommendations google_enable_ose google_encoding google_floating_ad_position google_font_face google_font_size google_frame_id google_gl google_hints google_is_split_slot google_image_size google_kw google_kw_type google_lact google_language google_loeid google_max_num_ads google_max_radlink_len google_mtl google_nofo google_num_radlinks google_num_radlinks_per_unit google_only_ads_with_video google_only_pyv_ads google_only_userchoice_ads google_override_format google_page_url google_pgb_reactive google_previous_watch google_previous_searches google_referrer_url google_region google_responsive_formats google_reuse_colors google_rl_dest_url google_rl_filtering google_rl_mode google_rt google_safe google_safe_for_responsive_override google_scs google_source_type google_sui google_skip google_tag_for_child_directed_treatment google_tag_info google_tag_origin google_targeting google_tdsma google_tfs google_tl google_ui_features google_video_doc_id google_video_product_type google_video_url_to_fetch google_webgl_support google_with_pyv_ads google_yt_pt google_yt_up".split(" "),fe={google_ad_modifications:!0,google_analytics_domain_name:!0,google_analytics_uacct:!0},pe=function(o){return(o=o.innerText||o.innerHTML)&&(o=o.replace(/^\s+/,"").split(/\r?\n/,1)[0].match(/^\x3c!--+(.*?)(?:--+>)?\s*$/))&&/google_ad_client/.test(o[1])?o[1]:null},he=function(o){return(o=o.innerText||o.innerHTML)&&(o=o.replace(/^\s+|\s+$/g,"").replace(/\s*(\r?\n)+\s*/g,";"),(o=o.match(/^\x3c!--+(.*?)(?:--+>)?$/)||o.match(/^\/*\s*<!\[CDATA\[(.*?)(?:\/*\s*\]\]>)?$/i))&&/google_ad_client/.test(o[1]))?o[1]:null},me=function(o){var e;try{o:{var t,n=o.document.getElementsByTagName("script"),r=o.navigator&&o.navigator.userAgent||"";if(!(t=/appbankapppuzdradb|daumapps|fban|fbios|fbav|fb_iab|gsa\/|messengerforios|naver|niftyappmobile|nonavigation|pinterest|twitter|ucbrowser|yjnewsapp|youtube/i.test(r))){var i;if(i=/i(phone|pad|pod)/i.test(r)){var a;if(a=/applewebkit/i.test(r)&&!/version|safari/i.test(r)){var l;try{l=!(!ho.navigator.j&&!(v&&ho.google_top_window||ho.top).navigator.j)}catch(g){l=!1}a=!l}i=a}t=i}for(var r=t?pe:he,s=n.length-1;s>=0;s--){var u=n[s];if(!u.google_parsed_script){u.google_parsed_script=!0;var c=r(u);if(c){e=c;break o}}}e=null}}catch(g){return!1}if(!e)return!1;try{for(var _,n=/(google_\w+) *= *(['"]?[\w.-]+['"]?) *(?:;|$)/gm,s={};_=n.exec(e);)s[_[1] ]=be(_[2]);je(s,o)}catch(g){return!1}return!!o.google_ad_client},ve=function(o){try{if(window.JSON&&window.JSON.stringify&&window.encodeURIComponent){var e,t,n=function(){return this};null!=Object.prototype.toJSON&&(e=Object.prototype.toJSON,Object.prototype.toJSON=n),null!=Array.prototype.toJSON&&(t=Array.prototype.toJSON,Array.prototype.toJSON=n);var r=_e(encodeURIComponent(window.JSON.stringify(o)));return e&&(Object.prototype.toJSON=e),t&&(Array.prototype.toJSON=t),r}}catch(i){Lo.j("sblob",i,void 0,void 0)}return""},ye=function(o){o.google_page_url&&(o.google_page_url=String(o.google_page_url));var e=[];return bo(o,function(o,t){if(null!=o){var n;try{var r=[];ie(new re,o,r),n=r.join("")}catch(i){}n&&(n=n.replace(/\//g,"\\$&"),xo(e,t,"=",n,";"))}}),e.join("")},we=function(o){for(var e=0,t=de.length;t>e;e++){var n=de[e];fe[n]||(o[n]=null)}},be=function(o){switch(o){case"true":return!0;case"false":return!1;case"null":return null;case"undefined":break;default:try{var e=o.match(/^(?:'(.*)'|"(.*)")$/);if(e)return e[1]||e[2]||"";if(/^[-+]?\d*(\.\d+)?$/.test(o)){var t=parseFloat(o);return t===t?t:void 0}}catch(n){}}},je=function(o,e){for(var t=0;t<de.length;t++){var n=de[t];null==e[n]&&null!=o[n]&&(e[n]=o[n])}},xe=function(o){this.j=o,o.google_iframe_oncopy||(o.google_iframe_oncopy={handlers:{},upd:r(this.u,this)}),this.s=o.google_iframe_oncopy},ke="var i=this.id,s=window.google_iframe_oncopy,H=s&&s.handlers,h=H&&H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&&d&&(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}";/[\x00&<>"']/.test(ke)&&(-1!=ke.indexOf("&")&&(ke=ke.replace(x,"&amp;")),-1!=ke.indexOf("<")&&(ke=ke.replace(k,"&lt;")),-1!=ke.indexOf(">")&&(ke=ke.replace(S,"&gt;")),-1!=ke.indexOf('"')&&(ke=ke.replace(O,"&quot;")),-1!=ke.indexOf("'")&&(ke=ke.replace(E,"&#39;")),-1!=ke.indexOf("\x00")&&(ke=ke.replace(N,"&#0;"))),Ho=ke,xe.prototype.set=function(o,e){this.s.handlers[o]=e,this.j.addEventListener&&this.j.addEventListener("load",r(this.l,this,o),!1)},xe.prototype.l=function(o){o=this.j.document.getElementById(o);try{var e=o.contentWindow.document;!o.onload||!e||e.body&&e.body.firstChild||o.onload()}catch(t){}},xe.prototype.u=function(o,e){var t,n=Se("rx",o);return t=o&&(t=o.match("dt=([^&]+)"))&&2==t.length?t[1]:"",t=(new Date).getTime()-t,n=n.replace(/&dtd=(\d+|-?M)/,"&dtd="+(t>=1e5?"M":t>=0?t:"-M")),this.set(e,n),n};var Se=function(o,e){var t=new RegExp("\\b"+o+"=(\\d+)"),n=t.exec(e);return n&&(e=e.replace(t,o+"="+(+n[1]+1||1))),e};R||D||J&&K(11);var Oe,Ee=/MSIE [2-7]|PlayStation|Gecko\/20090226|Android 2\.|Opera/i,Ne=!1,Ae=function(o){return o?((o=o.toLowerCase())&&"ca-"!=o.substring(0,3)&&(o="ca-"+o),o):""},Ce=null,Ie={"120x90":!0,"160x90":!0,"180x90":!0,"200x90":!0,"468x15":!0,"728x15":!0},Te=function(o){this.u=[],this.l=o||window,this.j=0,this.s=null,this.B=0},Me=function(o,e){this.l=o,this.j=e};Te.prototype.C=function(o,e){0!=this.j||0!=this.u.length||e&&e!=window?this.v(o,e):(this.j=2,this.A(new Me(o,window)))},Te.prototype.v=function(o,e){this.u.push(new Me(o,e||this.l)),qe(this)},Te.prototype.I=function(o){if(this.j=1,o){var e=Fo("sjr::timeout",r(this.w,this,!0));this.s=this.l.setTimeout(e,o)}},Te.prototype.w=function(o){o&&++this.B,1==this.j&&(null!=this.s&&(this.l.clearTimeout(this.s),this.s=null),this.j=0),qe(this)},Te.prototype.H=function(){return!(!window||!Array)},Te.prototype.J=function(){return this.B},Te.prototype.nq=Te.prototype.C,Te.prototype.nqa=Te.prototype.v,Te.prototype.al=Te.prototype.I,Te.prototype.rl=Te.prototype.w,Te.prototype.sz=Te.prototype.H,Te.prototype.tc=Te.prototype.J;var qe=function(o){var e=Fo("sjr::tryrun",r(o.K,o));o.l.setTimeout(e,0)};Te.prototype.K=function(){if(0==this.j&&this.u.length){var o=this.u.shift();this.j=2;var e=Fo("sjr::run",r(this.A,this,o));o.j.setTimeout(e,0),qe(this)}},Te.prototype.A=function(o){this.j=0,o.l()};var Be=function(o){try{return o.sz()}catch(e){return!1}},$e=function(o){return!!o&&("object"==typeof o||"function"==typeof o)&&Be(o)&&jo(o.nq)&&jo(o.nqa)&&jo(o.al)&&jo(o.rl)},Le=function(){if(Oe&&Be(Oe))return Oe;var o=Ko(),e=o.google_jobrunner;return $e(e)?Oe=e:o.google_jobrunner=Oe=new Te(o)},Je=function(o,e){Le().nq(o,e)},Pe=function(o,e){Le().nqa(o,e)},Re=Eo?1==Oo(ho):!Oo(ho),De=function(){var o,e=w?"https":"http",t=Y("script");o:{if(v)try{var n=ho.google_cafe_host||ho.top.google_cafe_host;if(n){o=n;break o}}catch(r){}o=s("","pagead2.googlesyndication.com")}return["<",t,' src="',ne(o,["/pagead/js/",m(),"/r20151006/show_ads_impl.js"].join(""),e),'"></',t,">"].join("")},Fe=function(o,e,t,n){return function(){var r=!1;n&&Le().al(3e4);try{var i=o.document.getElementById(e).contentWindow;if(oo(i)){var a=o.document.getElementById(e).contentWindow,l=a.document;l.body&&l.body.firstChild||(/Firefox/.test(navigator.userAgent)?l.open("text/html","replace"):l.open(),a.google_async_iframe_close=!0,l.write(t))}else{for(var g=o.document.getElementById(e).contentWindow,i=t,i=String(i),a=['"'],l=0;l<i.length;l++){var s,u=i.charAt(l),c=u.charCodeAt(0),_=l+1;if(!(s=A[u])){var d;if(c>31&&127>c)d=u;else{var f=u;if(f in C)d=C[f];else if(f in A)d=C[f]=A[f];else{var p=void 0,h=f.charCodeAt(0);h>31&&127>h?p=f:(256>h?(p="\\x",(16>h||h>256)&&(p+="0")):(p="\\u",4096>h&&(p+="0")),p+=h.toString(16).toUpperCase()),d=C[f]=p}}s=d}a[_]=s}a.push('"'),g.location.replace("javascript:"+a.join(""))}r=!0}catch(m){g=Ko().google_jobrunner,$e(g)&&g.rl()}r&&(r=Se("google_async_rrc",t),new xe(o).set(e,Fe(o,e,r,!1)))}},ze=function(o){var e=["<iframe"];return bo(o,function(o,t){null!=o&&e.push(" "+t+'="'+o+'"')}),e.push("></iframe>"),e.join("")},Ue=function(o){if(!Ce)o:{for(var t,n=[e.top],r=[],i=0;t=n[i++];){r.push(t);try{if(t.frames)for(var a=t.frames.length,l=0;a>l&&1024>n.length;++l)n.push(t.frames[l])}catch(g){}}for(n=0;n<r.length;n++)try{var u=r[n].frames.google_esf;if(u){Ce=u;break o}}catch(g){}Ce=null}return Ce?"":(r={style:"display:none"},/[^a-z0-9-]/.test(o)?"":(r["data-ad-client"]=Ae(o),r.id="google_esf",r.name="google_esf",o=ne(s("","googleads.g.doubleclick.net"),["/pagead/html/",m(),"/r20151006/zrt_lookup.html"].join("")),r.src=o,ze(r)))},He=function(o,e){var t=e.google_ad_output,n=e.google_ad_format;if(n||"html"!=t&&null!=t||(n=e.google_ad_width+"x"+e.google_ad_height),t=!e.google_ad_slot||e.google_override_format||!Ie[e.google_ad_width+"x"+e.google_ad_height]&&"aa"==e.google_loader_used,n=n&&t?n.toLowerCase():"",e.google_ad_format=n,"number"!=typeof e.google_reactive_sra_index||!e.google_ad_unit_key){for(var n=[e.google_ad_slot,e.google_ad_format,e.google_ad_type,e.google_ad_width,e.google_ad_height],t=[],r=0,i=yo.parentElement;i&&25>r;i=i.parentNode,++r)t.push(9!==i.nodeType&&i.id||"");for((t=t.join())&&n.push(t),e.google_ad_unit_key=no(n.join(":")).toString(),n=yo,t=[],r=0;n&&25>r;++r){var a,i=(i=9!==n.nodeType&&n.id)?"/"+i:"";o:{if(n&&n.nodeName&&n.parentElement){a=n.nodeName.toString().toLowerCase();for(var l=n.parentElement.childNodes,g=0,s=0;s<l.length;++s){var u=l[s];if(u.nodeName&&u.nodeName.toString().toLowerCase()===a){if(n===u){a="."+g;break o}++g}}}a=""}t.push((n.nodeName&&n.nodeName.toString().toLowerCase())+i+a),n=n.parentElement}if(n=t.join()+":",t=o,r=[],t)try{for(var c=t.parent,i=0;c&&c!==t&&25>i;++i){var _=c.frames;for(a=0;a<_.length;++a)if(t===_[a]){r.push(a);break}t=c,c=t.parent}}catch(d){}e.google_ad_dom_fingerprint=no(n+r.join()).toString()}};!function(o){Lo.l=function(e){T(o,function(o){o(e)})}}([function(o){o.shv=m()},function(o){to(zo,function(t,n){try{null!=e[t]&&(o[n]=e[t])}catch(r){}})}]),Ro("sa::main",function(){var o=window,e=o.google_ad_modifications=o.google_ad_modifications||{};if(!e.plle){e.plle=!0;var t,n,r,a,l=e.eids=e.eids||[],e=e.loeids=e.loeids||[];if(t=Qo.M,n=t.o,!o.location||o.location.hash!="#google_plle_"+n){n=[t.m,n],r=new Uo(u,u+c-1);var g;(g=0>=c||c%n.length)||(g=oe.j,g=!(g.l<=r.l&&g.j>=r.j)),g?n=null:(g=Wo(o),n=null!==g&&r.l<=g&&r.j>=g?n[(g-u)%n.length]:null)}(r=n)&&e.push(r),n=Xo,a=r==t.m?n.m:r==t.o?n.o:"",a&&l.push(a),t=Yo,(t=ee(o,_,t.m,t.o))&&l.push(t),t=Zo,(t=ee(o,d,t.m,t.o))&&l.push(t),t=Qo.N,(r=ee(o,f,t.m,t.o))&&e.push(r),n=Vo,a=r==t.m?n.m:r==t.o?n.o:"",a&&l.push(a),t=Qo.D,(l=ee(o,p,t.m,t.o))&&e.push(l),po.body||(t=Qo.L,(l=ee(o,h,t.m,t.o))&&e.push(l))}if(a=o.google_ad_slot,e=o.google_ad_modifications,!e||Co(e.ad_whitelist,a,void 0)?e=null:(l=e.space_collapsing||"none",e=(a=Co(e.ad_blacklist,a))?{F:!0,O:a.space_collapsing||l}:e.remove_ads_by_default?{F:!0,O:l}:null),e&&e.F)we(o);else if(So(o),!1===window.google_enable_async||Ee.test(navigator.userAgent)||window.google_container_id||window.google_ad_output&&"html"!=window.google_ad_output)o.google_loader_used="sb",o.google_start_time=i,He(o,o),document.write(Ue(o.google_ad_client)+De());else{Re&&(l=o.google_ad_client,e=navigator,o&&l&&e&&(e=o.document,l=Ae(l),/[^a-z0-9-]/.test(l)||((a=j("r20160212"))&&(a+="/"),a=ne("pagead2.googlesyndication.com","/pub-config/"+a+l+".js"),l=e.createElement("script"),l.src=a,(e=e.getElementsByTagName("script")[0])&&e.parentNode&&e.parentNode.insertBefore(l,e)))),o.google_unique_id?++o.google_unique_id:o.google_unique_id=1,l={},null==o.google_ad_client&&me(o)&&(l.google_loader_features_used=2048),je(o,l),l.google_loader_used="sa",we(o),e=Y("script"),a={},t=l.google_ad_height,a.width='"'+l.google_ad_width+'"',a.height='"'+t+'"',a.frameborder='"0"',a.marginwidth='"0"',a.marginheight='"0"',a.vspace='"0"',a.hspace='"0"',a.allowtransparency='"true"',a.scrolling='"no"',a.allowfullscreen='"true"',a.onload='"'+Ho+'"';var s;for(t=o.document,n=a.id,r=0;!n||t.getElementById(n);)n="aswift_"+r++;a.id=n,a.name=n,n=l.google_ad_width,r=l.google_ad_height,g=Qo.D;var m=g.m,v=g.o,y=l.google_active_plles=l.google_active_plles||[];ko(Ao(o),m)||ko(No(o),m)?y.push(m):(ko(Ao(o),v)||ko(No(o),v))&&y.push(v),Ne=ko(Ao(o),g.o),g=["<iframe"];for(s in a)a.hasOwnProperty(s)&&xo(g,s+"="+a[s]);s="left:0;position:absolute;top:0;",Ne&&(s=s+"width:"+n+"px;height:"+r+"px;"),g.push('style="'+s+'"'),g.push("></iframe>"),s=a.id,n="border:none;height:"+r+"px;margin:0;padding:0;position:relative;visibility:visible;width:"+n+"px;background-color:transparent",t.write(['<ins id="',s+"_expand",'" style="display:inline-table;',n,'"><ins id="',s+"_anchor",'" style="display:block;',n,'">',g.join(" "),"</ins></ins>"].join("")),s=a.id,He(o,l),a=ye(l),t=ve(l),l=Ue(l.google_ad_client),n=(new Date).getTime(),e=["<!doctype html><html><body>",l,"<",e,">",a,"google_show_ads_impl=true;google_unique_id=",Oo(o),';google_async_iframe_id="',s,'";google_start_time=',i,";",t?'google_pub_vars = "'+t+'";':"","google_bpp=",n>i?n-i:1,";google_async_rrc=0;google_iframe_start_time=new Date().getTime();</",e,">",De(),"</body></html>"].join(""),(o.document.getElementById(s)?Je:Pe)(Fe(o,s,e,!0))}})}).call(this);
		}
		catch(err) {
			window.location = __IAC_URL__;
		}
		</script>
	</div>
	__CLOSEBUTTON__
</body>
</html>
]]

local util = require "defads.shared.util"

-- https://support.google.com/adsense/answer/1706015
local M = {}

function M.responsive(webview_id, ad_client, ad_slot)
	local args = {
		__AD_CLIENT__ = ad_client,
		__AD_SLOT__ = ad_slot,
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(RESPONSIVE_HTML, args)
end

function M.fixed(webview_id, ad_client, ad_slot, width, height)
	local args = {
		__AD_CLIENT__ = ad_client,
		__AD_SLOT__ = ad_slot,
		__WIDTH__ = tostring(width),
		__HEIGHT__ = tostring(height),
		__IAC_URL__ = util.iac_url(webview_id),
		__CLOSEBUTTON__ = util.closebutton(webview_id),
	}
	return util.inject(FIXED_SYNC_HTML, args)
end


return M
