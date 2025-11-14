.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mConversationIds:Ljava/util/Set;

.field public mNotificationHistory:Landroid/app/NotificationHistory;

.field public final mPkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "NotiHistoryDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RemoveConversationRunnable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2a
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationHistory;->removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_75

    :try_start_49
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_4e

    goto :goto_53

    :cond_4e
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    :goto_53
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    const v6, 0x7fffffff

    iput v6, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    iput-object v5, v4, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mConversationIds:Ljava/util/Set;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationHistory;->removeConversationsFromWrite(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_74} :catch_77
    .catchall {:try_start_49 .. :try_end_74} :catchall_75

    goto :goto_3d

    :catchall_75
    move-exception p0

    goto :goto_9a

    :catch_77
    move-exception v3

    :try_start_78
    const-string/jumbo v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on conversation removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :cond_98
    monitor-exit v0

    return-void

    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_78 .. :try_end_9b} :catchall_75

    throw p0
.end method

.method public setNotificationHistory(Landroid/app/NotificationHistory;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveConversationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    return-void
.end method
