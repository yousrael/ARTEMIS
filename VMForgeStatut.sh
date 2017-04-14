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
	        
	         cat <<EOF
		 {
			   "group": "#Home",
			     "icon": "fa fa-home",
			       "subgroups": [
			         {
					     "title": "Hardware",
					         "icon": "fa fa-cog",
						     "content": [
						           {"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Gitlab", "value": "$(_getRempligitlab)  "},
								         {"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Home", "color":"blue","value": "$(_getRempliHome)  "},
										 	  {"type": "plain", "icon": "fa fa-hdd-o", "text": "Memoire vive", "color":"blue","value": "$(_getMemoire)","endline": ""}
											      ]
											        }
												  ]
											  }
											  EOF
