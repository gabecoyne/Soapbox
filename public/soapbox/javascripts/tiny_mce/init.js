function nimitz_file_browser(field_name, url, type, win) {

  // alert("Field_Name: " + field_name + "\nURL: " + url + "\nType: " + type + "\nWin: " + win); // debug/testing

  tinyMCE.activeEditor.windowManager.open({
      file : "/admin/attachments?type=image",
      title : 'My File Browser',
      width : 800,  // Your dimensions may differ - toy around with them!
      height : 820,
      resizable : "yes",
      inline : "yes",  // This parameter only has an effect if you use the inlinepopups plugin!
      close_previous : "no"
  }, {
      window : win,
      input : field_name
  });
  return false;
}

$(document).ready(function() {
	$('textarea.editor').tinymce({
		// Location of TinyMCE script
		script_url : '/soapbox/javascripts/tiny_mce/tiny_mce.js',

		// General options
		theme : "advanced",
		width : "100%",
		valid_elements : '*[*]',
		// valid_elements : '*[*],iframe[src|title|width|height|allowfullscreen|frameborder]',
		// height : "600px",
		plugins: "paste,fullscreen,contextmenu,advimage,advlink",
		// advimage,advlink,xhtmlxtras,template,advlist

		// Theme options
		theme_advanced_buttons1 : "formatselect,styleselect,justifyleft,justifycenter,justifyright,justifyfull,bullist,numlist,blockquote,bold,italic,underline,link,unlink,image,anchor,hr,pastetext,code,fullscreen",
		theme_advanced_buttons2 : "",
		theme_advanced_buttons3 : "",
		
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		// theme_advanced_resizing : true,

		// Example content CSS (should be your site CSS)
		content_css : "/stylesheets/standardize.css,/stylesheets/copy.css",
		file_browser_callback : 'nimitz_file_browser',

		// Drop lists for link/image/media/template dialogs
		// template_external_list_url : "lists/template_list.js",
		external_link_list_url : "/admin/pages/link_list"
		// external_link_list_url : "lists/link_list.js",
		// external_image_list_url : "lists/image_list.js",
		// media_external_list_url : "lists/media_list.js",
		
	});
});