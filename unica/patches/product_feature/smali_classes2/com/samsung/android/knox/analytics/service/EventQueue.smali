.class public final Lcom/samsung/android/knox/analytics/service/EventQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final API_USAGE_FEATURE_NAME:Ljava/lang/String; = "API_USAGE"

.field public static final API_USAGE_GET_KEY:Ljava/lang/String; = "isGetterApi"

.field public static final EVENT_QUEUE_ANALYTICS_DATA_KEY:Ljava/lang/String; = "KnoxAnalyticsData"

.field public static final EVENT_QUEUE_MSG_CLEANED_LOG_API:I = 0x3

.field public static final EVENT_QUEUE_MSG_KA_DEACTIVATION:I = 0x2

.field public static final EVENT_QUEUE_MSG_LOG_API:I = 0x1

.field public static final HT_NAME:Ljava/lang/String; = "EventQueue"

.field public static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field public static final PACKAGE_NAME_KEY:Ljava/lang/String; = "pN"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] EventQueue"

.field public static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"

.field public static final USER_TYPE_KEY:Ljava/lang/String; = "uT"


# instance fields
.field public final MAX_CACHED_EVENTS:I

.field public mCacheSaveHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mDeactivationLock:Ljava/lang/Object;

.field public final mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

.field public mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

.field public mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

.field public mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsStarted:Z

.field public mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field public mVersioningCompleted:Z

.field public final mVersioningCompletedLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->MAX_CACHED_EVENTS:I

    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/service/EventsCache;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/EventQueue$1;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addCleanEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addCleanEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->cleanEventToContentValues(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Landroid/content/ContentValues;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v2, p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addCleanEvent(Landroid/content/Context;JLandroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    const-string/jumbo p0, "addCleanEvent(): error adding event, aborting"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)J
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addEvent()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->toJSONString(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, p1, v3}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addEvent(Landroid/content/Context;JLjava/lang/String;I)J

    move-result-wide p0

    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "addEvent(): error adding event, aborting."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide p0
.end method

.method public final addEvents(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;",
            ">;)J"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2, p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->formatBulkEvents(JLjava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string/jumbo v4, "eventsList"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, v1, v2, v3, p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addBulkEvents(Landroid/content/Context;JLandroid/os/Bundle;I)J

    move-result-wide p0

    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "addEvents(): error adding events, aborting."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide p0
.end method

.method public final checkEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "checkEvent(): feature blacklisted, discarding event."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkEventFeatureBlacklisted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Features Blacklist Observer is null, can\'t check!"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    if-nez p0, :cond_1

    const-string p0, "Features Blacklist is null, can\'t check!"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->isBlacklisted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkEventFeatureWhitelisted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Features Whitelist Observer is null, can\'t check!"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->mFeaturesWhitelistCache:Ljava/util/List;

    if-nez p0, :cond_1

    const-string p0, "Features Whitelist is null, can\'t check!"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkFillPackageName()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-ne v1, v3, :cond_1

    const-string/jumbo p0, "checkFillPackageName() - invalid pid."

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pN"

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkFillUserType()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-ne v1, v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "checkFillUserType() - invalid userId "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserType(I)I

    move-result p0

    if-ne p0, v3, :cond_2

    const-string/jumbo p0, "checkFillUserType() - Couldn\'t get userType"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v0, "uT"

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public final deletePendingEvents()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deletePendingEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mCacheSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventsCache;->clear()V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->removeAllEvents(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    return-void
.end method

.method public final dumpCache()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventsCache;->dump()V

    return-void
.end method

.method public final enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/analytics/service/EventsCache;->add(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/EventsCache;->mCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    sget-object p1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enqueueEvent(): reached cache limit of 1000"

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAppNameByPID(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAppNameByPID("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "getAppNameByPID(): nill processInfoList"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1

    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "getAppNameByPID(): not found"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    return p0
.end method

.method public final msUntilNextHour()J
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final notifyVersioningCompleted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KnoxAnalyticsData"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->sendMessageThrottled(Landroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final saveCachedLogs()V
    .locals 6

    const-string/jumbo v0, "saveCachedLogs(): Number of events: "

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    iget-object v2, v2, Lcom/samsung/android/knox/analytics/service/EventsCache;->mCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget-object v3, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventsCache;->convertToList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)J

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventsCache;->convertToList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvents(Ljava/util/List;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Lcom/samsung/android/knox/analytics/service/EventsCache;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventsCache;->clear()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->scheduleCacheSave()V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scheduleCacheSave()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mCacheSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->msUntilNextHour()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scheduleCacheSave(): rescheduling saveCachedLogs() to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms ahead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mCacheSaveHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/knox/analytics/service/EventQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/knox/analytics/service/EventQueue$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EventQueue"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mCacheSaveHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mCacheSaveHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->scheduleCacheSave()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->start()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    if-nez v1, :cond_4

    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->start()V

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final waitVersioningCompleted()V
    .locals 5

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): waiting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v1, "waitVersioningCompleted(): after wait"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "waitVersioningCompleted(): done"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
