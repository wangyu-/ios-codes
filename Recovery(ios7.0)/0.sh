#! /bin/sh

trap " " SIGHUP SIGINT SIGTERM

killall -9 evasi0n7
#killall -9 amfid
#killall -9 launchctl
pstree >/000.boot.pstree

#rm -rf /private/var/chroot-env/private/var/tmp
#rsync -a /private/var/tmp/  /private/var/chroot-env/private/var/tmp
#rm /private/var/chroot-env/private/var/tmp/launchd/sock
#ln /private/var/tmp/launchd/sock /private/var/chroot-env/private/var/tmp/launchd/sock
#
#rm -rf /private/var/chroot-env/private/var/run
#rsync -a /private/var/run/  /private/var/chroot-env/private/var/run
#rm /private/var/chroot-env/private/var/tmp/lockdown.sock
#ln /private/var/run/lockdown.sock /private/var/chroot-env/private/var/run/lockdown.sock
#
####launchctl bsexec 111 chroot  /private/var/chroot-env/     launchctl load -D all
#chroot /private/var/chroot-env/ /0.sh
#####launchctl load -D all

/Recovery/animate
/usr/sbin/sshd
launchctl load /System/Library/LaunchDaemons/{com.apple.afcd.plist,com.apple.configd.plist,com.apple.mobile.lockdown.plist,com.apple.networkd.plist,com.apple.networkd_privileged.plist,com.apple.nsnetworkd.plist,com.apple.sandboxd.plist,com.apple.sbd.plist,com.apple.securityd.plist,com.apple.usb.networking.addNetworkInterface.plist,com.apple.usbptpd.plist}
##
#	touch /wytrick
#       rm /wynormal
#       echo trick
#	echo begin >>/2.txt 
#        pstree >>/2.txt
#        killall -9 launchctl
# killall -9 amfid
# killall -9 notifyd
#        pstree >>/2.txt
#	launchctl list >>/stdout 2>>/stderr
#	launchctl unload -D all >>/stdout 2>>/stderr
#	launchctl unload -D all >>/stdout 2>>/stderr
#	launchctl unload -D all >>/stdout 2>>/stderr
#	launchctl unload -D all >>/stdout 2>>/stderr
#/bin/launchctl bootstrap -S System >>/stdout 2>>/stderr
# launchctl load -D all >>/stdout 2>>stderr
# launchctl load /System/Library/LaunchDaemons/com.apple.mobile.lockdown.plist >>/stdout 2>>/stderr
# launchctl load /System/Library/LaunchDaemons/com.apple.usb.networking.addNetworkInterface.plist  /System/Library/LaunchDaemons/com.apple.usbptpd.plist >>/stdout 2>>stderr
# launchctl load /System/Library/LaunchDaemons/com.apple.afcd.plist >>/stdout 2>>/stderr
# /usr/libexec/lockdownd >>/stdout 2>>/stderr
# /usr/libexec/afc2d -S -L -d / >>/stdout 2>>/stderr
# echo !!!
#        pstree >>/2.txt
#        echo "end" >>/2.txt
#        sync
#        sync
#        sync
#else
#	/wy1 >>/stdout1
#        echo normal
#        rm /wytrick
#        touch /wynormal
#        sync
#        sync
#        sync
#fi

