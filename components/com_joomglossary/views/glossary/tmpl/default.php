<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: default.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );

$model = JModelLegacy::getInstance( 'Glossary', 'JoomGlossaryModel' );


//BUILD TABS ARRAY
$options = array(
    'onActive' => 'function(title, description){
        description.setStyle("display", "block");
        title.addClass("open").removeClass("closed");
    }',
    'onBackground' => 'function(title, description){
        description.setStyle("display", "none");
        title.addClass("closed").removeClass("open");
    }',
    'startOffset' => 0,
    'useCookie' => false
);

$tabs = array();
//CREATE ARRAYS OF TERMS
foreach($this->items as $i=>$item) :
	$str = mb_substr($item->term, 0, 1, 'UTF-8');
	
	if($this->tabcase == 'L'){
		$str = strtolower($str);
	}elseif($this->tabcase == 'U'){
		$str = strtoupper($str);
	}else{
		$str = $str;
	}
	
	$tabs[$str][] = array('id' => $item->id, 'term' => $item->term, 'termlink' => $item->termlink, 'termanchor' => $item->termanchor, 'termclass' => $item->termclass, 'termcharacteristic' => $item->termcharacteristic); 
endforeach;

$catinfo = $model->CategoryInfo($this->category);
echo $catinfo[0]->catdesc;

//BEGIN TABS
echo JHtml::_('tabs.start', 'tab_group_id', $options);
foreach($tabs as $k => $v){
	echo JHtml::_('tabs.panel', JText::_($k), 'panel_1_'.$k);
	foreach($tabs[$k] as $term){
		$termlink = '';
		if($term['termlink'] != ''){
			$termlink .= JRoute::_('index.php?Itemid='.$term['termlink']);
		}
		if($term['termanchor'] != ''){
			$termlink .= '#' . $term['termanchor'];
		}
?>
		<div id="term_<?php echo $term['id'];?>">
        	<div class="termname"><?php if($term['termlink'] != '' || $term['termanchor'] != ''){echo '<a href="' . $termlink . '">';} echo $term['term']; if($term['termlink'] != '' || $term['termanchor'] != ''){echo '</a>';}?></div>
        	<?php if($term['termclass'] != ''){?><div class="termclass"> - <?php echo $term['termclass'];?> - </div><?php } ?>
			<div class="termcharacteristic"><?php echo $term['termcharacteristic'];?></div>
        </div>
	<?php }
	}
//END TABS
echo JHtml::_('tabs.end');
?>