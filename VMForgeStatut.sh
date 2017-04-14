#!/bin/bash

_getRempliHome()
{
	  var1=` df -h /home/jenkins | grep -Eo "[0-9]{1,3}%"`
  }
  _getRempligitlab()
  {
	   var2=` df -h /gitlab | grep -Eo "[0-9]{1,3}%"` 
    }
    _getMemoire()
    {
	     var3=` free -m | grep 'Mem' | tr -s " " | cut -d" " -f 3`
	      }
	        
	     
		echo '{'
			  echo '"group": "#Home",'
			    echo '"icon": "fa fa-home",'
			     echo  '"subgroups": ['
			       echo  '{'
					    echo '"title": "Hardware",'
					         echo '"icon": "fa fa-cog",'
						    echo ' "content": ['
						          echo '{"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Gitlab", "value": "$var1"},'
								         echo '{"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Home", "color":"blue","value": "$var2"},'
										 	 echo '{"type": "plain", "icon": "fa fa-hdd-o", "text": "Memoire vive", "color":"blue","value": "$var3","endline": ""}'
											      echo ']'
											        echo '}'
												  echo ']'
											  echo '}'
											
											  
