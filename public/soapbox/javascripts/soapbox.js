function remove_host(str){
	if(!str) return
	p = str.split(window.location.hostname);
	if(p[1]) r = p[1]
	else r = p[0]
	return r.replace(":3000","").replace("#","").toLowerCase() 
}

$(function() {
	$("a").each(function() {
		var current = remove_host(location.href);
		var hreflink = remove_host($(this).attr("href"));
		if (hreflink && current.indexOf(hreflink) > -1 ) {
			if(current != "/" && hreflink == "/") return;
			$(this).addClass("selected").parents("ol, ul, li, a").addClass("selected")	
		}
	});

	// default values for input fields
	$("input[data-default]").focus(function(){
		if($(this).val() == $(this).attr("data-default")){ $(this).val("") };return false;
	}).blur(function(){
		if($(this).val() == ''){ $(this).val($(this).attr("data-default")) };return false;
	}).each(function(){
		$(this).blur(); // set initial value to default
	});
});
