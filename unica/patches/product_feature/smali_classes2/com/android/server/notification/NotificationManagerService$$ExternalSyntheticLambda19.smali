.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    packed-switch v0, :pswitch_data_f6

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/service/notification/NotificationRankingUpdate;

    const-string/jumbo v3, "unable to notify listener (posted): "

    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    :try_start_1e
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v5, v2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v0, v5, p0}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1e .. :try_end_26} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_4c

    :catch_27
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    :catch_2a
    move-exception v0

    move-object p0, v0

    goto :goto_3d

    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    :goto_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-void

    :pswitch_4d  #0x1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    return-void

    :pswitch_67  #0x0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda19;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_80

    :cond_90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    move-result v1

    const-string/jumbo v5, "NotificationService"

    if-nez v1, :cond_aa

    const-string/jumbo v1, "finish() called on already-finished tracker"

    invoke-static {v5, v1}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    :cond_aa
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    iget-object v6, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_ba

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v2}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_ba
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_c2
    if-ge v1, v6, :cond_d0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    check-cast v7, Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_c2

    :cond_d0
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_e6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "PostNotification: Finished in %d ms"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    :goto_e6
    if-eqz p0, :cond_f4

    iput-wide v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    check-cast v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    :cond_f4
    return-void

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_4d  #00000001
    .end packed-switch
.end method
