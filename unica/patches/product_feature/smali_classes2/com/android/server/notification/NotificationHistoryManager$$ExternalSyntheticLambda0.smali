.class public final synthetic Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationHistoryManager;

.field public final synthetic f$1:Landroid/app/NotificationHistory$HistoricalNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryManager;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationHistoryManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationHistoryManager;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    const-string v1, "Attempted to add notif for locked/gone/disabled user "

    iget-object v2, v0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "NotificationHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_2b
    move-exception p0

    goto :goto_32

    :cond_2d
    invoke-virtual {v0, p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->addNotification(Landroid/app/NotificationHistory$HistoricalNotification;)V

    monitor-exit v2

    return-void

    :goto_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_2b

    throw p0
.end method
