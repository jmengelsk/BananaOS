.class public Lcom/android/server/notification/NotificationAdjustmentExtractor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mGroupHelper:Lcom/android/server/notification/GroupHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 7

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "key_type"

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/service/notification/Adjustment;

    invoke-virtual {v6}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v1

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    new-instance v0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;-><init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    return-void
.end method

.method public final setGroupHelper(Lcom/android/server/notification/GroupHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    return-void
.end method
