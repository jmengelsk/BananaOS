.class public final Lcom/android/server/usb/UsbHostRestrictor$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 5

    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v0, v0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "block_usb_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    if-eqz v0, :cond_37

    sget v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    if-ne v0, v2, :cond_37

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo p0, "UsbHostRestrictor"

    const-string/jumbo v0, "changed setting LOCK_SCREEN_BLOCK : OFF -> ON"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput p0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    goto :goto_61

    :catchall_35
    move-exception p0

    goto :goto_63

    :cond_37
    sget-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    if-eqz v0, :cond_58

    sget v0, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    if-nez v0, :cond_58

    const-string/jumbo v0, "UsbHostRestrictor"

    const-string/jumbo v1, "changed setting LOCK_SCREEN_BLOCK : ON -> OFF"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v1, "CLOUDY_WORK_MODE"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    const/4 v0, 0x3

    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    goto :goto_61

    :cond_58
    const-string/jumbo p0, "UsbHostRestrictor"

    const-string/jumbo v0, "can\'t change block status (none-lock or adb-only or unknown setting value)"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    monitor-exit p1

    return-void

    :goto_63
    monitor-exit p1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_35

    throw p0
.end method
