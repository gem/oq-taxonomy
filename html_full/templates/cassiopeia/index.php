<?php
require_once('gem_version.php');

/**
 * @package     Joomla.Site
 * @subpackage  Templates.cassiopeia
 *
 * @copyright   (C) 2017 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Uri\Uri;

/** @var Joomla\CMS\Document\HtmlDocument $this */

$app = Factory::getApplication();
$wa  = $this->getWebAssetManager();

// Browsers support SVG favicons
// $this->addHeadLink(HTMLHelper::_('image', 'joomla-favicon.svg', '', [], true, 1), 'icon', 'rel', ['type' => 'image/svg+xml']);
$this->addHeadLink(HTMLHelper::_('image', 'favicon.ico', '', [], true, 1), 'alternate icon', 'rel', ['type' => 'image/vnd.microsoft.icon']);
// $this->addHeadLink(HTMLHelper::_('image', 'joomla-favicon-pinned.svg', '', [], true, 1), 'mask-icon', 'rel', ['color' => '#000']);

// Detecting Active Variables
$option   = $app->input->getCmd('option', '');
$view     = $app->input->getCmd('view', '');
$layout   = $app->input->getCmd('layout', '');
$task     = $app->input->getCmd('task', '');
$itemid   = $app->input->getCmd('Itemid', '');
$sitename = htmlspecialchars($app->get('sitename'), ENT_QUOTES, 'UTF-8');
$menu     = $app->getMenu()->getActive();
$pageclass = $menu !== null ? $menu->getParams()->get('pageclass_sfx', '') : '';

// Color Theme
$paramsColorName = $this->params->get('colorName', 'colors_standard');
$assetColorName  = 'theme.' . $paramsColorName;
$wa->registerAndUseStyle($assetColorName, 'media/templates/site/cassiopeia/css/global/' . $paramsColorName . '.css');
$wa->registerAndUseStyle($assetColorName, 'media/templates/site/cassiopeia/css/global/template.css');

// Use a font scheme if set in the template style options
$paramsFontScheme = $this->params->get('useFontScheme', false);
$fontStyles       = '';

if ($paramsFontScheme) {
    if (stripos($paramsFontScheme, 'https://') === 0) {
        $this->getPreloadManager()->preconnect('https://fonts.googleapis.com/', ['crossorigin' => 'anonymous']);
        $this->getPreloadManager()->preconnect('https://fonts.gstatic.com/', ['crossorigin' => 'anonymous']);
        $this->getPreloadManager()->preload($paramsFontScheme, ['as' => 'style', 'crossorigin' => 'anonymous']);
        $wa->registerAndUseStyle('fontscheme.current', $paramsFontScheme, [], ['media' => 'print', 'rel' => 'lazy-stylesheet', 'onload' => 'this.media=\'all\'', 'crossorigin' => 'anonymous']);

        if (preg_match_all('/family=([^?:]*):/i', $paramsFontScheme, $matches) > 0) {
            $fontStyles = '--cassiopeia-font-family-body: "' . str_replace('+', ' ', $matches[1][0]) . '", sans-serif;
			--cassiopeia-font-family-headings: "' . str_replace('+', ' ', isset($matches[1][1]) ? $matches[1][1] : $matches[1][0]) . '", sans-serif;
			--cassiopeia-font-weight-normal: 400;
			--cassiopeia-font-weight-headings: 700;';
        }
    } else {
        $wa->registerAndUseStyle('fontscheme.current', $paramsFontScheme, ['version' => 'auto'], ['media' => 'print', 'rel' => 'lazy-stylesheet', 'onload' => 'this.media=\'all\'']);
        $this->getPreloadManager()->preload($wa->getAsset('style', 'fontscheme.current')->getUri() . '?' . $this->getMediaVersion(), ['as' => 'style']);
    }
}

// Enable assets
$wa->usePreset('template.cassiopeia.' . ($this->direction === 'rtl' ? 'rtl' : 'ltr'))
    ->useStyle('template.active.language')
    ->useStyle('template.user')
    ->useScript('template.user')
    ->addInlineStyle(":root {
		--hue: 214;
		--template-bg-light: #f0f4fb;
		--template-text-dark: #495057;
		--template-text-light: #ffffff;
		--template-link-color: #2a69b8;
		--template-special-color: #001B4C;
		$fontStyles
	}");

