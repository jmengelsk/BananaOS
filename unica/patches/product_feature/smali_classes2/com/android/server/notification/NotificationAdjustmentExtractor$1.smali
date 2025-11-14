.class public final Lcom/android/server/notification/NotificationAdjustmentExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/notification/RankingReconsideration;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    iget-object p0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_7
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final work()V
    .registers 1

    return-void
.end method
