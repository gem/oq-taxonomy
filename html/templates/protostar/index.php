<?php
/**
 * @package     Joomla.Site
 * @subpackage  Templates.protostar
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
 
// this command remove meta tag generator '<meta generator="joomla">' from list of meta in header
$this->setGenerator(null);


defined('_JEXEC') or die;

$app             = JFactory::getApplication();
$doc             = JFactory::getDocument();
$user            = JFactory::getUser();
$this->language  = $doc->language;
$this->direction = $doc->direction;

// Output as HTML5
$doc->setHtml5(true);

// Getting params from template
$params = $app->getTemplate(true)->params;

// Detecting Active Variables
$option   = $app->input->getCmd('option', '');
$view     = $app->input->getCmd('view', '');
$layout   = $app->input->getCmd('layout', '');
$task     = $app->input->getCmd('task', '');
$itemid   = $app->input->getCmd('Itemid', '');
$sitename = $app->get('sitename');

if($task == "edit" || $layout == "form" )
{
	$fullWidth = 1;
}
else
{
	$fullWidth = 0;
}

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');

$doc->addScriptVersion($this->baseurl . '/templates/' . $this->template . '/js/template.js');

// Add Stylesheets
$doc->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/css/template.css');

// Use of Google Font
if ($this->params->get('googleFont'))
{
	$doc->addStyleSheet('//fonts.googleapis.com/css?family=' . $this->params->get('googleFontName'));
	$doc->addStyleDeclaration("
	h1, h2, h3, h4, h5, h6, .site-title {
	 font-family: 'Lato',sans-serif;
    }");
}

// Template color
if ($this->params->get('templateColor'))
{
	$doc->addStyleDeclaration("
	a {
		color: #358e59;
	}
	.nav-list > .active > a,
	.nav-list > .active > a:hover,
	.dropdown-menu li > a:hover,
	.dropdown-menu .active > a,
	.dropdown-menu .active > a:hover,
	.nav-pills > .active > a,
	.nav-pills > .active > a:hover,
	.btn-primary {
		background: #358e59;
	}");
}

// Check for a custom CSS file
$userCss = JPATH_SITE . '/templates/' . $this->template . '/css/user.css';

if (file_exists($userCss) && filesize($userCss) > 0)
{
	$this->addStyleSheetVersion($this->baseurl . '/templates/' . $this->template . '/css/user.css');
}

// Load optional RTL Bootstrap CSS
JHtml::_('bootstrap.loadCss', false, $this->direction);

// Adjusting content width
if ($this->countModules('position-7') && $this->countModules('position-8'))
{
	$span = "span6";
}
elseif ($this->countModules('position-7') && !$this->countModules('position-8'))
{
	$span = "span9";
}
elseif (!$this->countModules('position-7') && $this->countModules('position-8'))
{
	$span = "span9";
}
else
{
	$span = "span12";
}

// Logo file or site title param
if ($this->params->get('logoFile'))
{
	$logo = '<img src="' . JUri::root() . $this->params->get('logoFile') . '" alt="' . $sitename . '" />';
}
elseif ($this->params->get('sitetitle'))
{
	$logo = '<span class="site-title" title="' . $sitename . '">' . htmlspecialchars($this->params->get('sitetitle'), ENT_COMPAT, 'UTF-8') . '</span>';
}
else
{
	$logo = '<span class="site-title" title="' . $sitename . '">' . $sitename . '</span>';
}
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<jdoc:include type="head" />
	<!--[if lt IE 9]><script src="<?php echo JUri::root(true); ?>/media/jui/js/html5.js"></script><![endif]-->
    <script>
          jQuery(document).ready(function(){
              var aa=jQuery('.term-let');
              jQuery(window).scroll(function(){
                if(jQuery(this).scrollTop()>=160){
                   aa.addClass("fissa");
                }
                else{
                   aa.removeClass("fissa");
                }
              });
           });
           function visualizzami(id){
              if (document.getElementById){
                 if(document.getElementById("mod-search").style.display == 'none'){
                      document.getElementById("mod-search").style.display = 'block';
                 }else{
                      document.getElementById("mod-search").style.display = 'none'; 
                 }
              }
           }

     </script>

</head>
<body class="site <?php echo $option
	. ' view-' . $view
	. ($layout ? ' layout-' . $layout : ' no-layout')
	. ($task ? ' task-' . $task : ' no-task')
	. ($itemid ? ' itemid-' . $itemid : '')
	. ($params->get('fluidContainer') ? ' fluid' : '');
	echo ($this->direction == 'rtl' ? ' rtl' : '');
?>">
	<!-- Body -->
	<div class="body">
		<div class="container<?php echo ($params->get('fluidContainer') ? '-fluid' : ''); ?>">
		
                <div class="top-home">
                    <a class="aref-logo" href="<?php echo $this->baseurl; ?>/">
			    <img src="<?php echo $this->baseurl; ?>/img/headers/gem-logo.png" alt="Glossary">
		    </a>
                    <a id="calculate" href="https://platform.openquake.org/calculate/">Calculate</a>
                    <a id="share" href="https://platform.openquake.org/share/">Share</a>
                    <a id="explore" href="https://platform.openquake.org/explore/">Explore</a>
                    <a id="search_mod" href="javascript:void(0);" onclick="visualizzami('mod-search'); return false">
                         <img src="../../../img/headers/Nexus-lens.png"></a>
            <div class="header-search pull-right">
                    <//jdoc:include type="modules" name="position-0" style="none" />
                    <div id="mod-search" class="search mod_search93" style="display:none;">
                      <form action="/index.php" method="post" class="form-inline">
                        <label for="mod-search-searchword" class="element-invisible">Search ...</label>
                        <input name="searchword" id="mod-search-searchword" maxlength="200" class="inputbox search-query" size="20" placeholder="Search ..." type="search">
                        <input name="task" value="search" type="hidden">
                        <input name="option" value="com_search" type="hidden">
                        <input name="Itemid" value="101" type="hidden">
                      </form>
                    </div>
            </div>

            <div class="right-bar">
                <a href="https://www.globalquakemodel.org/" target="_blank">
                    <img alt="oq-gem" src="<?php echo $this->baseurl; ?>/img/headers/oq-gem.png">
                </a>
            </div>

                </div>
			<!-- Header -->
			<header class="header" role="banner">
				<div class="header-inner clearfix">
						<div class="site-description">
    <h1>Glossary for gem taxonomy</h1>
	<p>This online Glossary explains around 400 terms contained in the GEM Building Taxonomy v 2.0 and nearly 700 images.</p>
	<p>The terms have been listed in alphabetical and numerical order. Text description of each term is accompanied by illustrations (photos and/or drawings) where possible.</p>
	<p>We welcome contributions in the form of photographs or images, illustrating glossary terms. If you have any questions you can also contact us at <a href="mailto:buildingtaxonomy@globalquakemodel.org"/>buildingtaxonomy@globalquakemodel.org</a></p>
						</div>
				</div>
			</header>
			<?php if ($this->countModules('position-1')) : ?>
				<nav class="navigation" role="navigation">
					<div class="navbar pull-left">
						<a class="btn btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>
					</div>
					<div class="nav-collapse">
						<jdoc:include type="modules" name="position-1" style="none" />
					</div>
				</nav>
			<?php endif; ?>
			<jdoc:include type="modules" name="banner" style="xhtml" />
			<div class="row-fluid">
				<?php if ($this->countModules('position-8')) : ?>
					<!-- Begin Sidebar -->
					<div id="sidebar" class="span3">
						<div class="sidebar-nav">
							<jdoc:include type="modules" name="position-8" style="xhtml" />
						</div>
					</div>
					<!-- End Sidebar -->
				<?php endif; ?>
				<main id="content" role="main" class="<?php echo $span; ?>">
					<!-- Begin Content -->
					<jdoc:include type="modules" name="position-3" style="xhtml" />
					<jdoc:include type="message" />
					<jdoc:include type="component" />
					<jdoc:include type="modules" name="position-2" style="none" />
					<!-- End Content -->
				</main>
				<?php if ($this->countModules('position-7')) : ?>
					<div id="aside" class="span3">
						<!-- Begin Right Sidebar -->
						<jdoc:include type="modules" name="position-7" style="well" />
						<!-- End Right Sidebar -->
					<!--<a class="link-gem" target="_blank" title="Global Earthquake Model" href="https://platform.openquake.org/"></a>-->
					</div>
				<?php endif; ?>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<footer class="footer" role="contentinfo">
		<div class="container<?php echo ($params->get('fluidContainer') ? '-fluid' : ''); ?>">
			<jdoc:include type="modules" name="footer" style="none" />
			<p class="pull-right">
				<a href="#" id="back-top">
					<span class="icon-arrow-top"></span>
				</a>
			</p>
			<p>
				<strong>&copy; <?php echo date('Y'); ?> <?php echo $sitename; ?> for GEM Taxonomy</strong> <br>
				GEM Foundation | Via Ferrata 1, 27100 Pavia, Italy | +39 0382 5169865 | <a href="mailto: info@globalquakemodel.org">info@globalquakemodel.org</a><br>
				Tax code: 96059180180 | VAT number: IT02585230184 | PEC: <a href="mailto: gemfoundation@pec.it">gemfoundation@pec.it</a>
				<br><a href="<?php echo $this->baseurl; ?>/about">About</a> | <a href="<?php echo $this->baseurl; ?>/term-of-use">Terms of use</a>
			</p>
		</div>
	</footer>
	<jdoc:include type="modules" name="debug" style="none" />
</body>
</html>
