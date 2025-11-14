.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mSbnKey:Ljava/lang/String;

.field public final mText:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mSbnKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "Cannot clean up file on channel removal "

    sget-boolean v1, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NotiHistoryDatabase"

    const-string/jumbo v2, "RemoveImageRunnable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v2, v2, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mSbnKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/NotificationHistory;->removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v2, v2, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
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

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mSbnKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/NotificationHistory;->removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo v3, "NotiHistoryDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