// Override 'template.active' asset to set correct ltr/rtl dependency
$wa->registerStyle('template.active', '', [], [], ['template.cassiopeia.' . ($this->direction === 'rtl' ? 'rtl' : 'ltr')]);

// Logo file or site title param
if ($this->params->get('logoFile')) {
    $logo = HTMLHelper::_('image', Uri::root(false) . htmlspecialchars($this->params->get('logoFile'), ENT_QUOTES), $sitename, ['loading' => 'eager', 'decoding' => 'async'], false, 0);
} elseif ($this->params->get('siteTitle')) {
    $logo = '<span title="' . $sitename . '">' . htmlspecialchars($this->params->get('siteTitle'), ENT_COMPAT, 'UTF-8') . '</span>';
} else {
    $logo = HTMLHelper::_('image', 'logo.svg', $sitename, ['class' => 'logo d-inline-block', 'loading' => 'eager', 'decoding' => 'async'], true, 0);
}

$hasClass = '';

if ($this->countModules('sidebar-left', true)) {
    $hasClass .= ' has-sidebar-left';
}

if ($this->countModules('sidebar-right', true)) {
    $hasClass .= ' has-sidebar-right';
}

// Container
$wrapper = $this->params->get('fluidContainer') ? 'wrapper-fluid' : 'wrapper-static';

$this->setMetaData('viewport', 'width=device-width, initial-scale=1');

$stickyHeader = $this->params->get('stickyHeader') ? 'position-sticky sticky-top' : '';

// Defer fontawesome for increased performance. Once the page is loaded javascript changes it to a stylesheet.
$wa->getAsset('style', 'fontawesome')->setAttribute('rel', 'lazy-stylesheet');
?>
<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
    <jdoc:include type="metas" />
    <jdoc:include type="styles" />
    <jdoc:include type="scripts" />
</head>

<body class="site <?php echo $option
    . ' ' . $wrapper
    . ' view-' . $view
    . ($layout ? ' layout-' . $layout : ' no-layout')
    . ($task ? ' task-' . $task : ' no-task')
    . ($itemid ? ' itemid-' . $itemid : '')
    . ($pageclass ? ' ' . $pageclass : '')
    . $hasClass
    . ($this->direction == 'rtl' ? ' rtl' : '');
?>">
<div class="top-home">
 <a class="aref-logo">
   <img src="<?php echo $this->baseurl; ?>/img/headers/gem-logo.png" alt="Openquake">
 </a>
 <nav class="main-nav">
   <ul>
     <li class="ipt"><a href="https://tools.openquake.org/ipt/">IPT</a></li>
     <li class="txtweb"><a href="https://tools.openquake.org/taxtweb/">TaxtWEB</a></li>
     <li class="taxonomy"><a href="<?php echo $this->baseurl; ?>">Taxonomy</a></li>
   </ul>
 </nav>
 <div class="right-bar">
   <a href="https://www.globalquakemodel.org/" target="_blank">
     <img alt="oq-gem" class="oq-gem" src="<?php echo $this->baseurl; ?>/img/headers/oq-gem.png">
   </a>
 </div>
</div>

<header class="header container-header full-width<?php echo $stickyHeader ? ' ' . $stickyHeader : ''; ?>">

<div class="oq-header-description">
<h1>Glossary for gem taxonomy</h1>

