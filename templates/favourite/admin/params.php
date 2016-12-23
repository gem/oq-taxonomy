<?php

/**
*   Favourite
*
*   Responsive and customizable Joomla!3 template by FavThemes
*
*   @version        3.4
*   @link           http://demo.favthemes.com/favourite/
*   @author         FavThemes - http://www.favthemes.com
*   @copyright      Copyright (C) 2012-2016 FavThemes.com. All Rights Reserved.
*   @license        Licensed under GNU/GPLv3, see http://www.gnu.org/licenses/gpl-3.0.html
*/

// SETTINGS

$template_styles                     = $this->params->get('template_styles');
$custom_style                        = $this->params->get('custom_style');
$template_color                      = $this->params->get('template_color');
$max_width                           = $this->params->get('max_width');

$show_copyright                      = $this->params->get('show_copyright');
$copyright_text                      = $this->params->get('copyright_text');
$copyright_text_link                 = $this->params->get('copyright_text_link');

$show_back_to_top                    = $this->params->get('show_back_to_top');

$error_page_article_id               = $this->params->get('error_page_article_id');

$offline_page_style                  = $this->params->get('offline_page_style');
$offline_page_bg_image               = $this->params->get('offline_page_bg_image');
$offline_page_bg_image_style         = $this->params->get('offline_page_bg_image_style');


// LAYOUT

$body_bg_image                       = $this->params->get('body_bg_image');
$body_bg_image_style                 = $this->params->get('body_bg_image_style');
$body_bg_image_overlay               = $this->params->get('body_bg_image_overlay');

$show_notice_button                  = $this->params->get('show_notice_button');
$notice_bg_color                     = $this->params->get('notice_bg_color');
$notice_color                        = $this->params->get('notice_color');
$notice_title_color                  = $this->params->get('notice_title_color');
$notice_link_color                   = $this->params->get('notice_link_color');
$notice_link_hover_color             = $this->params->get('notice_link_hover_color');

$topbar_bg_image                     = $this->params->get('topbar_bg_image');
$topbar_bg_image_style               = $this->params->get('topbar_bg_image_style');
$topbar_bg_image_overlay             = $this->params->get('topbar_bg_image_overlay');
$topbar_bg_color                     = $this->params->get('topbar_bg_color');
$topbar_color                        = $this->params->get('topbar_color');
$topbar_title_color                  = $this->params->get('topbar_title_color');
$topbar_link_color                   = $this->params->get('topbar_link_color');
$topbar_link_hover_color             = $this->params->get('topbar_link_hover_color');

$slide_width                         = $this->params->get('slide_width');
$slide_bg_image                      = $this->params->get('slide_bg_image');
$slide_bg_image_style                = $this->params->get('slide_bg_image_style');
$slide_bg_image_overlay              = $this->params->get('slide_bg_image_overlay');
$slide_bg_color                      = $this->params->get('slide_bg_color');
$slide_color                         = $this->params->get('slide_color');
$slide_title_color                   = $this->params->get('slide_title_color');
$slide_link_color                    = $this->params->get('slide_link_color');
$slide_link_hover_color              = $this->params->get('slide_link_hover_color');

$intro_bg_image                      = $this->params->get('intro_bg_image');
$intro_bg_image_style                = $this->params->get('intro_bg_image_style');
$intro_bg_image_overlay              = $this->params->get('intro_bg_image_overlay');
$intro_bg_color                      = $this->params->get('intro_bg_color');
$intro_color                         = $this->params->get('intro_color');
$intro_title_color                   = $this->params->get('intro_title_color');
$intro_link_color                    = $this->params->get('intro_link_color');
$intro_link_hover_color              = $this->params->get('intro_link_hover_color');

$lead_bg_image                       = $this->params->get('lead_bg_image');
$lead_bg_image_style                 = $this->params->get('lead_bg_image_style');
$lead_bg_image_overlay               = $this->params->get('lead_bg_image_overlay');
$lead_bg_color                       = $this->params->get('lead_bg_color');
$lead_color                          = $this->params->get('lead_color');
$lead_title_color                    = $this->params->get('lead_title_color');
$lead_link_color                     = $this->params->get('lead_link_color');
$lead_link_hover_color               = $this->params->get('lead_link_hover_color');

$promo_bg_image                      = $this->params->get('promo_bg_image');
$promo_bg_image_style                = $this->params->get('promo_bg_image_style');
$promo_bg_image_overlay              = $this->params->get('promo_bg_image_overlay');
$promo_bg_color                      = $this->params->get('promo_bg_color');
$promo_color                         = $this->params->get('promo_color');
$promo_title_color                   = $this->params->get('promo_title_color');
$promo_link_color                    = $this->params->get('promo_link_color');
$promo_link_hover_color              = $this->params->get('promo_link_hover_color');

$prime_bg_image                      = $this->params->get('prime_bg_image');
$prime_bg_image_style                = $this->params->get('prime_bg_image_style');
$prime_bg_image_overlay              = $this->params->get('prime_bg_image_overlay');
$prime_bg_color                      = $this->params->get('prime_bg_color');
$prime_color                         = $this->params->get('prime_color');
$prime_title_color                   = $this->params->get('prime_title_color');
$prime_link_color                    = $this->params->get('prime_link_color');
$prime_link_hover_color              = $this->params->get('prime_link_hover_color');

$showcase_bg_image                   = $this->params->get('showcase_bg_image');
$showcase_bg_image_style             = $this->params->get('showcase_bg_image_style');
$showcase_bg_image_overlay           = $this->params->get('showcase_bg_image_overlay');
$showcase_bg_color                   = $this->params->get('showcase_bg_color');
$showcase_color                      = $this->params->get('showcase_color');
$showcase_title_color                = $this->params->get('showcase_title_color');
$showcase_link_color                 = $this->params->get('showcase_link_color');
$showcase_link_hover_color           = $this->params->get('showcase_link_hover_color');

$feature_bg_image                    = $this->params->get('feature_bg_image');
$feature_bg_image_style              = $this->params->get('feature_bg_image_style');
$feature_bg_image_overlay            = $this->params->get('feature_bg_image_overlay');
$feature_bg_color                    = $this->params->get('feature_bg_color');
$feature_color                       = $this->params->get('feature_color');
$feature_title_color                 = $this->params->get('feature_title_color');
$feature_link_color                  = $this->params->get('feature_link_color');
$feature_link_hover_color            = $this->params->get('feature_link_hover_color');

$focus_bg_image                      = $this->params->get('focus_bg_image');
$focus_bg_image_style                = $this->params->get('focus_bg_image_style');
$focus_bg_image_overlay              = $this->params->get('focus_bg_image_overlay');
$focus_bg_color                      = $this->params->get('focus_bg_color');
$focus_color                         = $this->params->get('focus_color');
$focus_title_color                   = $this->params->get('focus_title_color');
$focus_link_color                    = $this->params->get('focus_link_color');
$focus_link_hover_color              = $this->params->get('focus_link_hover_color');

$portfolio_bg_image                  = $this->params->get('portfolio_bg_image');
$portfolio_bg_image_style            = $this->params->get('portfolio_bg_image_style');
$portfolio_bg_image_overlay          = $this->params->get('portfolio_bg_image_overlay');
$portfolio_bg_color                  = $this->params->get('portfolio_bg_color');
$portfolio_color                     = $this->params->get('portfolio_color');
$portfolio_title_color               = $this->params->get('portfolio_title_color');
$portfolio_link_color                = $this->params->get('portfolio_link_color');
$portfolio_link_hover_color          = $this->params->get('portfolio_link_hover_color');

$screen_bg_image                     = $this->params->get('screen_bg_image');
$screen_bg_image_style               = $this->params->get('screen_bg_image_style');
$screen_bg_image_overlay             = $this->params->get('screen_bg_image_overlay');
$screen_bg_color                     = $this->params->get('screen_bg_color');
$screen_color                        = $this->params->get('screen_color');
$screen_title_color                  = $this->params->get('screen_title_color');
$screen_link_color                   = $this->params->get('screen_link_color');
$screen_link_hover_color             = $this->params->get('screen_link_hover_color');

$top_bg_image                        = $this->params->get('top_bg_image');
$top_bg_image_style                  = $this->params->get('top_bg_image_style');
$top_bg_image_overlay                = $this->params->get('top_bg_image_overlay');
$top_bg_color                        = $this->params->get('top_bg_color');
$top_color                           = $this->params->get('top_color');
$top_title_color                     = $this->params->get('top_title_color');
$top_link_color                      = $this->params->get('top_link_color');
$top_link_hover_color                = $this->params->get('top_link_hover_color');

$maintop_bg_image                    = $this->params->get('maintop_bg_image');
$maintop_bg_image_style              = $this->params->get('maintop_bg_image_style');
$maintop_bg_image_overlay            = $this->params->get('maintop_bg_image_overlay');
$maintop_bg_color                    = $this->params->get('maintop_bg_color');
$maintop_color                       = $this->params->get('maintop_color');
$maintop_title_color                 = $this->params->get('maintop_title_color');
$maintop_link_color                  = $this->params->get('maintop_link_color');
$maintop_link_hover_color            = $this->params->get('maintop_link_hover_color');

$mainbottom_bg_image                 = $this->params->get('mainbottom_bg_image');
$mainbottom_bg_image_style           = $this->params->get('mainbottom_bg_image_style');
$mainbottom_bg_image_overlay         = $this->params->get('mainbottom_bg_image_overlay');
$mainbottom_bg_color                 = $this->params->get('mainbottom_bg_color');
$mainbottom_color                    = $this->params->get('mainbottom_color');
$mainbottom_title_color              = $this->params->get('mainbottom_title_color');
$mainbottom_link_color               = $this->params->get('mainbottom_link_color');
$mainbottom_link_hover_color         = $this->params->get('mainbottom_link_hover_color');

$bottom_bg_image                     = $this->params->get('bottom_bg_image');
$bottom_bg_image_style               = $this->params->get('bottom_bg_image_style');
$bottom_bg_image_overlay             = $this->params->get('bottom_bg_image_overlay');
$bottom_bg_color                     = $this->params->get('bottom_bg_color');
$bottom_color                        = $this->params->get('bottom_color');
$bottom_title_color                  = $this->params->get('bottom_title_color');
$bottom_link_color                   = $this->params->get('bottom_link_color');
$bottom_link_hover_color             = $this->params->get('bottom_link_hover_color');

$note_bg_image                       = $this->params->get('note_bg_image');
$note_bg_image_style                 = $this->params->get('note_bg_image_style');
$note_bg_image_overlay               = $this->params->get('note_bg_image_overlay');
$note_bg_color                       = $this->params->get('note_bg_color');
$note_color                          = $this->params->get('note_color');
$note_title_color                    = $this->params->get('note_title_color');
$note_link_color                     = $this->params->get('note_link_color');
$note_link_hover_color               = $this->params->get('note_link_hover_color');

$base_bg_image                       = $this->params->get('base_bg_image');
$base_bg_image_style                 = $this->params->get('base_bg_image_style');
$base_bg_image_overlay               = $this->params->get('base_bg_image_overlay');
$base_bg_color                       = $this->params->get('base_bg_color');
$base_color                          = $this->params->get('base_color');
$base_title_color                    = $this->params->get('base_title_color');
$base_link_color                     = $this->params->get('base_link_color');
$base_link_hover_color               = $this->params->get('base_link_hover_color');

