.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "NotiHistoryDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RemovePackageRunnable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_58

    :try_start_36
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    const v6, 0x7fffffff

    iput v6, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_57} :catch_5a
    .catchall {:try_start_36 .. :try_end_57} :catchall_58

    goto :goto_2a

    :catchall_58
    move-exception p0

    goto :goto_7d

    :catch_5a
    move-exception v3

    :try_start_5b
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on pkg removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_7b
    monitor-exit v0

    return-void

    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_5b .. :try_end_7e} :catchall_58

    throw p0
.end method
