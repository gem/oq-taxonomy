<?php

defined('_JEXEC') or die;

/*
///  Module chrome for rendering the module in a submenu
*/

function modChrome_no($module, &$params, &$attribs)
{
  if ($module->content) {
    echo $module->content;
  }
}

function modChrome_well($module, &$params, &$attribs)
{
  if ($module->content) {
    echo "<div class=\"well " . htmlspecialchars($params->get('moduleclass_sfx')) . "\">";
    if ($module->showtitle)
    {
      echo "<div class=\"page-header\"><strong>" . $module->title . "</strong></div>";
    }
    echo $module->content;
    echo "</div>";
  }
}

/*
///  Module chrome for rendering icons in a module title and module class suffix
*/

function modChrome_fav( $module, &$params, &$attribs ) {

$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));
$header_class = htmlspecialchars($params->get('header_class'));

    if ($module->content) {

      echo '<div class="moduletable'.$moduleclass_sfx.'" >';

      if (!empty($header_class)) { $titleicon = '<i class="fa '.$header_class.'"></i>';}
      else {$titleicon = '';}

      if ($module->showtitle) {
          echo '<h3>'.$titleicon.$module->title .'</h3>';
      }

      echo $module->content;

      echo '</div>';
  }

}

?>