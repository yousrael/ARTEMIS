#!/bin/bash

_getRempliHome()
{
	  df -h /home/jenkins | grep -Eo '[0-9]{1,3}%' 
  }
  _getRempligitlab()
  {
	    df -h /gitlab | grep -Eo '[0-9]{1,3}%' 
    }
    _getMemoire()
    {
	     free -m | grep 'Mem' | tr -s " " | cut -d" " -f 3
	      }
	        
	     
		echo '{'
			  echo '"group": "#Home",'
			    echo '"icon": "fa fa-home",'
			     echo  '"subgroups": ['
			       echo  '{'
					    echo '"title": "Hardware",'
					         echo '"icon": "fa fa-cog",'
						    echo ' "content": ['
						          echo '{"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Gitlab", "value": "$(_getRempligitlab)  "},'
								         echo '{"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Home", "color":"blue","value": "$(_getRempliHome)  "},'
										 	 echo '{"type": "plain", "icon": "fa fa-hdd-o", "text": "Memoire vive", "color":"blue","value": "$(_getMemoire)","endline": ""}'
											      echo ']'
											        echo '}'
												  echo ']'
											  echo '}'
											
											  
