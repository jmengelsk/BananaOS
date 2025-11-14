.class public final Lcom/android/server/pm/SnapshotStatistics$Stats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBigBuilds:I

.field public mMaxBuildTimeUs:I

.field public mMaxUsedCount:I

.field public mShortLived:I

.field public final mStartTimeUs:J

.field public mStopTimeUs:J

.field public final mTimes:[I

.field public mTotalBuilds:I

.field public mTotalTimeUs:J

.field public mTotalUsed:I

.field public final mUsed:[I

.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "stats"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p5, "Summary stats"

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    if-eqz v4, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "BigBlds"

    const-string/jumbo v5, "ShortLvd"

    const-string/jumbo v2, "TotBlds"

    const-string/jumbo v3, "TotUsed"

    const-string/jumbo v6, "TotTime"

    const-string/jumbo v7, "MaxTime"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "  %10s  %10s  %10s  %10s  %10s  %10s"

    invoke-virtual {v1, p0, p2, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget p1, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "  %10d  %10d  %10d  %10d  %10d  %10d"

    invoke-virtual {v1, p0, p2, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    const-string/jumbo p0, "times"

    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "  %10d"

    const-string p2, "  %10s"

    iget-object p3, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    const/4 p4, 0x0

    if-eqz p0, :cond_5

    const-string v5, "Build times"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V

    if-eqz v4, :cond_3

    iget-object p0, p3, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    :goto_1
    array-length p1, p0

    if-ge p4, p1, :cond_2

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p3, p0, p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p5, "<= %dms"

    invoke-static {p5, p3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    aget p0, p0, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "> %dms"

    invoke-static {p3, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1, p2, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p0, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length p2, p0

    if-ge p4, p2, :cond_4

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p0, p0, p4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p2, p1, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_5
    const-string/jumbo p0, "usage"

    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string/jumbo v5, "Use counters"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V

    if-eqz v4, :cond_7

    iget-object p0, p3, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    :goto_4
    array-length p1, p0

    if-ge p4, p1, :cond_6

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p3, p0, p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p5, "<= %d"

    invoke-static {p5, p3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    aget p0, p0, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "> %d"

    invoke-static {p3, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1, p2, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_6

    :cond_7
    :goto_5
    iget-object p0, v0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length p2, p0

    if-ge p4, p2, :cond_8

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget p0, p0, p4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p2, p1, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unrecognized choice: "

    invoke-virtual {p1, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p3

    if-ltz p2, :cond_0

    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iget-object p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    aget v0, p3, p4

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, p4

    :cond_0
    iget-wide p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    int-to-long v0, p1

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    if-eqz p5, :cond_1

    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    :cond_1
    if-eqz p6, :cond_2

    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    :cond_2
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    if-ge p3, p1, :cond_3

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    :cond_3
    iget p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    if-ge p1, p2, :cond_4

    iput p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    iput-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iget-object p2, p1, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    iget p2, p2, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    iget-object p1, p1, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    iget p1, p1, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    return-void
.end method

.method public static durationToString(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    long-to-int p0, p0

    div-int/lit8 p1, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    div-int/lit8 v1, v0, 0x18

    rem-int/lit8 v0, v0, 0x18

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2d:%02d:%02d:%02d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2s %02d:%02d:%02d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2s %2s %2d:%02d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V
    .locals 4

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%-23s"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p0, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object p5

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    const-string v0, "%11s"

    invoke-virtual {p1, p4, v0, p5}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string p5, " %11s"

    if-eqz p0, :cond_1

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p4, p5, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_1
    const-string/jumbo p0, "now"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p4, p5, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method
