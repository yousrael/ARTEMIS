#!/bin/bash

_getRempliIHome()
{
	  df -h /home/adflawas | grep -Eo '[0-9]{1,3}%' 
  }
  _getRempliOpt()
  {
	    df -h /opt/application/flawas | grep -Eo '[0-9]{1,3}%' 
    }
    _getRemplimyqdata()
    {
	    if [ -d /myqdata/myflawas/data ] 
	    then
		      df -h /myqdata/myflawas/data | grep -Eo '[0-9]{1,3}%' 
		       fi
		        
		        
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
								      {"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Opt", "value": "$(_getRempliOpt)  "},
									      	   {"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage myqdata", "value": "$(_getRemplimyqdata)  "},
											         {"type": "plain", "icon": "fa fa-hdd-o", "text": "Remplissage Home", "color":"blue","value": "$(_getRempliIHome)  "},
													 	  {"type": "plain", "icon": "fa fa-hdd-o", "text": "Memoire vive", "color":"blue","value": "$(_getMemoire)","endline": ""}
														      ]
														        }
															  ]
														  }
														  EOF
