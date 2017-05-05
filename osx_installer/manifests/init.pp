define osx_installer(
  $source,
  $ensure="installed",
  $mode="copy",
)
{
  if($mode =="prefPane")
  {
    osx_installer::prefPane_copy{$name:
      ensure => $ensure,
      source => $source,
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
