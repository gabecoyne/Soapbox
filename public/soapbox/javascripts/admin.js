function remove_host(str){
	if(!str) return
	p = str.split(window.location.hostname);
	if(p[1]) r = p[1]
	else r = p[0]
	return r.replace(":3000","").replace("#","").toLowerCase() 
}

$(function() {
	////////////////////////////////////////////////////////////////////////////////
	// jquery initializers
	$("input.date").datepicker({dateFormat: 'yy-mm-dd'});
	$('input.datetime').datetime({ userLang	: 'en',	americanMode: true });
	// $(".editable").editable();
	// $(".sortable").sortable()
	$(".tabs").tabs();
	////////////////////////////////////////////////////////////////////////////////
	// set datetime field handler
	$("input.date").change(function(){
		p = $(this).attr("id").split("_");
		p.pop(); // remove last
		fname = p.join("_")
		dt = $(this).val()+" " // set date
		dt += parseInt($("#"+fname+"_hour").val())+parseInt($("#"+fname+"_ampm").val()) // set hours
		dt += ":"+$("#"+fname+"_min").val()+":00" // set minutes
		$("#"+fname).val(dt)
	})
	////////////////////////////////////////////////////////////////////////////////
	// set datetime dropdown handlers
	// $("input.date").each(function(i,e){
	// 	p = $(this).attr("id").split("_");
	// 	p.pop() // remove last
	// 	fname = p.join("_")
	// 	$("#"+fname+"_hour,#"+fname+"_min,#"+fname+"_ampm").click(function(){
	// 		$("#"+fname+"_date").change()
	// 	})
	// })
	////////////////////////////////////////////////////////////////////////////////
	// set selected state of links in nav
	$("a").each(function() {
		var current = remove_host(location.href);
		var hreflink = remove_host($(this).attr("href"));
		if (hreflink && current.indexOf(hreflink) > -1 ) {
			$(this).addClass("selected").parents("ol, ul, li").addClass("selected")			
		}
	});
	////////////////////////////////////////////////////////////////////////////////
	// admin notices
	$(".notice, .alert").delay(1500).slideUp()
	
	$("#admin_tabs li.selected ul").css("margin-left", "-"+$("#admin_tabs li.selected ul").width()+"px")
});

////////////////////////////////////////////////////////////////////////////////
// jquery put and delete
function _ajax_request(url, data, callback, type, method) {
    if (jQuery.isFunction(data)) {
        callback = data;
        data = {};
    }
    return jQuery.ajax({
        type: method,
        url: url,
        data: data,
        success: callback,
        dataType: type
    });
}

jQuery.extend({
    put: function(url, data, callback, type) {
        return _ajax_request(url, data, callback, type, 'PUT');
    },
    delete_: function(url, data, callback, type) {
        return _ajax_request(url, data, callback, type, 'DELETE');
    }
});

////////////////////////////////////////////////////////////////////////////////
// js responses
function flash_notice(str){
	flash_message(str,"notice")
}
function flash_error(str){
	flash_message(str,"error")
}
function flash_message(str, klass){
	div = $('<p class="'+klass+'">'+str+'</p>').insertAfter("#top_nav")
	div.hide().slideDown().delay(1500).slideUp("normal",function(){ $(this).remove() })
	
	// div = $("#content div."+class)
	// div.html(str)
	// div.hide().slideDown().delay(1500).slideUp("normal",function(){ $(this).remove() })
}

// for file manager
function insert(URL) {
	// clamp_attachment_meta_attributes_title
	var win = tinyMCEPopup.getWindowArg("window");
	win.document.getElementById(tinyMCEPopup.getWindowArg("input")).value = URL;
	// are we an image browser
   if (typeof(win.ImageDialog) != "undefined") {
       // we are, so update image dimensions...
       if (win.ImageDialog.getImageData) win.ImageDialog.getImageData();
   }
   // close popup window
   tinyMCEPopup.close();
 }
if(window.opener){
  $(function() {
  	$("#top_nav").hide()
  	$("a.file_link").click(function(event){
  		event.preventDefault();
  		insert($(this).attr("href"))
  	})
  });  
} else {
	$(".insert").hide()
}