$block_bg_image                      = $this->params->get('block_bg_image');
$block_bg_image_style                = $this->params->get('block_bg_image_style');
$block_bg_image_overlay              = $this->params->get('block_bg_image_overlay');
$block_bg_color                      = $this->params->get('block_bg_color');
$block_color                         = $this->params->get('block_color');
$block_title_color                   = $this->params->get('block_title_color');
$block_link_color                    = $this->params->get('block_link_color');
$block_link_hover_color              = $this->params->get('block_link_hover_color');

$user_bg_image                       = $this->params->get('user_bg_image');
$user_bg_image_style                 = $this->params->get('user_bg_image_style');
$user_bg_image_overlay               = $this->params->get('user_bg_image_overlay');
$user_bg_color                       = $this->params->get('user_bg_color');
$user_color                          = $this->params->get('user_color');
$user_title_color                    = $this->params->get('user_title_color');
$user_link_color                     = $this->params->get('user_link_color');
$user_link_hover_color               = $this->params->get('user_link_hover_color');

$footer_bg_image                     = $this->params->get('footer_bg_image');
$footer_bg_image_style               = $this->params->get('footer_bg_image_style');
$footer_bg_image_overlay             = $this->params->get('footer_bg_image_overlay');
$footer_bg_color                     = $this->params->get('footer_bg_color');
$footer_color                        = $this->params->get('footer_color');
$footer_title_color                  = $this->params->get('footer_title_color');
$footer_link_color                   = $this->params->get('footer_link_color');
$footer_link_hover_color             = $this->params->get('footer_link_hover_color');


// LOGO

$show_default_logo                   = $this->params->get('show_default_logo');
$default_logo                        = $this->params->get('default_logo');
$default_logo_img_alt                = $this->params->get('default_logo_img_alt');
$default_logo_padding                = $this->params->get('default_logo_padding');
$default_logo_margin                 = $this->params->get('default_logo_margin');
$show_media_logo                     = $this->params->get('show_media_logo');
$media_logo                          = $this->params->get('media_logo');
$media_logo_img_alt                  = $this->params->get('media_logo_img_alt');
$media_logo_padding                  = $this->params->get('media_logo_padding');
$media_logo_margin                   = $this->params->get('media_logo_margin');
$show_text_logo                      = $this->params->get('show_text_logo');
$text_logo                           = $this->params->get('text_logo');
$text_logo_color                     = $this->params->get('text_logo_color');
$text_logo_font_size                 = $this->params->get('text_logo_font_size');
$text_logo_google_font               = $this->params->get('text_logo_google_font');
$text_logo_google_font_weight        = $this->params->get('text_logo_google_font_weight');
$text_logo_google_font_style         = $this->params->get('text_logo_google_font_style');
$text_logo_line_height               = $this->params->get('text_logo_line_height');
$text_logo_padding                   = $this->params->get('text_logo_padding');
$text_logo_margin                    = $this->params->get('text_logo_margin');
$show_slogan                         = $this->params->get('show_slogan');
$slogan                              = $this->params->get('slogan');
$slogan_color                        = $this->params->get('slogan_color');
$slogan_font_size                    = $this->params->get('slogan_font_size');
$slogan_line_height                  = $this->params->get('slogan_line_height');
$slogan_padding                      = $this->params->get('slogan_padding');
$slogan_margin                       = $this->params->get('slogan_margin');
$show_retina_logo                    = $this->params->get('show_retina_logo');
$retina_logo                         = $this->params->get('retina_logo');
$retina_logo_height                  = $this->params->get('retina_logo_height');
$retina_logo_width                   = $this->params->get('retina_logo_width');
$retina_logo_img_alt                 = $this->params->get('retina_logo_img_alt');
$retina_logo_padding                 = $this->params->get('retina_logo_padding');
$retina_logo_margin                  = $this->params->get('retina_logo_margin');


// MOBILE

$mobile_nav_color                    = $this->params->get('mobile_nav_color');
$show_mobile_submenu                 = $this->params->get('show_mobile_submenu');
$show_mobile_menu_text               = $this->params->get('show_mobile_menu_text');
$mobile_menu_text                    = $this->params->get('mobile_menu_text');
$show_mobile_images                  = $this->params->get('show_mobile_images');
$mobile_paragraph_font_size          = $this->params->get('mobile_paragraph_font_size');
$mobile_paragraph_line_height        = $this->params->get('mobile_paragraph_line_height');
$mobile_title_font_size              = $this->params->get('mobile_title_font_size');


// ANALYTICS

$analytics_code                      = $this->params->get('analytics_code');

?>

<style type="text/css">

