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

defined('_JEXEC') or die;

$app = JFactory::getApplication();
$doc = JFactory::getDocument();
$this->language = $doc->language;
// Add current user information
$user = JFactory::getUser();
// Add Bootstrap Framework
JHtml::_('bootstrap.framework');
$doc->addStyleSheet($this->baseurl . '/media/jui/css/bootstrap.min.css');
$doc->addStyleSheet($this->baseurl . '/media/jui/css/bootstrap-responsive.css');
// Add page class suffix
$itemid = JRequest::getVar('Itemid');
$menu = $app->getMenu();
$active = $menu->getItem($itemid);
if (isset($active)) {
  $params = $menu->getParams( $active->id );
  $pageclass = $params->get( 'pageclass_sfx' );

}
// Column layout
$favcolumns = 6;

?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<head>

	<jdoc:include type="head" />

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- STYLESHEETS -->

  <!-- icons -->
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/icons/css/font-awesome.css" type="text/css" />
  <!-- admin -->
  <link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/admin/admin.css" type="text/css" />
  <!-- template -->
  <link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/css/template.css" type="text/css" />
  <!-- style -->
  <link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/css/style.css" type="text/css" />
  <!-- styles -->
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template;?>/css/styles/<?php echo $this->params->get('template_styles'); ?>.css" type="text/css" />
  <!-- custom -->
  <link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/css/custom.css" type="text/css" />

  <!-- PARAMETERS -->
	<?php require("admin/params.php"); ?>

  <!-- GOOGLE FONT -->

  <!-- text logo -->
  <link href='//fonts.googleapis.com/css?family=<?php echo ($this->params->get('text_logo_google_font')); ?>:<?php echo ($this->params->get('text_logo_google_font_weight')); ?><?php echo ($this->params->get('text_logo_google_font_style')); ?>' rel='stylesheet' type='text/css' />

  <!-- default -->
  <link href='//fonts.googleapis.com/css?family=Roboto:400,500,300' rel='stylesheet' type='text/css'>

  <!-- GOOGLE ANALYTICS TRACKING CODE -->
  <?php if($analytics_code) { echo '<script type="text/javascript">'.$analytics_code.'</script>';}?>

  <!-- BACKTOP -->
	<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/backtop/backtop.js"></script>

</head>

