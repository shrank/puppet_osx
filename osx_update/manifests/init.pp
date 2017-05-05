define osx_update()
{
  case $name{
    "all":{
       exec {"install all osx updates":
         command => "/usr/sbin/softwareupdate -i -a"
       }
    }
    "recommanded":{
      exec {"install recommanded osx updates":
        command => "/usr/sbin/softwareupdate -i -r"
      }
    }
    default:{
      exec {$macbase::updates_list:
        command => "/usr/sbin/softwareupdate -i $name"
      }
    }
  }
}
