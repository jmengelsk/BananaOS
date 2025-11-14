.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCleanupRunnables:Ljava/util/List;

.field public mOngoing:Z

.field public final mStartTime:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "NotificationService"

    const-string/jumbo p1, "PostNotification: Started"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    move-result v0

    const-string/jumbo v1, "NotificationService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "cancel() called on already-finished tracker"

    invoke-static {v1, p0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mCleanupRunnables:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "PostNotification: Abandoned after %d ms"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public isOngoing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    return p0
.end method
