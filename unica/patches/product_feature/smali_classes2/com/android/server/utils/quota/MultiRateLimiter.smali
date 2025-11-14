.class public final Lcom/android/server/utils/quota/MultiRateLimiter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/utils/quota/CountQuotaTracker;

    sput-object v0, Lcom/android/server/utils/quota/MultiRateLimiter;->EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/utils/quota/MultiRateLimiter;->EMPTY_TRACKER_ARRAY:[Lcom/android/server/utils/quota/CountQuotaTracker;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/utils/quota/CountQuotaTracker;

    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    return-void
.end method


# virtual methods
.method public final clear(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_17

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    const/4 v2, 0x1

    :goto_17
    monitor-exit v0

    return v2

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final noteEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter;->mQuotaTrackers:[Lcom/android/server/utils/quota/CountQuotaTracker;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
