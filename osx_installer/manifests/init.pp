define osx_installer(
  $source,
  $ensure="installed",
  $mode="copy",
)
{
  if($mode =="prefPane")
  {
  case $ensure {
    "installed":
    {
      exec{ "install_$name":
        creates =>"/var/db/.puppet_prefPane_installed_$name",
        cwd => "/Library/PreferencePanes/",
        path    => ['/usr/bin', '/usr/sbin',],
        command => "tar -xzf $source/$name && touch /var/db/.puppet_prefPane_installed_$name",
      }
    }
  }
  }
  else
  {
    $provider = $mode ?{
      "copy" => "appdmg",
      "pkg"  => "pkgdmg",
      default => "appdmg",
    }
 
    package { "install_$name":
      ensure   => $ensure,
      provider => $provider,
      source   => "$source/$name"
    }
  }
}
