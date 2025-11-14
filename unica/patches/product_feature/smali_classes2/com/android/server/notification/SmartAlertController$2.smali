.class public final Lcom/android/server/notification/SmartAlertController$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;

.field public final synthetic val$notiList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semMissedCount:I

    if-lez v6, :cond_1

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v0, v5, :cond_1

    const-string/jumbo v0, "SmartAlertController"

    const-string/jumbo v2, "SmartAlert - Found Missed Event"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/server/notification/SmartAlertController$3;

    invoke-direct {v2, v0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    :cond_4
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
