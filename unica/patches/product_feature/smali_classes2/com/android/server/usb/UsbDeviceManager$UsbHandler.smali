.class public abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAccessoryConnectionStartTime:J

.field public mAudioAccessoryConnected:Z

.field public mAudioAccessorySupported:Z

.field public mBootCompleted:Z

.field public mBroadcastedIntent:Landroid/content/Intent;

.field public mConfigured:Z

.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field public mCurrentFunctions:J

.field public mCurrentFunctionsApplied:Z

.field public mCurrentGadgetHalVersion:I

.field public mCurrentUsbFunctionsReceived:Z

.field public mCurrentUser:I

.field public mHideUsbNotiForSecUsbSmartEP:Z

.field public mHideUsbNotification:Z

.field public mHostConnected:Z

.field public mInHostModeWithNoAccessoryConnected:Z

.field public mIsMtpServiceBound:Z

.field public mMidiCard:I

.field public mMidiDevice:I

.field public mMidiEnabled:Z

.field public final mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPendingBootAccessoryHandshakeBroadcast:Z

.field public mPendingBootBroadcast:Z

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public mResetUsbGadgetDisableDebounce:Z

.field public mScreenLocked:Z

.field public mScreenUnlockedFunctions:J

.field public mSecCurrentFunctions:J

.field public mSendStringCount:I

.field public final mSettings:Landroid/content/SharedPreferences;

.field public mSinkPower:Z

.field public mSourcePower:Z

.field public mStartAccessory:Z

.field public mSupportsAllCombinations:Z

.field public mSystemReady:Z

.field public mUsbAccessoryConnected:Z

.field public final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public mUsbCharging:Z

.field public final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mUsbNotificationId:I

.field public mUsbSpeed:I

.field public final mUseUsbNotification:Z

