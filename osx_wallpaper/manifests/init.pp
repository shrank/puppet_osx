# uses wpset from
# https://github.com/alexcormier/setwp

define osx_wallpaper::set(
String $format="stretch",
String $color="0",
String $user,
Boolean $refreshonly=false,
){
  if($name!="color")
  {
    exec{"set_osx_wallpaper":
      command=>"/usr/bin/setwp --$format --color=$color $name",
      refreshonly=>$refreshonly,
      user=>$user,
    }
  }else{
    exec{"set_osx_bgcolor":
      command=>"/usr/bin/setwp --color=$color",
      refreshonly=>$refreshonly,
      user=>$user,
    }
  }
}
