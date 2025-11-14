.class public final Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v0, "ScreenCurtainController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleDisableScreenCurtain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "fold state"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "death"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "pen"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "bixby"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v3, "screen off"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v3, "audio"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v3, "notification"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v3, "call"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/android/server/power/ScreenCurtainController;->setScreenCurtainEnabledLocked(IILandroid/os/IBinder;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledReason:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v0, "StopService"

    const-string/jumbo v1, "service_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_2
    :try_start_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    const-string/jumbo p1, "ScreenCurtainController"

    const-string/jumbo v0, "handleAutoEnableScreenCurtain"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-wide v0, p0, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledTime:J

    iget-wide v4, p0, Lcom/android/server/power/ScreenCurtainController;->mLastUserActivityTime:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_4

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v0, "StartService"

    const-string/jumbo v1, "service_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "com.samsung.pen.INSERT"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/ScreenCurtainController;->mReceiver:Lcom/android/server/power/ScreenCurtainController$3;

    iget-object v7, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :try_start_4
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    invoke-virtual {p0, v1}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    move-result-object p0

    iget-boolean p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainEnabled:Z

    if-nez p1, :cond_6

    iget-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {p1}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    :cond_6
    iput-boolean v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainEnabled:Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController;->mReceiver:Lcom/android/server/power/ScreenCurtainController$3;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_5
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mNotificationListener:Lcom/android/server/power/ScreenCurtainController$NotificationListener;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
