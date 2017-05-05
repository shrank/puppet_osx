# osx_installer


# install VLC from DMG file

  osx_installer {"VLC-1.2.3.dmg":
    mode => "copy",	#copy app from DMG to /Applications
    source =>/var/pkg/,
    ensure=>"installed",
  }

# install Subversion(from WANdisco)

  osx_installer {"Subversion-1.2.3.dmg":
    mode => "pkg",     #open DMG and install PKG file
    source =>/var/pkg/,
    ensure=>"installed",
  }

