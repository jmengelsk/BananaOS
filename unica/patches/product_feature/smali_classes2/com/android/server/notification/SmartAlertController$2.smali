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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_6a

    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_67

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->semMissedCount:I

    if-lez v6, :cond_67

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-eqz v6, :cond_52

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-eqz v6, :cond_67

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v6

    if-nez v6, :cond_67

    goto :goto_52

    :catchall_50
    move-exception p0

    goto :goto_87

    :cond_52
    :goto_52
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v0, v5, :cond_67

    const-string/jumbo v0, "SmartAlertController"

    const-string/jumbo v2, "SmartAlert - Found Missed Event"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    goto :goto_6a

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    if-nez v2, :cond_7c

    iget-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    if-eqz v2, :cond_7c

    new-instance v2, Lcom/android/server/notification/SmartAlertController$3;

    invoke-direct {v2, v0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_7c
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    if-nez v0, :cond_85

    invoke-virtual {p0, v3}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    :cond_85
    monitor-exit v1

    return-void

    :goto_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_50

    throw p0
.end method
