# puppet_osx
puppet modules for Mac OSX

Examples:

##### install VLC from DMG file
```
  osx_installer {"VLC-1.2.3.dmg":
    mode => "copy",	#copy app from DMG to /Applications
    source =>/var/pkg/,
    ensure=>"installed",
  }
```

##### install Subversion(from WANdisco)
```
  osx_installer {"Subversion-1.2.3.dmg":
    mode => "pkg",     #open DMG and install PKG file
    source =>/var/pkg/,
    ensure=>"installed",
  }
```

##### disable display poweroff
```
    osx_pmset{"displaysleep":
      value=>0,
    }
```

##### enable SSH-Server
```
    osx_systemsetup{"remotelogin":
        value=>"On",
    }
```

##### install all available updates
```
    osx_update{"all":
    }
```

##### install recomanded updates
```
    osx_update{"recommanded":
    }
```

##### install specific updates
```
    osx_update{"update-name-1.2.3":
    }
```

##### set wallpaper
```
don't strech, fill with black

  osx_wallpaper::set{"/Users/john/wallpaper.jpeg":
    format=>"center",
    color=>"000000",
    user=>"john",
}
```

