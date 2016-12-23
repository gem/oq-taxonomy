<?php
/**
 * @package COM_JOOMGLOSSARY for Joomla!
 * @version $Id: csvimport.php 1.0.0 2015-12-24 12:00:00
 * @author Terry W. Carter
 * @copyright (C) 2015 - Terry W. Carter
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
**/

//NO DIRECT ACCESS
defined( '_JEXEC' ) or die( 'Restricted access' );;

//IMPORT CONTROLLER ADMIN LIBRARY
jimport( 'joomla.application.component.controlleradmin' );

//CSVIMPORT CONTROLLER
class JoomGlossaryControllerCSVImport extends JControllerAdmin
{
	public function importTerms() 
	{
		$JInput = JFactory::getApplication()->input;
		$inputfile = $JInput->files->get('fileinput');
		
		if($inputfile['tmp_name'] == ''){
			
			//ERROR MESSAGE FOR EMPTY FILE UPLOAD
			JFactory::getApplication()->enqueueMessage( JText::_('You must choose a file to import.'),'error');
		
			//REDIRECT TO CSVIMPORT VIEW
			$this->setRedirect(JRoute::_( 'index.php?option=com_joomglossary&view=csvimport', false ) );	
		
		}else{
		
			//OPEN THE FILE FROM FORM SUBMISSION
			$file = fopen($inputfile['tmp_name'], "r");
		
			//SET ROWCOUNTS TO 0
			$rowcount = 0;
			$updatecount = 0;
		
			//LOOP THROUGH THE FILE ROWS
    		while(($filedata = fgetcsv($file, 0, ",")) !== false){
				
				//CHECK FOR NUMBER OF FIELDS
				if(count($filedata) > 4){
					
					//ERROR MESSAGE FOR EMPTY FILE UPLOAD
					JFactory::getApplication()->enqueueMessage(JText::_("There are too many fields in your CSV file at term '$filedata[1]'."),'error');
							
					//SET ERROR FLAG
					$error = 1;
					break;
					
				}
				
				$filedata[1] = utf8_encode($filedata[1]);
				$filedata[2] = utf8_encode($filedata[2]);
				$filedata[3] = utf8_encode($filedata[3]);
				
				//CHECK TO SEE IF TERM EXISTS
				$db = JFactory::getDbo();
				$query = $db->getQuery(true);
				$sql = "SELECT term FROM #__com_joomglossary_terms WHERE term = '$filedata[1]'";
				$db->setQuery($sql);
				$result = $db->query();
				$numrows = $db->getNumRows();
			
				if($numrows == 0){
				
					//INSERT NEW RECORD INTO THE DATABASE
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$terms = "INSERT INTO #__com_joomglossary_terms
								(id, termcategory, term, termclass, termcharacteristic, published)
					 	 	  VALUES
								('', '$filedata[0]', '$filedata[1]', '$filedata[2]', '$filedata[3]', '1')
					 		 ";
					$db->setQuery($terms);
					$result = $db->query();
			
					//ADD TO THE ROWCOUNT FOR QUEUED MESSAGE
					$rowcount++;
				
				}else{
				
					//UPDATE TERM INFORMATION
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$terms = "UPDATE #__com_joomglossary_terms
						  	  SET termcategory = '$filedata[0]', termclass = '$filedata[2]', termcharacteristic = '$filedata[3]'
						  	  WHERE term = '$filedata[0]'
					 	 	";
					$db->setQuery($terms);
					$result = $db->query();
				
					//ADD TO UPDATE COUNT FOR QUEUED MESSAGE
					$updatecount++;
			
				}
			
    		}
			//CLOSE THE CSV FILE
			fclose($file);
				
			if(!$error){
				//QUEUE SUCCESS MESSAGE
				if($rowcount > 0){
					$additions = $rowcount . ' rows were imported.';
				}else{
					$additions = '';
				}
				if($updatecount > 0){
					$updates = $updatecount . ' records were updated.';
				}else{
					$updates = '';
				}
				JFactory::getApplication()->enqueueMessage( JText::_( 'Your CSV import has been completed. ' . $additions . $updates ), 'message' );
			}
				
			//REDIRECT TO CSVIMPORT VIEW
			$this->setRedirect(JRoute::_( 'index.php?option=com_joomglossary&view=csvimport', false ) );
		}	
	}
	