<div class="header-search pull-right">
  <//jdoc:include type="modules" name="position-0" style="none" />
  <div id="mod-search" class="search mod_search93">
   <form action="/" method="get" class="js-finder-searchform">
        <fieldset class="com-finder__search word mb-3">
        <legend class="com-finder__search-legend visually-hidden">
            Search Form        </legend>
        <div class="form-inline">
            <!--<label for="q" class="me-2">
                            </label>-->
            <div class="input-group">
                <div class="awesomplete"><input type="text" name="q" id="q" class="js-finder-search-query form-control" value="" placeholder="Search Terms:" autocomplete="off" aria-expanded="false" aria-owns="awesomplete_list_1" role="combobox"><ul hidden="" role="listbox" id="awesomplete_list_1"></ul><span class="visually-hidden" role="status" aria-live="assertive" aria-atomic="true">Type 2 or more characters for results.</span></div>
                <button type="submit" class="btn btn-primary" name="Search">
                    <span class="icon-search icon-white" aria-hidden="true"></span>
                                    </button>
                                                        <!--<button class="btn btn-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#advancedSearch" aria-expanded="">
                        <span class="icon-search-plus" aria-hidden="true"></span>
                        </button>-->
                            </div>
        </div>
    </fieldset>

            <fieldset id="advancedSearch" class="com-finder__advanced js-finder-advanced collapse">
            <legend class="com-finder__search-advanced visually-hidden">
                Advanced Search            </legend>
                            <div class="com-finder__tips card card-outline-secondary mb-3">
                    <div class="card-body">
                        <p>Here are a few examples of how you can use the search feature:</p>                        <p>Entering <strong>this and that</strong> into the search form will return results containing both "this" and "that".</p>                        <p>Entering <strong>this not that</strong> into the search form will return results containing "this" and not "that".</p>                        <p>Entering <strong>this or that</strong> into the search form will return results containing either "this" or "that".</p>                                                <p>Search results can also be filtered using a variety of criteria. Select one or more filters below to get started.</p>                    </div>
                </div>
                        <div id="finder-filter-window" class="com-finder__filter">
                <div class="filter-branch"><div class="control-group"><div class="control-label"><label for="tax-type">Search by Type</label></div><div class="controls"><select id="tax-type" name="t[]" class="form-select advancedSelect">
	<option value="" selected="selected">Search All</option>
	<option value="6">Articles</option>
	<option value="3">Categories</option>
</select>
</div></div><div class="control-group"><div class="control-label"><label for="tax-language">Search by Language</label></div><div class="controls"><select id="tax-language" name="t[]" class="form-select advancedSelect">
	<option value="" selected="selected">Search All</option>
	<option value="5">All</option>
</select>
</div></div><div class="control-group"><div class="control-label"><label for="tax-author">Search by Author</label></div><div class="controls"><select id="tax-author" name="t[]" class="form-select advancedSelect">
	<option value="" selected="selected">Search All</option>
	<option value="8">admin</option>
</select>
</div></div><div class="control-group"><div class="control-label"><label for="tax-category">Search by Category</label></div><div class="controls"><select id="tax-category" name="t[]" class="form-select advancedSelect">
	<option value="" selected="selected">Search All</option>
	<option value="11">about</option>
	<option value="10">terms</option>
	<option value="12">Uncategorised</option>
</select>
</div></div></div>            </div>
        </fieldset>
    </form>
  </div>
</div>

<?php
// Get a db connection.
$db = JFactory::getDbo();

// Create a new query object.
$query = $db->getQuery(true);

$query->select('*')
      ->from($db->quoteName('category'))
      ->order($db->quoteName('id') . ' ASC'); 

$db->setQuery($query);
$results = $db->loadObjectList();
?>
     <div class="term-let">
             <?php
               foreach($results as $rows){
                 //control if exist terms with specific cat
                 $cat = $rows->cat;
		 //echo $cat;
		 $sql_term = $db->getQuery(true);
		 $sql_term->select('COUNT(*)')
                       ->from($db->quoteName('taxonomy_content'))
                       ->where($db->quoteName('title') . ' like ' . $db->quote($cat . '%'))
                       ->where($db->quoteName('catid') . ' = ' . $db->quote('8'))
                       ->where($db->quoteName('state') . ' = ' . $db->quote('1'));
		 $db->setQuery($sql_term);
                 $count = $db->loadResult();
		 //echo $count;
                 if($count > 0){
     	            echo'
                     <a class="let-cat m'.$cat.'" href="'.$this->baseurl.'/?cat='.$cat.'">
                             <div class="div-let-cat">
                                     '.ucfirst($cat).'
                             </div>
     		     </a>';
                 }
               }
            ?>
     </div>
