.class public final Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v4, v4, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const-string/jumbo v0, "WriteBufferRunnable "

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v3, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "NotiHistoryDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v3, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    new-instance v2, Landroid/app/NotificationHistory;

    invoke-direct {v2}, Landroid/app/NotificationHistory;-><init>()V

    iput-object v2, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v4, v4, Lcom/android/server/notification/NotificationHistoryDatabase;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->updatePostedTime(JLjava/util/ArrayList;)Z

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string/jumbo v0, "NotiHistoryDatabase"

    const-string v2, "Failed to write buffer to disk. not flushing buffer"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
