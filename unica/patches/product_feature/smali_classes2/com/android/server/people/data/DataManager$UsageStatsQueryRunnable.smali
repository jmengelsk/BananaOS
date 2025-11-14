.class public final Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mLastEventTimestamp:J

.field public final mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;I)V

    iget-object p1, p1, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/people/data/UsageStatsQueryHelper;-><init>(ILcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;)V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x493e0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V
    .locals 5

    const/16 v0, 0xd

    iget v1, p3, Lcom/android/server/people/data/Event;->mType:I

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v2, v4, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v0, p3, Lcom/android/server/people/data/Event;->mTimestamp:J

    iput-wide v0, v4, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v0, p2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v0, v4, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget p3, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput p3, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget p2, p2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput p2, v4, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v3, v4, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    iget-object p2, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    iget p3, p1, Lcom/android/server/people/data/PackageData;->mUserId:I

    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    iget-wide v3, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    const/4 v9, 0x0

    iget v2, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v1, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    iget-wide v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;

    invoke-virtual {v5, v4}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/PackageData;

    const/4 v6, 0x1

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    const/16 v8, 0x8

    iget-object v9, v5, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    if-eq v7, v8, :cond_4

    const/16 v8, 0x1e

    if-eq v7, v8, :cond_2

    const/16 v4, 0x17

    if-eq v7, v4, :cond_6

    const/16 v4, 0x18

    if-eq v7, v4, :cond_6

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5, v3}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/content/LocusId;

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v9, v5}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/android/server/people/data/Event;

    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v10

    invoke-direct {v7, v10, v11, v6}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v9, v4}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v8, v5, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    iget-object v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    invoke-virtual {v4, v5, v3, v7}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v5, v3}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    :cond_7
    :goto_2
    move v3, v6

    goto/16 :goto_0

    :cond_8
    move v2, v3

    :goto_3
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    iget-wide v0, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    :cond_9
    return-void
.end method
