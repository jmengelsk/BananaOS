.class public final Lcom/android/server/usb/UsbUI;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final isSupportWirelessCharging:Z

.field public final mBatteryEventReceiver:Lcom/android/server/usb/UsbUI$1;

.field public mBootCompleted:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyModeReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

.field public final mHostInterfaceObserver:Lcom/android/server/usb/UsbUI$6;

.field public final mHostPathObserver:Lcom/android/server/usb/UsbUI$6;

.field public mIsEmergencyMode:Z

.field public mIsHiccupState:Z

.field public mIsHostConnected:Z

.field public mIsUsbBlkNotiShown:Z

.field public mIsUsbPortWet:Z

.field public final mLocaleChangedReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mLoggingLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mPortReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSourcePower:Z

.field public final mSupportDualRole:Z

.field public mSystemReady:Z

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public mUsbBlkPendingIntent:Ljava/lang/String;

.field public final mUsbCcicObserver:Lcom/android/server/usb/UsbUI$6;

.field public final mUsbControlObserver:Lcom/android/server/usb/UsbUI$6;

.field public final mUsbWetStateReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V
    .locals 8

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const v1, 0x104102e

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const v5, 0x104102e

    const-wide/16 v6, 0x8a

    const/16 v3, 0x6b

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    return-void

    :cond_1
    move-object v2, p0

    const/16 p0, 0x6b

    invoke-virtual {v2, p0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method public static -$$Nest$smisIncludeOption(JJ)Z
    .locals 0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mUsbBlkPendingIntent:Ljava/lang/String;

    new-instance v1, Lcom/android/server/usb/UsbUI$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mLocaleChangedReceiver:Lcom/android/server/usb/UsbUI$1;

    new-instance v2, Lcom/android/server/usb/UsbUI$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v2, p0, Lcom/android/server/usb/UsbUI;->mUsbWetStateReceiver:Lcom/android/server/usb/UsbUI$1;

    new-instance v3, Lcom/android/server/usb/UsbUI$1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v3, p0, Lcom/android/server/usb/UsbUI;->mPortReceiver:Lcom/android/server/usb/UsbUI$1;

    new-instance v4, Lcom/android/server/usb/UsbUI$1;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v4, p0, Lcom/android/server/usb/UsbUI;->mBatteryEventReceiver:Lcom/android/server/usb/UsbUI$1;

    new-instance v5, Lcom/android/server/usb/UsbUI$1;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v5, p0, Lcom/android/server/usb/UsbUI;->mEmergencyModeReceiver:Lcom/android/server/usb/UsbUI$1;

    new-instance v6, Lcom/android/server/usb/UsbUI$6;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v6, p0, Lcom/android/server/usb/UsbUI;->mHostPathObserver:Lcom/android/server/usb/UsbUI$6;

    new-instance v7, Lcom/android/server/usb/UsbUI$6;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v7, p0, Lcom/android/server/usb/UsbUI;->mHostInterfaceObserver:Lcom/android/server/usb/UsbUI$6;

    new-instance v8, Lcom/android/server/usb/UsbUI$6;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v8, p0, Lcom/android/server/usb/UsbUI;->mUsbControlObserver:Lcom/android/server/usb/UsbUI$6;

    new-instance v9, Lcom/android/server/usb/UsbUI$6;

    const/4 v10, 0x3

    invoke-direct {v9, p0, v10}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    iput-object v9, p0, Lcom/android/server/usb/UsbUI;->mUsbCcicObserver:Lcom/android/server/usb/UsbUI$6;

    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v10, Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-direct {v10, p0, p2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;-><init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    const/4 v10, 0x1

    const-string/jumbo v11, "UsbUI"

    invoke-virtual {p2, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo p2, "telecom"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string p2, "/sys/class/typec"

    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    const-string p0, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v6, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVTYPE=usb_interface"

    invoke-virtual {v7, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v9, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    invoke-virtual {v8, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final cancelNotification(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "UsbUI:"

    const-string v1, "  mSystemReady="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    const-string v2, "  mBootCompleted="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    const-string v2, "  mSupportDualRole="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    const-string v2, "  mIsEmergencyMode="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    const-string v2, "  mIsHostConnected="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    const-string v2, "  mSourcePower="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    const-string v2, "  mIsHiccupState="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    const-string v2, "  mIsUsbPortWet="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final loggingUsbWetDetection(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd/HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/wet_detect.log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "%s %s%n"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    :try_start_3
    const-string/jumbo p1, "UsbUI"

    const-string v0, "Can\'t close stream"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_2
    :goto_1
    :try_start_4
    const-string/jumbo p1, "UsbUI"

    const-string v1, "Can\'t write to /data/log/wet_detect.log"

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_3
    :try_start_6
    const-string/jumbo p1, "UsbUI"

    const-string v0, "Can\'t close stream"

    goto :goto_0

    :cond_0
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_4
    :try_start_8
    const-string/jumbo v0, "UsbUI"

    const-string v1, "Can\'t close stream"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    throw p1

    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public final notifyUsbInterface(IIILjava/lang/String;)V
    .locals 11

    const-string/jumbo v2, "add"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "remove"

    if-nez v3, :cond_0

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "notifyUsbInterface: [%d, %d, %d]"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "UsbUI"

    invoke-static {v5, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_1

    if-ne p1, v3, :cond_2

    const/4 v8, 0x0

    const-wide/16 v9, 0x2

    const/16 v6, 0x7c

    const v7, 0x1041017

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    return-void

    :cond_1
    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v3, :cond_2

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x3

    const/16 v1, 0x6f

    const v2, 0x1041018

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyUsbRestrict(Z)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.keyguard"

    const-string/jumbo v3, "com.android.keyguard.KeyguardSecUpdateMonitorImpl"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    const v4, 0x1080c10

    const-wide/16 v7, 0x8a

    const/16 v1, 0x7d

    const/4 v2, 0x0

    const v3, 0x104105a

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method public final notifyUsbWetDetection(Z)V
    .locals 9

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const v2, 0x1041073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {v2, v5, v3, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    const-string/jumbo v3, "turnOnDisplay()"

    const-string/jumbo v4, "UsbUI"

    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_0

    const-wide/16 v6, 0x1770

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    invoke-virtual {v3, v6, v7, v8, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_1
    new-instance v6, Landroid/app/Notification$Action;

    invoke-direct {v6, v5, v1, v2}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const v4, 0x1080be7

    const-wide/16 v7, 0xe

    const/16 v1, 0x66

    const v2, 0x1041074

    const v3, 0x1041071

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    const-string/jumbo v1, "WD"

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const-string v1, "DD"

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    return-void
.end method

.method public final onAwakeStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "UsbUI"

    const-string v0, "Clear USB Restriction Noti by Screen Unlock"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    const-string/jumbo p1, "OFF"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final postNotification(IIIJ)V
    .locals 9

    const/4 v6, 0x0

    const v4, 0x1080c11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p7, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x200

    and-long v2, p7, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usb/UsbUI$NotificationWrapper;-><init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    iget-boolean v2, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_4

    iget-boolean v3, v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before system ready: title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendingUsbRestrictionStateIntent(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    const-string/jumbo v1, "UsbUI"

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.USB_RESTRICTION_STATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "RestrictionState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "broadcasting intent to Lock Screen"

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed to broadcast intent to Lock Screen"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mUsbBlkPendingIntent:Ljava/lang/String;

    const-string/jumbo p0, "Pending intent to Lock Screen"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
