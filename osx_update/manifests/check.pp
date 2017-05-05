define osx_update::check(Boolean $enabled=true)
{
  if $enabled
  {
     exec {"enable_osx_updates":
       command => "/usr/sbin/softwareupdate --schedule on",
       onlyif=> "/usr/sbin/softwareupdate --schedule | grep off",
     }
  }else{
     exec {"disable_osx_updates":
       command => "/usr/sbin/softwareupdate --schedule off",
       onlyif=> "/usr/sbin/softwareupdate --schedule | grep on",
     }
  }
}