<?php // Custom Style
if ($custom_style) { ?>
  a { color: #<?php echo htmlspecialchars($custom_style); ?>; }
  a:hover, a:focus { color: #444; outline: none; }
  a.backtop i {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #FFFFFF;
  }
  #fav-noticewrap,
  #fav-focuswrap {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #fff;
  }
  .favnav .navigation .nav-pills > .active > a,
  .favnav .navigation .nav-pills > li > a:hover,
  .favnav .navigation .nav-pills > li > a:focus,
  .favnav .navigation .menunav-pills > .active > a,
  .favnav .navigation .menunav-pills > li > a:hover,
  .favnav .navigation .menunav-pills > li > a:focus,
  .favnav .navigation li span.nav-header:hover,
  .favnav .navigation li span.nav-header:focus,
  .favnav .navigation .nav-pills > .active > span.nav-header,
  .favnav .navigation .nav-pills > li > span.nav-header:hover,
  .favnav .navigation .nav-pills > li > span.nav-header:focus,
  .favnav .navigation .menunav-pills > .active > span.nav-header,
  .favnav .navigation .menunav-pills > li > span.nav-header:hover,
  .favnav .navigation .menunav-pills > li > span.nav-header:focus {
    background-color: #<?php echo htmlspecialchars($custom_style); ?> !important;
    color: #fff !important;
  }
  .favnav .navigation li a[class^="fa-"]:hover:before,
  .favnav .navigation li a[class*=" fa-"]:hover:before,
  .favnav .navigation li a[class^="fa-"]:focus:before,
  .favnav .navigation li a[class*=" fa-"]:focus:before,
  .favnav .navigation li.active a[class^="fa-"]:before,
  .favnav .navigation li.active a[class*=" fa-"]:before,
  .favnav .navigation li span.nav-header[class^="fa-"]:hover:before,
  .favnav .navigation li span.nav-header[class*=" fa-"]:hover:before,
  .favnav .navigation li span.nav-header[class^="fa-"]:focus:before,
  .favnav .navigation li span.nav-header[class*=" fa-"]:focus:before,
  .favnav .navigation li.active span.nav-header[class^="fa-"]:before,
  .favnav .navigation li.active span.nav-header[class*=" fa-"]:before {
    color: #fff !important;
  }
  .favnav .navigation ul.nav-child li a[class^="fa-"]:before,
  .favnav .navigation ul.nav-child li a[class*=" fa-"]:before,
  .favnav .navigation ul.nav-child li a[class^="fa-"]:before,
  .favnav .navigation ul.nav-child li a[class*=" fa-"]:before,
  .favnav .navigation ul.nav-child li a[class^="fa-"]:hover:before,
  .favnav .navigation ul.nav-child li a[class*=" fa-"]:hover:before,
  .favnav .navigation ul.nav-child li a[class^="fa-"]:focus:before,
  .favnav .navigation ul.nav-child li a[class*=" fa-"]:focus:before,
  .favnav .navigation ul.nav-child li.active a[class^="fa-"]:before,
  .favnav .navigation ul.nav-child li.active a[class*=" fa-"]:before,
  .favnav .navigation ul.nav-child li span.nav-header[class^="fa-"]:before,
  .favnav .navigation ul.nav-child li span.nav-header[class*=" fa-"]:before,
  .favnav .navigation ul.nav-child li span.nav-header[class^="fa-"]:before,
  .favnav .navigation ul.nav-child li span.nav-header[class*=" fa-"]:before,
  .favnav .navigation ul.nav-child li span.nav-header[class^="fa-"]:hover:before,
  .favnav .navigation ul.nav-child li span.nav-header[class*=" fa-"]:hover:before,
  .favnav .navigation ul.nav-child li span.nav-header[class^="fa-"]:focus:before,
  .favnav .navigation ul.nav-child li span.nav-header[class*=" fa-"]:focus:before,
  .favnav .navigation ul.nav-child li.active span.nav-header[class^="fa-"]:before,
  .favnav .navigation ul.nav-child li.active span.nav-header[class*=" fa-"]:before {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  .favnav .navigation li a[class^="fa-"]:before,
  .favnav .navigation li a[class*=" fa-"]:before,
  .favnav .navigation li span.nav-header[class^="fa-"]:before,
  .favnav .navigation li span.nav-header[class*=" fa-"]:before {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .favnav .navigation .nav-pills .nav-child > .active > a,
  .favnav .navigation .nav-pills .nav-child > li > a:hover,
  .favnav .navigation .menunav-pills .nav-child > .active > a,
  .favnav .navigation .menunav-pills .nav-child > li > a:hover,
  .favnav .navigation .nav-pills .nav-child > .active > span.nav-header,
  .favnav .navigation .nav-pills .nav-child > li > span.nav-header:hover,
  .favnav .navigation .menunav-pills .nav-child > .active > span.nav-header,
  .favnav .navigation .menunav-pills .nav-child > li > span.nav-header:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.nav.menu li span.nav-header {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menubasic li a:hover,
  ul.menubasic li a:focus,
  ul.menubasic li.current a,
  ul.menubasic li.current ul a:hover,
  ul.menubasic li.current ul a:focus,
  ul.menubasic li span.nav-header:hover,
  ul.menubasic li span.nav-header:focus,
  ul.menubasic li.current span.nav-header,
  ul.menubasic li.current ul span.nav-header:hover,
  ul.menubasic li.current ul span.nav-header:focus {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menubasic li.current ul a,
  ul.menubasic li.current ul span.nav-header {
    color: #444;
    background-color: #fff;
  }
  ul.menubasic.menu-light li a:hover,
  ul.menubasic.menu-light li a:focus,
  ul.menubasic.menu-light li.current a,
  ul.menubasic.menu-light li.current ul a:hover,
  ul.menubasic.menu-light li.current ul a:focus,
  ul.menubasic.menu-light li.current ul a,
  ul.menubasic.menu-light li span.nav-header:hover,
  ul.menubasic.menu-light li span.nav-header:focus,
  ul.menubasic.menu-light li.current span.nav-header,
  ul.menubasic.menu-light li.current ul span.nav-header,
  ul.menubasic.menu-light li.current ul span.nav-header:hover,
  ul.menubasic.menu-light li.current ul span.nav-header:focus {
    color: #fff !important;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menubasic,
  #fav-container .fav-dark ul.menubasic li a,
  #fav-container .fav-dark ul.menubasic li span.nav-header {
    color: #eee;
    border-color: #444;
  }
  #fav-container .fav-dark ul.menubasic li a:hover,
  #fav-container .fav-dark ul.menubasic li a:focus,
  #fav-container .fav-dark ul.menubasic li.current a,
  #fav-container .fav-dark ul.menubasic li.current ul a:hover,
  #fav-container .fav-dark ul.menubasic li.current ul a:focus,
  #fav-container .fav-dark ul.menubasic li.current ul a,
  #fav-container .fav-dark ul.menubasic li span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic li span.nav-header:focus,
  #fav-container .fav-dark ul.menubasic li.current span.nav-header,
  #fav-container .fav-dark ul.menubasic li.current ul span.nav-header,
  #fav-container .fav-dark ul.menubasic li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: #1a1a1a;
  }
  #fav-container .fav-dark ul.menubasic.menu-clear li a:hover,
  #fav-container .fav-dark ul.menubasic.menu-clear li a:focus,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current a,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current ul a:hover,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current ul a:focus,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current ul a,
  #fav-container .fav-dark ul.menubasic.menu-clear li span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic.menu-clear li span.nav-header:focus,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current span.nav-header,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current ul span.nav-header,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic.menu-clear li.current ul span.nav-header:focus {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menubasic.menu-dark li a:hover,
  #fav-container .fav-dark ul.menubasic.menu-dark li a:focus,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current a,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current ul a:hover,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current ul a:focus,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current ul a,
  #fav-container .fav-dark ul.menubasic.menu-dark li span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic.menu-dark li span.nav-header:focus,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current span.nav-header,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current ul span.nav-header,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic.menu-dark li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
    background-color: #1a1a1a;
  }
  #fav-container .fav-dark ul.menubasic.menu-light li a:hover,
  #fav-container .fav-dark ul.menubasic.menu-light li a:focus,
  #fav-container .fav-dark ul.menubasic.menu-light li.current a,
  #fav-container .fav-dark ul.menubasic.menu-light li.current ul a:hover,
  #fav-container .fav-dark ul.menubasic.menu-light li.current ul a:focus,
  #fav-container .fav-dark ul.menubasic.menu-light li.current ul a,
  #fav-container .fav-dark ul.menubasic.menu-light li span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic.menu-light li span.nav-header:focus,
  #fav-container .fav-dark ul.menubasic.menu-light li.current span.nav-header,
  #fav-container .fav-dark ul.menubasic.menu-light li.current ul span.nav-header,
  #fav-container .fav-dark ul.menubasic.menu-light li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menubasic.menu-light li.current ul span.nav-header:focus {
    color: #fff !important;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menuarrow li a:hover,
  ul.menuarrow li a:focus,
  ul.menuarrow li.current a,
  ul.menuarrow li.current ul a:hover,
  ul.menuarrow li.current ul a:focus,
  ul.menuarrow li span.nav-header:hover,
  ul.menuarrow li span.nav-header:focus,
  ul.menuarrow li.current span.nav-header,
  ul.menuarrow li.current ul span.nav-header:hover,
  ul.menuarrow li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
  }
  ul.menuarrow li.current ul a,
  ul.menuarrow li.current ul span.nav-header {
    color: #444;
  }
  ul.menuarrow li a:hover:before,
  ul.menuarrow li a:focus:before,
  ul.menuarrow li.current a:before,
  ul.menuarrow li.current ul a:hover:before,
  ul.menuarrow li.current ul a:focus:before,
  ul.menuarrow li span.nav-header:hover:before,
  ul.menuarrow li span.nav-header:focus:before {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menuarrow.menu-light li a:hover,
  ul.menuarrow.menu-light li a:focus,
  ul.menuarrow.menu-light li.current a,
  ul.menuarrow.menu-light li.current ul a:hover,
  ul.menuarrow.menu-light li.current ul a:focus,
  ul.menuarrow.menu-light li span.nav-header:hover,
  ul.menuarrow.menu-light li span.nav-header:focus,
  ul.menuarrow.menu-light li.current span.nav-header,
  ul.menuarrow.menu-light li.current ul span.nav-header:hover,
  ul.menuarrow.menu-light li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  #fav-container .fav-dark ul.menuarrow li a:hover,
  #fav-container .fav-dark ul.menuarrow li a:focus,
  #fav-container .fav-dark ul.menuarrow li.current a,
  #fav-container .fav-dark ul.menuarrow li.current ul a:hover,
  #fav-container .fav-dark ul.menuarrow li.current ul a:focus,
  #fav-container .fav-dark ul.menuarrow li span.nav-header:hover,
  #fav-container .fav-dark ul.menuarrow li span.nav-header:focus,
  #fav-container .fav-dark ul.menuarrow li.current span.nav-header,
  #fav-container .fav-dark ul.menuarrow li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuarrow li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
    background-color: transparent;
  }
  #fav-container .fav-dark ul.menuarrow li a:hover:before,
  #fav-container .fav-dark ul.menuarrow li a:focus:before,
  #fav-container .fav-dark ul.menuarrow li.current a:before,
  #fav-container .fav-dark ul.menuarrow li.current ul a:hover:before,
  #fav-container .fav-dark ul.menuarrow li.current ul a:focus:before,
  #fav-container .fav-dark ul.menuarrow li span.nav-header:hover:before,
  #fav-container .fav-dark ul.menuarrow li span.nav-header:focus:before,
  #fav-container .fav-dark ul.menuarrow li.current span.nav-header:before,
  #fav-container .fav-dark ul.menuarrow li.current ul span.nav-header:hover:before,
  #fav-container .fav-dark ul.menuarrow li.current ul span.nav-header:focus:before {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menuarrow.menu-light li a:hover,
  #fav-container .fav-dark ul.menuarrow.menu-light li a:focus,
  #fav-container .fav-dark ul.menuarrow.menu-light li.current a,
  #fav-container .fav-dark ul.menuarrow.menu-light li.current ul a:hover,
  #fav-container .fav-dark ul.menuarrow.menu-light li.current ul a:focus,
  #fav-container .fav-dark ul.menuarrow.menu-light li span.nav-header:hover,
  #fav-container .fav-dark ul.menuarrow.menu-light li span.nav-header:focus,
  #fav-container .fav-dark ul.menuarrow.menu-light li.current span.nav-header,
  #fav-container .fav-dark ul.menuarrow.menu-light li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuarrow.menu-light li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  #fav-container .fav-dark ul.menuarrow.menu-clear li a:hover,
  #fav-container .fav-dark ul.menuarrow.menu-clear li a:focus,
  #fav-container .fav-dark ul.menuarrow.menu-clear li.current a,
  #fav-container .fav-dark ul.menuarrow.menu-clear li.current ul a:hover,
  #fav-container .fav-dark ul.menuarrow.menu-clear li.current ul a:focus,
  #fav-container .fav-dark ul.menuarrow.menu-clear li span.nav-header:hover,
  #fav-container .fav-dark ul.menuarrow.menu-clear li span.nav-header:focus,
  #fav-container .fav-dark ul.menuarrow.menu-clear li.current span.nav-header,
  #fav-container .fav-dark ul.menuarrow.menu-clear li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuarrow.menu-clear li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.menuside li a:hover,
  ul.menuside li a:focus,
  ul.menuside li.current a,
  ul.menuside li.current ul a:hover,
  ul.menuside li.current ul a:focus,
  ul.menuside li span.nav-header:hover,
  ul.menuside li span.nav-header:focus,
  ul.menuside li.current span.nav-header,
  ul.menuside li.current ul span.nav-header:hover,
  ul.menuside li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    border-left: 5px solid #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
  }
  ul.menuside li.current ul a {
    color: #444;
  }
  ul.menuside.menu-light li a:hover,
  ul.menuside.menu-light li a:focus,
  ul.menuside.menu-light li.current a,
  ul.menuside.menu-light li.current ul a:hover,
  ul.menuside.menu-light li.current ul a:focus,
  ul.menuside.menu-light li span.nav-header:hover,
  ul.menuside.menu-light li span.nav-header:focus,
  ul.menuside.menu-light li.current span.nav-header,
  ul.menuside.menu-light li.current ul span.nav-header:hover,
  ul.menuside.menu-light li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  #fav-container .fav-dark ul.menuside li a:hover,
  #fav-container .fav-dark ul.menuside li a:focus,
  #fav-container .fav-dark ul.menuside li.current a,
  #fav-container .fav-dark ul.menuside li.current ul a:hover,
  #fav-container .fav-dark ul.menuside li.current ul a:focus,
  #fav-container .fav-dark ul.menuside li span.nav-header:hover,
  #fav-container .fav-dark ul.menuside li span.nav-header:focus,
  #fav-container .fav-dark ul.menuside li.current span.nav-header,
  #fav-container .fav-dark ul.menuside li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuside li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
    border-left: 5px solid #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
  }
  #fav-container .fav-dark ul.menuside.menu-light li a:hover,
  #fav-container .fav-dark ul.menuside.menu-light li a:focus,
  #fav-container .fav-dark ul.menuside.menu-light li.current a,
  #fav-container .fav-dark ul.menuside.menu-light li.current ul a:hover,
  #fav-container .fav-dark ul.menuside.menu-light li.current ul a:focus,
  #fav-container .fav-dark ul.menuside.menu-light li span.nav-header:hover,
  #fav-container .fav-dark ul.menuside.menu-light li span.nav-header:focus,
  #fav-container .fav-dark ul.menuside.menu-light li.current span.nav-header,
  #fav-container .fav-dark ul.menuside.menu-light li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuside.menu-light li.current ul span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.menuline li a:hover,
  ul.menuline li a:focus,
  ul.menuline li.current a,
  ul.menuline li.current ul a:hover,
  ul.menuline li.current ul a:focus,
  ul.menuline li span.nav-header:hover,
  ul.menuline li span.nav-header:focus,
  ul.menuline li.current span.nav-header,
  ul.menuline li.current ul span.nav-header:hover,
  ul.menuline li.current ul span.nav-header:focus {
    color: #444;
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
  }
  ul.menuline li.current ul a {
    color: #444;
  }
  ul.menuline li a:hover:before,
  ul.menuline li a:focus:before,
  ul.menuline li.current a:before,
  ul.menuline li.current ul a:hover:before,
  ul.menuline li.current ul a:focus:before,
  ul.menuline li span.nav-header:hover:before,
  ul.menuline li span.nav-header:focus:before,
  ul.menuline li.current span.nav-header:before,
  ul.menuline li.current ul span.nav-header:hover:before,
  ul.menuline li.current ul span.nav-header:focus:before {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menuline.menu-clear li a:hover,
  ul.menuline.menu-clear li a:focus,
  ul.menuline.menu-clear li span.nav-header:hover,
  ul.menuline.menu-clear li span.nav-header:focus {
    color: #fff;
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menuline.menu-dark li a:hover,
  ul.menuline.menu-dark li a:focus,
  ul.menuline.menu-dark li span.nav-header:hover,
  ul.menuline.menu-dark li span.nav-header:focus {
    color: #fff !important;
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menuline.menu-light li a:hover,
  ul.menuline.menu-light li a:focus,
  ul.menuline.menu-light li.current a,
  ul.menuline.menu-light li.current ul a:hover,
  ul.menuline.menu-light li.current ul a:focus,
  ul.menuline.menu-light li span.nav-header:hover,
  ul.menuline.menu-light li span.nav-header:focus,
  ul.menuline.menu-light li.current span.nav-header,
  ul.menuline.menu-light li.current ul span.nav-header:hover,
  ul.menuline.menu-light li.current ul span.nav-header:focus {
    color: #444 !important;
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menuline li a:hover,
  #fav-container .fav-dark ul.menuline li a:focus,
  #fav-container .fav-dark ul.menuline li.current a,
  #fav-container .fav-dark ul.menuline li.current ul a:hover,
  #fav-container .fav-dark ul.menuline li.current ul a:focus,
  #fav-container .fav-dark ul.menuline li span.nav-header:hover,
  #fav-container .fav-dark ul.menuline li span.nav-header:focus,
  #fav-container .fav-dark ul.menuline li.current span.nav-header,
  #fav-container .fav-dark ul.menuline li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuline li.current ul span.nav-header:focus {
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
    color: #eee;
  }
  #fav-container .fav-dark ul.menuline li a:hover:before,
  #fav-container .fav-dark ul.menuline li a:focus:before,
  #fav-container .fav-dark ul.menuline li.current a:before,
  #fav-container .fav-dark ul.menuline li.current ul a:hover:before,
  #fav-container .fav-dark ul.menuline li.current ul a:focus:before,
  #fav-container .fav-dark ul.menuline li span.nav-header:hover:before,
  #fav-container .fav-dark ul.menuline li span.nav-header:focus:before,
  #fav-container .fav-dark ul.menuline li.current span.nav-header:before,
  #fav-container .fav-dark ul.menuline li.current ul span.nav-header:hover:before,
  #fav-container .fav-dark ul.menuline li.current ul span.nav-header:focus:before {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menuline.menu-clear li a:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li a:focus,
  #fav-container .fav-dark ul.menuline.menu-clear li.current a,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul a:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul a:focus,
  #fav-container .fav-dark ul.menuline.menu-clear li span.nav-header:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li span.nav-header:focus,
  #fav-container .fav-dark ul.menuline.menu-clear li.current span.nav-header,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul span.nav-header:focus {
    color: #eee;
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menuline.menu-clear li a:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li a:focus,
  #fav-container .fav-dark ul.menuline.menu-clear li.current a,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul a:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul a:focus,
  #fav-container .fav-dark ul.menuline.menu-clear li span.nav-header:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li span.nav-header:focus,
  #fav-container .fav-dark ul.menuline.menu-clear li.current span.nav-header,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuline.menu-clear li.current ul span.nav-header:focus {
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.menuline.menu-light li a:hover,
  #fav-container .fav-dark ul.menuline.menu-light li a:focus,
  #fav-container .fav-dark ul.menuline.menu-light li.current a,
  #fav-container .fav-dark ul.menuline.menu-light li.current ul a:hover,
  #fav-container .fav-dark ul.menuline.menu-light li.current ul a:focus,
  #fav-container .fav-dark ul.menuline.menu-light li span.nav-header:hover,
  #fav-container .fav-dark ul.menuline.menu-light li span.nav-header:focus,
  #fav-container .fav-dark ul.menuline.menu-light li.current span.nav-header,
  #fav-container .fav-dark ul.menuline.menu-light li.current ul span.nav-header:hover,
  #fav-container .fav-dark ul.menuline.menu-light li.current ul span.nav-header:focus {
    color: #444 !important;
    border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.menuhorizontal li.active a,
  ul.menuhorizontal li a:hover,
  ul.menuhorizontal li a:focus,
  ul.menuhorizontal li:hover a,
  ul.menuhorizontal li:focus a,
  ul.menuhorizontal li.active span.nav-header,
  ul.menuhorizontal li span.nav-header:hover,
  ul.menuhorizontal li span.nav-header:focus,
  ul.menuhorizontal li:hover span.nav-header,
  ul.menuhorizontal li:focus span.nav-header,
  ul.menuhorizontal li span.nav-header:hover,
  ul.menuhorizontal li span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
  }
  #fav-container .fav-dark ul.menuhorizontal li.active a,
  #fav-container .fav-dark ul.menuhorizontal li a:hover,
  #fav-container .fav-dark ul.menuhorizontal li a:focus,
  #fav-container .fav-dark ul.menuhorizontal li:hover a,
  #fav-container .fav-dark ul.menuhorizontal li:focus a,
  #fav-container .fav-dark ul.menuhorizontal li.active span.nav-header,
  #fav-container .fav-dark ul.menuhorizontal li span.nav-header:hover,
  #fav-container .fav-dark ul.menuhorizontal li span.nav-header:focus,
  #fav-container .fav-dark ul.menuhorizontal li:hover span.nav-header,
  #fav-container .fav-dark ul.menuhorizontal li:focus span.nav-header,
  #fav-container .fav-dark ul.menuhorizontal li span.nav-header:hover,
  #fav-container .fav-dark ul.menuhorizontal li span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
  }
  ul.menuhorizontal.menu-clear li.active a,
  ul.menuhorizontal.menu-clear li a:hover,
  ul.menuhorizontal.menu-clear li a:focus,
  ul.menuhorizontal.menu-clear li:hover a,
  ul.menuhorizontal.menu-clear li:focus a,
  ul.menuhorizontal.menu-clear li.active span.nav-header,
  ul.menuhorizontal.menu-clear li span.nav-header:hover,
  ul.menuhorizontal.menu-clear li span.nav-header:focus,
  ul.menuhorizontal.menu-clear li:hover span.nav-header,
  ul.menuhorizontal.menu-clear li:focus span.nav-header,
  ul.menuhorizontal.menu-clear li span.nav-header:hover,
  ul.menuhorizontal.menu-clear li span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.menuhorizontal.menu-clear li a:before,
  ul.menuhorizontal.menu-clear li span.nav-header:before {
    color: #fff;
  }
  ul.menuhorizontal.menu-clear li.active a:before,
  ul.menuhorizontal.menu-clear li a:hover:before,
  ul.menuhorizontal.menu-clear li a:focus:before,
  ul.menuhorizontal.menu-clear li:hover a:before,
  ul.menuhorizontal.menu-clear li:focus a:before,
  ul.menuhorizontal.menu-clear li.active span.nav-header:before,
  ul.menuhorizontal.menu-clear li span.nav-header:hover:before,
  ul.menuhorizontal.menu-clear li span.nav-header:focus:before,
  ul.menuhorizontal.menu-clear li:hover span.nav-header:before,
  ul.menuhorizontal.menu-clear li:focus span.nav-header:before,
  ul.menuhorizontal.menu-clear li span.nav-header:hover:before,
  ul.menuhorizontal.menu-clear li span.nav-header:focus:before {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.menuhorizontal.menu-dark li.active a,
  ul.menuhorizontal.menu-dark li a:hover,
  ul.menuhorizontal.menu-dark li a:focus,
  ul.menuhorizontal.menu-dark li:hover a,
  ul.menuhorizontal.menu-dark li:focus a,
  ul.menuhorizontal.menu-dark li.active span.nav-header,
  ul.menuhorizontal.menu-dark li span.nav-header:hover,
  ul.menuhorizontal.menu-dark li span.nav-header:focus,
  ul.menuhorizontal.menu-dark li:hover span.nav-header,
  ul.menuhorizontal.menu-dark li:focus span.nav-header,
  ul.menuhorizontal.menu-dark li span.nav-header:hover,
  ul.menuhorizontal.menu-dark li span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.menuhorizontal.menu-dark li.active a:before,
  ul.menuhorizontal.menu-dark li a:hover:before,
  ul.menuhorizontal.menu-dark li a:focus:before,
  ul.menuhorizontal.menu-dark li:hover a:before,
  ul.menuhorizontal.menu-dark li:focus a:before,
  ul.menuhorizontal.menu-dark li.active span.nav-header:before,
  ul.menuhorizontal.menu-dark li span.nav-header:hover:before,
  ul.menuhorizontal.menu-dark li span.nav-header:focus:before,
  ul.menuhorizontal.menu-dark li:hover span.nav-header:before,
  ul.menuhorizontal.menu-dark li:focus span.nav-header:before,
  ul.menuhorizontal.menu-dark li span.nav-header:hover:before,
  ul.menuhorizontal.menu-dark li span.nav-header:focus:before {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  ul.menuhorizontal.menu-light li.active a,
  ul.menuhorizontal.menu-light li a:hover,
  ul.menuhorizontal.menu-light li a:focus,
  ul.menuhorizontal.menu-light li:hover a,
  ul.menuhorizontal.menu-light li:focus a,
  ul.menuhorizontal.menu-light li.active span.nav-header,
  ul.menuhorizontal.menu-light li span.nav-header:hover,
  ul.menuhorizontal.menu-light li span.nav-header:focus,
  ul.menuhorizontal.menu-light li:hover span.nav-header,
  ul.menuhorizontal.menu-light li:focus span.nav-header,
  ul.menuhorizontal.menu-light li span.nav-header:hover,
  ul.menuhorizontal.menu-light li span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
    background-color: transparent;
    text-decoration: none;
  }
  ul.menuhorizontal.pull-right li.active a,
  ul.menuhorizontal.pull-right li a:hover,
  ul.menuhorizontal.pull-right li a:focus,
  ul.menuhorizontal.pull-right li:hover a,
  ul.menuhorizontal.pull-right li:focus a,
  ul.menuhorizontal.pull-right li.active span.nav-header,
  ul.menuhorizontal.pull-right li span.nav-header:hover,
  ul.menuhorizontal.pull-right li span.nav-header:focus,
  ul.menuhorizontal.pull-right li:hover span.nav-header,
  ul.menuhorizontal.pull-right li:focus span.nav-header,
  ul.menuhorizontal.pull-right li span.nav-header:hover,
  ul.menuhorizontal.pull-right li span.nav-header:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: transparent;
    text-decoration:none;
  }
  .page-header h2 a:hover,
  h2.item-title a:hover,
  div.categories-list h3 a:hover,
  div.newsfeed h2 a:hover,
  div.newsfeed-category h2 a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .moduletable h3 [class^="fa fa-"],
  .moduletable h3 [class*=" fa fa-"] {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #fff;
  }
  #fav-container .fav-dark .page-header h2 a:hover,
  #fav-container .fav-dark h2.item-title a:hover,
  #fav-container .fav-dark div.categories-list h3 a:hover,
  #fav-container .fav-dark div.newsfeed h2 a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .btn,
  .pager .next a,
  .pager .previous a {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .btn:hover,
  .btn:focus,
  .btn:active,
  .btn.active,
  .pager .next a:hover,
  .pager .previous a:hover,
  .pager .next a:focus,
  .pager .previous a:focus {
    color: #fff;
    background-color: #333;
    background-image: none;
    border: 1px solid transparent;
    box-shadow: 0px 5px 11px 0px rgba(0, 0, 0, 0.18), 0px 4px 15px 0px rgba(0, 0, 0, 0.15);
  }
  .btn-primary {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    border: 1px solid transparent;
    background-image: none;
  }
  .btn-primary:hover,
  .btn-primary:focus  {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .pagination ul li a,
  .pagination ul > .disabled > a,
  .pagination ul > .active > a,
  .pagination ul > .disabled > a:hover,
  .pagination ul > .disabled > a:focus,
  .pagination ul > .active > a:hover,
  .pagination ul > .active > a:focus {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .pagination ul li a:hover,
  .pagination ul li a:focus,
  .pagination ul li.active a,
  .pagination ul li.active a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: #fff;
  }
  #fav-container .fav-dark .pagination ul li a,
  #fav-container .fav-dark .pagination ul > .disabled > a,
  #fav-container .fav-dark .pagination ul > .active > a,
  #fav-container .fav-dark .pagination ul > .disabled > a:hover,
  #fav-container .fav-dark .pagination ul > .disabled > a:focus,
  #fav-container .fav-dark .pagination ul > .active > a:hover,
  #fav-container .fav-dark .pagination ul > .active > a:focus {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark .pagination ul li a:hover,
  #fav-container .fav-dark .pagination ul li a:focus,
  #fav-container .fav-dark .pagination ul li.active a,
  #fav-container .fav-dark .pagination ul li.active a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
    background-color: #fff;
  }
  .moduletable-sfx1 h3 i,
  .moduletable-sfx2 h3 i,
  .moduletable-sfx5 h3 i,
  .moduletable-sfx6 h3 i,
  .moduletable-sfx13 h3 i,
  .moduletable-sfx14 h3 i,
  .moduletable-sfx17 h3 i,
  .moduletable-sfx18 h3 i,
  .moduletable-sfx21 h3 i,
  .moduletable-sfx22 h3 i,
  .moduletable-sfx25 h3 i,
  .moduletable-sfx26 h3 i,
  .moduletable-sfx29 h3 i,
  .moduletable-sfx30 h3 i,
  .moduletable-sfx33 h3 i,
  .moduletable-sfx34 h3 i,
  .moduletable-sfx21 a:hover,
  .moduletable-sfx21 a:focus {
  color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .moduletable-sfx3 h3 i,
  .moduletable-sfx4 h3 i,
  .moduletable-sfx7 h3 i,
  .moduletable-sfx8 h3 i,
  .moduletable-sfx15 h3 i,
  .moduletable-sfx16 h3 i,
  .moduletable-sfx19 h3 i,
  .moduletable-sfx20 h3 i,
  .moduletable-sfx23 h3 i,
  .moduletable-sfx24 h3 i,
  .moduletable-sfx27 h3 i,
  .moduletable-sfx28 h3 i,
  .moduletable-sfx31 h3 i,
  .moduletable-sfx32 h3 i,
  .moduletable-sfx35 h3 i,
  .moduletable-sfx36 h3 i,
  .moduletable-sfx9,
  .moduletable-sfx10,
  .moduletable-sfx11,
  .moduletable-sfx12 {
  background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  color: #FFF;
  }
  .moduletable-sfx4 h3,
  .moduletable-sfx8 h3,
  .moduletable-sfx16 h3,
  .moduletable-sfx16 h3,
  .moduletable-sfx20 h3,
  .moduletable-sfx24 h3,
  .moduletable-sfx28 h3,
  .moduletable-sfx32 h3,
  .moduletable-sfx36 h3 {
  border-bottom: 1px solid #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx1 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx1 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx2 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx2 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx3 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx3 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx4 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx4 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx5 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx5 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx6 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx6 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx7 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx7 a:focus,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx8 a:hover,
  #fav-container .fav-dark #fav-featurewrap .moduletable-sfx8 a:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx1 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx1 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx2 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx2 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx3 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx3 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx4 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx4 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx5 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx5 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx6 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx6 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx7 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx7 a:focus,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx8 a:hover,
  #fav-container .fav-dark #fav-blockwrap .moduletable-sfx8 a:focus {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  #fav-download #fav-download-btn a.btn:hover,
  #fav-download #fav-download-btn a.btn:focus {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #FFF;
  }
  #fav-container .demo-nav-styles {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  blockquote {
    border-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  blockquote.blockquote-dark {
    border-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .badge-info {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.list-square li:before {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #fff;
  }
  ol.list-square li:before {
    color: #fff;
    background: none repeat scroll 0% 0% #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.list-circle li:before {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #fff;
  }
  ol.list-circle li:before {
    color: #fff;
    background: none repeat scroll 0% 0% #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.dropdown-menu a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .btn-group.open .btn.dropdown-toggle {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  #fav-container .fav-dark ul.dropdown-menu a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  ul.tags li a {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  div.tag-category ul.thumbnails h3 a {
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
    color: #fff;
  }
  #fav-search-advanced-fields .accordion-heading a.accordion-toggle {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  @media (max-width: 768px) {

    .moduletablefavstyle.pull-left .fav-search a.btn.dropdown-toggle i {
      color: #<?php echo htmlspecialchars($custom_style); ?>;
    }

  }
  #member-profile button.btn.btn-primary.validate,
  #member-profile a.btn {
    color: #fff;
    background-color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  div.newsfeed h2 a:hover,
  div.newsfeed-category h2 a:hover {
    color: #<?php echo htmlspecialchars($custom_style); ?>;
  }
  .favstyle div[id^="favpromote-box"] h4[id^="favpromote-title"],
  .favstyle div[id^="favpromote-box"] h4[id*=" favpromote-title"] {
    background-color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  .favstyle div[id^="favpromote-box"]:hover h4[id^="favpromote-title"],
  .favstyle div[id^="favpromote-box"]:hover h4[id*=" favpromote-title"],
  .favstyle div[id^="favpromote-box"] h4[id^="favpromote-title"]:hover,
  .favstyle div[id^="favpromote-box"] h4[id*=" favpromote-title"]:hover {
    background-color: #111 !important;
  }
  .favstyle div[id^="favglyph-icon"],
  .favstyle div[id*=" favglyph-icon"] {
    background-color: #<?php echo htmlspecialchars($custom_style); ?> !important;
    border: 1px solid #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  .favstyle div[id^="faveffects-icon"] i,
  .favstyle div[id*=" faveffects-icon"] i {
    color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
  .favstyle div[id^="faveffects-icon"] i:hover,
  .favstyle div[id*=" faveffects-icon"] i:hover {
    color: #444 !important;
  }
  .favstyle div[id^="favsocial"] a,
  .favstyle div[id*=" favsocial"] a {
    background-color: #<?php echo htmlspecialchars($custom_style); ?> !important;
  }
<?php } ?>
<?php // Maximum Width
if ($max_width) { ?>
  @media (min-width: 1200px) {
    .row-fluid {
      max-width: <?php echo htmlspecialchars($max_width); ?>;
    }
  }
<?php } ?>
<?php // Offline Background Image
if ($offline_page_bg_image) { ?>
  #fav-offlinewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($offline_page_bg_image); ?>);
  }
<?php } ?>
<?php // Offline Background Image Style
if ($offline_page_bg_image_style) { ?>
  #fav-offlinewrap {
    background-repeat: <?php echo htmlspecialchars($offline_page_bg_image_style); ?>;
  }
<?php } ?>
<?php // Body Background Image
if ($body_bg_image) { ?>
  #fav-containerwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($body_bg_image); ?>);
  }
<?php } ?>
<?php // Body Background Image Style
if ($body_bg_image_style) { ?>
  #fav-containerwrap {
    background-repeat: <?php echo htmlspecialchars($body_bg_image_style); ?>;
  }
<?php } ?>
<?php // Notice Background Color
if ($notice_bg_color)  { ?>
  #fav-noticewrap {
    background-color: #<?php echo htmlspecialchars($notice_bg_color); ?>;
  }
<?php } ?>
<?php // Notice Color
if ($notice_color) { ?>
  #fav-noticewrap p {
    color: #<?php echo htmlspecialchars($notice_color); ?>;
  }
<?php } ?>
<?php // Notice Title Color
if ($notice_title_color) { ?>
  #fav-noticewrap .moduletable h3,
  #fav-noticewrap div[class^="moduletable-"] h3,
  #fav-noticewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($notice_title_color); ?>;
  }
<?php } ?>
<?php // Notice Link Color
if ($notice_link_color) { ?>
  #fav-noticewrap a {
    color: #<?php echo htmlspecialchars($notice_link_color); ?>;
  }
