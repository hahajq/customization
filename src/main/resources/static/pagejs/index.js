
$(function(){
	var url = "";
	$("#sidebar-menu").delegate("a", "click", function() {
		$("#panelPage").empty();
		url = $(this).attr("id") + ".html";
		$("#panelPage").append("<iframe id='mainFrame' src='" + url + "' style='border: 0px;width: 100%; height:800px;'></iframe>");
	});
});
