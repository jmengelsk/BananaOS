.class public final Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, p1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object v0, v0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    iput-boolean p1, v2, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_4
        -0x5bb23923 -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        0x1dbb32d0 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