<?php } ?>
<?php // Notice Link Hover Color
if ($notice_link_hover_color) { ?>
  #fav-noticewrap a:hover {
    color: #<?php echo htmlspecialchars($notice_link_hover_color); ?>;
  }
<?php } ?>
<?php // Topbar Background Image
if ($topbar_bg_image) { ?>
  #fav-topbarwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($topbar_bg_image); ?>);
  }
<?php } ?>
<?php // Topbar Background Image Style
if ($topbar_bg_image_style) { ?>
  #fav-topbarwrap {
    background-repeat: <?php echo htmlspecialchars($topbar_bg_image_style); ?>;
  }
<?php } ?>
<?php // Topbar Background Color
if ($topbar_bg_color)  { ?>
  #fav-topbarwrap {
    background-color: #<?php echo htmlspecialchars($topbar_bg_color); ?>;
  }
<?php } ?>
<?php // Topbar Color
if ($topbar_color) { ?>
  #fav-topbarwrap p {
    color: #<?php echo htmlspecialchars($topbar_color); ?>;
  }
<?php } ?>
<?php // Topbar Title Color
if ($topbar_title_color) { ?>
  #fav-topbarwrap .moduletable h3,
  #fav-topbarwrap div[class^="moduletable-"] h3,
  #fav-topbarwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($topbar_title_color); ?>;
  }
