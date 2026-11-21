# Unbloat HyperOs
Redmi Phones and Xiaomi OS.

## Sources.
- https://technastic.com/xiaomi-bloatware-list-miui/;
- https://www.reddit.com/r/degoogle/comments/vaqoa3/which_google_packagesservices_to_remove_from_phone/;

## ADB commands.
List.
```sh
pm list packages -s
```

Remove.
```sh
pm uninstall -k --user 0 com.miui.msa.global
pm uninstall -k --user 0 com.xiaomi.glgm
pm uninstall -k --user 0 com.facebook.appmanager
pm uninstall -k --user 0 com.facebook.services
pm uninstall -k --user 0 com.facebook.system
pm uninstall -k --user 0 com.mi.webkit.core
pm uninstall -k --user 0 com.android.calendar
pm uninstall -k --user 0 com.miui.calculator
pm uninstall -k --user 0 com.android.deskclock
pm uninstall -k --user 0 com.android.mms
pm uninstall -k --user 0 com.miui.smsextra
pm uninstall -k --user 0 com.miui.screenrecorder
pm uninstall -k --user 0 com.miui.cleanmaster
pm uninstall -k --user 0 com.miui.fm
pm uninstall -k --user 0 com.mi.android.globalFileexplorer
pm uninstall -k --user 0 com.mi.android.globalpersonalassistant
pm uninstall -k --user 0 com.miui.fmservice
pm uninstall -k --user 0 com.milink.service
pm uninstall -k --user 0 com.miui.videoplayer
pm uninstall -k --user 0 com.miui.yellowpage
pm uninstall -k --user 0 com.mipay.wallet.in
pm uninstall -k --user 0 com.mipay.wallet.id
pm uninstall -k --user 0 com.xiaomi.payment
pm uninstall -k --user 0 com.android.browser
pm uninstall -k --user 0 com.miui.hybrid
pm uninstall -k --user 0 com.miui.android.fashiongallery
pm uninstall -k --user 0 com.miui.player
pm uninstall -k --user 0 com.miui.translation.kingsoft
pm uninstall -k --user 0 com.miui.translationservice
pm uninstall -k --user 0 com.miui.virtualsim
pm uninstall -k --user 0 com.miui.compass
pm uninstall -k --user 0 com.duokan.phone.remotecontroller
pm uninstall -k --user 0 com.miui.bugreport
pm uninstall -k --user 0 com.miui.translation.youdao
pm uninstall -k --user 0 com.xiaomi.joyose
pm uninstall -k --user 0 com.miui.notes
pm uninstall -k --user 0 com.xiaomi.mipicks
pm uninstall -k --user 0 com.xiaomi.scanner
pm uninstall -k --user 0 com.xiaomi.midrop
pm uninstall -k --user 0 com.miui.hybrid.accessory
pm uninstall -k --user 0 com.miui.daemon
pm uninstall -k --user 0 com.miui.analytics
pm uninstall -k --user 0 com.caf.fmradio
pm uninstall -k --user 0 com.miui.cloudservice
pm uninstall -k --user 0 com.miui.cloudservice.sysbase
pm uninstall -k --user 0 com.miui.cloudbackup
pm uninstall -k --user 0 com.miui.backup
pm uninstall -k --user 0 com.miui.micloudsync
pm uninstall -k --user 0 com.xiaomi.account
pm uninstall -k --user 0 com.xiaomi.micloud.sdk
pm uninstall -k --user 0 com.miui.gallery
pm uninstall -k --user 0 com.miui.vsimcore
pm uninstall -k --user 0 com.miui.weather2
pm uninstall -k --user 0 com.netflix.partner.activation
pm uninstall -k --user 0 com.miui.wmsvc
pm uninstall -k --user 0 com.google.android.youtube
pm uninstall -k --user 0 com.google.android.apps.maps
pm uninstall -k --user 0 com.android.chrome
pm uninstall -k --user 0 com.google.android.music
pm uninstall -k --user 0 com.google.android.apps.docs
pm uninstall -k --user 0 com.google.android.videos
pm uninstall -k --user 0 com.google.android.apps.photos
pm uninstall -k --user 0 com.android.stk
pm uninstall -k --user 0 com.android.cellbroadcastreceiver
pm uninstall -k --user 0 com.google.android.tts
pm uninstall -k --user 0 com.google.android.marvin.talkback
pm uninstall -k --user 0 com.android.bookmarkprovider
pm uninstall -k --user 0 com.android.dreams.phototable
pm uninstall -k --user 0 com.android.dreams.basic
pm uninstall -k --user 0 com.android.wallpaper.livepicker
pm uninstall -k --user 0 com.android.bips
pm uninstall -k --user 0 com.android.printspooler
pm uninstall -k --user 0 com.google.android.printservice.recommendation
pm uninstall -k --user 0 com.android.emergency
pm uninstall -k --user 0 com.android.internal.display.cutout.emulation.tall
pm uninstall -k --user 0 com.android.internal.display.cutout.emulation.corner
pm uninstall -k --user 0 com.android.internal.display.cutout.emulation.double
pm uninstall -k --user 0 com.google.android.inputmethod.latin
pm uninstall -k --user 0 com.hippogames.ludosaga.mi
pm uninstall -k --user 0 com.block.puzzle.game.hippo.mi
pm uninstall -k --user 0 com.mi.global.shop
pm uninstall -k --user 0 in.amazon.mShop.android.shopping
pm uninstall -k --user 0 com.netflix.mediaclient
pm uninstall -k --user 0 com.opera.app.news
pm uninstall -k --user 0 com.opera.branding
pm uninstall -k --user 0 com.opera.branding.news
pm uninstall -k --user 0 com.opera.mini.native
pm uninstall -k --user 0 com.mi.global.bbs
pm uninstall -k --user 0 com.facebook.katana
pm uninstall -k --user 0 in.mohalla.brandprovider
pm uninstall -k --user 0 in.mohalla.sharechat
pm uninstall -k --user 0 com.duokan.phone.remotecontroller.peel.plugin
pm uninstall -k --user 0 com.eterno
pm uninstall -k --user 0 net.one97.paytm
pm uninstall -k --user 0 com.miui.userguide
pm uninstall -k --user 0 com.android.thememanager
pm uninstall -k --user 0 com.google.android.apps.tachyon
pm uninstall -k --user 0 com.google.android.feedback
pm uninstall -k --user 0 com.google.android.gm
pm uninstall -k --user 0 com.google.android.googlequicksearchbox
pm uninstall -k --user 0 com.google.android.syncadapters.calendar
pm uninstall -k --user 0 com.google.android.syncadapters.contacts
pm uninstall -k --user 0 com.miui.miwallpaper
pm uninstall -k --user 0 com.miui.translation.xmcloud
pm uninstall -k --user 0 com.miui.touchassistant
pm uninstall -k --user 0 com.xiaomi.discover
pm uninstall -k --user 0 com.xiaomi.location.fused
pm uninstall -k --user 0 com.xiaomi.mirecycle
pm uninstall -k --user 0 com.xiaomi.providers.appindex
pm uninstall -k --user 0 com.xiaomi.xmsf
```