</div>
        <?php if ($this->countModules('topbar')) : ?>
            <div class="container-topbar">
            <jdoc:include type="modules" name="topbar" style="none" />
            </div>
        <?php endif; ?>

        <?php if ($this->countModules('below-top')) : ?>
            <div class="grid-child container-below-top">
                <jdoc:include type="modules" name="below-top" style="none" />
            </div>
        <?php endif; ?>

        <?php if ($this->params->get('brand', 1)) : ?>
            <div class="grid-child">
                <div class="navbar-brand">
                    <a class="brand-logo" href="<?php echo $this->baseurl; ?>/">
                        <?php echo $logo; ?>
                    </a>
                    <?php if ($this->params->get('siteDescription')) : ?>
                        <div class="site-description"><?php echo htmlspecialchars($this->params->get('siteDescription')); ?></div>
                    <?php endif; ?>
                </div>
            </div>
        <?php endif; ?>

        <?php if ($this->countModules('menu', true) || $this->countModules('search', true)) : ?>
            <div class="grid-child container-nav">
                <?php if ($this->countModules('menu', true)) : ?>
                    <jdoc:include type="modules" name="menu" style="none" />
                <?php endif; ?>
                <?php if ($this->countModules('search', true)) : ?>
                    <div class="container-search">
                        <jdoc:include type="modules" name="search" style="none" />
                    </div>
                <?php endif; ?>
            </div>
        <?php endif; ?>
    </header>

    <div class="site-grid">
        <?php if ($this->countModules('banner', true)) : ?>
            <div class="container-banner full-width">
                <jdoc:include type="modules" name="banner" style="none" />
            </div>
        <?php endif; ?>

        <?php if ($this->countModules('top-a', true)) : ?>
        <div class="grid-child container-top-a">
            <jdoc:include type="modules" name="top-a" style="card" />
        </div>
        <?php endif; ?>

        <?php if ($this->countModules('top-b', true)) : ?>
        <div class="grid-child container-top-b">
            <jdoc:include type="modules" name="top-b" style="card" />
        </div>
        <?php endif; ?>

        <?php if ($this->countModules('sidebar-left', true)) : ?>
        <div class="grid-child container-sidebar-left">
            <jdoc:include type="modules" name="sidebar-left" style="card" />
        </div>
        <?php endif; ?>

        <div class="grid-child container-component">
            <jdoc:include type="modules" name="breadcrumbs" style="none" />
            <jdoc:include type="modules" name="main-top" style="card" />
            <jdoc:include type="message" />
            <main>
            <jdoc:include type="component" />
            </main>
            <jdoc:include type="modules" name="main-bottom" style="card" />
        </div>

        <?php if ($this->countModules('sidebar-right', true)) : ?>
        <div class="grid-child container-sidebar-right">
            <!-- <jdoc:include type="modules" name="sidebar-right" style="card" /> -->
            <a class="link-gem" target="_blank" title="Global Earthquake Model" href="<?php echo JURI::base(); ?>"></a>
        </div>
        <?php endif; ?>

        <?php if ($this->countModules('bottom-a', true)) : ?>
        <div class="grid-child container-bottom-a">
            <jdoc:include type="modules" name="bottom-a" style="card" />
        </div>
        <?php endif; ?>

        <?php if ($this->countModules('bottom-b', true)) : ?>
        <div class="grid-child container-bottom-b">
            <jdoc:include type="modules" name="bottom-b" style="card" />
        </div>
        <?php endif; ?>
    </div>

    <?php if ($this->countModules('footer', true)) : ?>
    <footer class="container-footer footer full-width">
        <div class="grid-child">
            <jdoc:include type="modules" name="footer" style="none" />
        </div>
    </footer>
    <?php endif; ?>
    <footer class="footer" role="contentinfo">
      <div class="container">
        <jdoc:include type="modules" name="footer" style="none" />
        <p style="margin-bottom: 0;">
          <?php echo $sitename; ?> for GEM Taxonomy
            | <a href="<?php echo $this->baseurl; ?>/about">About</a> | <a href="<?php echo $this->baseurl; ?>/term-of-use">Terms of use</a> | Ver. <?php echo $gem_version; ?>
        </p>
      </div>
    </footer>


    <?php if ($this->params->get('backTop') == 1) : ?>
        <a href="#top" id="back-top" class="back-to-top-link" aria-label="<?php echo Text::_('TPL_CASSIOPEIA_BACKTOTOP'); ?>">
            <span class="icon-arrow-up icon-fw" aria-hidden="true"></span>
        </a>
    <?php endif; ?>

    <jdoc:include type="modules" name="debug" style="none" />
</body>
</html>
