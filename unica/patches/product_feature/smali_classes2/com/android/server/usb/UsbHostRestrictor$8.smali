.class public final Lcom/android/server/usb/UsbHostRestrictor$8;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$8;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_63

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v1, "handleMessage -> MSG_ENTER_RELEASE"

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$8;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1a
    const-string/jumbo v1, "UsbHostRestrictor"

    const-string/jumbo v2, "enterRelease: Screen Lock Off"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_54

    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ON_ALL_SCREEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ON_ALL_BOTH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_61

    :cond_51
    :goto_51
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    :cond_54
    const-string/jumbo v0, "SUNNY_WORK_MODE"

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    sput v2, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    monitor-exit p1

    return-void

    :goto_61
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_1a .. :try_end_62} :catchall_4f

    throw p0

    :cond_63
    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v1, "handleMessage -> MSG_ENTER_RESTRICTION"

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$8;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "enterRestriction retryCnt("

    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_77
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_ac

    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v2, "enterRestriction: Screen Lock On"

    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "RAINY_RESTRICT_MODE"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    sget-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    if-nez p1, :cond_aa

    sget-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    if-nez p1, :cond_aa

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    goto :goto_aa

    :catchall_a8
    move-exception p0

    goto :goto_d9

    :cond_aa
    :goto_aa
    monitor-exit v1

    return-void

    :cond_ac
    const-string/jumbo v2, "UsbHostRestrictor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    const/16 v2, 0xa

    if-ge p1, v2, :cond_d2

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$8;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d2
    sget p0, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    add-int/2addr p0, v0

    sput p0, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    monitor-exit v1

    return-void

    :goto_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_77 .. :try_end_da} :catchall_a8

    throw p0
.end method
