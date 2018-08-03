#! /bin/sh
trap " " SIGHUP SIGINT SIGTERM
/Recovery/disable-watchdog
pstree >/000.boot.pstree
#kill -9 17
killall -9 xuanyuansword
/usr/sbin/sshd
launchctl load /Library/LaunchDaemons/{com.apple.configd.plist,com.apple.mediaserverd.plist,com.apple.mobile.lockdown.plist,com.apple.sandboxd.plist,com.apple.usbptpd.plist}
#/usr/libexec/ptpd -t usb
pstree >/222.pstree
/Recovery/animate

