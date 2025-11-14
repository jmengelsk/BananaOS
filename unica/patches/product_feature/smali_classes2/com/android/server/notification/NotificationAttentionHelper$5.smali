.class public final Lcom/android/server/notification/NotificationAttentionHelper$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_f5

    :cond_8
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v0, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v0, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_31
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_5d
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    monitor-exit p2

    return-void

    :catchall_64
    move-exception p0

    monitor-exit p2
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_64

    throw p0

    :cond_67
    const-string/jumbo p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7d

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-eqz p0, :cond_f5

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    return-void

    :cond_7d
    const-string/jumbo p2, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f6

    const-string/jumbo p2, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f6

    const-string/jumbo p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f6

    const-string/jumbo p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a2

    goto :goto_f6

    :cond_a2
    const-string/jumbo p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-nez p2, :cond_d1

    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object v1, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "NotificationManagerService"

    const-string/jumbo v3, "noti_muted"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {p2, v1, v2, v3, v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo p1, "NotifAttentionHelper"

    const-string/jumbo p2, "mNotiSemGoodCatchManager is created"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-nez p1, :cond_f5

    new-instance p1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "NotificationManagerService"

    const-string/jumbo v1, "playback"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    sput-object p1, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo p0, "NotifAttentionHelper"

    const-string/jumbo p1, "SemAudioGoodCatchManager is created"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    :goto_f5
    return-void

    :cond_f6
    :goto_f6
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$5;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method
