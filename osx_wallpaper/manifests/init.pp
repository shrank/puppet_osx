# uses wpset from
# https://github.com/alexcormier/setwp

class osx_wallpaper {

## Example code to install setwp
#
#  file { "/usr/local/bin":
#    ensure => directory,
#  }
#  file { "/usr/local/bin/setwp":
#    ensure  => file,
#    content => file('osx_wallpaper/setwp'),
#    mode => 'a=rx',
#  }

}

define osx_wallpaper::set(
String $format="stretch",
String $color="0",
String $user,
Boolean $refreshonly=false,
){
  if($name!="color")
  {
    exec{"set_osx_wallpaper":
      command=>"/usr/local/bin/setwp --$format --color=$color $name",
      refreshonly=>$refreshonly,
      user=>$user,
    }
  }else{
    exec{"set_osx_bgcolor":
      command=>"/usr/local/bin/setwp --color=$color",
      refreshonly=>$refreshonly,
      user=>$user,
    }
  }
}
