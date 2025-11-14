.class public final Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_86

    goto :goto_4d

    :sswitch_12
    const-string/jumbo v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_4d

    :cond_1c
    const/4 v2, 0x4

    goto :goto_4d

    :sswitch_1e
    const-string/jumbo v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_4d

    :cond_28
    const/4 v2, 0x3

    goto :goto_4d

    :sswitch_2a
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_4d

    :cond_34
    const/4 v2, 0x2

    goto :goto_4d

    :sswitch_36
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4d

    :cond_40
    move v2, p1

    goto :goto_4d

    :sswitch_42
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v1

    :goto_4d
    packed-switch v2, :pswitch_data_9c

    return-void

    :pswitch_51  #0x1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_56
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_62

    goto :goto_63

    :cond_62
    move p1, v1

    :goto_63
    iput-boolean p1, v2, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_6c

    :pswitch_66  #0x3, 0x4
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void

    :catchall_6c
    move-exception p0

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p0

    :pswitch_6f  #0x0, 0x2
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_7d

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void

    :cond_7d
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    return-void

    :sswitch_data_86
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_42
        -0x5bb23923 -> :sswitch_36
        -0x56ac2893 -> :sswitch_2a
        0x1dbb32d0 -> :sswitch_1e
        0x33e5d967 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_51  #00000001
        :pswitch_6f  #00000002
        :pswitch_66  #00000003
        :pswitch_66  #00000004
    .end packed-switch
.end method
