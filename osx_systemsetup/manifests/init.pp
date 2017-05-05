define osx_systemsetup($value)
{
  exec { "systemsetup_$name":
    command => "/usr/sbin/systemsetup -f -set$name $value",
    onlyif => "/usr/sbin/systemsetup -get$name | /usr/bin/grep -v $value" 
  }
}
