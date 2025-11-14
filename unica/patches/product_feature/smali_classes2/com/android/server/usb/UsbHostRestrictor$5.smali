.class public final Lcom/android/server/usb/UsbHostRestrictor$5;
.super Landroid/os/UEventObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    iget v0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ACTION"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PRODUCT"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "add"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string/jumbo v1, "UsbHostRestrictor"

    const-string/jumbo v2, "uevent add"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne v1, v3, :cond_0

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "UsbHostRestrictor"

    const-string/jumbo p1, "skip update vid:pid reason - SCREEN LOCK"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v1, p1, v4

    aget-object p1, p1, v3

    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v2, v1, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mupdateVidPidList(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->readFileToString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeVpidHistorytoFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "remove"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object p1, p1, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v1, "USB DeviceList Empty"

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_1

    :cond_4
    move p1, v4

    :goto_1
    if-eqz p1, :cond_5

    sput-boolean v4, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne p1, v3, :cond_5

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    const-string/jumbo v0, "unknown state "

    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    const-string/jumbo v2, "USB_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DISCONNECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object p1, p1, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v2, "USB DeviceList Empty"

    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_4

    :cond_6
    move p1, v0

    :goto_4
    if-eqz p1, :cond_9

    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne p1, v3, :cond_9

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_7
    const-string v2, "CONNECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    if-ne p1, v3, :cond_9

    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    goto :goto_5

    :cond_8
    const-string p0, "CONFIGURED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    :goto_5
    monitor-exit v1

    goto :goto_6

    :cond_a
    const-string/jumbo p0, "UsbHostRestrictor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_6
    return-void

    :goto_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "USB HOST UEVENT : event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbHostRestrictor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DEVPATH"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "change"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v3, :cond_10

    const-string v0, "/devices/virtual/host_notify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_2
    const-string v0, "BLOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v0, v0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_b

    const-string/jumbo p0, "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_b
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string/jumbo v2, "ON_ALL_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_9

    :sswitch_1
    const-string/jumbo v2, "ON_ALL_SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_9

    :sswitch_2
    const-string/jumbo v2, "ON_ALL_BOTH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_9

    :sswitch_3
    const-string/jumbo v2, "ON_HOST_MDM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v0, -0x1

    :goto_9
    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_10

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_d

    const-string/jumbo p0, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "showMDMToast"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    goto :goto_a

    :cond_e
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_a

    :cond_f
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$5;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse state or devPath from event "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7cd7fb21 -> :sswitch_3
        0x1e909df -> :sswitch_2
        0x10942699 -> :sswitch_1
        0x48266b4a -> :sswitch_0
    .end sparse-switch
.end method