<?php } ?>
<?php // Topbar Link Color
if ($topbar_link_color) { ?>
  #fav-topbarwrap a {
    color: #<?php echo htmlspecialchars($topbar_link_color); ?>;
  }
<?php } ?>
<?php // Topbar Link Hover Color
if ($topbar_link_hover_color) { ?>
  #fav-topbarwrap a:hover {
    color: #<?php echo htmlspecialchars($topbar_link_hover_color); ?>;
  }
<?php } ?>
<?php // Slide Width
if ($slide_width) { ?>
  #fav-slidewrap .row-fluid {
    max-width: <?php echo htmlspecialchars($slide_width); ?>;
  }
<?php } ?>
<?php // Slide Background Image
if ($slide_bg_image) { ?>
  #fav-slidewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($slide_bg_image); ?>);
  }
<?php } ?>
<?php // Slide Background Image Style
if ($slide_bg_image_style) { ?>
  #fav-slidewrap {
    background-repeat: <?php echo htmlspecialchars($slide_bg_image_style); ?>;
  }
<?php } ?>
<?php // Slide Background Color
if ($slide_bg_color)  { ?>
  #fav-slidewrap {
    background-color: #<?php echo htmlspecialchars($slide_bg_color); ?>;
  }
<?php } ?>
<?php // Slide Color
if ($slide_color) { ?>
  #fav-slidewrap p {
    color: #<?php echo htmlspecialchars($slide_color); ?>;
  }
<?php } ?>
<?php // Slide Title Color
if ($slide_title_color) { ?>
  #fav-slidewrap .moduletable h3,
  #fav-slidewrap div[class^="moduletable-"] h3,
  #fav-slidewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($slide_title_color); ?>;
  }
<?php } ?>
<?php // Slide Link Color
if ($slide_link_color) { ?>
  #fav-slidewrap a {
    color: #<?php echo htmlspecialchars($slide_link_color); ?>;
  }
