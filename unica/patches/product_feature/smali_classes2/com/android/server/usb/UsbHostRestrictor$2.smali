.class public final Lcom/android/server/usb/UsbHostRestrictor$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    iget p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v0, "Subscription Receiver onReceive"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "LOADED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "]"

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object p2, p2, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Subscription Receiver Card Count is ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p2, :cond_3

    const/4 p2, 0x0

    sput-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "Subscription Receiver USB is already UNBLOCKED"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "ON_HOST_MDM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p1, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result p0

    if-nez p0, :cond_5

    const-string/jumbo p0, "Subscription Receiver Cannot write for USB DISABLE"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "Subscription Receiver SIM is not recognized properly : card count is 0"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Subscription Receiver SIM is not recognized properly : SIM_STATE_LOADED ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v0, "UsbHostRestrictionReceiver Receiver onReceive"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v0, "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE"

    const-string/jumbo v2, "UsbHostRestrictionReceiver UNBLOCK USB HOST"

    const-string/jumbo v3, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    const-string/jumbo v4, "ON_ALL"

    const-string/jumbo v5, "OFF"

    if-nez p2, :cond_9

    const-string/jumbo p2, "UsbHostRestrictionReceiver : reason - ALLOW"

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo p0, "UsbHostRestrictionReceiver USB is already UNBLOCKED"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result p0

    if-nez p0, :cond_11

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/4 v6, 0x1

    if-ne p2, v6, :cond_c

    const-string/jumbo p2, "UsbHostRestrictionReceiver : reason - DISALLOW"

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "ON_HOST_MDM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "UsbHostRestrictionReceiver BLOCK USB HOST"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo p0, "UsbHostRestrictionReceiver Cannot write for USB HOST DISABLE"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    const/4 v7, 0x2

    if-ne p2, v7, :cond_10

    const-string/jumbo p2, "UsbHostRestrictionReceiver : reason - INIT"

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    iget-object p2, p2, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result p2

    if-ne p2, v6, :cond_f

    sget-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    if-eqz p2, :cond_f

    const-string/jumbo p2, "mUsbHostRestrictionReceiver : reason - INIT - UNBLOCK USB HOST"

    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->isMDMBlock:Z

    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_d
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_f
    const-string/jumbo p0, "UsbHostRestrictionReceiver : reason - INIT - Ignore bacuese of Multi admin policy or same value as previos"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_10
    const-string/jumbo p0, "UsbHostRestrictionReceiver reason is unknown."

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_1
    return-void

    :pswitch_1
    const-string/jumbo p1, "UsbHostRestrictor"

    const-string/jumbo v0, "mUsbBlockReceiver Receiver onReceive"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.intent.action.USB_RESTRICTION_TIMER_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget p2, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    sget-boolean p2, Lcom/android/server/usb/UsbHostRestrictor;->misRunScreenLockTimer:Z

    if-eqz p2, :cond_12

    const-string/jumbo p2, "UsbHostRestrictor"

    const-string/jumbo v0, "LockTimer run FinishLockTimer"

    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_12
    const-string/jumbo p0, "UsbHostRestrictor"

    const-string/jumbo p2, "LockTimer Thread do nothing"

    invoke-static {p0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_13
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
