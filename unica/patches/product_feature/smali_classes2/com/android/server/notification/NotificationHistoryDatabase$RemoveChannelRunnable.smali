.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mChannelId:Ljava/lang/String;

.field public mNotificationHistory:Landroid/app/NotificationHistory;

.field public final mPkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mPkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mChannelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NotiHistoryDatabase"

    const-string/jumbo v1, "RemoveChannelRunnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationHistory;->removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    :goto_1
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    const v6, 0x7fffffff

    iput v6, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mChannelId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory;->removeChannelFromWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on channel removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setNotificationHistory(Landroid/app/NotificationHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveChannelRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    return-void
.end method