	public function importCategories() 
	{
		$JInput = JFactory::getApplication()->input;
		$inputfile = $JInput->files->get('fileinput');
		
		if($inputfile['tmp_name'] == ''){
			
			//ERROR MESSAGE FOR EMPTY FILE UPLOAD
			JFactory::getApplication()->enqueueMessage( JText::_('You must choose a file to import.'),'error');
		
			//REDIRECT TO CSVIMPORT VIEW
			$this->setRedirect(JRoute::_( 'index.php?option=com_joomglossary&view=csvimport', false ) );
			
		}else{
		
			//OPEN THE FILE FROM FORM SUBMISSION
			$file = fopen($inputfile['tmp_name'], "r");
		
			//SET ROWCOUNTS TO 0
			$rowcount = 0;
			$updatecount = 0;
		
			//LOOP THROUGH THE FILE ROWS
    		while(($filedata = fgetcsv($file, 0, ",")) !== false){

				//CHECK FOR NUMBER OF FIELDS
				if(count($filedata) > 2){
					
					//ERROR MESSAGE FOR EMPTY FILE UPLOAD
					JFactory::getApplication()->enqueueMessage(JText::_("There are too many fileds in your CSV file at category '$filedata[0]'."),'error');
							
					//SET ERROR FLAG
					$error = 1;
					break;
				}
				
				$filedata[0] = utf8_encode($filedata[0]);
				$filedata[1] = utf8_encode($filedata[1]);
			
				//CHECK TO SEE IF TERM EXISTS
				$db = JFactory::getDbo();
				$query = $db->getQuery(true);
				$sql = "SELECT catname FROM #__com_joomglossary_categories WHERE catname = '$filedata[0]'";
				$db->setQuery($sql);
				$result = $db->query();
				$numrows = $db->getNumRows();
			
				if($numrows == 0){
				
					//INSERT NEW RECORD INTO THE DATABASE
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$terms = "INSERT INTO #__com_joomglossary_categories
								(id, catname, catdesc, published)
					 	 	  VALUES
								('', '$filedata[0]', '$filedata[1]', '1')
					 		 ";
					$db->setQuery($terms);
					$result = $db->query();
			
					//ADD TO THE ROWCOUNT FOR QUEUED MESSAGE
					$rowcount++;
				
				}else{
				
					//UPDATE TERM INFORMATION
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$terms = "UPDATE #__com_joomglossary_categories
						  	  SET catname = '$filedata[0]', catdesc = '$filedata[1]'
						  	  WHERE catname = '$filedata[0]'
					 	 	";
					$db->setQuery($terms);
					$result = $db->query();
				
					//ADD TO UPDATE COUNT FOR QUEUED MESSAGE
					$updatecount++;
			
				}
    		}
			//CLOSE THE CSV FILE
			fclose($file);
			
			if(!$error){
				//QUEUE SUCCESS MESSAGE
				if($rowcount > 0){
					$additions = $rowcount . ' rows were imported.';
				}else{
					$additions = '';
				}
				if($updatecount > 0){
					$updates = $updatecount . ' records were updated.';
				}else{
					$updates = '';
				}
			
				JFactory::getApplication()->enqueueMessage( JText::_( 'Your CSV import has been completed. ' . $additions . $updates ), 'message' );
			}
			//REDIRECT TO CSVIMPORT VIEW
			$this->setRedirect(JRoute::_( 'index.php?option=com_joomglossary&view=csvimport', false ) );
		}
	}
}