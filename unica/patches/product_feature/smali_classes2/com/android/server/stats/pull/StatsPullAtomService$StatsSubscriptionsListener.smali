.class public final Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSm:Landroid/telephony/SubscriptionManager;

.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->mSm:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->onSubscriptionsChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSubscriptionsChangedLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v2, v2, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v2, v2, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v10, "StatsPullAtomService"

    if-nez v2, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/server/stats/pull/netstats/SubInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v8

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/android/server/stats/pull/netstats/SubInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    const-string/jumbo v1, "subId "

    const-string v2, " added into historical sub list"

    invoke-static {v5, v1, v2, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v1, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v2, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string/jumbo v1, "subInfo of subId "

    const-string v2, " is invalid, ignored."

    invoke-static {v5, v1, v2, v10}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