.field public mUserUnlockedAfterBoot:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    new-instance p4, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p5

    const-string/jumbo v0, "UsbDeviceManagerPrefs.xml"

    invoke-direct {p4, p5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5, p4, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-nez p4, :cond_4c

    sget-object p4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p4, "UsbDeviceManager"

    const-string p5, "Couldn\'t load shared preferences"

    invoke-static {p4, p5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_4c
    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "usb-screen-unlocked-config-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    invoke-interface {p4, p5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    :goto_6b
    invoke-static {p2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p4

    if-eqz p4, :cond_76

    invoke-virtual {p4}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object p4

    goto :goto_77

    :cond_76
    const/4 p4, 0x0

    :goto_77
    if-eqz p4, :cond_80

    invoke-virtual {p4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result p4

    if-eqz p4, :cond_80

    goto :goto_8e

    :cond_80
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x1110294

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_8e

    move p1, p3

    :cond_8e
    :goto_8e
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    return-void
.end method

.method public static dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .registers 15

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_32

    const-wide/16 v1, 0x1

    shl-long v7, v1, v0

    and-long v1, p4, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    goto :goto_2c

    :cond_1e
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-static {v7, v8}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2c

    :cond_29
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    move-object p1, v4

    move-wide p2, v5

    goto :goto_1

    :cond_32
    return-void
.end method

.method public static getAppliedFunctions(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_12

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p0

    if-eqz p0, :cond_f

    return-wide v1

    :cond_f
    const-wide/16 p0, 0x4

    return-wide p0

    :cond_12
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    or-long/2addr p0, v1

    :cond_19
    return-wide p0
.end method

.method public static isAdbEnabled()Z
    .registers 2

    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/debug/AdbManagerInternal;->isAdbEnabled(B)Z

    move-result v0

    return v0
.end method

.method public static isEDMRestrictionPolicy()Z
    .registers 4

    const-string/jumbo v0, "UsbDeviceManager"

    :try_start_3
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_31

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_31

    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v1, "USB_MEDIA_PLAYER_AVAILABLE is false"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_29

    return v3

    :catch_29
    move-exception v1

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string v2, " Error while communicating with RestrictionPolicy : "

    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method public static isUsbDataTransferActive(J)Z
    .registers 6

    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const-wide/16 v0, 0x10

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final attachAccessoryAfterBoot()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, "AccessoryAttached"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1f

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_29

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    :cond_22
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    :cond_29
    :goto_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    return-void
.end method

.method public final broadcastUsbAccessoryHandshake()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.usb.action.USB_ACCESSORY_HANDSHAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.usb.extra.ACCESSORY_UEVENT_TIME"

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.usb.extra.ACCESSORY_STRING_COUNT"

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.usb.extra.ACCESSORY_START"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.usb.extra.ACCESSORY_HANDSHAKE_END"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "broadcasting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UsbDeviceManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    return-void
.end method

.method public final finishBoot(I)V
    .registers 9

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "finishBoot"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v1, :cond_69

    const-string/jumbo v1, "finishBoot all flags true"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v1, :cond_55

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "finishBoot mScreenUnlockedFunctions="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    goto :goto_5c

    :cond_55
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    :goto_5c
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz p1, :cond_63

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessoryAfterBoot()V

    :cond_63
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    :cond_69
    return-void
.end method

.method public final getMidiCardDevice()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "sys.usb.controller"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b1

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/udc/"

    const-string v5, "/gadget/sound"

    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a8

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v0, :cond_9f

    aget-object v2, v2, v1

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2, v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v0, :cond_96

    const-string/jumbo v3, "midiC(\\d+)D(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found MIDI card "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UsbDeviceManager"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8d
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "MIDI name not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "MIDI device not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "sound card not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a8
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "sound device not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "controller name not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getUsbSpeedCb(I)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, -0x1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x14

    const/4 v5, 0x1

    if-eq v3, v4, :cond_83a

    const/16 v6, 0x15

    if-eq v3, v6, :cond_834

    const/16 v6, 0x18

    if-eq v3, v6, :cond_81a

    const/16 v6, 0x19

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eq v3, v6, :cond_7dc

    const/16 v6, 0x65

    if-eq v3, v6, :cond_7b9

    const/4 v6, 0x0

    const-wide/16 v10, 0x2

    const/4 v12, 0x4

    const-wide/32 v13, 0x40000

    const/4 v15, 0x2

    packed-switch v3, :pswitch_data_858

    goto/16 :goto_833

    :pswitch_2c  #0xd
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_38

    move v3, v5

    goto :goto_39

    :cond_38
    move v3, v9

    :goto_39
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v3, v4, :cond_3f

    goto/16 :goto_833

    :cond_3f
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleMessage -> MSG_UPDATE_SCREEN_LOCK: mScreenLocked="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_50

    move v6, v5

    goto :goto_51

    :cond_50
    move v6, v9

    :goto_51
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_60

    goto :goto_61

    :cond_60
    move v5, v9

    :goto_61
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez v0, :cond_69

    goto/16 :goto_833

    :cond_69
    if-eqz v5, :cond_77

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_833

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :cond_77
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_833

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v3, v13

    cmp-long v0, v3, v7

    if-eqz v0, :cond_833

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    return-void

    :pswitch_88  #0xc
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage -> MSG_SET_SCREEN_UNLOCKED_FUNCTIONS: mScreenUnlockedFunctions="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    and-long/2addr v3, v13

    cmp-long v0, v3, v7

    if-eqz v0, :cond_d5

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_d5

    iput-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v0, "persist.sys.usb.config"

    const-string/jumbo v3, "adb"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "Set persist.sys.usb.config to adb"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    :cond_d5
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_de

    const-wide/32 v13, 0x40001

    :cond_de
    invoke-static {v13, v14}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "persist.sys.usb.config"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Set persist.sys.usb.config to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fd
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_11c

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const-string/jumbo v4, "usb-screen-unlocked-config-"

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11c
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_12a

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_12a

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    return-void

    :cond_12a
    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_12e  #0xb
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_LOCALE_CHANGED"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :pswitch_13d  #0xa
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleMessage -> MSG_UPDATE_HOST_STATE: connected="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_150

    move v6, v5

    goto :goto_151

    :cond_150
    move v6, v9

    :goto_151
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_165

    move v0, v5

    goto :goto_166

    :cond_165
    move v0, v9

    :goto_166
    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "HOST_STATE connected:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_187

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_189

    :cond_187
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    :goto_189
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    :cond_18b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v4

    sub-int/2addr v4, v5

    :cond_1c6
    :goto_1c6
    if-ltz v4, :cond_18b

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v6

    add-int/2addr v4, v2

    invoke-virtual {v6}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v7

    sub-int/2addr v7, v5

    :cond_1d2
    if-ltz v7, :cond_1c6

    invoke-virtual {v6, v7}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    add-int/2addr v7, v2

    sget-object v10, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d2

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    if-ne v8, v5, :cond_1d2

    const-string/jumbo v6, "UsbDeviceManager"

    const-string v7, "Clear notification: USB Audio connected"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    goto :goto_1c6

    :cond_1fc
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz v0, :cond_833

    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :pswitch_204  #0x9
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_209

    goto :goto_20a

    :cond_209
    move v5, v9

    :goto_20a
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eq v0, v5, :cond_833

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_UPDATE_CHARGING_STATE"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :pswitch_21f  #0x8
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_ACCESSORY_MODE_ENTER_TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string/jumbo v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Accessory mode enter timeout: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,operationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v2, :cond_259

    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v7

    if-nez v2, :cond_833

    :cond_259
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    return-void

    :pswitch_25d  #0x7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-boolean v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbPort;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/usb/UsbPortStatus;

    if-eqz v4, :cond_2c7

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v7

    if-ne v7, v5, :cond_275

    move v7, v5

    goto :goto_276

    :cond_275
    move v7, v9

    :goto_276
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    if-ne v7, v5, :cond_280

    move v7, v5

    goto :goto_281

    :cond_280
    move v7, v9

    :goto_281
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    if-ne v7, v15, :cond_28b

    move v7, v5

    goto :goto_28c

    :cond_28b
    move v7, v9

    :goto_28c
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v7

    if-ne v7, v12, :cond_296

    move v7, v5

    goto :goto_297

    :cond_296
    move v7, v9

    :goto_297
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v4, v5, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_2b3

    invoke-virtual {v4, v15, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_2b3

    invoke-virtual {v4, v5, v15}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_2b3

    invoke-virtual {v4, v15, v15}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_2b3

    move v7, v5

    goto :goto_2b4

    :cond_2b3
    move v7, v9

    :goto_2b4
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v7

    if-eq v7, v5, :cond_2be

    move v7, v5

    goto :goto_2bf

    :cond_2be
    move v7, v9

    :goto_2bf
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v8

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    goto :goto_2d1

    :cond_2c7
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    :goto_2d1
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v4, :cond_2df

    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-nez v4, :cond_2dc

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_2e1

    :cond_2dc
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_2e1

    :cond_2df
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    :goto_2e1
    invoke-virtual {v3, v12}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handleMessage -> MSG_UPDATE_PORT_STATE: mSupportsAllCombinations="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mAudioAccessorySupported="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mAudioAccessoryConnected="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const-string v0, "/sys/class/sec/ccic/usbpd_ids"

    const-string v3, "IOException(iex): "

    const-string/jumbo v4, "UsbDeviceManager"

    const-string v7, "File not Found exception: "

    const-string v8, "IOException: "

    const-string v10, "IllegalArgumentException: "

    const-string/jumbo v11, "null"

    :try_start_327
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_36f

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_337
    .catch Ljava/io/FileNotFoundException; {:try_start_327 .. :try_end_337} :catch_36b
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_337} :catch_368
    .catch Ljava/lang/IllegalArgumentException; {:try_start_327 .. :try_end_337} :catch_365
    .catchall {:try_start_327 .. :try_end_337} :catchall_360

    :try_start_337
    new-instance v13, Ljava/io/BufferedReader;

    invoke-direct {v13, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_33c
    .catch Ljava/io/FileNotFoundException; {:try_start_337 .. :try_end_33c} :catch_35d
    .catch Ljava/io/IOException; {:try_start_337 .. :try_end_33c} :catch_35a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_337 .. :try_end_33c} :catch_357
    .catchall {:try_start_337 .. :try_end_33c} :catchall_353

    :try_start_33c
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11
    :try_end_340
    .catch Ljava/io/FileNotFoundException; {:try_start_33c .. :try_end_340} :catch_34f
    .catch Ljava/io/IOException; {:try_start_33c .. :try_end_340} :catch_34b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33c .. :try_end_340} :catch_347
    .catchall {:try_start_33c .. :try_end_340} :catchall_342

    move-object v6, v12

    goto :goto_376

    :catchall_342
    move-exception v0

    move-object v1, v0

    :goto_344
    move-object v6, v12

    goto/16 :goto_446

    :catch_347
    move-exception v0

    :goto_348
    move-object v6, v12

    goto/16 :goto_39a

    :catch_34b
    move-exception v0

    :goto_34c
    move-object v6, v12

    goto/16 :goto_3c5

    :catch_34f
    move-exception v0

    :goto_350
    move-object v6, v12

    goto/16 :goto_3ec

    :catchall_353
    move-exception v0

    move-object v1, v0

    move-object v13, v6

    goto :goto_344

    :catch_357
    move-exception v0

    move-object v13, v6

    goto :goto_348

    :catch_35a
    move-exception v0

    move-object v13, v6

    goto :goto_34c

    :catch_35d
    move-exception v0

    move-object v13, v6

    goto :goto_350

    :catchall_360
    move-exception v0

    move-object v1, v0

    move-object v13, v6

    goto/16 :goto_446

    :catch_365
    move-exception v0

    move-object v13, v6

    goto :goto_39a

    :catch_368
    move-exception v0

    move-object v13, v6

    goto :goto_3c5

    :catch_36b
    move-exception v0

    move-object v13, v6

    goto/16 :goto_3ec

    :cond_36f
    :try_start_36f
    const-string/jumbo v0, "USB Check File does not exist"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_375
    .catch Ljava/io/FileNotFoundException; {:try_start_36f .. :try_end_375} :catch_36b
    .catch Ljava/io/IOException; {:try_start_36f .. :try_end_375} :catch_368
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36f .. :try_end_375} :catch_365
    .catchall {:try_start_36f .. :try_end_375} :catchall_360

    move-object v13, v6

    :goto_376
    if-eqz v6, :cond_37e

    :try_start_378
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_37e

    :catch_37c
    move-exception v0

    goto :goto_385

    :cond_37e
    :goto_37e
    if-eqz v13, :cond_414

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_383
    .catch Ljava/io/IOException; {:try_start_378 .. :try_end_383} :catch_37c

    goto/16 :goto_414

    :goto_385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_38a
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_414

    :goto_39a
    :try_start_39a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ad
    .catchall {:try_start_39a .. :try_end_3ad} :catchall_3c1

    if-eqz v6, :cond_3b5

    :try_start_3af
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_3b5

    :catch_3b3
    move-exception v0

    goto :goto_3bb

    :cond_3b5
    :goto_3b5
    if-eqz v13, :cond_414

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3ba
    .catch Ljava/io/IOException; {:try_start_3af .. :try_end_3ba} :catch_3b3

    goto :goto_414

    :goto_3bb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_38a

    :catchall_3c1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_446

    :goto_3c5
    :try_start_3c5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d8
    .catchall {:try_start_3c5 .. :try_end_3d8} :catchall_3c1

    if-eqz v6, :cond_3e0

    :try_start_3da
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_3e0

    :catch_3de
    move-exception v0

    goto :goto_3e6

    :cond_3e0
    :goto_3e0
    if-eqz v13, :cond_414

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_3e5
    .catch Ljava/io/IOException; {:try_start_3da .. :try_end_3e5} :catch_3de

    goto :goto_414

    :goto_3e6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_38a

    :goto_3ec
    :try_start_3ec
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ff
    .catchall {:try_start_3ec .. :try_end_3ff} :catchall_3c1

    if-eqz v6, :cond_407

    :try_start_401
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_407

    :catch_405
    move-exception v0

    goto :goto_40d

    :cond_407
    :goto_407
    if-eqz v13, :cond_414

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_40c
    .catch Ljava/io/IOException; {:try_start_401 .. :try_end_40c} :catch_405

    goto :goto_414

    :goto_40d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38a

    :cond_414
    :goto_414
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    const-string v0, "04E8:B007"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42a

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v3, "Clear notification: SAMSUNG USB Smart Earphone connected"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    :cond_42a
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_442

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez v0, :cond_437

    if-eqz v2, :cond_833

    :cond_437
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    goto/16 :goto_833

    :cond_442
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    goto/16 :goto_833

    :goto_446
    if-eqz v6, :cond_44e

    :try_start_448
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_44e

    :catch_44c
    move-exception v0

    goto :goto_454

    :cond_44e
    :goto_44e
    if-eqz v13, :cond_467

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_453
    .catch Ljava/io/IOException; {:try_start_448 .. :try_end_453} :catch_44c

    goto :goto_467

    :goto_454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_467
    :goto_467
    throw v1

    :pswitch_468  #0x6
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleMessage -> MSG_UPDATE_USER_RESTRICTIONS mCurrentFunctions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isUsbTransferAllowed()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v2

    if-nez v2, :cond_4a7

    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v2

    if-eqz v2, :cond_833

    :cond_4a7
    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v2

    if-nez v2, :cond_833

    invoke-virtual {v1, v0, v7, v8, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_4b1  #0x5
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "handleMessage -> MSG_USER_SWITCHED"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eq v3, v4, :cond_833

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Current user switched to "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->arg1:I

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    iput-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    iget-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_507

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "usb-screen-unlocked-config-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    :cond_507
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_50d  #0x4
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_BOOT_COMPLETED"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "MSG_BOOT_COMPLETED"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    :pswitch_52d  #0x3
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_SYSTEM_READY"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const-class v2, Landroid/debug/AdbManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/AdbManagerInternal;

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    invoke-direct {v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    invoke-virtual {v2, v3}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_580

    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    iget-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v7, 0x10401ac

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_580
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    :pswitch_586  #0x2
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "handleMessage -> MSG_SET_CURRENT_FUNCTION"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2, v3, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_59f  #0x1
    iget v2, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_5a4

    move v9, v5

    :cond_5a4
    iget v0, v0, Landroid/os/Message;->arg2:I

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAdbEnabled: enable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UsbDeviceManager"

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "persist.sys.usb.config"

    const-string/jumbo v4, "none"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "adb"

    const/16 v7, 0xc

    if-eqz v9, :cond_5dc

    iget-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v6, v10, v13

    if-nez v6, :cond_5ea

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_5dc
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5ea

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_5ea
    if-eqz v9, :cond_5f1

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5f5

    :cond_5f1
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5f5
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Set persist.sys.usb.config to "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_610  #0x0
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "handleMessage -> MSG_UPDATE_STATE: connected="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " configured="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " mCurrentFunctions="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v10

    iget-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-static {v10, v11}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    iget v11, v0, Landroid/os/Message;->arg1:I

    if-ne v11, v5, :cond_64f

    move v11, v5

    goto :goto_650

    :cond_64f
    move v11, v9

    :goto_650
    iput-boolean v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    iget v0, v0, Landroid/os/Message;->arg2:I

    if-ne v0, v5, :cond_658

    move v0, v5

    goto :goto_659

    :cond_658
    move v0, v9

    :goto_659
    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "handleMessage MSG_UPDATE_STATE mConnected:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " mConfigured:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_68c

    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v13, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    :cond_68c
    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long v13, v13, v16

    cmp-long v0, v13, v7

    const/16 v11, 0x8

    if-eqz v0, :cond_738

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v1, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    iget-boolean v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v13, :cond_72a

    if-eqz v3, :cond_72a

    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v13, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_6a9
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v13
    :try_end_6ac
    .catchall {:try_start_6a9 .. :try_end_6ac} :catchall_727

    if-eqz v0, :cond_71d

    new-instance v3, Lcom/android/server/usb/UsbSerialReader;

    iget-object v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const/16 v16, 0x5

    move/from16 v17, v12

    aget-object v12, v0, v16

    invoke-direct {v3, v13, v14, v12}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    aget-object v12, v0, v9

    if-eqz v12, :cond_713

    aget-object v12, v0, v5

    if-eqz v12, :cond_713

    new-instance v16, Landroid/hardware/usb/UsbAccessory;

    move/from16 v12, v17

    aget-object v17, v0, v9

    aget-object v18, v0, v5

    aget-object v19, v0, v15

    const/4 v13, 0x3

    aget-object v20, v0, v13

    aget-object v21, v0, v12

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    move-object/from16 v3, v16

    move-object/from16 v0, v22

    iput-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    iput-object v3, v0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "entering USB accessory mode: "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_738

    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_701
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v3
    :try_end_704
    .catchall {:try_start_701 .. :try_end_704} :catchall_710

    iget-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_738

    :catchall_710
    move-exception v0

    :try_start_711
    monitor-exit v3
    :try_end_712
    .catchall {:try_start_711 .. :try_end_712} :catchall_710

    throw v0

    :cond_713
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "Null object included. Manufacturer, Model, SerialNumberReader must be NonNull."

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_738

    :cond_71d
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "nativeGetAccessoryStrings failed"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_738

    :catchall_727
    move-exception v0

    :try_start_728
    monitor-exit v13
    :try_end_729
    .catchall {:try_start_728 .. :try_end_729} :catchall_727

    throw v0

    :cond_72a
    if-nez v3, :cond_730

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    goto :goto_738

    :cond_730
    const-string/jumbo v0, "UsbDeviceManager"

    const-string v3, "Debouncing accessory mode exit"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_738
    :goto_738
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_79d

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_764

    invoke-virtual {v1, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_764

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_764

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_75c

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_75c

    invoke-virtual {v1, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    goto :goto_799

    :cond_75c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v3

    invoke-virtual {v1, v10, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    goto :goto_799

    :cond_764
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-ne v0, v5, :cond_789

    sget-boolean v3, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    if-ne v3, v5, :cond_789

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    if-ne v0, v5, :cond_799

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_799

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "mSetNextUsbModeToDefault: Set default functions!"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v3

    invoke-virtual {v1, v10, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    sput-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    goto :goto_799

    :cond_789
    if-nez v0, :cond_799

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    if-eqz v0, :cond_799

    sput-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v3, "Disable USB Hidden Menu 1"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_799
    :goto_799
    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_79f

    :cond_79d
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    :goto_79f
    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_7a8

    iput v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void

    :cond_7a8
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_7b6

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_7b6

    const/16 v0, 0x16

    invoke-virtual {v1, v0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_7b6
    iput v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void

    :cond_7b9
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleMessage -> MSG_USB_NOTI_UPDATE: isForce="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_7d7

    goto :goto_7d8

    :cond_7d7
    move v5, v9

    :goto_7d8
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :cond_7dc
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleMessage -> MSG_UPDATE_MTP_RESTRICTIONS mCurrentFunctions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEDMRestrictionPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    move-result v0

    if-nez v0, :cond_833

    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :cond_81a
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "MSG_USER_UNLOCKED_AFTER_BOOT"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_82a

    goto :goto_833

    :cond_82a
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_833

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessoryAfterBoot()V

    :cond_833
    :goto_833
    return-void

    :cond_834
    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    return-void

    :cond_83a
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v2, "Accessory handshake timeout"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_84c

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    return-void

    :cond_84c
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "Pending broadcasting intent as not boot completed yet."

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    return-void

    :pswitch_data_858
    .packed-switch 0x0
        :pswitch_610  #00000000
        :pswitch_59f  #00000001
        :pswitch_586  #00000002
        :pswitch_52d  #00000003
        :pswitch_50d  #00000004
        :pswitch_4b1  #00000005
        :pswitch_468  #00000006
        :pswitch_25d  #00000007
        :pswitch_21f  #00000008
        :pswitch_204  #00000009
        :pswitch_13d  #0000000a
        :pswitch_12e  #0000000b
        :pswitch_88  #0000000c
        :pswitch_2c  #0000000d
    .end packed-switch
.end method

.method public abstract handlerInitDone(I)V
.end method

.method public final isUsbTransferAllowed()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final notifyAccessoryModeExit(I)V
    .registers 7

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_62

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iget-object v1, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v1

    :goto_20
    :try_start_20
    iget-object v3, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    iget-object v3, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbUserPermissionManager;

    iget-object v4, v3, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_3f

    :try_start_33
    iget-object v3, v3, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :catchall_3c
    move-exception p0

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p0

    :catchall_3f
    move-exception p0

    goto :goto_5d

    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_3f

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, v0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5f

    :goto_5d
    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_3f

    throw p0

    :cond_5f
    :goto_5f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    :cond_62
    return-void
.end method

.method public abstract resetCb(I)V
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "USB intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public abstract setCurrentUsbFunctionsCb(IJJIZ)V
.end method

.method public abstract setEnabledFunctions(IJZ)V
.end method

.method public final setScreenUnlockedFunctions(I)V
    .registers 5

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setScreenUnlockedFunctions: mScreenUnlockedFunctions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-static {v1, v2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbDeviceManager"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void
.end method

.method public final updateState(Ljava/lang/String;)V
    .registers 10

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "sys.usb.configured"

    const-string/jumbo v2, "UsbDeviceManager"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    const-string/jumbo p1, "none"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v4

    :goto_17
    move v0, p1

    goto :goto_34

    :cond_19
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move p1, v3

    move v0, v4

    goto :goto_34

    :cond_24
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string/jumbo p1, "configured"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    goto :goto_17

    :goto_34
    const/16 v1, 0x11

    if-ne p1, v3, :cond_3b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3b
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    iput p1, v5, Landroid/os/Message;->arg1:I

    iput v0, v5, Landroid/os/Message;->arg2:I

    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mResetUsbGadgetDisableDebounce:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " connected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "configured:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    if-eqz v6, :cond_76

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-ne p1, v3, :cond_75

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    :cond_75
    return-void

    :cond_76
    if-nez v0, :cond_81

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "removeMessages MSG_UPDATE_STATE"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-ne p1, v3, :cond_86

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_86
    if-nez p1, :cond_93

    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz p1, :cond_8f

    const/16 p1, 0x3e8

    goto :goto_91

    :cond_8f
    const/16 p1, 0xbb8

    :goto_91
    int-to-long v0, p1

    goto :goto_95

    :cond_93
    const-wide/16 v0, 0x0

    :goto_95
    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_99
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unknown state "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateUsbFunctions()V
    .registers 16

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    move v6, v3

    goto :goto_12

    :cond_11
    move v6, v2

    :goto_12
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    const-string/jumbo v7, "UsbDeviceManager"

    const/4 v8, 0x0

    if-eq v6, v0, :cond_75

    if-eqz v6, :cond_73

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getMidiCardDevice()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_21

    move v9, v3

    goto :goto_2b

    :catch_21
    move-exception v0

    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v9, "could not identify MIDI device"

    invoke-static {v7, v9, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v9, v2

    :goto_2b
    if-nez v9, :cond_69

    :try_start_2d
    new-instance v10, Ljava/util/Scanner;

    new-instance v0, Ljava/io/File;

    const-string v11, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_39} :catch_53
    .catchall {:try_start_2d .. :try_end_39} :catchall_50

    :try_start_39
    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_45} :catch_4e
    .catchall {:try_start_39 .. :try_end_45} :catchall_4a

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    move v9, v3

    goto :goto_69

    :catchall_4a
    move-exception v0

    move-object p0, v0

    move-object v8, v10

    goto :goto_63

    :catch_4e
    move-exception v0

    goto :goto_55

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_63

    :catch_53
    move-exception v0

    move-object v10, v8

    :goto_55
    :try_start_55
    sget-object v11, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v11, "could not open MIDI file"

    invoke-static {v7, v11, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_4a

    if-eqz v10, :cond_69

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto :goto_69

    :goto_63
    if-eqz v8, :cond_68

    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    :cond_68
    throw p0

    :cond_69
    :goto_69
    if-nez v9, :cond_73

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string v0, "Failed to enable MIDI function"

    invoke-static {v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    :cond_73
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    :cond_75
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_7f

    move v0, v3

    goto :goto_80

    :cond_7f
    move v0, v2

    :goto_80
    iget v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v9, :cond_8b

    goto :goto_e5

    :cond_8b
    if-eqz v0, :cond_da

    iget-object v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-nez v9, :cond_da

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v6, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1041034

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "name"

    invoke-virtual {v10, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x1041033

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "manufacturer"

    invoke-virtual {v10, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x1041035

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "product"

    invoke-virtual {v10, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "alsa_card"

    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "alsa_device"

    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Lcom/android/server/usb/UsbAlsaMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    goto :goto_e5

    :cond_da
    if-nez v0, :cond_e5

    iget-object v0, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-eqz v0, :cond_e5

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iput-object v8, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    :cond_e5
    :goto_e5
    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x4

    and-long/2addr v10, v8

    cmp-long v0, v10, v4

    if-eqz v0, :cond_f0

    move v0, v3

    goto :goto_f1

    :cond_f0
    move v0, v2

    :goto_f1
    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v4, v8, v4

    if-eqz v4, :cond_fa

    move v4, v3

    goto :goto_fb

    :cond_fa
    move v4, v2

    :goto_fb
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v5, "updateMtpFunction , mtpEnabled: "

    const-string v6, ", ptpEnabled: "

    const-string v8, ", mIsMtpServiceBound: "

    invoke-static {v5, v0, v6, v4, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string/jumbo v6, "Unbinding from MtpService"

    if-eqz v5, :cond_169

    if-nez v0, :cond_11f

    if-eqz v4, :cond_169

    :cond_11f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.mtp"

    const-string/jumbo v8, "com.android.mtp.MtpService"

    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "Binding to MtpService"

    invoke-static {v7, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_137
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v1, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z
    :try_end_141
    .catch Ljava/lang/SecurityException; {:try_start_137 .. :try_end_141} :catch_142

    goto :goto_14b

    :catch_142
    move-exception v0

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "Unable to bind to MtpService due to SecurityException"

    invoke-static {v7, v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14b
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-nez v0, :cond_15e

    invoke-static {v7, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    const-string v0, "Binding to MtpService failed"

    invoke-static {v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-eqz p0, :cond_177

    const-string/jumbo p0, "Successfully bound to MtpService"

    invoke-static {v7, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    :cond_169
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-eqz v0, :cond_177

    invoke-static {v7, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    :cond_177
    :goto_177
    return-void
.end method

.method public final updateUsbNotification(Z)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "updateUsbNotification("

    const-string v3, "): mConnected="

    invoke-static {v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHostConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSourcePower="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSinkPower="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mUsbCharging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UsbDeviceManager"

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2e8

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v2, :cond_2e8

    const-string/jumbo v2, "persist.charging.notify"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    goto/16 :goto_2e8

    :cond_61
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_6b

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    if-eqz v2, :cond_82

    :cond_6b
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v2, :cond_82

    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_2e8

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    const-string v0, "Clear notification"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_82
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    if-eqz v2, :cond_99

    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_2e8

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    const-string v0, "Clear notification by SEC USB SmartEP"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_99
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v6, "NOT FLIP or FLIP OPENED"

    invoke-static {v3, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x104103f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_b8

    const-wide/32 v11, -0x400002

    and-long/2addr v7, v11

    :cond_b8
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const/16 v12, 0x20

    const v13, 0x104105e

    const/16 v14, 0x1f

    if-eqz v11, :cond_cc

    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v11, :cond_cc

    const/16 v7, 0x29

    move v15, v13

    goto/16 :goto_168

    :cond_cc
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const v15, 0x1041041

    const v16, 0x1041051

    if-eqz v11, :cond_150

    const-wide/16 v17, 0x4

    cmp-long v11, v7, v17

    if-nez v11, :cond_e2

    const v7, 0x104103b

    const/16 v8, 0x1b

    goto :goto_13e

    :cond_e2
    const-wide/16 v17, 0x10

    cmp-long v11, v7, v17

    if-nez v11, :cond_ee

    const v7, 0x1041043

    const/16 v8, 0x1c

    goto :goto_13e

    :cond_ee
    const-wide/16 v17, 0x8

    cmp-long v11, v7, v17

    if-nez v11, :cond_fa

    const v7, 0x1041032

    const/16 v8, 0x1d

    goto :goto_13e

    :cond_fa
    const-wide/16 v17, 0x20

    cmp-long v11, v7, v17

    if-eqz v11, :cond_139

    const-wide/16 v17, 0x400

    cmp-long v11, v7, v17

    if-nez v11, :cond_107

    goto :goto_139

    :cond_107
    const-wide/16 v17, 0x80

    cmp-long v11, v7, v17

    if-nez v11, :cond_113

    const v7, 0x1041061

    const/16 v8, 0x4b

    goto :goto_13e

    :cond_113
    const-wide/16 v17, 0x2

    cmp-long v11, v7, v17

    if-nez v11, :cond_11f

    const v7, 0x104100c

    const/16 v8, 0x1e

    goto :goto_13e

    :cond_11f
    const-wide/32 v17, 0x80000

    cmp-long v11, v7, v17

    if-nez v11, :cond_12c

    const v7, 0x1041019

    const/16 v8, 0x64

    goto :goto_13e

    :cond_12c
    cmp-long v7, v7, v9

    if-nez v7, :cond_136

    const v7, 0x1041022

    const/16 v8, 0x6e

    goto :goto_13e

    :cond_136
    move v7, v5

    move v8, v7

    goto :goto_13e

    :cond_139
    :goto_139
    const v7, 0x1041052

    const/16 v8, 0x2f

    :goto_13e
    iget-boolean v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v9, :cond_149

    if-eqz v7, :cond_145

    goto :goto_14d

    :cond_145
    :goto_145
    move v7, v14

    move/from16 v15, v16

    goto :goto_168

    :cond_149
    if-nez v7, :cond_14d

    :cond_14b
    :goto_14b
    move v7, v12

    goto :goto_168

    :cond_14d
    :goto_14d
    move v15, v7

    move v7, v8

    goto :goto_168

    :cond_150
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v7, :cond_155

    goto :goto_145

    :cond_155
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v7, :cond_166

    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v7, :cond_166

    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-nez v7, :cond_14b

    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz v7, :cond_166

    goto :goto_14b

    :cond_166
    move v7, v5

    move v15, v7

    :goto_168
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    if-eqz v8, :cond_181

    invoke-virtual {v8}, Landroid/util/sysfwutil/DexObserver;->isDexModeOn()Z

    move-result v8

    if-nez v8, :cond_17a

    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    invoke-virtual {v8}, Landroid/util/sysfwutil/DexObserver;->isSemiDexModeOn()Z

    move-result v8

    if-eqz v8, :cond_181

    :cond_17a
    const-string v7, "Clear notification: Dex is on"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17f
    move v7, v5

    goto :goto_1b8

    :cond_181
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string/jumbo v9, "ON_ALL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_192

    const-string v7, "Clear notification: ON_ALL"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    :cond_192
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string/jumbo v9, "ON_HOST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a5

    if-ne v7, v14, :cond_1a5

    const-string v7, "Clear notification: ON_HOST"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    :cond_1a5
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string/jumbo v9, "ON_DEVICE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b8

    if-eq v7, v14, :cond_1b8

    const-string v7, "Clear notification: ON_DEVICE"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    :cond_1b8
    :goto_1b8
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v7, v8, :cond_1be

    if-eqz v1, :cond_2e8

    :cond_1be
    if-eqz v8, :cond_1dd

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cancelAsUser: id="

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_1dd
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v8, "android.hardware.type.automotive"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1fb

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v8, "android.hardware.type.watch"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_200

    :cond_1fb
    if-ne v7, v12, :cond_200

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    return-void

    :cond_200
    if-eqz v7, :cond_2e8

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v8, "com.android.settings"

    if-eq v15, v13, :cond_248

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v9, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/high16 v19, 0x4000000

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v8, Landroid/app/NotificationChannel;

    const-string/jumbo v9, "USB_DEV_NOTI"

    const-string/jumbo v10, "UsbDevNoti"

    const/4 v11, 0x2

    invoke-direct {v8, v10, v9, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string/jumbo v9, "USB Device Notification Channel"

    invoke-virtual {v8, v9}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_280

    :cond_248
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.android.settings.HelpTrampoline"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.extra.TEXT"

    const-string/jumbo v9, "help_url_audio_accessory_not_supported"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_271

    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4000000

    invoke-static {v8, v5, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_272

    :cond_271
    move-object v6, v4

    :goto_272
    const v8, 0x104105d

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v10, "ALERTS"

    move-object/from16 v22, v6

    move-object v6, v2

    move-object/from16 v2, v22

    :goto_280
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v9, 0x1080bef

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    if-ne v15, v13, :cond_2bf

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_2bf
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v7, v2, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyAsUser: id="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " title="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_2e8
    :goto_2e8
    return-void
.end method

.method public final updateUsbStateBroadcastIfNeeded(JZ)V
    .registers 15

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateUsbStateBroadcastIfNeeded: functions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbDeviceManager"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x31000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "connected"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "host_connected"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "configured"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a3

    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string/jumbo v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "getSealedUsbMassStorageState"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_9c

    :try_start_6f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v5, "getSealedUsbMassStorageState"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_84} :catch_8b
    .catchall {:try_start_6f .. :try_end_84} :catchall_88

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9d

    :catchall_88
    move-exception v0

    move-object p0, v0

    goto :goto_98

    :catch_8b
    :try_start_8b
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v5, "exception SEALED_USB_MASSSTORAGE_STATE."

    invoke-static {v1, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_88

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    goto :goto_9f

    :goto_98
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_9c
    move v5, v4

    :goto_9d
    xor-int/lit8 v2, v5, 0x1

    :goto_9f
    if-nez v2, :cond_a3

    move v2, v4

    goto :goto_a4

    :cond_a3
    move v2, v3

    :goto_a4
    const-string/jumbo v5, "unlocked"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "config_changed"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_b0
    const-wide/16 v5, 0x0

    cmp-long p3, p1, v5

    if-eqz p3, :cond_c7

    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    sub-long/2addr p1, v5

    goto :goto_b0

    :cond_c7
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    if-nez p2, :cond_eb

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_117

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_d7

    :goto_e9
    move v3, v4

    goto :goto_117

    :cond_eb
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_fa

    goto :goto_e9

    :cond_fa
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_fe
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_117

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eq p3, p2, :cond_fe

    goto :goto_e9

    :cond_117
    :goto_117
    const-string p1, " extras: "

    if-nez v3, :cond_13a

    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "skip broadcasting "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13a
    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "broadcasting "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    return-void
.end method
