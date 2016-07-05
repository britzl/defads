return [[
	<script>
		document.body.innerHTML += "<div id='closebutton' onclick='closeAd()' style='background: #000000; font:bold 24px arial; padding: 2% 4% 2% 4%; color:white; text-decoration: none; position:fixed; z-index:1000; top:0px; right:0px; text-transform:uppercase; border:6px solid white; cursor:pointer;'> X </div>";
		function closeAd(){
			document.location = "__PACKAGE__://webview/__WEBVIEW_ID__/close";
		}
	</script>
]]