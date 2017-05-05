define osx_installer::prefPane_copy(
  $source,
  $ensure="installed",
)
{
  case $ensure {
    "installed":
    {
      exec{ "install_$name":
        creates =>"/var/db/.puppet_prefPane_installed_$file",
        cwd => "/Library/PreferencePanes/",
        path    => ['/usr/bin', '/usr/sbin',],
        command => "tar -xzf $source/$file && touch /var/db/.puppet_appdmg_installed_$file",
      }
    }
    "absent":
     {
        notify { "remove_$name":
          message  => "uninstall method not implemeted",
        }
     }
    default:
    {
        notify { "prefPane_copy_$name":
          message  => "state ensure=\"$ensure\" not implemeted",
        }
    }
  }
}
