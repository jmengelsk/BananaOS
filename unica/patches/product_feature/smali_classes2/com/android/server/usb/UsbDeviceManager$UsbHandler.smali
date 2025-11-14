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
    .locals 2

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

    if-nez p4, :cond_0

    sget-object p4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p4, "UsbDeviceManager"

    const-string p5, "Couldn\'t load shared preferences"

    invoke-static {p4, p5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
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

    :goto_0
    invoke-static {p2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x1110294

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, p3

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    return-void
.end method

.method public static dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_2

    const-wide/16 v1, 0x1

    shl-long v7, v1, v0

    and-long v1, p4, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_0
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-static {v7, v8}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    move-object p1, v4

    move-wide p2, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getAppliedFunctions(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 p0, 0x4

    return-wide p0

    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    or-long/2addr p0, v1

    :cond_2
    return-wide p0
.end method

.method public static isAdbEnabled()Z
    .locals 2

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
    .locals 4

    const-string/jumbo v0, "UsbDeviceManager"

    :try_start_0
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v1, "USB_MEDIA_PLAYER_AVAILABLE is false"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string v2, " Error while communicating with RestrictionPolicy : "

    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isUsbDataTransferActive(J)Z
    .locals 4

    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x10

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final attachAccessoryAfterBoot()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, "AccessoryAttached"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    return-void
.end method

.method public final broadcastUsbAccessoryHandshake()V
    .locals 4

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
    .locals 7

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "finishBoot"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "finishBoot all flags true"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

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

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    :goto_0
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessoryAfterBoot()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    :cond_3
    return-void
.end method

.method public final getMidiCardDevice()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "sys.usb.controller"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/udc/"

    const-string v5, "/gadget/sound"

    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v0, :cond_2

    aget-object v2, v2, v1

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2, v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v0, :cond_1

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

    if-eqz v2, :cond_0

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

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "MIDI name not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "MIDI device not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "sound card not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "sound device not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "controller name not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getUsbSpeedCb(I)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, -0x1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x14

    const/4 v5, 0x1

    if-eq v3, v4, :cond_44

    const/16 v6, 0x15

    if-eq v3, v6, :cond_43

    const/16 v6, 0x18

    if-eq v3, v6, :cond_40

    const/16 v6, 0x19

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eq v3, v6, :cond_3f

    const/16 v6, 0x65

    if-eq v3, v6, :cond_3d

    const/4 v6, 0x0

    const-wide/16 v10, 0x2

    const/4 v12, 0x4

    const-wide/32 v13, 0x40000

    const/4 v15, 0x2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2e

    :pswitch_0
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v3, v4, :cond_1

    goto/16 :goto_2e

    :cond_1
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleMessage -> MSG_UPDATE_SCREEN_LOCK: mScreenLocked="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v9

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v9

    :goto_2
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez v0, :cond_4

    goto/16 :goto_2e

    :cond_4
    if-eqz v5, :cond_5

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_42

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :cond_5
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_42

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v3, v13

    cmp-long v0, v3, v7

    if-eqz v0, :cond_42

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    return-void

    :pswitch_1
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

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v0, "persist.sys.usb.config"

    const-string/jumbo v3, "adb"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "Set persist.sys.usb.config to adb"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/32 v13, 0x40001

    :cond_7
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

    :goto_3
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

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

    :cond_8
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_9

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_9

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    return-void

    :cond_9
    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_2
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_LOCALE_CHANGED"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :pswitch_3
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleMessage -> MSG_UPDATE_HOST_STATE: connected="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_a

    move v6, v5

    goto :goto_4

    :cond_a
    move v6, v9

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_b

    move v0, v5

    goto :goto_5

    :cond_b
    move v0, v9

    :goto_5
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

    if-nez v0, :cond_c

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_6

    :cond_c
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    :goto_6
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

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

    :cond_e
    :goto_7
    if-ltz v4, :cond_d

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v6

    add-int/2addr v4, v2

    invoke-virtual {v6}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v7

    sub-int/2addr v7, v5

    :cond_f
    if-ltz v7, :cond_e

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

    if-eqz v10, :cond_f

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    if-ne v8, v5, :cond_f

    const-string/jumbo v6, "UsbDeviceManager"

    const-string v7, "Clear notification: USB Audio connected"

    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    goto :goto_7

    :cond_10
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz v0, :cond_42

    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :pswitch_4
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_11

    goto :goto_8

    :cond_11
    move v5, v9

    :goto_8
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-eq v0, v5, :cond_42

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "handleMessage -> MSG_UPDATE_CHARGING_STATE"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :pswitch_5
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

    if-eqz v2, :cond_12

    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v7

    if-nez v2, :cond_42

    :cond_12
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    return-void

    :pswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-boolean v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbPort;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/usb/UsbPortStatus;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v7

    if-ne v7, v5, :cond_13

    move v7, v5

    goto :goto_9

    :cond_13
    move v7, v9

    :goto_9
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    if-ne v7, v5, :cond_14

    move v7, v5

    goto :goto_a

    :cond_14
    move v7, v9

    :goto_a
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v7

    if-ne v7, v15, :cond_15

    move v7, v5

    goto :goto_b

    :cond_15
    move v7, v9

    :goto_b
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v7

    if-ne v7, v12, :cond_16

    move v7, v5

    goto :goto_c

    :cond_16
    move v7, v9

    :goto_c
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    invoke-virtual {v4, v5, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v4, v15, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v4, v5, v15}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v4, v15, v15}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v7

    if-eqz v7, :cond_17

    move v7, v5

    goto :goto_d

    :cond_17
    move v7, v9

    :goto_d
    iput-boolean v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v7

    if-eq v7, v5, :cond_18

    move v7, v5

    goto :goto_e

    :cond_18
    move v7, v9

    :goto_e
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v8

    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    goto :goto_f

    :cond_19
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    :goto_f
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-nez v4, :cond_1a

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_10

    :cond_1a
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_10

    :cond_1b
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    :goto_10
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

    :try_start_0
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1c

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v13, Ljava/io/BufferedReader;

    invoke-direct {v13, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v12

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_11
    move-object v6, v12

    goto/16 :goto_23

    :catch_0
    move-exception v0

    :goto_12
    move-object v6, v12

    goto/16 :goto_19

    :catch_1
    move-exception v0

    :goto_13
    move-object v6, v12

    goto/16 :goto_1c

    :catch_2
    move-exception v0

    :goto_14
    move-object v6, v12

    goto/16 :goto_1f

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v13, v6

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v13, v6

    goto :goto_12

    :catch_4
    move-exception v0

    move-object v13, v6

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v13, v6

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v13, v6

    goto/16 :goto_23

    :catch_6
    move-exception v0

    move-object v13, v6

    goto :goto_19

    :catch_7
    move-exception v0

    move-object v13, v6

    goto :goto_1c

    :catch_8
    move-exception v0

    move-object v13, v6

    goto/16 :goto_1f

    :cond_1c
    :try_start_3
    const-string/jumbo v0, "USB Check File does not exist"

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v13, v6

    :goto_15
    if-eqz v6, :cond_1d

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_16

    :catch_9
    move-exception v0

    goto :goto_17

    :cond_1d
    :goto_16
    if-eqz v13, :cond_21

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_22

    :goto_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_18
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :goto_19
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v6, :cond_1e

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_1a

    :catch_a
    move-exception v0

    goto :goto_1b

    :cond_1e
    :goto_1a
    if-eqz v13, :cond_21

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_22

    :goto_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_23

    :goto_1c
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v6, :cond_1f

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_1d

    :catch_b
    move-exception v0

    goto :goto_1e

    :cond_1f
    :goto_1d
    if-eqz v13, :cond_21

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_22

    :goto_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :goto_1f
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v6, :cond_20

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_20

    :catch_c
    move-exception v0

    goto :goto_21

    :cond_20
    :goto_20
    if-eqz v13, :cond_21

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_22

    :goto_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_21
    :goto_22
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    const-string v0, "04E8:B007"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v3, "Clear notification: SAMSUNG USB Smart Earphone connected"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    :cond_22
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_24

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez v0, :cond_23

    if-eqz v2, :cond_42

    :cond_23
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    goto/16 :goto_2e

    :cond_24
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    goto/16 :goto_2e

    :goto_23
    if-eqz v6, :cond_25

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_24

    :catch_d
    move-exception v0

    goto :goto_25

    :cond_25
    :goto_24
    if-eqz v13, :cond_26

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_26

    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    throw v1

    :pswitch_7
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

    if-nez v2, :cond_27

    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_27
    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-virtual {v1, v0, v7, v8, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_8
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "handleMessage -> MSG_USER_SWITCHED"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eq v3, v4, :cond_42

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

    if-eqz v3, :cond_28

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

    :cond_28
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :pswitch_9
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

    :pswitch_a
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

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    iget-object v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v7, 0x10401ac

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_29
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    :pswitch_b
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

    :pswitch_c
    iget v2, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_2a

    move v9, v5

    :cond_2a
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

    if-eqz v9, :cond_2b

    iget-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v6, v10, v13

    if-nez v6, :cond_2c

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_2b
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_2c
    if-eqz v9, :cond_2d

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_27

    :cond_2d
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_27
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

    :pswitch_d
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

    if-ne v11, v5, :cond_2e

    move v11, v5

    goto :goto_28

    :cond_2e
    move v11, v9

    :goto_28
    iput-boolean v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    iget v0, v0, Landroid/os/Message;->arg2:I

    if-ne v0, v5, :cond_2f

    move v0, v5

    goto :goto_29

    :cond_2f
    move v0, v9

    :goto_29
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

    if-eqz v0, :cond_30

    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v13, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v13

    invoke-virtual {v1, v13, v14, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    :cond_30
    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long v13, v13, v16

    cmp-long v0, v13, v7

    const/16 v11, 0x8

    if-eqz v0, :cond_35

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v1, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    iget-boolean v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v13, :cond_33

    if-eqz v3, :cond_33

    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v13, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_c
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v0, :cond_32

    new-instance v3, Lcom/android/server/usb/UsbSerialReader;

    iget-object v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const/16 v16, 0x5

    move/from16 v17, v12

    aget-object v12, v0, v16

    invoke-direct {v3, v13, v14, v12}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    aget-object v12, v0, v9

    if-eqz v12, :cond_31

    aget-object v12, v0, v5

    if-eqz v12, :cond_31

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

    if-eqz v0, :cond_35

    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    iget-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_2a

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :cond_31
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "Null object included. Manufacturer, Model, SerialNumberReader must be NonNull."

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_32
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "nativeGetAccessoryStrings failed"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catchall_5
    move-exception v0

    :try_start_f
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    :cond_33
    if-nez v3, :cond_34

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    goto :goto_2a

    :cond_34
    const-string/jumbo v0, "UsbDeviceManager"

    const-string v3, "Debouncing accessory mode exit"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_2a
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v0, :cond_37

    invoke-virtual {v1, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_37

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_36

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_36

    invoke-virtual {v1, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    goto :goto_2b

    :cond_36
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v3

    invoke-virtual {v1, v10, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    goto :goto_2b

    :cond_37
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-ne v0, v5, :cond_38

    sget-boolean v3, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    if-ne v3, v5, :cond_38

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    if-ne v0, v5, :cond_39

    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_39

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v3, "mSetNextUsbModeToDefault: Set default functions!"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v3

    invoke-virtual {v1, v10, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    sput-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    goto :goto_2b

    :cond_38
    if-nez v0, :cond_39

    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    if-eqz v0, :cond_39

    sput-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v3, "Disable USB Hidden Menu 1"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_2b
    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_2c

    :cond_3a
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    :goto_2c
    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3b

    iput v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void

    :cond_3b
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x16

    invoke-virtual {v1, v0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_3c
    iput v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void

    :cond_3d
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

    if-ne v0, v5, :cond_3e

    goto :goto_2d

    :cond_3e
    move v5, v9

    :goto_2d
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    :cond_3f
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

    if-nez v0, :cond_42

    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    return-void

    :cond_40
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "MSG_USER_UNLOCKED_AFTER_BOOT"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_41

    goto :goto_2e

    :cond_41
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_42

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessoryAfterBoot()V

    :cond_42
    :goto_2e
    return-void

    :cond_43
    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    return-void

    :cond_44
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v2, "Accessory handshake timeout"

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_45

    invoke-virtual {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    return-void

    :cond_45
    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v2, "Pending broadcasting intent as not boot completed yet."

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract handlerInitDone(I)V
.end method

.method public final isUsbTransferAllowed()Z
    .locals 1

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
    .locals 5

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v0, "UsbDeviceManager"

    const-string/jumbo v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iget-object v1, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbUserPermissionManager;

    iget-object v4, v3, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v3, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

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

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    :cond_2
    return-void
.end method

.method public abstract resetCb(I)V
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 3

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
    .locals 3

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
    .locals 8

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "sys.usb.configured"

    const-string/jumbo v2, "UsbDeviceManager"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "none"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v4

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_0
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo p1, "configured"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    goto :goto_0

    :goto_1
    const/16 v1, 0x11

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
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

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-ne p1, v3, :cond_3

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "removeMessages MSG_UPDATE_STATE"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-ne p1, v3, :cond_6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz p1, :cond_7

    const/16 p1, 0x3e8

    goto :goto_2

    :cond_7
    const/16 p1, 0xbb8

    :goto_2
    int-to-long v0, p1

    goto :goto_3

    :cond_8
    const-wide/16 v0, 0x0

    :goto_3
    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_9
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
    .locals 15

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    const-string/jumbo v7, "UsbDeviceManager"

    const/4 v8, 0x0

    if-eq v6, v0, :cond_4

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getMidiCardDevice()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v3

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v9, "could not identify MIDI device"

    invoke-static {v7, v9, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v9, v2

    :goto_1
    if-nez v9, :cond_2

    :try_start_1
    new-instance v10, Ljava/util/Scanner;

    new-instance v0, Ljava/io/File;

    const-string v11, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    invoke-virtual {v10}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    move v9, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v8, v10

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v10, v8

    :goto_2
    :try_start_3
    sget-object v11, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v11, "could not open MIDI file"

    invoke-static {v7, v11, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/Scanner;->close()V

    goto :goto_4

    :goto_3
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    :cond_1
    throw p0

    :cond_2
    :goto_4
    if-nez v9, :cond_3

    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string v0, "Failed to enable MIDI function"

    invoke-static {v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    :cond_3
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iget v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    iget-object v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-nez v9, :cond_7

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

    goto :goto_6

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-eqz v0, :cond_8

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iput-object v8, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    :cond_8
    :goto_6
    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v10, 0x4

    and-long/2addr v10, v8

    cmp-long v0, v10, v4

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_7
    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v4, v8, v4

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_8

    :cond_a
    move v4, v2

    :goto_8
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

    if-eqz v5, :cond_d

    if-nez v0, :cond_b

    if-eqz v4, :cond_d

    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.mtp"

    const-string/jumbo v8, "com.android.mtp.MtpService"

    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "Binding to MtpService"

    invoke-static {v7, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v1, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "Unable to bind to MtpService due to SecurityException"

    invoke-static {v7, v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-nez v0, :cond_c

    invoke-static {v7, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    const-string v0, "Binding to MtpService failed"

    invoke-static {v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-eqz p0, :cond_e

    const-string/jumbo p0, "Successfully bound to MtpService"

    invoke-static {v7, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-eqz v0, :cond_e

    invoke-static {v7, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    :cond_e
    :goto_a
    return-void
.end method

.method public final updateUsbNotification(Z)V
    .locals 23

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

    if-eqz v2, :cond_22

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "persist.charging.notify"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v2, :cond_2

    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_22

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    const-string v0, "Clear notification"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    if-eqz v2, :cond_3

    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_22

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    const-string v0, "Clear notification by SEC USB SmartEP"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
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

    if-eqz v11, :cond_4

    const-wide/32 v11, -0x400002

    and-long/2addr v7, v11

    :cond_4
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const/16 v12, 0x20

    const v13, 0x104105e

    const/16 v14, 0x1f

    if-eqz v11, :cond_5

    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v11, :cond_5

    const/16 v7, 0x29

    move v15, v13

    goto/16 :goto_5

    :cond_5
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const v15, 0x1041041

    const v16, 0x1041051

    if-eqz v11, :cond_13

    const-wide/16 v17, 0x4

    cmp-long v11, v7, v17

    if-nez v11, :cond_6

    const v7, 0x104103b

    const/16 v8, 0x1b

    goto :goto_1

    :cond_6
    const-wide/16 v17, 0x10

    cmp-long v11, v7, v17

    if-nez v11, :cond_7

    const v7, 0x1041043

    const/16 v8, 0x1c

    goto :goto_1

    :cond_7
    const-wide/16 v17, 0x8

    cmp-long v11, v7, v17

    if-nez v11, :cond_8

    const v7, 0x1041032

    const/16 v8, 0x1d

    goto :goto_1

    :cond_8
    const-wide/16 v17, 0x20

    cmp-long v11, v7, v17

    if-eqz v11, :cond_e

    const-wide/16 v17, 0x400

    cmp-long v11, v7, v17

    if-nez v11, :cond_9

    goto :goto_0

    :cond_9
    const-wide/16 v17, 0x80

    cmp-long v11, v7, v17

    if-nez v11, :cond_a

    const v7, 0x1041061

    const/16 v8, 0x4b

    goto :goto_1

    :cond_a
    const-wide/16 v17, 0x2

    cmp-long v11, v7, v17

    if-nez v11, :cond_b

    const v7, 0x104100c

    const/16 v8, 0x1e

    goto :goto_1

    :cond_b
    const-wide/32 v17, 0x80000

    cmp-long v11, v7, v17

    if-nez v11, :cond_c

    const v7, 0x1041019

    const/16 v8, 0x64

    goto :goto_1

    :cond_c
    cmp-long v7, v7, v9

    if-nez v7, :cond_d

    const v7, 0x1041022

    const/16 v8, 0x6e

    goto :goto_1

    :cond_d
    move v7, v5

    move v8, v7

    goto :goto_1

    :cond_e
    :goto_0
    const v7, 0x1041052

    const/16 v8, 0x2f

    :goto_1
    iget-boolean v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v9, :cond_10

    if-eqz v7, :cond_f

    goto :goto_4

    :cond_f
    :goto_2
    move v7, v14

    move/from16 v15, v16

    goto :goto_5

    :cond_10
    if-nez v7, :cond_12

    :cond_11
    :goto_3
    move v7, v12

    goto :goto_5

    :cond_12
    :goto_4
    move v15, v7

    move v7, v8

    goto :goto_5

    :cond_13
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v7, :cond_14

    goto :goto_2

    :cond_14
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v7, :cond_15

    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v7, :cond_15

    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-nez v7, :cond_11

    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz v7, :cond_15

    goto :goto_3

    :cond_15
    move v7, v5

    move v15, v7

    :goto_5
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Landroid/util/sysfwutil/DexObserver;->isDexModeOn()Z

    move-result v8

    if-nez v8, :cond_16

    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    invoke-virtual {v8}, Landroid/util/sysfwutil/DexObserver;->isSemiDexModeOn()Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_16
    const-string v7, "Clear notification: Dex is on"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move v7, v5

    goto :goto_7

    :cond_17
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string/jumbo v9, "ON_ALL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v7, "Clear notification: ON_ALL"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_18
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string/jumbo v9, "ON_HOST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_19

    if-ne v7, v14, :cond_19

    const-string v7, "Clear notification: ON_HOST"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_19
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    const-string/jumbo v9, "ON_DEVICE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a

    if-eq v7, v14, :cond_1a

    const-string v7, "Clear notification: ON_DEVICE"

    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_1a
    :goto_7
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v7, v8, :cond_1b

    if-eqz v1, :cond_22

    :cond_1b
    if-eqz v8, :cond_1c

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

    :cond_1c
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v8, "android.hardware.type.automotive"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v8, "android.hardware.type.watch"

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    if-ne v7, v12, :cond_1e

    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    return-void

    :cond_1e
    if-eqz v7, :cond_22

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v8, "com.android.settings"

    if-eq v15, v13, :cond_1f

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

    goto :goto_9

    :cond_1f
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

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/high16 v9, 0x4000000

    invoke-static {v8, v5, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_8

    :cond_20
    move-object v6, v4

    :goto_8
    const v8, 0x104105d

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v10, "ALERTS"

    move-object/from16 v22, v6

    move-object v6, v2

    move-object/from16 v2, v22

    :goto_9
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

    if-ne v15, v13, :cond_21

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_21
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

    :cond_22
    :goto_a
    return-void
.end method

.method public final updateUsbStateBroadcastIfNeeded(JZ)V
    .locals 11

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

    if-eqz v2, :cond_1

    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    move-result v2

    if-eqz v2, :cond_1

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

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v5, "getSealedUsbMassStorageState"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v5, "exception SEALED_USB_MASSSTORAGE_STATE."

    invoke-static {v1, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    goto :goto_2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_0
    move v5, v4

    :goto_1
    xor-int/lit8 v2, v5, 0x1

    :goto_2
    if-nez v2, :cond_1

    move v2, v4

    goto :goto_3

    :cond_1
    move v2, v3

    :goto_3
    const-string/jumbo v5, "unlocked"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "config_changed"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_4
    const-wide/16 v5, 0x0

    cmp-long p3, p1, v5

    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v5

    sub-long/2addr p1, v5

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_5
    move v3, v4

    goto :goto_6

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eq p3, p2, :cond_6

    goto :goto_5

    :cond_7
    :goto_6
    const-string p1, " extras: "

    if-nez v3, :cond_8

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

    :cond_8
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
