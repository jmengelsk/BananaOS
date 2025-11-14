.class public final Lcom/android/server/power/LowPowerStandbyController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/power/LowPowerStandbyController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_b4

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p1, p1, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    monitor-exit p1

    return-void

    :catchall_13
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p0

    :pswitch_16  #0x1
    const-string/jumbo p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_4a

    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object v1, p2, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_31
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {p2}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_4b

    :cond_49
    :goto_49
    monitor-exit v1

    :goto_4a
    return-void

    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_31 .. :try_end_4c} :catchall_47

    throw p0

    :pswitch_4d  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_bc

    goto :goto_80

    :sswitch_5d
    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_67

    goto :goto_80

    :cond_67
    const/4 v1, 0x2

    goto :goto_80

    :sswitch_69
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_73

    goto :goto_80

    :cond_73
    move v1, p1

    goto :goto_80

    :sswitch_75
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7f

    goto :goto_80

    :cond_7f
    move v1, v0

    :goto_80
    packed-switch v1, :pswitch_data_ca

    goto :goto_b2

    :pswitch_84  #0x2
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_89
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-nez v2, :cond_99

    if-eqz v1, :cond_98

    goto :goto_99

    :cond_98
    move p1, v0

    :cond_99
    :goto_99
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit p2

    goto :goto_b2

    :catchall_a0
    move-exception p0

    monitor-exit p2
    :try_end_a2
    .catchall {:try_start_89 .. :try_end_a2} :catchall_a0

    throw p0

    :pswitch_a3  #0x1
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    goto :goto_b2

    :pswitch_ab  #0x0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object p1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    :goto_b2
    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_4d  #00000000
        :pswitch_16  #00000001
    .end packed-switch

    :sswitch_data_bc
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_75
        -0x56ac2893 -> :sswitch_69
        0x33e5d967 -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_ab  #00000000
        :pswitch_a3  #00000001
        :pswitch_84  #00000002
    .end packed-switch
.end method
