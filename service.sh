#!/bin/sh

sleep 15

PKG=com.android.
UID=$(pm list packages -U | grep $PKG | sed -n -e "s/package:$PKG uid://p")

pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.WRITE_EXTERNAL_STORAGE
pm grant $PKG android.permission.ACCESS_MEDIA_LOCATION
appops set --uid $UID LEGACY_STORAGE allow
appops set $PKG READ_EXTERNAL_STORAGE allow
appops set $PKG WRITE_EXTERNAL_STORAGE allow
appops set $PKG READ_MEDIA_IMAGES allow
appops set $PKG WRITE_MEDIA_IMAGES allow
appops set $PKG MANAGE_EXTERNAL_STORAGE allow
appops set $PKG NO_ISOLATED_STORAGE allow
