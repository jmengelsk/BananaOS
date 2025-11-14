.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MAX_LOG_SIZE:I


# instance fields
.field public final mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

.field public final mLock:Ljava/lang/Object;

.field public final mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;-><init>(I)V

    sget v3, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/android/server/usage/BroadcastResponseStatsLogger$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    return-void
.end method

.method public static getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p2

    if-eqz p0, :cond_2

    const/4 p3, 0x1

    if-eq p0, p3, :cond_1

    const/4 p3, 0x2

    if-eq p0, p3, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "cancelled"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "updated"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "posted"

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p0, p4, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "notification:%s; event=<%s>, pkg=%s, usr=%d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Broadcast events (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "Notification events (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    aget-object v2, p0, v1

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