<?php } ?>
<?php // Slide Link Hover Color
if ($slide_link_hover_color) { ?>
  #fav-slidewrap a:hover {
    color: #<?php echo htmlspecialchars($slide_link_hover_color); ?>;
  }
<?php } ?>
<?php // Intro Background Image
if ($intro_bg_image) { ?>
  #fav-introwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($intro_bg_image); ?>);
  }
<?php } ?>
<?php // Intro Background Image Style
if ($intro_bg_image_style) { ?>
  #fav-introwrap {
    background-repeat: <?php echo htmlspecialchars($intro_bg_image_style); ?>;
  }
<?php } ?>
<?php // Intro Background Color
if ($intro_bg_color)  { ?>
  #fav-introwrap {
    background-color: #<?php echo htmlspecialchars($intro_bg_color); ?>;
  }
<?php } ?>
<?php // Intro Color
if ($intro_color) { ?>
  #fav-introwrap p {
    color: #<?php echo htmlspecialchars($intro_color); ?>;
  }
<?php } ?>
<?php // Intro Title Color
if ($intro_title_color) { ?>
  #fav-introwrap .moduletable h3,
  #fav-introwrap div[class^="moduletable-"] h3,
  #fav-introwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($intro_title_color); ?>;
  }
<?php } ?>
<?php // Intro Link Color
if ($intro_link_color) { ?>
  #fav-introwrap a {
    color: #<?php echo htmlspecialchars($intro_link_color); ?>;
  }
<?php } ?>
<?php // Intro Link Hover Color
if ($intro_link_hover_color) { ?>
  #fav-introwrap a:hover {
    color: #<?php echo htmlspecialchars($intro_link_hover_color); ?>;
  }
<?php } ?>
<?php // Lead Background Image
if ($lead_bg_image) { ?>
  #fav-leadwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($lead_bg_image); ?>);
  }
<?php } ?>
<?php // Lead Background Image Style
if ($lead_bg_image_style) { ?>
  #fav-leadwrap {
    background-repeat: <?php echo htmlspecialchars($lead_bg_image_style); ?>;
  }
<?php } ?>
<?php // Lead Background Color
if ($lead_bg_color)  { ?>
  #fav-leadwrap {
    background-color: #<?php echo htmlspecialchars($lead_bg_color); ?>;
  }
<?php } ?>
<?php // Lead Color
if ($lead_color) { ?>
  #fav-leadwrap p {
    color: #<?php echo htmlspecialchars($lead_color); ?>;
  }
<?php } ?>
<?php // Lead Title Color
if ($lead_title_color) { ?>
  #fav-leadwrap .moduletable h3,
  #fav-leadwrap div[class^="moduletable-"] h3,
  #fav-leadwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($lead_title_color); ?>;
  }
<?php } ?>
<?php // Lead Link Color
if ($lead_link_color) { ?>
  #fav-leadwrap a {
    color: #<?php echo htmlspecialchars($lead_link_color); ?>;
  }
<?php } ?>
<?php // Lead Link Hover Color
if ($lead_link_hover_color) { ?>
  #fav-leadwrap a:hover {
    color: #<?php echo htmlspecialchars($lead_link_hover_color); ?>;
  }
<?php } ?>
<?php // Promo Background Image
if ($promo_bg_image) { ?>
  #fav-promowrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($promo_bg_image); ?>);
  }
<?php } ?>
<?php // Promo Background Image Style
if ($promo_bg_image_style) { ?>
  #fav-promowrap {
    background-repeat: <?php echo htmlspecialchars($promo_bg_image_style); ?>;
  }
<?php } ?>
<?php // Promo Background Color
if ($promo_bg_color)  { ?>
  #fav-promowrap {
    background-color: #<?php echo htmlspecialchars($promo_bg_color); ?>;
  }
<?php } ?>
<?php // Promo _color
if ($promo_color) { ?>
  #fav-promowrap p {
    color: #<?php echo htmlspecialchars($promo_color); ?>;
  }
<?php } ?>
<?php // Promo Title Color
if ($promo_title_color) { ?>
  #fav-promowrap .moduletable h3,
  #fav-promowrap div[class^="moduletable-"] h3,
  #fav-promowrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($promo_title_color); ?>;
  }
<?php } ?>
<?php // Promo Link Color
if ($promo_link_color) { ?>
  #fav-promowrap a {
    color: #<?php echo htmlspecialchars($promo_link_color); ?>;
  }
<?php } ?>
<?php // Promo Link Hover Color
if ($promo_link_hover_color) { ?>
  #fav-promowrap a:hover {
    color: #<?php echo htmlspecialchars($promo_link_hover_color); ?>;
  }
<?php } ?>
<?php // Prime Background Image
if ($prime_bg_image) { ?>
  #fav-primewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($prime_bg_image); ?>);
  }
<?php } ?>
<?php // Prime Background Image Style
if ($prime_bg_image_style) { ?>
  #fav-primewrap {
    background-repeat: <?php echo htmlspecialchars($prime_bg_image_style); ?>;
  }
<?php } ?>
<?php // Prime Background Color
if ($prime_bg_color)  { ?>
  #fav-primewrap {
    background-color: #<?php echo htmlspecialchars($prime_bg_color); ?>;
  }
<?php } ?>
<?php // Prime Color
if ($prime_color) { ?>
  #fav-primewrap p {
    color: #<?php echo htmlspecialchars($prime_color); ?>;
  }
<?php } ?>
<?php // Prime Title Color
if ($prime_title_color) { ?>
  #fav-primewrap .moduletable h3,
  #fav-primewrap div[class^="moduletable-"] h3,
  #fav-primewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($prime_title_color); ?>;
  }
<?php } ?>
<?php // Prime Link Color
if ($prime_link_color) { ?>
  #fav-primewrap a {
    color: #<?php echo htmlspecialchars($prime_link_color); ?>;
  }
<?php } ?>
<?php // Prime Link Hover Color
if ($prime_link_hover_color) { ?>
  #fav-primewrap a:hover {
    color: #<?php echo htmlspecialchars($prime_link_hover_color); ?>;
  }
<?php } ?>
<?php // Showcase Background Image
if ($showcase_bg_image) { ?>
  #fav-showcasewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($showcase_bg_image); ?>);
  }
<?php } ?>
<?php // Showcase Background Image Style
if ($showcase_bg_image_style) { ?>
  #fav-showcasewrap {
    background-repeat: <?php echo htmlspecialchars($showcase_bg_image_style); ?>;
  }
<?php } ?>
<?php // Showcase Background Color
if ($showcase_bg_color)  { ?>
  #fav-showcasewrap {
    background-color: #<?php echo htmlspecialchars($showcase_bg_color); ?>;
  }
<?php } ?>
<?php // Showcase Color
if ($showcase_color) { ?>
  #fav-showcasewrap p {
    color: #<?php echo htmlspecialchars($showcase_color); ?>;
  }
<?php } ?>
<?php // Showcase Title Color
if ($showcase_title_color) { ?>
  #fav-showcasewrap .moduletable h3,
  #fav-showcasewrap div[class^="moduletable-"] h3,
  #fav-showcasewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($showcase_title_color); ?>;
  }
<?php } ?>
<?php // Showcase Link Color
if ($showcase_link_color) { ?>
  #fav-showcasewrap a {
    color: #<?php echo htmlspecialchars($showcase_link_color); ?>;
  }
<?php } ?>
<?php // Showcase Link Hover Color
if ($showcase_link_hover_color) { ?>
  #fav-showcasewrap a:hover {
    color: #<?php echo htmlspecialchars($showcase_link_hover_color); ?>;
  }
<?php } ?>
<?php // Feature Background Image
if ($feature_bg_image) { ?>
  #fav-featurewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($feature_bg_image); ?>);
  }
<?php } ?>
<?php // Feature Background Image Style
if ($feature_bg_image_style) { ?>
  #fav-featurewrap {
    background-repeat: <?php echo htmlspecialchars($feature_bg_image_style); ?>;
  }
<?php } ?>
<?php // Feature Background Color
if ($feature_bg_color)  { ?>
  #fav-featurewrap {
    background-color: #<?php echo htmlspecialchars($feature_bg_color); ?>;
  }
<?php } ?>
<?php // Feature Color
if ($feature_color) { ?>
  #fav-featurewrap p {
    color: #<?php echo htmlspecialchars($feature_color); ?>;
  }
<?php } ?>
<?php // Feature Title Color
if ($feature_title_color) { ?>
  #fav-featurewrap .moduletable h3,
  #fav-featurewrap div[class^="moduletable-"] h3,
  #fav-featurewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($feature_title_color); ?>;
  }
<?php } ?>
<?php // Feature Link Color
if ($feature_link_color) { ?>
  #fav-featurewrap a {
    color: #<?php echo htmlspecialchars($feature_link_color); ?>;
  }
<?php } ?>
<?php // Feature Link Hover Color
if ($feature_link_hover_color) { ?>
  #fav-featurewrap a:hover {
    color: #<?php echo htmlspecialchars($feature_link_hover_color); ?>;
  }
<?php } ?>
<?php // Focus Background Image
if ($focus_bg_image) { ?>
  #fav-focuswrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($focus_bg_image); ?>);
  }
<?php } ?>
<?php // Focus Background Image Style
if ($focus_bg_image_style) { ?>
  #fav-focuswrap {
    background-repeat: <?php echo htmlspecialchars($focus_bg_image_style); ?>;
  }
<?php } ?>
<?php // Focus Background Color
if ($focus_bg_color)  { ?>
  #fav-focuswrap {
    background-color: #<?php echo htmlspecialchars($focus_bg_color); ?>;
  }
<?php } ?>
<?php // Focus Color
if ($focus_color) { ?>
  #fav-focuswrap p {
    color: #<?php echo htmlspecialchars($focus_color); ?>;
  }
<?php } ?>
<?php // Focus Title Color
if ($focus_title_color) { ?>
  #fav-focuswrap .moduletable h3,
  #fav-focuswrap div[class^="moduletable-"] h3,
  #fav-focuswrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($focus_title_color); ?>;
  }
<?php } ?>
<?php // Focus Link Color
if ($focus_link_color) { ?>
  #fav-focuswrap a {
    color: #<?php echo htmlspecialchars($focus_link_color); ?>;
  }
<?php } ?>
<?php // Focus Link Hover Color
if ($focus_link_hover_color) { ?>
  #fav-focuswrap a:hover {
    color: #<?php echo htmlspecialchars($focus_link_hover_color); ?>;
  }
<?php } ?>
<?php // Portfolio Background Image
if ($portfolio_bg_image) { ?>
  #fav-portfoliowrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($portfolio_bg_image); ?>);
  }
<?php } ?>
<?php // Portfolio Background Image Style
if ($portfolio_bg_image_style) { ?>
  #fav-portfoliowrap {
    background-repeat: <?php echo htmlspecialchars($portfolio_bg_image_style); ?>;
  }
<?php } ?>
<?php // Portfolio Background Color
if ($portfolio_bg_color)  { ?>
  #fav-portfoliowrap {
    background-color: #<?php echo htmlspecialchars($portfolio_bg_color); ?>;
  }
<?php } ?>
<?php // Portfolio Color
if ($portfolio_color) { ?>
  #fav-portfoliowrap p {
    color: #<?php echo htmlspecialchars($portfolio_color); ?>;
  }
