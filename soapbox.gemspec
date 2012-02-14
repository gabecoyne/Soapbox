# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{soapbox}
  s.version = "0.2.18"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gabe Coyne", "Killit Creative"]
  s.date = %q{2012-02-14}
  s.description = %q{manage pages, users, permissions, settings, analytics, files, users, and extend}
  s.email = %q{gabe@killitcreative.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/admin/admin_controller.rb",
    "app/controllers/admin/analytics_controller.rb",
    "app/controllers/admin/attachments_controller.rb",
    "app/controllers/admin/categories_controller.rb",
    "app/controllers/admin/comments_controller.rb",
    "app/controllers/admin/contents_controller.rb",
    "app/controllers/admin/galleries_controller.rb",
    "app/controllers/admin/gallery_images_controller.rb",
    "app/controllers/admin/groups_controller.rb",
    "app/controllers/admin/images_controller.rb",
    "app/controllers/admin/members_controller.rb",
    "app/controllers/admin/menu_items_controller.rb",
    "app/controllers/admin/menus_controller.rb",
    "app/controllers/admin/pages_controller.rb",
    "app/controllers/admin/plugins_controller.rb",
    "app/controllers/admin/redirects_controller.rb",
    "app/controllers/admin/settings_controller.rb",
    "app/controllers/admin/users_controller.rb",
    "app/controllers/admin/versions_controller.rb",
    "app/controllers/application_controller.rb",
    "app/controllers/attachments_controller.rb",
    "app/controllers/categories_controller.rb",
    "app/controllers/comments_controller.rb",
    "app/controllers/groups_controller.rb",
    "app/controllers/pages_controller.rb",
    "app/controllers/plugins_controller.rb",
    "app/controllers/redirects_controller.rb",
    "app/controllers/settings_controller.rb",
    "app/controllers/sitemap_controller.rb",
    "app/helpers/content_helper.rb",
    "app/helpers/layout_helper.rb",
    "app/helpers/menu_helper.rb",
    "app/helpers/page_helper.rb",
    "app/helpers/plugin_helper.rb",
    "app/helpers/soapbox_helper.rb",
    "app/mailers/soapbox_mailer.rb",
    "app/models/attachment.rb",
    "app/models/content.rb",
    "app/models/gallery.rb",
    "app/models/gallery_image.rb",
    "app/models/group.rb",
    "app/models/member.rb",
    "app/models/membership.rb",
    "app/models/menu.rb",
    "app/models/menu_item.rb",
    "app/models/page.rb",
    "app/models/permission.rb",
    "app/models/plugin.rb",
    "app/models/redirect.rb",
    "app/models/setting.rb",
    "app/models/user.rb",
    "app/views/admin/analytics/index.html.erb",
    "app/views/admin/attachments/_image.html.erb",
    "app/views/admin/attachments/form.html.erb",
    "app/views/admin/attachments/index.html.erb",
    "app/views/admin/categories/form.html.erb",
    "app/views/admin/categories/index.html.erb",
    "app/views/admin/comments/form.html.erb",
    "app/views/admin/comments/index.html.erb",
    "app/views/admin/galleries/_image.html.erb",
    "app/views/admin/galleries/_manager.html.erb",
    "app/views/admin/galleries/form.html.erb",
    "app/views/admin/galleries/index.html.erb",
    "app/views/admin/groups/form.html.erb",
    "app/views/admin/groups/index.html.erb",
    "app/views/admin/members/form.html.erb",
    "app/views/admin/members/index.html.erb",
    "app/views/admin/menu_items/form.html.erb",
    "app/views/admin/menus/_item.html.erb",
    "app/views/admin/menus/form.html.erb",
    "app/views/admin/menus/index.html.erb",
    "app/views/admin/pages/form.html.erb",
    "app/views/admin/pages/index.html.erb",
    "app/views/admin/pages/link_list.html.erb",
    "app/views/admin/plugins/form.html.erb",
    "app/views/admin/plugins/index.html.erb",
    "app/views/admin/redirects/form.html.erb",
    "app/views/admin/redirects/index.html.erb",
    "app/views/admin/settings/form.html.erb",
    "app/views/admin/settings/index.html.erb",
    "app/views/admin/shared/_form_buttons.html.erb",
    "app/views/admin/shared/_form_errors.html.erb",
    "app/views/admin/shared/_list.html.erb",
    "app/views/admin/shared/_list_footer.html.erb",
    "app/views/admin/shared/_list_toolbar.html.erb",
    "app/views/admin/shared/_tag_manager.html.erb",
    "app/views/admin/shared/order.html.erb",
    "app/views/admin/shared/tree.html.erb",
    "app/views/admin/shared/wysiwyg.html.erb",
    "app/views/admin/users/form.html.erb",
    "app/views/admin/users/index.html.erb",
    "app/views/admin/versions/index.html.erb",
    "app/views/devise/confirmations/new.html.erb",
    "app/views/devise/mailer/confirmation_instructions.html.erb",
    "app/views/devise/mailer/reset_password_instructions.html.erb",
    "app/views/devise/mailer/unlock_instructions.html.erb",
    "app/views/devise/passwords/edit.html.erb",
    "app/views/devise/passwords/new.html.erb",
    "app/views/devise/registrations/edit.html.erb",
    "app/views/devise/registrations/new.html.erb",
    "app/views/devise/sessions/new.html.erb",
    "app/views/devise/shared/_links.erb",
    "app/views/devise/unlocks/new.html.erb",
    "app/views/galleries/_nivo_slider.html.erb",
    "app/views/galleries/_pretty_photo.html.erb",
    "app/views/groups/index.html.erb",
    "app/views/groups/show.html.erb",
    "app/views/layouts/_admin_toolbar.html.erb",
    "app/views/layouts/_admin_top_nav.html.erb",
    "app/views/layouts/_head.html.erb",
    "app/views/layouts/admin.html.erb",
    "app/views/layouts/admin_blank.html.erb",
    "app/views/layouts/login.html.erb",
    "app/views/pages/error_404.html.erb",
    "app/views/pages/index.html.erb",
    "app/views/pages/templates/default.html.erb",
    "app/views/sitemap/sitemap.rxml",
    "app/views/soapbox_mailer/email_form.html.erb",
    "app/views/soapbox_mailer/email_form.text.erb",
    "config/permissions.yml.template",
    "config/routes.rb",
    "lib/generators/soapbox_migration/soapbox_migration_generator.rb",
    "lib/generators/soapbox_migration/templates/migration.rb",
    "lib/generators/soapbox_scaffold/soapbox_scaffold_generator.rb",
    "lib/generators/soapbox_scaffold/templates/admin_controller.rb",
    "lib/generators/soapbox_scaffold/templates/controller.rb",
    "lib/generators/soapbox_scaffold/templates/engine.rb",
    "lib/generators/soapbox_scaffold/templates/migration.rb",
    "lib/generators/soapbox_scaffold/templates/model.rb",
    "lib/generators/soapbox_scaffold/templates/routes.rb",
    "lib/generators/soapbox_scaffold/templates/views/admin/form.html.erb",
    "lib/generators/soapbox_scaffold/templates/views/admin/index.html.erb",
    "lib/generators/soapbox_scaffold/templates/views/index.html.erb",
    "lib/generators/soapbox_scaffold/templates/views/show.html.erb",
    "lib/reduceds3.rb",
    "lib/soapbox.rb",
    "lib/soapbox/engine.rb",
    "lib/soapbox/paperclip.rb",
    "lib/soapbox/version.rb",
    "lib/states.rb",
    "public/404.html",
    "public/422.html",
    "public/500.html",
    "public/favicon.ico",
    "public/robots.txt",
    "public/soapbox/images/alert-overlay.png",
    "public/soapbox/images/prettyPhoto/dark_rounded/btnNext.png",
    "public/soapbox/images/prettyPhoto/dark_rounded/btnPrevious.png",
    "public/soapbox/images/prettyPhoto/dark_rounded/contentPattern.png",
    "public/soapbox/images/prettyPhoto/dark_rounded/default_thumbnail.gif",
    "public/soapbox/images/prettyPhoto/dark_rounded/loader.gif",
    "public/soapbox/images/prettyPhoto/dark_rounded/sprite.png",
    "public/soapbox/images/prettyPhoto/dark_square/btnNext.png",
    "public/soapbox/images/prettyPhoto/dark_square/btnPrevious.png",
    "public/soapbox/images/prettyPhoto/dark_square/contentPattern.png",
    "public/soapbox/images/prettyPhoto/dark_square/default_thumbnail.gif",
    "public/soapbox/images/prettyPhoto/dark_square/loader.gif",
    "public/soapbox/images/prettyPhoto/dark_square/sprite.png",
    "public/soapbox/images/prettyPhoto/default/default_thumb.png",
    "public/soapbox/images/prettyPhoto/default/loader.gif",
    "public/soapbox/images/prettyPhoto/default/sprite.png",
    "public/soapbox/images/prettyPhoto/default/sprite_next.png",
    "public/soapbox/images/prettyPhoto/default/sprite_prev.png",
    "public/soapbox/images/prettyPhoto/default/sprite_x.png",
    "public/soapbox/images/prettyPhoto/default/sprite_y.png",
    "public/soapbox/images/prettyPhoto/facebook/btnNext.png",
    "public/soapbox/images/prettyPhoto/facebook/btnPrevious.png",
    "public/soapbox/images/prettyPhoto/facebook/contentPatternBottom.png",
    "public/soapbox/images/prettyPhoto/facebook/contentPatternLeft.png",
    "public/soapbox/images/prettyPhoto/facebook/contentPatternRight.png",
    "public/soapbox/images/prettyPhoto/facebook/contentPatternTop.png",
    "public/soapbox/images/prettyPhoto/facebook/default_thumbnail.gif",
    "public/soapbox/images/prettyPhoto/facebook/loader.gif",
    "public/soapbox/images/prettyPhoto/facebook/sprite.png",
    "public/soapbox/images/prettyPhoto/light_rounded/btnNext.png",
    "public/soapbox/images/prettyPhoto/light_rounded/btnPrevious.png",
    "public/soapbox/images/prettyPhoto/light_rounded/default_thumbnail.gif",
    "public/soapbox/images/prettyPhoto/light_rounded/loader.gif",
    "public/soapbox/images/prettyPhoto/light_rounded/sprite.png",
    "public/soapbox/images/prettyPhoto/light_square/btnNext.png",
    "public/soapbox/images/prettyPhoto/light_square/btnPrevious.png",
    "public/soapbox/images/prettyPhoto/light_square/default_thumbnail.gif",
    "public/soapbox/images/prettyPhoto/light_square/loader.gif",
    "public/soapbox/images/prettyPhoto/light_square/sprite.png",
    "public/soapbox/javascripts/admin.js",
    "public/soapbox/javascripts/blogger.js",
    "public/soapbox/javascripts/jquery-1.4.2.min.js",
    "public/soapbox/javascripts/jquery-1.6.2.min.js",
    "public/soapbox/javascripts/jquery-ui-1.8rc3.custom.min.js",
    "public/soapbox/javascripts/jquery-ui-timepicker-addon.js",
    "public/soapbox/javascripts/jquery.fileupload-ui.js",
    "public/soapbox/javascripts/jquery.fileupload.js",
    "public/soapbox/javascripts/jquery.flot.js",
    "public/soapbox/javascripts/jquery.formtastic.js",
    "public/soapbox/javascripts/jquery.nivo.slider.pack.js",
    "public/soapbox/javascripts/jquery.prettyPhoto.js",
    "public/soapbox/javascripts/jquery.timepicker.js",
    "public/soapbox/javascripts/jquery.tools.min.js",
    "public/soapbox/javascripts/jquery.ui.nestedSortable.js",
    "public/soapbox/javascripts/rails-1.6.js",
    "public/soapbox/javascripts/rails.js",
    "public/soapbox/javascripts/soapbox.js",
    "public/soapbox/javascripts/tiny_mce/init.js",
    "public/soapbox/javascripts/tiny_mce/jquery.tinymce.js",
    "public/soapbox/javascripts/tiny_mce/langs/en.js",
    "public/soapbox/javascripts/tiny_mce/license.txt",
    "public/soapbox/javascripts/tiny_mce/plugins/advhr/css/advhr.css",
    "public/soapbox/javascripts/tiny_mce/plugins/advhr/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advhr/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advhr/js/rule.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advhr/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advhr/rule.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/css/advimage.css",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/image.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/img/sample.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/js/image.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advimage/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advlink/css/advlink.css",
    "public/soapbox/javascripts/tiny_mce/plugins/advlink/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advlink/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advlink/js/advlink.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advlink/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advlink/link.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/advlist/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/advlist/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/autoresize/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/autoresize/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/autosave/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/autosave/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/autosave/langs/en.js",
    "public/soapbox/javascripts/tiny_mce/plugins/bbcode/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/bbcode/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/contextmenu/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/contextmenu/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/directionality/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/directionality/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/emotions.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-cool.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-cry.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-embarassed.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-foot-in-mouth.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-frown.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-innocent.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-kiss.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-laughing.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-money-mouth.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-sealed.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-smile.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-surprised.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-tongue-out.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-undecided.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-wink.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/img/smiley-yell.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/js/emotions.js",
    "public/soapbox/javascripts/tiny_mce/plugins/emotions/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/example/dialog.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/example/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/example/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/example/img/example.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/example/js/dialog.js",
    "public/soapbox/javascripts/tiny_mce/plugins/example/langs/en.js",
    "public/soapbox/javascripts/tiny_mce/plugins/example/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullpage/css/fullpage.css",
    "public/soapbox/javascripts/tiny_mce/plugins/fullpage/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullpage/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullpage/fullpage.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/fullpage/js/fullpage.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullpage/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullscreen/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullscreen/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/fullscreen/fullscreen.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/iespell/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/iespell/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/alert.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/button.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/buttons.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/confirm.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/corners.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/horizontal.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/img/vertical.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/skins/clearlooks2/window.css",
    "public/soapbox/javascripts/tiny_mce/plugins/inlinepopups/template.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/insertdatetime/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/insertdatetime/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/layer/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/layer/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/legacyoutput/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/legacyoutput/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/media/css/content.css",
    "public/soapbox/javascripts/tiny_mce/plugins/media/css/media.css",
    "public/soapbox/javascripts/tiny_mce/plugins/media/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/media/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/flash.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/flv_player.swf",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/quicktime.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/realmedia.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/shockwave.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/trans.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/media/img/windowsmedia.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/media/js/embed.js",
    "public/soapbox/javascripts/tiny_mce/plugins/media/js/media.js",
    "public/soapbox/javascripts/tiny_mce/plugins/media/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/media/media.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/nonbreaking/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/nonbreaking/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/noneditable/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/noneditable/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/pagebreak/css/content.css",
    "public/soapbox/javascripts/tiny_mce/plugins/pagebreak/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/pagebreak/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/pagebreak/img/pagebreak.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/pagebreak/img/trans.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/js/pastetext.js",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/js/pasteword.js",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/pastetext.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/paste/pasteword.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/preview/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/preview/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/preview/example.html",
    "public/soapbox/javascripts/tiny_mce/plugins/preview/jscripts/embed.js",
    "public/soapbox/javascripts/tiny_mce/plugins/preview/preview.html",
    "public/soapbox/javascripts/tiny_mce/plugins/print/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/print/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/save/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/save/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/searchreplace/css/searchreplace.css",
    "public/soapbox/javascripts/tiny_mce/plugins/searchreplace/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/searchreplace/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/searchreplace/js/searchreplace.js",
    "public/soapbox/javascripts/tiny_mce/plugins/searchreplace/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/searchreplace/searchreplace.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/spellchecker/css/content.css",
    "public/soapbox/javascripts/tiny_mce/plugins/spellchecker/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/spellchecker/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/spellchecker/img/wline.gif",
    "public/soapbox/javascripts/tiny_mce/plugins/style/css/props.css",
    "public/soapbox/javascripts/tiny_mce/plugins/style/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/style/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/style/js/props.js",
    "public/soapbox/javascripts/tiny_mce/plugins/style/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/style/props.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/tabfocus/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/tabfocus/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/cell.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/table/css/cell.css",
    "public/soapbox/javascripts/tiny_mce/plugins/table/css/row.css",
    "public/soapbox/javascripts/tiny_mce/plugins/table/css/table.css",
    "public/soapbox/javascripts/tiny_mce/plugins/table/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/js/cell.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/js/merge_cells.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/js/row.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/js/table.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/table/merge_cells.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/table/row.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/table/table.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/template/blank.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/template/css/template.css",
    "public/soapbox/javascripts/tiny_mce/plugins/template/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/template/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/template/js/template.js",
    "public/soapbox/javascripts/tiny_mce/plugins/template/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/plugins/template/template.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/visualchars/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/visualchars/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/wordcount/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/wordcount/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/abbr.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/acronym.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/attributes.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/cite.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/css/attributes.css",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/css/popup.css",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/del.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/editor_plugin.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/editor_plugin_src.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/ins.htm",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/abbr.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/acronym.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/attributes.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/cite.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/del.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/element_common.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/js/ins.js",
    "public/soapbox/javascripts/tiny_mce/plugins/xhtmlxtras/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/about.htm",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/anchor.htm",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/charmap.htm",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/color_picker.htm",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/editor_template.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/editor_template_src.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/image.htm",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/img/colorpicker.jpg",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/img/icons.gif",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/about.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/anchor.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/charmap.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/color_picker.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/image.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/link.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/js/source_editor.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/langs/en.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/langs/en_dlg.js",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/link.htm",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/content.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/dialog.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/img/buttons.png",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/img/items.gif",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/img/menu_arrow.gif",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/img/menu_check.gif",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/img/progress.gif",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/img/tabs.gif",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/default/ui.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/content.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/dialog.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/img/button_bg.png",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/img/button_bg_black.png",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/img/button_bg_silver.png",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/ui.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/ui_black.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/skins/o2k7/ui_silver.css",
    "public/soapbox/javascripts/tiny_mce/themes/advanced/source_editor.htm",
    "public/soapbox/javascripts/tiny_mce/themes/simple/editor_template.js",
    "public/soapbox/javascripts/tiny_mce/themes/simple/editor_template_src.js",
    "public/soapbox/javascripts/tiny_mce/themes/simple/img/icons.gif",
    "public/soapbox/javascripts/tiny_mce/themes/simple/langs/en.js",
    "public/soapbox/javascripts/tiny_mce/themes/simple/skins/default/content.css",
    "public/soapbox/javascripts/tiny_mce/themes/simple/skins/default/ui.css",
    "public/soapbox/javascripts/tiny_mce/themes/simple/skins/o2k7/content.css",
    "public/soapbox/javascripts/tiny_mce/themes/simple/skins/o2k7/img/button_bg.png",
    "public/soapbox/javascripts/tiny_mce/themes/simple/skins/o2k7/ui.css",
    "public/soapbox/javascripts/tiny_mce/tiny_mce.js",
    "public/soapbox/javascripts/tiny_mce/tiny_mce_popup.js",
    "public/soapbox/javascripts/tiny_mce/tiny_mce_src.js",
    "public/soapbox/javascripts/tiny_mce/utils/editable_selects.js",
    "public/soapbox/javascripts/tiny_mce/utils/form_utils.js",
    "public/soapbox/javascripts/tiny_mce/utils/mctabs.js",
    "public/soapbox/javascripts/tiny_mce/utils/validate.js",
    "public/soapbox/stylesheets/admin.css",
    "public/soapbox/stylesheets/admin_toolbar.css",
    "public/soapbox/stylesheets/awesome_buttons.css",
    "public/soapbox/stylesheets/base/images/ui-anim_basic_16x16.gif",
    "public/soapbox/stylesheets/base/images/ui-bg_flat_0_aaaaaa_40x100.png",
    "public/soapbox/stylesheets/base/images/ui-bg_flat_75_ffffff_40x100.png",
    "public/soapbox/stylesheets/base/images/ui-bg_glass_55_fbf9ee_1x400.png",
    "public/soapbox/stylesheets/base/images/ui-bg_glass_65_ffffff_1x400.png",
    "public/soapbox/stylesheets/base/images/ui-bg_glass_75_dadada_1x400.png",
    "public/soapbox/stylesheets/base/images/ui-bg_glass_75_e6e6e6_1x400.png",
    "public/soapbox/stylesheets/base/images/ui-bg_glass_95_fef1ec_1x400.png",
    "public/soapbox/stylesheets/base/images/ui-bg_highlight-soft_75_cccccc_1x100.png",
    "public/soapbox/stylesheets/base/images/ui-icons_222222_256x240.png",
    "public/soapbox/stylesheets/base/images/ui-icons_2e83ff_256x240.png",
    "public/soapbox/stylesheets/base/images/ui-icons_454545_256x240.png",
    "public/soapbox/stylesheets/base/images/ui-icons_888888_256x240.png",
    "public/soapbox/stylesheets/base/images/ui-icons_cd0a0a_256x240.png",
    "public/soapbox/stylesheets/base/jquery.ui.accordion.css",
    "public/soapbox/stylesheets/base/jquery.ui.all.css",
    "public/soapbox/stylesheets/base/jquery.ui.autocomplete.css",
    "public/soapbox/stylesheets/base/jquery.ui.base.css",
    "public/soapbox/stylesheets/base/jquery.ui.button.css",
    "public/soapbox/stylesheets/base/jquery.ui.core.css",
    "public/soapbox/stylesheets/base/jquery.ui.datepicker.css",
    "public/soapbox/stylesheets/base/jquery.ui.dialog.css",
    "public/soapbox/stylesheets/base/jquery.ui.progressbar.css",
    "public/soapbox/stylesheets/base/jquery.ui.resizable.css",
    "public/soapbox/stylesheets/base/jquery.ui.slider.css",
    "public/soapbox/stylesheets/base/jquery.ui.tabs.css",
    "public/soapbox/stylesheets/base/jquery.ui.theme.css",
    "public/soapbox/stylesheets/devise.css",
    "public/soapbox/stylesheets/formtastic.css",
    "public/soapbox/stylesheets/formtastic_changes.css",
    "public/soapbox/stylesheets/jquery.fileupload-ui.css",
    "public/soapbox/stylesheets/jquery.timepicker.css",
    "public/soapbox/stylesheets/nivo-slider.css",
    "public/soapbox/stylesheets/nivo-themes/default/arrows.png",
    "public/soapbox/stylesheets/nivo-themes/default/bullets.png",
    "public/soapbox/stylesheets/nivo-themes/default/default.css",
    "public/soapbox/stylesheets/nivo-themes/default/loading.gif",
    "public/soapbox/stylesheets/nivo-themes/orman/arrows.png",
    "public/soapbox/stylesheets/nivo-themes/orman/bullets.png",
    "public/soapbox/stylesheets/nivo-themes/orman/loading.gif",
    "public/soapbox/stylesheets/nivo-themes/orman/orman.css",
    "public/soapbox/stylesheets/nivo-themes/orman/readme.txt",
    "public/soapbox/stylesheets/nivo-themes/orman/ribbon.png",
    "public/soapbox/stylesheets/nivo-themes/orman/slider.png",
    "public/soapbox/stylesheets/nivo-themes/pascal/bullets.png",
    "public/soapbox/stylesheets/nivo-themes/pascal/controlnav.png",
    "public/soapbox/stylesheets/nivo-themes/pascal/featured.png",
    "public/soapbox/stylesheets/nivo-themes/pascal/loading.gif",
    "public/soapbox/stylesheets/nivo-themes/pascal/pascal.css",
    "public/soapbox/stylesheets/nivo-themes/pascal/readme.txt",
    "public/soapbox/stylesheets/nivo-themes/pascal/ribbon.png",
    "public/soapbox/stylesheets/nivo-themes/pascal/slider.png",
    "public/soapbox/stylesheets/pbar-ani.gif",
    "public/soapbox/stylesheets/prettyPhoto.css",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_flat_75_ffffff_40x100.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_glass_65_ffffff_1x400.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_glass_75_dadada_1x400.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png",
    "public/soapbox/stylesheets/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png",
    "public/soapbox/stylesheets/smoothness/images/ui-icons_222222_256x240.png",
    "public/soapbox/stylesheets/smoothness/images/ui-icons_2e83ff_256x240.png",
    "public/soapbox/stylesheets/smoothness/images/ui-icons_454545_256x240.png",
    "public/soapbox/stylesheets/smoothness/images/ui-icons_888888_256x240.png",
    "public/soapbox/stylesheets/smoothness/images/ui-icons_cd0a0a_256x240.png",
    "public/soapbox/stylesheets/smoothness/jquery-ui-1.8.4.custom.css",
    "public/soapbox/stylesheets/standardize.css",
    "soapbox.gemspec",
    "test/helper.rb",
    "test/test_soapbox.rb"
  ]
  s.homepage = %q{http://github.com/gabecoyne/soapbox}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Rails CMS by Killit Creative}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<devise>, ["~> 1.1.2"])
      s.add_runtime_dependency(%q<formtastic>, ["= 1.2.3"])
      s.add_runtime_dependency(%q<polypaperclip>, ["= 0.1.13"])
      s.add_runtime_dependency(%q<paperclip>, ["= 2.3.16"])
      s.add_runtime_dependency(%q<paper_trail>, ["~> 2"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 2.3.15"])
      s.add_runtime_dependency(%q<acts-as-taggable-on>, [">= 0"])
      s.add_runtime_dependency(%q<friendly_id>, ["~> 3.1"])
      s.add_runtime_dependency(%q<inherited_resources>, ["= 1.2.2"])
      s.add_runtime_dependency(%q<acts_as_indexed>, [">= 0"])
      s.add_runtime_dependency(%q<aws-s3>, [">= 0"])
      s.add_runtime_dependency(%q<acts_as_tree>, [">= 0"])
      s.add_runtime_dependency(%q<acts_as_list>, [">= 0"])
      s.add_runtime_dependency(%q<garb>, [">= 0"])
      s.add_runtime_dependency(%q<bartt-ssl_requirement>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<devise>, ["~> 1.1.2"])
      s.add_dependency(%q<formtastic>, ["= 1.2.3"])
      s.add_dependency(%q<polypaperclip>, ["= 0.1.13"])
      s.add_dependency(%q<paperclip>, ["= 2.3.16"])
      s.add_dependency(%q<paper_trail>, ["~> 2"])
      s.add_dependency(%q<will_paginate>, ["~> 2.3.15"])
      s.add_dependency(%q<acts-as-taggable-on>, [">= 0"])
      s.add_dependency(%q<friendly_id>, ["~> 3.1"])
      s.add_dependency(%q<inherited_resources>, ["= 1.2.2"])
      s.add_dependency(%q<acts_as_indexed>, [">= 0"])
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<acts_as_tree>, [">= 0"])
      s.add_dependency(%q<acts_as_list>, [">= 0"])
      s.add_dependency(%q<garb>, [">= 0"])
      s.add_dependency(%q<bartt-ssl_requirement>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<devise>, ["~> 1.1.2"])
    s.add_dependency(%q<formtastic>, ["= 1.2.3"])
    s.add_dependency(%q<polypaperclip>, ["= 0.1.13"])
    s.add_dependency(%q<paperclip>, ["= 2.3.16"])
    s.add_dependency(%q<paper_trail>, ["~> 2"])
    s.add_dependency(%q<will_paginate>, ["~> 2.3.15"])
    s.add_dependency(%q<acts-as-taggable-on>, [">= 0"])
    s.add_dependency(%q<friendly_id>, ["~> 3.1"])
    s.add_dependency(%q<inherited_resources>, ["= 1.2.2"])
    s.add_dependency(%q<acts_as_indexed>, [">= 0"])
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<acts_as_tree>, [">= 0"])
    s.add_dependency(%q<acts_as_list>, [">= 0"])
    s.add_dependency(%q<garb>, [">= 0"])
    s.add_dependency(%q<bartt-ssl_requirement>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