<body<?php echo (isset($pageclass) ? ' class="favbody'.htmlspecialchars($pageclass).'"' : ''); ?>>

  <div id="fav-containerwrap" class="clearfix">
    <div class="<?php echo $body_bg_image_overlay; ?>">

  	  <!-- NAVBAR -->
  	  <div id="fav-navbarwrap" class="container-fluid">
  			<div class="row-fluid">
  				<div id="fav-navbar" class="clearfix">
  					<div class="<?php echo htmlspecialchars($mobile_nav_color);?>">
  						<div class="navbar-inner">

                <div id="fav-logomobile" class="clearfix">
                  <?php if (($show_default_logo) !=0) : ?>
                    <h1>
                      <a class="default-logo" href="<?php echo $this->baseurl; ?>/">
                        <img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/logo/<?php echo htmlspecialchars($default_logo);?>" style="border:0;" alt="<?php echo htmlspecialchars($default_logo_img_alt);?>" />
                      </a>
                    </h1>
                  <?php endif;?>
                  <?php if (($show_media_logo) !=0) : ?>
                    <h1>
                      <a class="media-logo" href="<?php echo $this->baseurl; ?>/">
                        <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($media_logo);?>" style="border:0;" alt="<?php echo htmlspecialchars($media_logo_img_alt);?>" />
                      </a>
                    </h1>
                  <?php endif;?>
                  <?php if (($show_text_logo) !=0) : ?>
                    <h1>
                      <a class="text-logo" href="<?php echo $this->baseurl; ?>/"><?php echo htmlspecialchars($text_logo);?></a>
                    </h1>
                  <?php endif;?>
                  <?php if (($show_retina_logo) !=0) : ?>
                    <h1 class="show-retina-logo">
                      <a class="retina-logo" href="<?php echo $this->baseurl; ?>/">
                        <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($retina_logo);?>" style="border:0; margin:<?php echo htmlspecialchars($retina_logo_margin);?>; padding:<?php echo htmlspecialchars($retina_logo_padding);?>;" width="<?php echo htmlspecialchars($retina_logo_width);?>" alt="<?php echo htmlspecialchars($retina_logo_img_alt);?>" />
                      </a>
                    </h1>
                  <?php endif;?>
                  <?php if (($show_slogan) !=0) : ?>
                    <div class="slogan"><?php echo htmlspecialchars($slogan);?></div>
                  <?php endif;?>
                </div>

                <div id="fav-navbar-btn" class="clearfix">
    							<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">

                    <?php if (($show_mobile_menu_text) !=0) : ?>

                      <span id="fav-mobilemenutext">
                        <?php echo htmlspecialchars($mobile_menu_text);?>
                      </span>

                    <?php endif;?>

    								<span class="icon-bar"></span>
    								<span class="icon-bar"></span>
    								<span class="icon-bar"></span>
    							</a>
                </div>

  							<div class="nav-collapse collapse">
  								<?php if ($this->countModules('nav')) { ?>
  									<div id="fav-navbar-collapse" class="span12">
  										<jdoc:include type="modules" name="nav" style="fav" />
  									</div>
  								<?php } ?>
  							</div>

  						</div>
  					</div>
  				</div>
  			</div>
  	  </div>

  		<div id="fav-container">

        <div class="<?php echo $template_color; ?>">

          <!-- NOTICE -->
          <?php if ($this->countModules('notice')) { ?>

            <div class="container-fluid alert" id="fav-noticewrap">

              <?php if (($show_notice_button) !=0) : ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
              <?php endif; ?>

              <div class="row-fluid">
                <div id="fav-notice" class="span11">

                  <jdoc:include type="modules" name="notice" style="fav" />

                </div>
              </div>
            </div>

          <?php } ?>

          <!-- TOPBAR -->
          <?php
              $topbaractive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('topbar'.$i)) { $topbaractive++; } }
          ?>

          <?php if ($topbaractive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$topbaractive)); ?>

            <div class="container-fluid" id="fav-topbarwrap">
              <div class="<?php echo $topbar_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-topbar" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('topbar'.$j)): ?>

                          <div id="fav-topbar<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="topbar<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- HEADER -->
          <div class="container-fluid" id="fav-headerwrap">
            <div class="row-fluid">

                <div id="fav-header" class="span12 clearfix">

                  <div id="fav-logo" class="span3">
                    <?php if (($show_default_logo) !=0) : ?>
                      <h1>
                        <a class="default-logo" href="<?php echo $this->baseurl; ?>/">
                          <img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/logo/<?php echo htmlspecialchars($default_logo);?>" style="border:0;" alt="<?php echo htmlspecialchars($default_logo_img_alt);?>" />
                        </a>
                      </h1>
                    <?php endif;?>
                    <?php if (($show_media_logo) !=0) : ?>
                      <h1>
                        <a class="media-logo" href="<?php echo $this->baseurl; ?>/">
                          <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($media_logo);?>" style="border:0;" alt="<?php echo htmlspecialchars($media_logo_img_alt);?>" />
                        </a>
                      </h1>
                    <?php endif;?>
                    <?php if (($show_text_logo) !=0) : ?>
                      <h1>
                        <a class="text-logo" href="<?php echo $this->baseurl; ?>/"><?php echo htmlspecialchars($text_logo);?></a>
                      </h1>
                    <?php endif;?>
                    <?php if (($show_retina_logo) !=0) : ?>
                      <h1 class="show-retina-logo">
                        <a class="retina-logo" href="<?php echo $this->baseurl; ?>/">
                          <img src="<?php echo $this->baseurl ?>/<?php echo htmlspecialchars($retina_logo);?>" style="border:0; margin:<?php echo htmlspecialchars($retina_logo_margin);?>; padding:<?php echo htmlspecialchars($retina_logo_padding);?>;" width="<?php echo htmlspecialchars($retina_logo_width);?>" alt="<?php echo htmlspecialchars($retina_logo_img_alt);?>" />
                        </a>
                      </h1>
                    <?php endif;?>
                    <?php if (($show_slogan) !=0) : ?>
                      <div class="slogan"><?php echo htmlspecialchars($slogan);?></div>
                    <?php endif;?>
                  </div>

                    <?php if ($this->countModules('nav')) { ?>
                        <div id="fav-nav" class="span9">
                          <div class="favnav">
                            <div class="navigation">
                              <jdoc:include type="modules" name="nav" style="fav" />
                            </div>
                          </div>
                        </div>
                    <?php } ?>

                </div>

            </div>
          </div>

          <!-- SLIDE -->
          <?php if ($this->countModules('slide')) { ?>
            <div class="container-fluid" id="fav-slidewrap">
              <div class="<?php echo $slide_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-slide" class="span12">
                    <jdoc:include type="modules" name="slide" style="fav" />
                  </div>
                </div>
              </div>
            </div>
          <?php } ?>

    			<!-- INTRO -->
    			<?php
    			    $introactive = 0;
    				for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('intro'.$i)) { $introactive++; } }
    			?>

    			<?php if ($introactive > 0) : ?>
    			  <?php $favclass = 'span'.(str_replace(".","-",12/$introactive)); ?>

    				<div class="container-fluid" id="fav-introwrap">
              <div class="<?php echo $intro_bg_image_overlay; ?>">
      			    <div class="row-fluid">
      						<div id="fav-intro" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                    	<?php if ($this->countModules('intro'.$j)): ?>

                        	<div id="fav-intro<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                    	    	<jdoc:include type="modules" name="intro<?php echo $j; ?>" style="fav" />

                        	</div>

                    	<?php endif; ?>
                    <?php } ?>

      			      </div>
      			    </div>
              </div>
    			  </div>

    			<?php endif; ?>

          <!-- BREADCRUMBS -->
          <?php if ($this->countModules('breadcrumbs')) { ?>
            <div class="container-fluid">
              <div class="row-fluid">
                <div id="fav-breadcrumbs" class="span12">
                  <jdoc:include type="modules" name="breadcrumbs" style="fav" />
                </div>
              </div>
            </div>
          <?php } ?>

          <!-- LEAD -->
          <?php
              $leadactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('lead'.$i)) { $leadactive++; } }
          ?>

          <?php if ($leadactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$leadactive)); ?>

            <div class="container-fluid" id="fav-leadwrap">
              <div class="<?php echo $lead_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-lead" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('lead'.$j)): ?>

                          <div id="fav-lead<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="lead<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- PROMO -->
          <?php
              $promoactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('promo'.$i)) { $promoactive++; } }
          ?>

          <?php if ($promoactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$promoactive)); ?>

            <div class="container-fluid" id="fav-promowrap">
              <div class="<?php echo $promo_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-promo" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('promo'.$j)): ?>

                          <div id="fav-promo<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="promo<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- PRIME -->
          <?php
              $primeactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('prime'.$i)) { $primeactive++; } }
          ?>

          <?php if ($primeactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$primeactive)); ?>

            <div class="container-fluid" id="fav-primewrap">
              <div class="<?php echo $prime_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-prime" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('prime'.$j)): ?>

                          <div id="fav-prime<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="prime<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- SHOWCASE -->
          <?php
              $showcaseactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('showcase'.$i)) { $showcaseactive++; } }
          ?>

          <?php if ($showcaseactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$showcaseactive)); ?>

            <div class="container-fluid" id="fav-showcasewrap">
              <div class="<?php echo $showcase_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-showcase" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('showcase'.$j)): ?>

                          <div id="fav-showcase<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="showcase<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- FEATURE -->
          <?php
              $featureactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('feature'.$i)) { $featureactive++; } }
          ?>

          <?php if ($featureactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$featureactive)); ?>

            <div class="container-fluid" id="fav-featurewrap">
              <div class="<?php echo $feature_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-feature" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('feature'.$j)): ?>

                          <div id="fav-feature<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="feature<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- FOCUS -->
          <?php
              $focusactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('focus'.$i)) { $focusactive++; } }
          ?>

          <?php if ($focusactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$focusactive)); ?>

            <div class="container-fluid" id="fav-focuswrap">
              <div class="<?php echo $focus_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-focus" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('focus'.$j)): ?>

                          <div id="fav-focus<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="focus<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- PORTFOLIO -->
          <?php
              $portfolioactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('portfolio'.$i)) { $portfolioactive++; } }
          ?>

          <?php if ($portfolioactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$portfolioactive)); ?>

            <div class="container-fluid" id="fav-portfoliowrap">
              <div class="<?php echo $portfolio_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-portfolio" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('portfolio'.$j)): ?>

                          <div id="fav-portfolio<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="portfolio<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- SCREEN -->
          <?php
              $screenactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('screen'.$i)) { $screenactive++; } }
          ?>

          <?php if ($screenactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$screenactive)); ?>

            <div class="container-fluid" id="fav-screenwrap">
              <div class="<?php echo $screen_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-screen" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('screen'.$j)): ?>

                          <div id="fav-screen<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="screen<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- TOP -->
          <?php
              $topactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('top'.$i)) { $topactive++; } }
          ?>

          <?php if ($topactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$topactive)); ?>

            <div class="container-fluid" id="fav-topwrap">
              <div class="<?php echo $top_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-top" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('top'.$j)): ?>

                          <div id="fav-top<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="top<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- MAINTOP -->
    			<?php if($this->countModules('maintop1') || $this->countModules('maintop2') || $this->countModules('maintop3')) : ?>

            <div class="container-fluid" id="fav-maintopwrap">
              <div class="<?php echo $maintop_bg_image_overlay; ?>">
                <div class="row-fluid">

                    <?php $maintop=0;
                        if ($this->countModules('maintop1') && $this->countModules('maintop2')) $maintop=1;
                        if ($this->countModules('maintop2') && $this->countModules('maintop3')) $maintop=2;
                        if ($this->countModules('maintop1') && $this->countModules('maintop3')) $maintop=3;
                        if ($this->countModules('maintop1') && $this->countModules('maintop2') && $this->countModules('maintop3')) $maintop=4;
                    ?>

                    <?php if($this->countModules('maintop1') || $this->countModules('maintop2') || $this->countModules('maintop3')) : ?>

                      <div id="fav-maintop" class="clearfix">
                        <?php if ($this->countModules('maintop1')): ?>
                            <div id="fav-maintop1"
                              class="<?php if ( $maintop == 1 ):echo ('span3');
                              elseif ( $maintop == 3 ):echo ('span3');
                              elseif ( $maintop == 4 ):echo ('span3');
                              else: echo ('span12');
                              endif; ?>">

                              <jdoc:include type="modules" name="maintop1" style="fav" />

                            </div>
                        <?php endif; ?>
                              <?php if ($this->countModules('maintop2')): ?>
                          <div id="fav-maintop2"
                            class="<?php if ( $maintop == 1 ):echo ('span9');
                            elseif ( $maintop == 2 ):echo ('span9');
                            elseif ( $maintop == 4 ):echo ('span6');
                            else: echo ('span12'); endif; ?>">

                            <jdoc:include type="modules" name="maintop2" style="fav" />

                          </div>
                        <?php endif; ?>
                              <?php if ($this->countModules('maintop3')): ?>
                          <div id="fav-maintop3"
                            class="<?php if ( $maintop == 2 ):echo ('span3');
                            elseif ( $maintop == 3 ):echo ('span9');
                            elseif ( $maintop == 4 ):echo ('span3');
                            else: echo ('span12'); endif; ?>">

                            <jdoc:include type="modules" name="maintop3" style="fav" />

                          </div>
                         <?php endif; ?>
                      </div>
                    <?php endif; ?>

                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- MAIN -->
    			<div class="container-fluid" id="fav-mainwrap">
    				<div class="row-fluid">

    						<div id="fav-main" class="clearfix">

    							<?php if ($this->countModules('sidebar1') && $this->countModules('sidebar2')): ?>
    								<div id="fav-sidebar1" class="span3">
    										<jdoc:include type="modules" name="sidebar1" style="fav" />
    									</div>
    								<div id="fav-maincontent" class="span6">
    									<jdoc:include type="message" />
    									<jdoc:include type="component" />
    								</div>
    								<div id="fav-sidebar2" class="span3">
    										<jdoc:include type="modules" name="sidebar2" style="fav" />
    									</div>
    							<?php elseif ( $this->countModules('sidebar1')) : ?>
    								<div id="fav-sidebar1" class="span3">
    										<jdoc:include type="modules" name="sidebar1" style="fav" />
    									</div>
    								<div id="fav-maincontent" class="span9">
    									<jdoc:include type="message" />
    									<jdoc:include type="component" />
    								</div>
    							<?php elseif ( $this->countModules('sidebar2')): ?>
    								<div id="fav-maincontent" class="span9">
    									<jdoc:include type="message" />
    									<jdoc:include type="component" />
    								</div>
    								<div id="fav-sidebar2" class="span3">
    										<jdoc:include type="modules" name="sidebar2" style="fav" />
    									</div>
    							<?php else : ?>
    								<div id="fav-maincontent" class="span12">
    									<jdoc:include type="message" />
    									<jdoc:include type="component" />
    								</div>
    							<?php endif; ?>

    						</div>

    				</div>
    			</div>

    			<!-- MAINBOTTOM -->
    			<?php if($this->countModules('mainbottom1') || $this->countModules('mainbottom2') || $this->countModules('mainbottom3')) : ?>

            <div class="container-fluid" id="fav-mainbottomwrap">
              <div class="<?php echo $mainbottom_bg_image_overlay; ?>">
                <div class="row-fluid">

                    <?php $mainbottom=0;
                        if ($this->countModules('mainbottom1') && $this->countModules('mainbottom2')) $mainbottom=1;
                        if ($this->countModules('mainbottom2') && $this->countModules('mainbottom3')) $mainbottom=2;
                        if ($this->countModules('mainbottom1') && $this->countModules('mainbottom3')) $mainbottom=3;
                        if ($this->countModules('mainbottom1') && $this->countModules('mainbottom2') && $this->countModules('mainbottom3')) $mainbottom=4;
                    ?>

                    <?php if($this->countModules('mainbottom1') || $this->countModules('mainbottom2') || $this->countModules('mainbottom3')) : ?>

                      <div id="fav-mainbottom" class="clearfix">
                        <?php if ($this->countModules('mainbottom1')): ?>
                            <div id="fav-mainbottom1"
                              class=" <?php if ( $mainbottom == 1 ):echo ('span3');
                              elseif ( $mainbottom == 3 ):echo ('span3');
                              elseif ( $mainbottom == 4 ):echo ('span3');
                              else: echo ('span12'); endif; ?>">

                              <jdoc:include type="modules" name="mainbottom1" style="fav" />

                            </div>
                        <?php endif; ?>
                              <?php if ($this->countModules('mainbottom2')): ?>
                          <div id="fav-mainbottom2"
                            class="<?php if ( $mainbottom == 1 ):echo ('span9');
                            elseif ( $mainbottom == 2 ):echo ('span9');
                            elseif ( $mainbottom == 4 ):echo ('span6');
                            else: echo ('span12'); endif; ?>">

                            <jdoc:include type="modules" name="mainbottom2" style="fav" />

                          </div>
                        <?php endif; ?>
                              <?php if ($this->countModules('mainbottom3')): ?>
                          <div id="fav-mainbottom3"
                            class="<?php if ( $mainbottom == 2 ):echo ('span3');
                            elseif ( $mainbottom == 3 ):echo ('span9');
                            elseif ( $mainbottom == 4 ):echo ('span3');
                            else: echo ('span12');
                            endif; ?>">

                            <jdoc:include type="modules" name="mainbottom3" style="fav" />

                          </div>
                         <?php endif; ?>
                      </div>
                    <?php endif; ?>

                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- BOTTOM -->
          <?php
              $bottomactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('bottom'.$i)) { $bottomactive++; } }
          ?>

          <?php if ($bottomactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$bottomactive)); ?>

            <div class="container-fluid" id="fav-bottomwrap">
              <div class="<?php echo $bottom_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-bottom" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('bottom'.$j)): ?>

                          <div id="fav-bottom<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="bottom<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- NOTE -->
          <?php
              $noteactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('note'.$i)) { $noteactive++; } }
          ?>

          <?php if ($noteactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$noteactive)); ?>

            <div class="container-fluid" id="fav-notewrap">
              <div class="<?php echo $note_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-note" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('note'.$j)): ?>

                          <div id="fav-note<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="note<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- BASE -->
          <?php
              $baseactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('base'.$i)) { $baseactive++; } }
          ?>

          <?php if ($baseactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$baseactive)); ?>

            <div class="container-fluid" id="fav-basewrap">
              <div class="<?php echo $base_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-base" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('base'.$j)): ?>

                          <div id="fav-base<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="base<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- BLOCK -->
          <?php
              $blockactive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('block'.$i)) { $blockactive++; } }
          ?>

          <?php if ($blockactive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$blockactive)); ?>

            <div class="container-fluid" id="fav-blockwrap">
              <div class="<?php echo $block_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-block" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('block'.$j)): ?>

                          <div id="fav-block<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="block<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

          <!-- USER -->
          <?php
              $useractive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('user'.$i)) { $useractive++; } }
          ?>

          <?php if ($useractive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$useractive)); ?>

            <div class="container-fluid" id="fav-userwrap">
              <div class="<?php echo $user_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-user" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('user'.$j)): ?>

                          <div id="fav-user<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="user<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- FOOTER -->
          <?php
              $footeractive = 0;
            for ($i=1; $i<=$favcolumns ; $i++) { if ($this->countModules('footer'.$i)) { $footeractive++; } }
          ?>

          <?php if ($footeractive > 0) : ?>
            <?php $favclass = 'span'.(str_replace(".","-",12/$footeractive)); ?>

            <div class="container-fluid" id="fav-footerwrap">
              <div class="<?php echo $footer_bg_image_overlay; ?>">
                <div class="row-fluid">
                  <div id="fav-footer" class="clearfix">

                    <?php for ($j=1;$j<=$favcolumns;$j++) { ?>
                      <?php if ($this->countModules('footer'.$j)): ?>

                          <div id="fav-footer<?php echo $j; ?>" class="<?php echo $favclass; ?>">

                            <jdoc:include type="modules" name="footer<?php echo $j; ?>" style="fav" />

                          </div>

                      <?php endif; ?>
                    <?php } ?>

                  </div>
                </div>
              </div>
            </div>

          <?php endif; ?>

    			<!-- COPYRIGHT -->
    			<?php if($this->countModules('copyright1') || $this->countModules('copyright2') || $show_copyright) : ?>

            <div class="container-fluid" id="fav-copyrightwrap">
              <div class="row-fluid">

                  <?php $copyright=0;
                    if ($this->countModules('copyright1') && $this->countModules('copyright2')) $copyright=1;
                    if ($this->countModules('copyright2') && $show_copyright) $copyright=2;
                    if ($this->countModules('copyright1') && $show_copyright) $copyright=3;
                    if ($this->countModules('copyright1') && $this->countModules('copyright2') && $show_copyright) $copyright=4;
                  ?>

                  <?php if($this->countModules('copyright1') || $this->countModules('copyright2') || $show_copyright) : ?>

                    <div id="fav-copyright" class="clearfix">

                      <?php if (($show_copyright) !=0) : ?>
                        <div id="fav-showcopyright"
                          class="<?php
                          if ( $copyright == 2 ):echo ('span3');
                          elseif ( $copyright == 3 ):echo ('span3');
                          elseif ( $copyright == 4 ):echo ('span3');
                          else: echo ('span12'); endif; ?>">
                            <p>&#0169; <?php echo date('Y'); ?>

                              <a href="http://<?php echo htmlspecialchars($copyright_text_link);?>" target="_blank">
                                <?php echo htmlspecialchars($copyright_text);?>
                              </a>

                            </p>

                        </div>
                      <?php endif; ?>

                      <?php if ($this->countModules('copyright1')): ?>
                          <div id="fav-copyright1"
                            class="<?php
                            if ( $copyright == 1 ):echo ('span3');
                            elseif ( $copyright == 3 ):echo ('span9');
                            elseif ( $copyright == 4 ):echo ('span6');
                            else: echo ('span12'); endif; ?>">

                            <jdoc:include type="modules" name="copyright1" style="fav" />

                          </div>
                      <?php endif; ?>

                            <?php if ($this->countModules('copyright2')): ?>
                        <div id="fav-copyright2"
                          class="<?php
                          if ( $copyright == 1 ):echo ('span9');
                          elseif ( $copyright == 2 ):echo ('span9');
                          elseif ( $copyright == 4 ):echo ('span3');
                          else: echo ('span12'); endif; ?>">

                          <jdoc:include type="modules" name="copyright2" style="fav" />

                        </div>
                      <?php endif; ?>

                    </div>
                  <?php endif; ?>

              </div>
            </div>

          <?php endif; ?>

    			<!-- DEBUG -->
    			<?php if ($this->countModules('debug')) { ?>
    				<div class="container-fluid" id="fav-debugwrap">
    					<div class="row-fluid">
    						<div id="fav-debug" class="span12 ">
    							<jdoc:include type="modules" name="debug" style="fav" />
    						</div>
    					</div>
    				</div>
    			<?php } ?>

    			<!-- BACKTOP -->
    			<div class="container-fluid">
    				<div class="row-fluid">
    					<?php if (($show_back_to_top) !=0) : ?>
    						<div id="fav-backtop" class="span12">
    							<a href="" class="backtop" title="BACK TO TOP">
                    <i class="fa fa-angle-up"></i>
    							</a>
    						</div>
    					<?php endif; ?>
    				</div>
    			</div>

        </div><!-- /dark/light versions -->

  		</div><!-- /fav-container -->

    </div><!-- /fav-overlay -->
  </div><!-- /fav-containerwrap -->

<!--[if lte IE 7]><script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/ie6/warning.js"></script><script>window.onload=function(){e("<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/ie6/")}</script><![endif]-->
</body>
</html>
