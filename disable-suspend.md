## Выключение автоматического засыпания ПК в debian

The offending settings can be printed to the console. 

    su -
    su -s /bin/bash Debian-gdm
    unset XDG_RUNTIME_DIR

    dbus-launch gsettings get org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type
    dbus-launch gsettings get org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout

This prints 'suspend' and '1200', respectively.

For quicker reproduction of the problem, reduce the timeout to 2 minutes:

    dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 120

Then reboot and wait 2 minutes.

`To turn off suspension, set:`

    dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type nothing
