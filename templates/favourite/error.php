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
$templateparams = $app->getTemplate(true)->params;

$current_url = JURI::current();

// Get 404 article or redirect to default error page if article is not published
if ($this->error->getCode() == '404') {
	$redirect = true;
	if ((isset($_GET['view']) && isset($_GET['id']) && $_GET['view'] == 'article' && $_GET['id'] == $templateparams->get('error_page_article_id')) || strstr($current_url,'.css') !== FALSE || strstr($current_url,'.js') !== FALSE) { $redirect = false; }
	if ($redirect) {
		$errorurl = $this->baseurl.'/index.php?option=com_content&view=article&id='.$templateparams->get('error_page_article_id');
    header('Location: '.$errorurl); exit;
  }
}

if (!isset($this->error))
{
	$this->error = JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
	$this->debug = false;
}

// Get language and direction
$doc             = JFactory::getDocument();
$app             = JFactory::getApplication();
$this->language  = $doc->language;
$this->direction = $doc->direction;
?>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

	<head>

		<title><?php echo $this->error->getCode(); ?> - <?php echo $this->title; ?></title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/media/jui/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/media/jui/css/bootstrap-responsive.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/icons/css/font-awesome.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/css/template.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template;?>/css/style.css" type="text/css" />

	</head>

	<body id="fav-errorpage">

		<div class="container-fluid">
			<div class="row-fluid">
				<div id="main" class="clearfix" style="margin-top: 10%;">
					<h1 class="page-header"><?php echo JText::_('JERROR_LAYOUT_PAGE_NOT_FOUND'); ?></h1>
						<div class="well">
							<div class="row-fluid">
								<div class="span6">
									<p><strong><?php echo JText::_('JERROR_LAYOUT_ERROR_HAS_OCCURRED_WHILE_PROCESSING_YOUR_REQUEST'); ?></strong></p>
									<p><?php echo JText::_('JERROR_LAYOUT_NOT_ABLE_TO_VISIT'); ?></p>
									<ul>
										<li><?php echo JText::_('JERROR_LAYOUT_AN_OUT_OF_DATE_BOOKMARK_FAVOURITE'); ?></li>
										<li><?php echo JText::_('JERROR_LAYOUT_MIS_TYPED_ADDRESS'); ?></li>
										<li><?php echo JText::_('JERROR_LAYOUT_SEARCH_ENGINE_OUT_OF_DATE_LISTING'); ?></li>
										<li><?php echo JText::_('JERROR_LAYOUT_YOU_HAVE_NO_ACCESS_TO_THIS_PAGE'); ?></li>
									</ul>
								</div>
								<div class="span6">
								<?php if (JModuleHelper::getModule('search')) : ?>
									<p><strong><?php echo JText::_('JERROR_LAYOUT_SEARCH'); ?></strong></p>
									<p><?php echo JText::_('JERROR_LAYOUT_SEARCH_PAGE'); ?></p>
									<?php echo $doc->getBuffer('module', 'search'); ?>
								<?php endif; ?>
								<p><?php echo JText::_('JERROR_LAYOUT_GO_TO_THE_HOME_PAGE'); ?></p>
									<p><a href="<?php echo $this->baseurl; ?>/index.php" class="btn"><i class="icon-home"></i> <?php echo JText::_('JERROR_LAYOUT_HOME_PAGE'); ?></a></p>
							</div>
						</div>
							<hr />
							<p><?php echo JText::_('JERROR_LAYOUT_PLEASE_CONTACT_THE_SYSTEM_ADMINISTRATOR'); ?>
							</p>
							<p>
								<span class="label label-inverse"><?php echo $this->error->getCode(); ?></span> <?php echo $this->error->getMessage();?>
							</p>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
