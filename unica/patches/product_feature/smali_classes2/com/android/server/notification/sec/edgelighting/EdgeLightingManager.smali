.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentProfiles:Landroid/util/SparseArray;

.field public final mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

.field public final mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

.field public mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mLock:Ljava/lang/Object;

.field public final mPhoneStateListener:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReceiver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;

.field public mRinging:Z

.field public final mSecurityPolicy:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;

.field public mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserSetupCompleted:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    iput-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mRinging:Z

    iput-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mPhoneStateListener:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$1;

    new-instance v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;)V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mReceiver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;

    invoke-direct {v2, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mSecurityPolicy:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;

    new-instance v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {v2, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    new-instance v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    invoke-direct {v2, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance p0, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static isFolded()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/NmRune;->NM_SUPPORT_SUB_DISPLAY_EDGE_LIGHTING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final hideForNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 8

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "hideForNotification : folded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "hideForNotification : user setup is not yet completed"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeLightingManager"

    const-string/jumbo v3, "hideForNotification : packageName = "

    invoke-static {v3, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iget-object v2, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    const-string/jumbo v3, "remove : sbn : "

    iget-object v4, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    const-string v5, "EdgeLightingPolicyManager:NotificationGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_4
    iget-object v3, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v3, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->dump()V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "hideForNotification : isOngoing is false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "hideForNotification : isInteractive is true"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_b

    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "hideForNotification : return false by isAcceptableApplication."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    sget-boolean p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    const-string/jumbo p1, "hideEdgeLightingInternal : packageName = "

    const-string v0, ", reason=1"

    const-string v3, "EdgeLightingManager"

    invoke-static {p1, v1, v0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(ILjava/lang/String;)V

    return-void

    :goto_2
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_d
    :goto_3
    return-void
.end method

.method public final hideForWakeLockByWindow(ILjava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v1, "EdgeLightingManager"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "hideForWakeLockByWindow : packageName = "

    invoke-static {v2, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "hideForWakeLockInternal : Calling user is not supported | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo p0, "hideForWakeLockInternal : user setup is not yet completed."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "hideForWakeLockInternal : user setup is not yet completed. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "hideForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "hideForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "hideForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return-void

    :cond_6
    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, p2, v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const-string/jumbo p0, "hideForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(ILjava/lang/String;)V

    return-void

    :cond_a
    :goto_1
    if-nez v0, :cond_b

    :goto_2
    return-void

    :cond_b
    const-string/jumbo p0, "hideForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "hideForWakeLockInternal : return false by checking disable policy. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return-void
.end method

.method public final isCallingUserSupported(I)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "EdgeLightingManager"

    const-string/jumbo v3, "isCallingUserSupported : callingUserId="

    const-string v4, ", mUserId="

    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isDualAppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isKnoxId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :goto_0
    iget v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    const/4 v3, 0x1

    if-eq v2, p1, :cond_3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    const-string/jumbo v1, "isCurrentProfile = "

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move p0, v0

    :goto_1
    const-string p1, "EdgeLightingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    if-eqz p0, :cond_2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return v0

    :cond_3
    :goto_3
    return v3
.end method

.method public final isUserSetupCompleted()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserSetupCompleted:Z

    return p0
.end method

.method public final showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v1, "color"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/16 v3, 0x7d1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(I[I)V

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v2, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setUserId(I)V

    if-eqz p3, :cond_1

    invoke-virtual {v2, p3}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_1
    sget-boolean p3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p3, "showEdgeLightingInternal : packageName = "

    const-string v0, ", reason="

    const-string v1, "EdgeLightingManager"

    invoke-static {p1, p3, p2, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method public final showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    iget-object v3, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const-string v8, "EdgeLightingManager"

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    const-string/jumbo v0, "showForNotification : Should show fullScreenIntent while screen off"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    iget-object v4, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "showForNotification : Should show fullScreenIntent while screen on and keyguard"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "showForNotification : folded"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v9

    :cond_2
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v5, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : lockdown mode"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v9

    :cond_3
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "android.ongoingActivityNoti.style"

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const-string/jumbo v7, "com.google.android.googlequicksearchbox"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "convmode_notification_channel_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x64

    if-ne v6, v4, :cond_5

    const-string/jumbo v0, "isOngoingActivityNotification : googlequicksearchbox"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v0, "showForNotification : OngoingActivityStyle"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v9

    :cond_5
    const-string/jumbo v4, "isHeadUp"

    invoke-virtual {v1, v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "isUpdate"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v6, "isInterrupt"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v7, "bubble"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v10, "smartPopup"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v11, "canBypassDnd"

    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v12, "visibility"

    const/16 v13, -0x3e8

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "sound"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    const-string/jumbo v14, "vibrate"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    if-nez v14, :cond_6

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : Notification is null"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v9

    :cond_6
    const/4 v14, 0x1

    if-eqz v13, :cond_7

    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v15, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    move v13, v14

    goto :goto_1

    :cond_7
    move v13, v9

    :goto_1
    iget-object v15, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    move/from16 v16, v9

    const-string/jumbo v9, "audio"

    invoke-virtual {v15, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    if-eqz v1, :cond_8

    move v15, v14

    goto :goto_2

    :cond_8
    move/from16 v15, v16

    :goto_2
    if-nez v1, :cond_9

    if-eqz v13, :cond_9

    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    if-ne v1, v14, :cond_9

    move v15, v14

    :cond_9
    if-nez v13, :cond_b

    if-eqz v15, :cond_a

    goto :goto_3

    :cond_a
    move v1, v6

    move/from16 v6, v16

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v6

    move v6, v14

    :goto_4
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v9}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : Calling user is not supported. | Package : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v15

    if-nez v15, :cond_d

    const-string/jumbo v0, "showForNotification : user setup is not yet completed"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : user setup is not yet completed  | Package : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_d
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v15, v15, Landroid/app/Notification;->ledARGB:I

    sget-boolean v17, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v14, ", canBypassDnd="

    move/from16 v18, v1

    const-string v1, ", color="

    move/from16 v19, v5

    const-string v5, ", isHeadUp="

    move/from16 v20, v6

    const-string/jumbo v6, "showForNotification : isInteractive="

    if-nez v17, :cond_e

    invoke-static {v6, v3, v5, v4, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", packageName = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v13, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-static {v6, v3, v5, v4, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", sbn = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v11, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iget-boolean v1, v11, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z

    if-eqz v1, :cond_f

    const-string/jumbo v0, "showForNotification : DEX touchpad enable"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : DEX touchpad enable : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_f
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_10

    const-string/jumbo v0, "showForNotification : return false by notication disabling edge lighting."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : return false by notication disabling edge lighting | Package : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_10
    if-eqz v18, :cond_11

    const-string/jumbo v0, "showForNotification : return false by isIntercepted"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : isIntercepted. | Package : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_11
    iget-object v1, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 v14, 0x4

    const-string v5, ", sbn: "

    if-eqz v3, :cond_26

    if-eqz v7, :cond_12

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : canBubble. | Package : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_12
    if-eqz v10, :cond_13

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotification : isSmartPopup. | Package : "

    invoke-static {v1, v13, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_13
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v13

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_15

    if-nez v17, :cond_14

    goto/16 :goto_12

    :cond_14
    const-string/jumbo v0, "showForNotificationScreenOn : return false by isAvailableEdgeLighting."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotificationScreenOn : return false by isAvailableEdgeLighting. | Package : "

    invoke-static {v1, v10, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16

    :cond_15
    const/16 v1, 0x100

    move/from16 v3, v16

    invoke-virtual {v11, v1, v9, v10, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result v18

    const-string v1, "EdgeLightingPolicyManager"

    if-nez v18, :cond_16

    iget-boolean v3, v11, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    if-nez v3, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isHUNPeeked : UseHeadsUp = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v11, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    invoke-static {v1, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto/16 :goto_d

    :cond_16
    invoke-virtual {v11}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isHUNPeeked()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v11}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v11, v10}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto/16 :goto_d

    :cond_17
    move-object v3, v1

    iget-object v1, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    move v6, v12

    move-object v12, v5

    move v5, v6

    move-object v15, v3

    move v3, v4

    move/from16 v4, v19

    move/from16 v6, v20

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string/jumbo v0, "showForNotificationScreenOn : texts are empty."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showForNotificationScreenOn : texts are empty. | Package : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/app/Notification;->semFlags:I

    const/16 v16, 0x0

    return v16

    :cond_18
    if-eqz v4, :cond_19

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showForNotificationScreenOn Alert once notification. sbn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showForNotificationScreenOn : Alert once notification. | Package : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16

    :cond_19
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v0, "showForNotificationScreenOn No peeking: suppressed due to group alert behavior"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotificationScreenOn : No peeking suppressed due to group alert behavior. | Package : "

    invoke-static {v1, v10, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    const/4 v4, 0x0

    return v4

    :cond_1a
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v11, v5, v9, v10, v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1c

    if-nez v17, :cond_1b

    move/from16 v16, v4

    goto/16 :goto_12

    :cond_1b
    const-string/jumbo v0, "showForNotificationScreenOn : return false by isAcceptableApplication."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1c
    if-nez v3, :cond_1d

    move/from16 v4, v18

    goto :goto_6

    :cond_1d
    move v4, v3

    :goto_6
    if-eqz v4, :cond_20

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-nez v3, :cond_1e

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_1e
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_1f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNotificationForEdgeLighting : small icon is null : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1f
    const/4 v2, 0x1

    :goto_8
    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_9

    :cond_20
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_23

    if-ne v13, v14, :cond_21

    const/4 v3, 0x1

    goto :goto_a

    :cond_21
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_22

    const/4 v3, 0x7

    goto :goto_b

    :cond_22
    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v0, v3, v10, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_23
    const/4 v3, 0x1

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_24

    return v2

    :cond_24
    :goto_c
    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_25
    :goto_d
    const-string/jumbo v0, "showForNotificationScreenOn : return false by checking disable policy."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotificationScreenOn : return false by checking disable policy.  | Package : "

    invoke-static {v1, v10, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    const/16 v16, 0x0

    return v16

    :cond_26
    move v3, v12

    move-object v12, v5

    move v5, v3

    move v3, v4

    move/from16 v4, v19

    move/from16 v6, v20

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->getEdgeLightingCondition()I

    move-result v13

    const/4 v15, 0x6

    invoke-virtual {v1, v15}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v1

    if-nez v1, :cond_28

    if-nez v17, :cond_27

    goto :goto_c

    :cond_27
    const-string/jumbo v0, "showForNotificationScreenOff : return false by isAvailableEdgeLighting."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotificationScreenOff : return false by isAvailableEdgeLighting. | Package : "

    invoke-static {v1, v10, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    const/16 v16, 0x0

    return v16

    :cond_28
    invoke-virtual {v11}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v15

    if-nez v15, :cond_29

    invoke-virtual {v11, v10}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/16 v16, 0x0

    goto/16 :goto_13

    :cond_2a
    iget-object v1, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEmptyText(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string/jumbo v0, "showForNotificationScreenOff : texts are empty."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showForNotificationScreenOff : texts are empty. | Package : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/app/Notification;->semFlags:I

    const/16 v16, 0x0

    return v16

    :cond_2b
    if-eqz v4, :cond_2c

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showForNotificationScreenOff Alert once notification. sbn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showForNotificationScreenOff : Alert once notification. | Package : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16

    :cond_2c
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string/jumbo v0, "showForNotificationScreenOff No peeking: suppressed due to group alert behavior"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotificationScreenOff : No peeking suppressed due to group alert behavior. | Package : "

    invoke-static {v1, v10, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    const/16 v16, 0x0

    return v16

    :cond_2d
    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    :goto_e
    const/4 v3, 0x1

    goto :goto_f

    :cond_2e
    const/4 v2, 0x0

    goto :goto_e

    :goto_f
    invoke-virtual {v11, v3, v9, v10, v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_30

    if-nez v17, :cond_2f

    goto/16 :goto_c

    :cond_2f
    const-string/jumbo v0, "showForNotificationScreenOff : return false by isAcceptableApplication."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return v16

    :cond_30
    if-ne v13, v14, :cond_31

    const/4 v3, 0x1

    goto :goto_10

    :cond_31
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_32

    const/4 v15, 0x7

    goto :goto_11

    :cond_32
    const/4 v15, 0x1

    :goto_11
    invoke-virtual {v0, v15, v10, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v3, 0x1

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_24

    return v3

    :goto_12
    return v16

    :goto_13
    const-string/jumbo v0, "showForNotificationScreenOff : return false by checking disable policy."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v0

    const-string/jumbo v1, "showForNotificationScreenOff : return false by checking disable policy  | Package : "

    invoke-static {v1, v10, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v16
.end method

.method public final showForToast(ILjava/lang/String;)Z
    .locals 11

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "showForToast : folded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : folded"

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "showForToast : user setup is not yet completed."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : user setup is not yet completed. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v1

    :cond_2
    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v2, "EdgeLightingManager"

    const-string/jumbo v3, "showForToast : packageName = "

    invoke-static {v3, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : return false by isAllowEdgelighting. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v1

    :cond_5
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "showForToast : return false by isAvailableEdgeLighting."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : return false by isAvailableEdgeLighting. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v1

    :cond_7
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    const/16 v4, 0x200

    invoke-virtual {v2, v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2, v4, p1, p2, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_a

    if-nez v0, :cond_9

    goto/16 :goto_4

    :cond_9
    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "showForToast : return false by isAcceptableApplication."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : power not interactive. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v1

    :cond_b
    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    const-string/jumbo v2, "getValidNotificationData packageName="

    iget-object v4, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    const/4 v7, 0x0

    if-nez p1, :cond_c

    monitor-exit v4

    :goto_0
    move-object p1, v7

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_c
    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const-string v0, "EdgeLightingPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",now="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",time="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",ret="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long v9, v5, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-wide v8, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    sub-long/2addr v5, v8

    const-wide/16 v8, 0xfa0

    cmp-long v0, v5, v8

    if-gez v0, :cond_e

    monitor-exit v4

    goto :goto_2

    :cond_e
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "flag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_3

    :cond_f
    move v0, v1

    :goto_3
    const-string v4, "EdgeLightingManager"

    const-string/jumbo v5, "showForToast : ongoing check "

    invoke-static {v5, v4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_10

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    return v3

    :cond_10
    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : onGoing | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    :cond_11
    :goto_4
    return v1

    :goto_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_12
    :goto_6
    const-string p0, "EdgeLightingManager"

    const-string/jumbo p1, "showForToast : return false by checking disable policy."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForToast : return false by checking disable policy. | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v1
.end method

.method public final showForWakeLockByWindow(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showForWakeLockByWindow : packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeLightingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v1

    const-string/jumbo v2, "showForWakeLockByWindow : Calling user is not supported. | Package : "

    invoke-static {v2, p2, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockByWindow : screenOn | Package : "

    invoke-static {p1, p2, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showForWakeLockInternal(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final showForWakeLockInternal(IILjava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v0

    const-string v1, "EdgeLightingManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "showForWakeLockInternal : folded"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : Calling user is not supported. | Package : "

    invoke-static {p1, p3, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v2

    :cond_1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : lockdown mode"

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "showForWakeLockInternal : user setup is not yet completed"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : user setup is not yet completed. | Package : "

    invoke-static {p1, p3, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    move-result v3

    if-nez v3, :cond_5

    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo p0, "showForWakeLockInternal : return false by isAllowEdgelighting."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : return false by isAllowEdgelighting. | Package : "

    invoke-static {p1, p3, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo p0, "showForWakeLockInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-static {p1, p3, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v2

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v3, p2, p3, v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    const-string/jumbo p0, "showForWakeLockInternal : return false by isAcceptableApplication."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_c

    :goto_1
    return v2

    :cond_c
    const-string/jumbo p0, "showForWakeLockInternal : return false by checking disable policy."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeLockInternal : return false by checking disable policy. | Package : "

    invoke-static {p1, p3, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v2
.end method

.method public final showForWakeUp(Ljava/lang/String;I)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v1, "EdgeLightingManager"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "showForWakeUp : packageName ="

    invoke-static {v2, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isFolded()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo p0, "showForWakeUpInternal : folded"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isCallingUserSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p2, "showForWakeUpInternal : Calling user is not supported. | Package : "

    invoke-static {p2, p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v3

    :cond_2
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p1, "showForWakeUpInternal : lockdown mode"

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->isUserSetupCompleted()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo p0, "showForWakeUpInternal : user setup is not yet completed"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p2, "showForWakeUpInternal : user setup is not yet completed. | Package : "

    invoke-static {p2, p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v3

    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAllowEdgelighting()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "showForNotificationScreenOn : return false by isAllowEdgelighting."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p2, "showForWakeUpInternal : return false by isAllowEdgelighting. | Package : "

    invoke-static {p2, p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v3

    :cond_6
    iget-object v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const-string/jumbo p0, "showForWakeUpInternal : return false by isAvailableEdgeLighting."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p2, "showForWakeUpInternal : return false by isAvailableEdgeLighting. | Package : "

    invoke-static {p2, p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v3

    :cond_8
    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v2, v5}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v2, v5, p2, p1, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->isAcceptableApplication(IILjava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    const-string/jumbo p0, "showForWakeUpInternal : return false by isAcceptableApplication."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->showEdgeLightingInternal(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_1
    if-nez v0, :cond_c

    :goto_2
    return v3

    :cond_c
    const-string/jumbo p0, "showForWakeUpInternal : return false by checking disable policy."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo p2, "showForWakeUpInternal : return false by checking disable policy. | Package : "

    invoke-static {p2, p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;)V

    return v3
.end method

.method public final statusBarDisabled(I)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disable: < "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    const-string v3, "ALERTS"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "alerts"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const-string v2, "* "

    goto :goto_1

    :cond_1
    const-string v2, " "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v5, 0x14

    if-le v1, v5, :cond_3

    iget-object v1, v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    move v4, v0

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->onChange(Z)V

    :cond_5
    return-void

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateCurrentProfilesCache()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "EdgeLightingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentProfilesCache size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