<?php } ?>
<?php // Portfolio Title Color
if ($portfolio_title_color) { ?>
  #fav-portfoliowrap .moduletable h3,
  #fav-portfoliowrap div[class^="moduletable-"] h3,
  #fav-portfoliowrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($portfolio_title_color); ?>;
  }
<?php } ?>
<?php // Portfolio Link Color
if ($portfolio_link_color) { ?>
  #fav-portfoliowrap a {
    color: #<?php echo htmlspecialchars($portfolio_link_color); ?>;
  }
<?php } ?>
<?php // Portfolio Link Hover Color
if ($portfolio_link_hover_color) { ?>
  #fav-portfoliowrap a:hover {
    color: #<?php echo htmlspecialchars($portfolio_link_hover_color); ?>;
  }
<?php } ?>
<?php // Screen Background Image
if ($screen_bg_image) { ?>
  #fav-screenwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($screen_bg_image); ?>);
  }
<?php } ?>
<?php // Screen Background Image Style
if ($screen_bg_image_style) { ?>
  #fav-screenwrap {
    background-repeat: <?php echo htmlspecialchars($screen_bg_image_style); ?>;
  }
<?php } ?>
<?php // Screen Background Color
if ($screen_bg_color)  { ?>
  #fav-screenwrap {
    background-color: #<?php echo htmlspecialchars($screen_bg_color); ?>;
  }
<?php } ?>
<?php // Screen Color
if ($screen_color) { ?>
  #fav-screenwrap p {
    color: #<?php echo htmlspecialchars($screen_color); ?>;
  }
<?php } ?>
<?php // Screen Title Color
if ($screen_title_color) { ?>
  #fav-screenwrap .moduletable h3,
  #fav-screenwrap div[class^="moduletable-"] h3,
  #fav-screenwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($screen_title_color); ?>;
  }
<?php } ?>
<?php // Screen Link Color
if ($screen_link_color) { ?>
  #fav-screenwrap a {
    color: #<?php echo htmlspecialchars($screen_link_color); ?>;
  }
<?php } ?>
<?php // Screen Link Hover Color
if ($screen_link_hover_color) { ?>
  #fav-screenwrap a:hover {
    color: #<?php echo htmlspecialchars($screen_link_hover_color); ?>;
  }
<?php } ?>
<?php // Top Background Image
if ($top_bg_image) { ?>
  #fav-topwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($top_bg_image); ?>);
  }
<?php } ?>
<?php // Top Background Image Style
if ($top_bg_image_style) { ?>
  #fav-topwrap {
    background-repeat: <?php echo htmlspecialchars($top_bg_image_style); ?>;
  }
<?php } ?>
<?php // Top Background Color
if ($top_bg_color)  { ?>
  #fav-topwrap {
    background-color: #<?php echo htmlspecialchars($top_bg_color); ?>;
  }
<?php } ?>
<?php // Top Color
if ($top_color) { ?>
  #fav-topwrap p {
    color: #<?php echo htmlspecialchars($top_color); ?>;
  }
<?php } ?>
<?php // Top Title Color
if ($top_title_color) { ?>
  #fav-topwrap .moduletable h3,
  #fav-topwrap div[class^="moduletable-"] h3,
  #fav-topwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($top_title_color); ?>;
  }
<?php } ?>
<?php // Top Link Color
if ($top_link_color) { ?>
  #fav-topwrap a {
    color: #<?php echo htmlspecialchars($top_link_color); ?>;
  }
<?php } ?>
<?php // Top Link Hover Color
if ($top_link_hover_color) { ?>
  #fav-topwrap a:hover {
    color: #<?php echo htmlspecialchars($top_link_hover_color); ?>;
  }
<?php } ?>
<?php // Mainmaintop Background Image
if ($maintop_bg_image) { ?>
  #fav-maintopwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($maintop_bg_image); ?>);
  }
<?php } ?>
<?php // Mainmaintop Background Image Style
if ($maintop_bg_image_style) { ?>
  #fav-maintopwrap {
    background-repeat: <?php echo htmlspecialchars($maintop_bg_image_style); ?>;
  }
<?php } ?>
<?php // Mainmaintop Background Color
if ($maintop_bg_color)  { ?>
  #fav-maintopwrap {
    background-color: #<?php echo htmlspecialchars($maintop_bg_color); ?>;
  }
<?php } ?>
<?php // Mainmaintop Color
if ($maintop_color) { ?>
  #fav-maintopwrap p {
    color: #<?php echo htmlspecialchars($maintop_color); ?>;
  }
<?php } ?>
<?php // Mainmaintop Title Color
if ($maintop_title_color) { ?>
  #fav-maintopwrap .moduletable h3,
  #fav-maintopwrap div[class^="moduletable-"] h3,
  #fav-maintopwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($maintop_title_color); ?>;
  }
<?php } ?>
<?php // Mainmaintop Link Color
if ($maintop_link_color) { ?>
  #fav-maintopwrap a {
    color: #<?php echo htmlspecialchars($maintop_link_color); ?>;
  }
<?php } ?>
<?php // Mainmaintop Link Hover Color
if ($maintop_link_hover_color) { ?>
  #fav-maintopwrap a:hover {
    color: #<?php echo htmlspecialchars($maintop_link_hover_color); ?>;
  }
<?php } ?>
<?php // Mainbottom Background Image
if ($mainbottom_bg_image) { ?>
  #fav-mainbottomwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($mainbottom_bg_image); ?>);
  }
<?php } ?>
<?php // Mainbottom Background Image Style
if ($mainbottom_bg_image_style) { ?>
  #fav-mainbottomwrap {
    background-repeat: <?php echo htmlspecialchars($mainbottom_bg_image_style); ?>;
  }
<?php } ?>
<?php // Mainbottom Background Color
if ($mainbottom_bg_color)  { ?>
  #fav-mainbottomwrap {
    background-color: #<?php echo htmlspecialchars($mainbottom_bg_color); ?>;
  }
<?php } ?>
<?php // Mainbottom Color
if ($mainbottom_color) { ?>
  #fav-mainbottomwrap p {
    color: #<?php echo htmlspecialchars($mainbottom_color); ?>;
  }
<?php } ?>
<?php // Mainbottom Title Color
if ($mainbottom_title_color) { ?>
  #fav-mainbottomwrap .moduletable h3,
  #fav-mainbottomwrap div[class^="moduletable-"] h3,
  #fav-mainbottomwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($mainbottom_title_color); ?>;
  }
<?php } ?>
<?php // Mainbottom Link Color
if ($mainbottom_link_color) { ?>
  #fav-mainbottomwrap a {
    color: #<?php echo htmlspecialchars($mainbottom_link_color); ?>;
  }
<?php } ?>
<?php // Mainbottom Link Hover Color
if ($mainbottom_link_hover_color) { ?>
  #fav-mainbottomwrap a:hover {
    color: #<?php echo htmlspecialchars($mainbottom_link_hover_color); ?>;
  }
<?php } ?>
<?php // Bottom Background Image
if ($bottom_bg_image) { ?>
  #fav-bottomwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($bottom_bg_image); ?>);
  }
<?php } ?>
<?php // Bottom Background Image Style
if ($bottom_bg_image_style) { ?>
  #fav-bottomwrap {
    background-repeat: <?php echo htmlspecialchars($bottom_bg_image_style); ?>;
  }
<?php } ?>
<?php // Bottom Background Color
if ($bottom_bg_color)  { ?>
  #fav-bottomwrap {
    background-color: #<?php echo htmlspecialchars($bottom_bg_color); ?>;
  }
<?php } ?>
<?php // Bottom Color
if ($bottom_color) { ?>
  #fav-bottomwrap p {
    color: #<?php echo htmlspecialchars($bottom_color); ?>;
  }
<?php } ?>
<?php // Bottom Title Color
if ($bottom_title_color) { ?>
  #fav-bottomwrap .moduletable h3,
  #fav-bottomwrap div[class^="moduletable-"] h3,
  #fav-bottomwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($bottom_title_color); ?>;
  }
<?php } ?>
<?php // Bottom Link Color
if ($bottom_link_color) { ?>
  #fav-bottomwrap a {
    color: #<?php echo htmlspecialchars($bottom_link_color); ?>;
  }
<?php } ?>
<?php // Bottom Link Hover Color
if ($bottom_link_hover_color) { ?>
  #fav-bottomwrap a:hover {
    color: #<?php echo htmlspecialchars($bottom_link_hover_color); ?>;
  }
<?php } ?>
<?php // Note Background Image
if ($note_bg_image) { ?>
  #fav-notewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($note_bg_image); ?>);
  }
<?php } ?>
<?php // Note Background Image Style
if ($note_bg_image_style) { ?>
  #fav-notewrap {
    background-repeat: <?php echo htmlspecialchars($note_bg_image_style); ?>;
  }
<?php } ?>
<?php // Note Background Color
if ($note_bg_color)  { ?>
  #fav-notewrap {
    background-color: #<?php echo htmlspecialchars($note_bg_color); ?>;
  }
<?php } ?>
<?php // Note Color
if ($note_color) { ?>
  #fav-notewrap p {
    color: #<?php echo htmlspecialchars($note_color); ?>;
  }
<?php } ?>
<?php // Note Title Color
if ($note_title_color) { ?>
  #fav-notewrap .moduletable h3,
  #fav-notewrap div[class^="moduletable-"] h3,
  #fav-notewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($note_title_color); ?>;
  }
<?php } ?>
<?php // Note Link Color
if ($note_link_color) { ?>
  #fav-notewrap a {
    color: #<?php echo htmlspecialchars($note_link_color); ?>;
  }
<?php } ?>
<?php // Note Link Hover Color
if ($note_link_hover_color) { ?>
  #fav-notewrap a:hover {
    color: #<?php echo htmlspecialchars($note_link_hover_color); ?>;
  }
<?php } ?>
<?php // Base Background Image
if ($base_bg_image) { ?>
  #fav-basewrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($base_bg_image); ?>);
  }
<?php } ?>
<?php // Base Background Image Style
if ($base_bg_image_style) { ?>
  #fav-basewrap {
    background-repeat: <?php echo htmlspecialchars($base_bg_image_style); ?>;
  }
<?php } ?>
<?php // Base Background Color
if ($base_bg_color)  { ?>
  #fav-basewrap {
    background-color: #<?php echo htmlspecialchars($base_bg_color); ?>;
  }
<?php } ?>
<?php // Base Color
if ($base_color) { ?>
  #fav-basewrap p {
    color: #<?php echo htmlspecialchars($base_color); ?>;
  }
<?php } ?>
<?php // Base Title Color
if ($base_title_color) { ?>
  #fav-basewrap .moduletable h3,
  #fav-basewrap div[class^="moduletable-"] h3,
  #fav-basewrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($base_title_color); ?>;
  }
<?php } ?>
<?php // Base Link Color
if ($base_link_color) { ?>
  #fav-basewrap a {
    color: #<?php echo htmlspecialchars($base_link_color); ?>;
  }
<?php } ?>
<?php // Base Link Hover Color
if ($base_link_hover_color) { ?>
  #fav-basewrap a:hover {
    color: #<?php echo htmlspecialchars($base_link_hover_color); ?>;
  }
