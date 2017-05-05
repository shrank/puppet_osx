define osx_pmset($value,$profile="-a")
{
  exec { "pmset_$name":
    command => "/usr/bin/pmset $profile $name $value",
  }
}
