.class public abstract Lcom/android/server/utils/AnrTimer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field public static final sAnrTimerList:Landroid/util/LongSparseArray;

.field public static final sComparator:Ljava/util/Comparator;

.field public static final sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

.field public static final sErrors:Lcom/android/internal/util/RingBuffer;


# instance fields
.field public final mArgs:Lcom/android/server/utils/AnrTimer$Args;

.field public final mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

.field public final mHandler:Landroid/os/Handler;

.field public final mLabel:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mMaxStarted:I

.field public final mTimerArgMap:Landroid/util/SparseArray;

.field public final mTimerIdMap:Landroid/util/ArrayMap;

.field public mTotalErrors:I

.field public mTotalExpired:I

.field public mTotalStarted:I

.field public final mWhat:I


# direct methods
.method public static bridge synthetic -$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Z)J
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCreate(Ljava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static -$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    sget-object v1, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/utils/AnrTimer$Error;

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, p2}, Lcom/android/server/utils/AnrTimer$Error;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerAccept(IJ)Z
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerAccept(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerCancel(IJ)Z
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCancel(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerClose(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerClose(J)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerDiscard(IJ)V
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDiscard(JI)Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerRelease(IJ)Z
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerRelease(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerStart(IIJJ)I
    .locals 2

    move-wide v0, p2

    move p2, p0

    move p3, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerStart(JIIJ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/utils/AnrTimer$Injector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/utils/AnrTimer$Error;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/android/server/utils/AnrTimer$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    iput-object p3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    iget-object p1, p4, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_0

    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {p1, p0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureEnabled;

    invoke-direct {p1, p0}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;-><init>(Lcom/android/server/utils/AnrTimer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "AnrTimer"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {p1, p0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;)V

    :goto_0
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p0, "AnrTimer statistics"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object p0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/utils/AnrTimer;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v5, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/AnrTimer;

    if-eqz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v6, "timer: %s\n"

    iget-object v7, v3, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v3, v3, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v3, p2}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v5

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p1

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_8

    sget-object p0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result p1

    if-nez p1, :cond_4

    monitor-exit p0

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/utils/AnrTimer$Error;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string p0, "Errors"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p0, v2

    :goto_4
    array-length v0, p1

    if-ge p0, v0, :cond_7

    aget-object v0, p1, p0

    if-eqz v0, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "notFound"

    iget-object v4, v0, Lcom/android/server/utils/AnrTimer$Error;->operation:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/utils/AnrTimer$Error;->tag:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/utils/AnrTimer$Error;->arg:Ljava/lang/String;

    filled-new-array {v1, v4, v5, v3, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%2d: op:%s tag:%s issue:%s arg:%s\n"

    invoke-virtual {p2, v3, v1}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, v0, Lcom/android/server/utils/AnrTimer$Error;->timestamp:J

    add-long/2addr v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "    date:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v2

    :goto_5
    iget-object v3, v0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_7

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_8
    :goto_7
    const-string p0, "AnrTimerEnd\n"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private expire(IIIJ)Z
    .locals 6

    const-string/jumbo v0, "expired"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s(%d,%d,%d,%s,%d)"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 p3, 0x40

    const-string p5, "AnrTimerTrack"

    invoke-static {p3, p4, p5, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    const-string p3, "AnrTimer"

    const-string/jumbo p5, "failed to expire timer %s:%d : arg not found"

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    const/4 p0, 0x0

    monitor-exit p2

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-static {p1, p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p4

    :goto_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static native nativeAnrTimerAccept(JI)Z
.end method

.method private static native nativeAnrTimerCancel(JI)Z
.end method

.method private static native nativeAnrTimerClose(J)I
.end method

.method private native nativeAnrTimerCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeAnrTimerDiscard(JI)Z
.end method

.method private static native nativeAnrTimerDump(J)[Ljava/lang/String;
.end method

.method private static native nativeAnrTimerRelease(JI)Z
.end method

.method private static native nativeAnrTimerStart(JIIJ)I
.end method

.method private static native nativeAnrTimerSupported()Z
.end method

.method private static native nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public final cancel(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->cancel(Ljava/lang/Object;)Z

    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->close()V

    return-void
.end method

.method public final discard(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->discard(Ljava/lang/Object;)Z

    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract getPid(Ljava/lang/Object;)I
.end method

.method public abstract getUid(Ljava/lang/Object;)I
.end method

.method public final start(JLjava/lang/Object;)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, p1

    :goto_0
    iget-object v3, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p3}, Lcom/android/server/utils/AnrTimer;->getPid(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, p3}, Lcom/android/server/utils/AnrTimer;->getUid(Ljava/lang/Object;)I

    move-result v6

    move-object v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->start(Ljava/lang/Object;IIJ)V

    return-void
.end method