<?php } ?>
<?php // Block Background Image
if ($block_bg_image) { ?>
  #fav-blockwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($block_bg_image); ?>);
  }
<?php } ?>
<?php // Block Background Image Style
if ($block_bg_image_style) { ?>
  #fav-blockwrap {
    background-repeat: <?php echo htmlspecialchars($block_bg_image_style); ?>;
  }
<?php } ?>
<?php // Block Background Color
if ($block_bg_color)  { ?>
  #fav-blockwrap {
    background-color: #<?php echo htmlspecialchars($block_bg_color); ?>;
  }
<?php } ?>
<?php // Block Color
if ($block_color) { ?>
  #fav-blockwrap p {
    color: #<?php echo htmlspecialchars($block_color); ?>;
  }
<?php } ?>
<?php // Block Title Color
if ($block_title_color) { ?>
  #fav-blockwrap .moduletable h3,
  #fav-blockwrap div[class^="moduletable-"] h3,
  #fav-blockwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($block_title_color); ?>;
  }
<?php } ?>
<?php // Block Link Color
if ($block_link_color) { ?>
  #fav-blockwrap a {
    color: #<?php echo htmlspecialchars($block_link_color); ?> ;
  }
<?php } ?>
<?php // Block Link Hover Color
if ($block_link_hover_color) { ?>
  #fav-blockwrap a:hover {
    color: #<?php echo htmlspecialchars($block_link_hover_color); ?>;
  }
<?php } ?>
<?php // User Background Image
if ($user_bg_image) { ?>
  #fav-userwrap {
    background-image: url(<?php echo $this->baseurl."/"; echo htmlspecialchars($user_bg_image); ?>);
  }
<?php } ?>
<?php // User Background Image Style
if ($user_bg_image_style) { ?>
  #fav-userwrap {
    background-repeat: <?php echo htmlspecialchars($user_bg_image_style); ?>;
  }
<?php } ?>
<?php // User Background Color
if ($user_bg_color)  { ?>
  #fav-userwrap {
    background-color: #<?php echo htmlspecialchars($user_bg_color); ?>;
  }
<?php } ?>
<?php // User Color
if ($user_color) { ?>
  #fav-userwrap p {
    color: #<?php echo htmlspecialchars($user_color); ?>;
  }
<?php } ?>
<?php // User Title Color
if ($user_title_color) { ?>
  #fav-userwrap .moduletable h3,
  #fav-userwrap div[class^="moduletable-"] h3,
  #fav-userwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($user_title_color); ?>;
  }
<?php } ?>
<?php // User Link Color
if ($user_link_color) { ?>
  #fav-userwrap a {
    color: #<?php echo htmlspecialchars($user_link_color); ?>;
  }
<?php } ?>
<?php // User Link Hover Color
if ($user_link_hover_color) { ?>
  #fav-userwrap a:hover {
    color: #<?php echo htmlspecialchars($user_link_hover_color); ?>;
  }
<?php } ?>
<?php // Footer Background Image
if ($footer_bg_image) { ?>
  #fav-footerwrap {
    background-image: url(<?php echo $this->footerurl."/"; echo htmlspecialchars($footer_bg_image); ?>);
  }
<?php } ?>
<?php // Footer Background Image Style
if ($footer_bg_image_style) { ?>
  #fav-footerwrap {
    background-repeat: <?php echo htmlspecialchars($footer_bg_image_style); ?>;
  }
<?php } ?>
<?php // Footer Background Color
if ($footer_bg_color)  { ?>
  #fav-footerwrap {
    background-color: #<?php echo htmlspecialchars($footer_bg_color); ?>;
  }
<?php } ?>
<?php // Footer Color
if ($footer_color) { ?>
  #fav-footerwrap p {
    color: #<?php echo htmlspecialchars($footer_color); ?>;
  }
<?php } ?>
<?php // Footer Title Color
if ($footer_title_color) { ?>
  #fav-footerwrap .moduletable h3,
  #fav-footerwrap div[class^="moduletable-"] h3,
  #fav-footerwrap div[class*=" moduletable-"] h3 {
    color: #<?php echo htmlspecialchars($footer_title_color); ?>;
  }
<?php } ?>
<?php // Footer Link Color
if ($footer_link_color) { ?>
  #fav-footerwrap a {
    color: #<?php echo htmlspecialchars($footer_link_color); ?>;
  }
<?php } ?>
<?php // Footer Link Hover Color
if ($footer_link_hover_color) { ?>
  #fav-footerwrap a:hover {
    color: #<?php echo htmlspecialchars($footer_link_hover_color); ?>;
  }
<?php } ?>
<?php // Logo Padding
if ($default_logo_padding) { ?>
  .default-logo {
    padding: <?php echo htmlspecialchars($default_logo_padding); ?>;
  }
<?php } ?>
<?php // Logo Margin
if ($default_logo_margin) { ?>
  .default-logo {
    margin: <?php echo htmlspecialchars($default_logo_margin); ?>;
  }
<?php } ?>
<?php // Uploaded Logo Padding
if ($media_logo_padding) { ?>
  .media-logo {
    padding: <?php echo htmlspecialchars($media_logo_padding); ?>;
  }
<?php } ?>
<?php // Uploaded Logo Margin
if ($media_logo_margin) { ?>
  .media-logo {
    margin: <?php echo htmlspecialchars($media_logo_margin); ?>;
  }
<?php } ?>
<?php // Text Logo Color
if ($text_logo_color) { ?>
  .text-logo,
  .text-logo:hover,
  .text-logo:focus {
    color: #<?php echo htmlspecialchars($text_logo_color); ?>;
  }
<?php } ?>
<?php // Text Logo Font Size
if ($text_logo_font_size) { ?>
  .text-logo {
    font-size: <?php echo htmlspecialchars($text_logo_font_size); ?>;
  }
<?php } ?>
<?php // Text Logo Google Font
if ($text_logo_google_font) { ?>
  .text-logo {
    font-family: '<?php echo str_replace('+', ' ', $this->params->get('text_logo_google_font'));?>', sans-serif;
    font-weight: 400;
  }
<?php } ?>
<?php // Text Logo Line Height
if ($text_logo_line_height) { ?>
  .text-logo {
    line-height: <?php echo htmlspecialchars($text_logo_line_height); ?> ;
  }
<?php } ?>
<?php // Text Logo Padding
if ($text_logo_padding) { ?>
  .text-logo {
    padding: <?php echo htmlspecialchars($text_logo_padding); ?>;
  }
<?php } ?>
<?php // Text Logo Margin
if ($text_logo_margin) { ?>
  .text-logo {
    margin: <?php echo htmlspecialchars($text_logo_margin); ?>;
  }
<?php } ?>
<?php // Slogan Logo Color
if ($slogan_color) { ?>
  .slogan {
    color: #<?php echo htmlspecialchars($slogan_color); ?>;
  }
<?php } ?>
<?php // Slogan Logo Font Size
if ($slogan_font_size) { ?>
  .slogan {
    font-size: <?php echo htmlspecialchars($slogan_font_size); ?>;
  }
<?php } ?>
<?php // Slogan Logo Line Height
if ($slogan_line_height) { ?>
  .slogan {
    line-height: <?php echo htmlspecialchars($slogan_line_height); ?>;
  }
<?php } ?>
<?php // Slogan Logo Padding
if ($slogan_padding) { ?>
  .slogan {
    padding: <?php echo htmlspecialchars($slogan_padding); ?>;
  }
<?php } ?>
<?php // Slogan Logo Margin
if ($slogan_margin) { ?>
  .slogan {
    margin: <?php echo htmlspecialchars($slogan_margin); ?>;
  }
<?php } ?>
<?php if (($show_retina_logo) !=0) { // Mobile Retina Logo ?>
  @media (-webkit-min-device-pixel-ratio: 2), (min-resolution: 192dpi) {
      .show_retina_logo { display: block; }
      .default_logo, .media_logo, .text_logo { display: none;}
  }
<?php } ?>
<?php // Retina Logo Height
if ($retina_logo_height) { ?>
  .retina-logo {
    height: <?php echo htmlspecialchars($retina_logo_height); ?>;
  }
<?php } ?>
<?php // Retina Logo Width
if ($retina_logo_width) { ?>
  .retina-logo {
    width: <?php echo htmlspecialchars($retina_logo_width); ?>;
  }
<?php } ?>
<?php // Retina Logo Padding
if ($retina_logo_padding) { ?>
  .retina-logo {
    padding: <?php echo htmlspecialchars($retina_logo_padding); ?>;
  }
<?php } ?>
<?php // Retina Logo Margin
if ($retina_logo_margin) { ?>
  .retina-logo {
    margin: <?php echo htmlspecialchars($retina_logo_margin); ?>;
  }
<?php } ?>
<?php // Mobile Show Submenu
if ($show_mobile_submenu) { ?>
  @media (max-width: 768px) {
    #fav-navbar ul.nav-child {
      display: <?php echo htmlspecialchars($show_mobile_submenu); ?>;
    }
  }
<?php } ?>
<?php // Mobile Show Images
if ($show_mobile_images) { ?>
  @media (max-width: 480px) {
    #fav-main img,
    .moduletable .custom img,
    div[class^="moduletable-"] div[class^="custom-"] img,
    div[class*=" moduletable-"] div[class*=" custom-"] img,
    .img-left,
    .img-right {
      display: <?php echo htmlspecialchars($show_mobile_images); ?>;
    }
  }
<?php } ?>
<?php // Paragraph Mobile Font Size
if ($mobile_paragraph_font_size) { ?>
  @media (max-width: 480px) {
    p {
      font-size: <?php echo htmlspecialchars($mobile_paragraph_font_size); ?>;
    }
  }
<?php } ?>
<?php // Paragraph Mobile Font Size
if ($mobile_paragraph_line_height) { ?>
  @media (max-width: 480px) {
    p {
      line-height: <?php echo htmlspecialchars($mobile_paragraph_line_height); ?>;
    }
  }
<?php } ?>
<?php // Module Mobile Title Font Size
if ($mobile_title_font_size) { ?>
  @media (max-width: 480px) {
    .moduletable h3,
    div[class^="moduletable-"] h3,
    div[class*=" moduletable-"] h3,
    .page-header h2,
    h2.item-title,
    .componentheading,
    #member-profile legend,
    div.tag-category ul h3,
    div.contact-category h2,
    div.newsfeed h2,
    div.newsfeed-category h2,
    .hikashop_product_top_part h1,
    .hikashop_category_information h2,
    #hikashop_checkout_page h1,
    #hikashop_checkout_login_left_part h2,
    #hikashop_checkout_login_right_part h2,
    #hikashop_checkout_login_right_part h3,
    #hikashop_checkout_page fieldset legend,
    #hikashop_cpanel_title h1,
    #hikashop_carts_listing .header h1,
    #hikashop_affiliate_main .header h1,
    #hikashop_address_listing .header h1,
    #hikashop_order_listing .header h1,
    #hikashop_download_listing fieldset h1,
    #hikashop_order_main fieldset h1 {
      font-size: <?php echo htmlspecialchars($mobile_title_font_size); ?>;
    }
  }
<?php } ?>

</style>
