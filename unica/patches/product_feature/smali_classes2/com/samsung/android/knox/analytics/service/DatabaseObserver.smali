.class public Lcom/samsung/android/knox/analytics/service/DatabaseObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COMPRESSED_RESULT_KEY:Ljava/lang/String; = "performCompressedEventsTransaction"

.field public static final DB_CLEAN_EVENT_COUNT:Ljava/lang/String; = "rev"

.field public static final DB_CLEAN_EVENT_EVENT_NAME:Ljava/lang/String; = "databaseCleanedV2"

.field public static final DB_CLEAN_EVENT_FEATURE:Ljava/lang/String; = "KNOX_ANALYTICS"

.field public static final DB_CLEAN_EVENT_REASON:Ljava/lang/String; = "rsn"

.field public static final DB_CLEAN_EVENT_SCHEMA_VERSION:I = 0x1

.field public static final DB_CLEAN_EVENT_SIZE_PARAMETER:Ljava/lang/String; = "rsz"

.field public static final DB_MAX_SIZE_BYTES:I = 0x500000

.field public static final FACTOR_ALERT:D = 0.9

.field public static final FACTOR_CLEANUP:D = 0.85

.field public static final HT_NAME:Ljava/lang/String; = "KnoxAnalyticsDatabaseObserver"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] DatabaseObserver"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

.field public mDbAlertSizeInBytes:J

.field public mDbMaxSizeInBytes:J

.field public mDbTargetSizeInBytes:J

.field public mDebugContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

.field public mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

.field public mFailure:I

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHasAlertedUploader:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHasAlertedUploader:Z

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string v1, "DatabaseObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->initializeSizeConstants()V

    return-void
.end method


# virtual methods
.method public final cleanDatabase()V
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cleanDatabase()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbTargetSizeInBytes:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->callDatabaseClean(Landroid/content/Context;J)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;I)V

    return-void
.end method

.method public final compressEvents()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getEventCount(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "compressEvents(): Database is full and there is no sufficient data to compress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->increaseFailureCount()V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->queryEventChunk(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/model/EventList;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/model/EventList;->length()I

    move-result v1

    if-gtz v1, :cond_27

    goto :goto_51

    :cond_27
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->performCompressedEventsTransaction(Landroid/content/Context;Lcom/samsung/android/knox/analytics/model/EventList;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string/jumbo v1, "performCompressedEventsTransaction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_45

    :cond_39
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "compressEvents(): Data was compressed successfully."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    return-void

    :cond_45
    :goto_45
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "compressEvents(): Some error occurred when adding compressed data."

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->increaseFailureCount()V

    return-void

    :cond_51
    :goto_51
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "compressEvents(): There is no data in Events table"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->increaseFailureCount()V

    return-void
.end method

.method public final createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;I)V
    .registers 10

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedSizeBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;->getDeletedSizeBytes()J

    move-result-wide v2

    sget-object p1, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "createDatabaseCleanEvent(lastDeletedSize=%d, lastDeletedEventsCount=%d, reason=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_56

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2f

    goto :goto_56

    :cond_2f
    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    new-instance p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const/4 v4, 0x1

    const-string/jumbo v5, "databaseCleanedV2"

    const-string v6, "KNOX_ANALYTICS"

    invoke-direct {p1, v6, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v4, "rsz"

    invoke-virtual {p1, v4, v0, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string/jumbo v0, "rev"

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string/jumbo v0, "rsn"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mEventQueue:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_56
    :goto_56
    const-string p0, "Invalid deleted values"

    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final databaseFallback()V
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "databaseFallback()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->removeAllEvents(Landroid/content/Context;)Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->createDatabaseCleanEvent(Lcom/samsung/android/knox/analytics/util/DatabaseCleanResult;I)V

    return-void
.end method

.method public final getDatabaseSize()J
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFailureCount()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    return p0
.end method

.method public final increaseFailureCount()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    return-void
.end method

.method public final initializeSizeConstants()V
    .registers 7

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbMaxSizeInBytes:J

    long-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbAlertSizeInBytes:J

    long-to-double v0, v0

    const-wide v2, 0x3feb333333333333L  # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbTargetSizeInBytes:J

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initializeSizeConstants(): dbMaxSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbMaxSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dbAlertSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbAlertSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDbTargetSizeInBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDbTargetSizeInBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final resetFailureCount()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mFailure:I

    return-void
.end method

.method public final start()V
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxAnalyticsDatabaseObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/DatabaseObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDebugContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$Debug;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDebugContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final stop()V
    .registers 4

    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDatabaseSizeContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDebugContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDebugContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_29
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mDebugContentObserver:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DebugContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_34

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandler:Landroid/os/Handler;

    :cond_34
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_3b
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
