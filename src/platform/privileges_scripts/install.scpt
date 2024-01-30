on run {daemon_file, agent_file, user}

  set sh1 to "echo " & quoted form of daemon_file & " > /Library/LaunchDaemons/de.sdigroup.fernwartung_service.plist && chown root:wheel /Library/LaunchDaemons/de.sdigroup.fernwartung_service.plist;"

  set sh2 to "echo " & quoted form of agent_file & " > /Library/LaunchAgents/de.sdigroup.fernwartung_server.plist && chown root:wheel /Library/LaunchAgents/de.sdigroup.fernwartung_server.plist;"

  set sh3 to "cp -rf /Users/" & user & "/Library/Preferences/de.sdigroup.fernwartung/RustDesk.toml /var/root/Library/Preferences/de.sdigroup.fernwartung/;"

  set sh4 to "cp -rf /Users/" & user & "/Library/Preferences/de.sdigroup.fernwartung/RustDesk2.toml /var/root/Library/Preferences/de.sdigroup.fernwartung/;"

  set sh5 to "launchctl load -w /Library/LaunchDaemons/de.sdigroup.fernwartung_service.plist;"

  set sh to sh1 & sh2 & sh3 & sh4 & sh5

  do shell script sh with prompt "RustDesk want to install daemon and agent" with administrator privileges
end run
