<?php
/**
 * @version   0.8.0
 * @author    Richard Eisenmenger
 * @copyright Copyright (C) 2015 Richard Eisenmenger
 * @license   http://www.gnu.org/licenses/gpl-3.0.html
 */

// no direct access
defined('_JEXEC') or die;

jimport('joomla.plugin.plugin');

class plgContentJhimagepopup extends JPlugin
{
    public function plgContentJhimagepopup(&$subject, $params)
    {
        parent::__construct($subject, $params);
    }

    public function onContentPrepare($context, &$article, &$params, $page = 0)
    {
        if ($context == 'com_finder.indexer')
        {
            return true;
        }

        JHtml::_('jquery.framework');
        JHtml::_('bootstrap.framework');

        switch ($this->params->get('popup_technology', 0))
        {
            case '1':
                /* Joomla MooTools SqueezeBox */
                
                JHTML::_('behavior.modal');

                $regex      = '/<img.*?>/';

                $createImageLink = function($imageTag)
                { 
                    preg_match('/src="([^"]*)"/i', $imageTag[0], $results);
                    $srcAttribute = $results[0];
                    $srcUrl = explode("=", $srcAttribute);
                    return '<a href=' . $srcUrl[1] . ' class="modal">'.$imageTag[0].'</a>';
                };                                                     

                if (isset($article->text))
                {
                    $article->text = preg_replace_callback($regex, $createImageLink, $article->text);
                }
                if (isset($article->introtext))
                {
                    $article->introtext = preg_replace_callback($regex, $createImageLink, $article->introtext);
                }
                break;

            case '2':
                /* Colorbox */
                
                $doc =& JFactory::getDocument();
                $doc->addScript('//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.4.33/jquery.colorbox-min.js');
                $doc->addStyleSheet('//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.4.33/example1/colorbox.min.css');

                $regex      = '/<img.*?>/';

                $createImageLink = function($imageTag)
                { 
                    preg_match('/src="([^"]*)"/i', $imageTag[0], $results);
                    $srcAttribute = $results[0];
                    $srcUrl = explode("=", $srcAttribute);
                    return '<a href=' . $srcUrl[1] . ' class="jh-image-popup-colorbox">'.$imageTag[0].'</a>';
                };                                                     

                if (isset($article->text))
                {
                    $article->text = preg_replace_callback($regex, $createImageLink, $article->text);
                    $article->text .= '<script> jQuery( document ).ready(function() { jQuery(".jh-image-popup-colorbox").colorbox(); });</script>';
                }
                if (isset($article->text))
                {
                    $article->introtext = preg_replace_callback($regex, $createImageLink, $article->introtext);
                    $article->introtext .= '<script> jQuery( document ).ready(function() { jQuery(".jh-image-popup-colorbox").colorbox(); });</script>';
                }
                break;

            case '3':
                /* lightbox2 */
                
                $doc =& JFactory::getDocument();
                $doc->addScript('//cdnjs.cloudflare.com/ajax/libs/lightbox2/2.7.1/js/lightbox.min.js');
                $doc->addStyleSheet('//cdnjs.cloudflare.com/ajax/libs/lightbox2/2.7.1/css/lightbox.css');

                $regex      = '/<img.*?>/';

                $createImageLink = function($imageTag) { 
                    preg_match('/src="([^"]*)"/i', $imageTag[0], $results);
                    $srcAttribute = $results[0];
                    $srcUrl = explode("=", $srcAttribute);
                    return '<a href=' . $srcUrl[1] . ' data-lightbox="jh-image-popup">'.$imageTag[0].'</a>';
                };                                                     

                if (isset($article->text))
                {
                    $article->text = preg_replace_callback($regex, $createImageLink, $article->text);
                }
                if (isset($article->text)) {
                    $article->introtext = preg_replace_callback($regex, $createImageLink, $article->introtext);
                }
                break;

            case '4':
                /* Magnific Popup */
                
                $doc =& JFactory::getDocument();
                $doc->addScript('//cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/jquery.magnific-popup.min.js');
                $doc->addStyleSheet('//cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css');

                $regex      = '/<img.*?>/';

                $createImageLink = function($imageTag)
                { 
                    preg_match('/src="([^"]*)"/i', $imageTag[0], $results);
                    $srcAttribute = $results[0];
                    $srcUrl = explode("=", $srcAttribute);
                    return '<a href=' . $srcUrl[1] . ' class="magnific_popup">'.$imageTag[0].'</a>';
                };                                                     

                if (isset($article->text))
                {
                    $article->text = preg_replace_callback($regex, $createImageLink, $article->text);
                    $article->text .= '<script> jQuery( document ).ready(function() { jQuery(".magnific_popup").magnificPopup({ type: "image", enableEscapeKey:true }); });</script>';
                }
                if (isset($article->text))
                {
                    $article->introtext = preg_replace_callback($regex, $createImageLink, $article->introtext);
                    $article->introtext .= '<script> jQuery( document ).ready(function() { jQuery(".magnific_popup").magnificPopup({ type: "image", enableEscapeKey:true }); });</script>';
                }
                break;

            case '5':
                /* Swipebox */
                
                $doc =& JFactory::getDocument();
                $doc->addScript('//cdnjs.cloudflare.com/ajax/libs/jquery.swipebox/1.3.0.2/js/jquery.swipebox.min.js');
                $doc->addStyleSheet('//cdnjs.cloudflare.com/ajax/libs/jquery.swipebox/1.3.0.2/css/swipebox.min.css');

                $regex      = '/<img.*?>/';

                $createImageLink = function($imageTag)
                { 
                    preg_match('/src="([^"]*)"/i', $imageTag[0], $results);
                    $srcAttribute = $results[0];
                    $srcUrl = explode("=", $srcAttribute);
                    return '<a href=' . $srcUrl[1] . ' class="jh-image-popup-swipebox">'.$imageTag[0].'</a>';
                };                                                     

                if (isset($article->text))
                {
                    $article->text = preg_replace_callback($regex, $createImageLink, $article->text);
                    $article->text .= '<script> jQuery( document ).ready(function() { jQuery( ".jh-image-popup-swipebox" ).swipebox(); });</script>';
                }
                if (isset($article->text))
                {
                    $article->introtext = preg_replace_callback($regex, $createImageLink, $article->introtext);
                    $article->introtext .= '<script> jQuery( document ).ready(function() { jQuery( ".jh-image-popup-swipebox" ).swipebox(); });</script>';
                }
                break;
        }
        return true;
    }
}
