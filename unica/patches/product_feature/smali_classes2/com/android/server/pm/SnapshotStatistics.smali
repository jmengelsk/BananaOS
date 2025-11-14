.class public final Lcom/android/server/pm/SnapshotStatistics;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SNAPSHOT_LOG_INTERVAL_US:J


# instance fields
.field public mEventsReported:I

.field public final mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

.field public mLastLogTimeUs:J

.field public final mLock:Ljava/lang/Object;

.field public final mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public mPackageCount:I

.field public final mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

.field public final mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

.field public final mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/SnapshotStatistics;->SNAPSHOT_LOG_INTERVAL_US:J

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics;->mEventsReported:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x64

    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_60

    invoke-direct {v1, v6}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$BinMap;

    const/16 v6, 0x3e8

    const/16 v7, 0x2710

    filled-new-array {v3, v2, v5, v6, v7}, [I

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/pm/SnapshotStatistics$BinMap;-><init>([I)V

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v5

    new-array v1, v4, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    new-instance v3, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    aput-object v3, v1, v0

    new-array v1, v2, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    new-instance v2, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v2, p0, v5, v6}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    aput-object v2, v1, v0

    iput-wide v5, p0, Lcom/android/server/pm/SnapshotStatistics;->mLastLogTimeUs:J

    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/SnapshotStatistics$1;-><init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/SnapshotStatistics;->mHandler:Lcom/android/server/pm/SnapshotStatistics$1;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :array_60
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x14
        0x32
        0x64
    .end array-data
.end method

.method public static dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v7, 0x1

    move-object v4, p0

    move-wide v5, p1

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V

    move v3, v2

    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_22

    aget-object v8, v1, v3

    if-eqz v8, :cond_1f

    const/4 v12, 0x0

    move-object v9, p0

    move-wide v10, p1

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v13}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    :goto_22
    array-length v1, v0

    if-ge v2, v1, :cond_34

    aget-object v8, v0, v2

    if-eqz v8, :cond_31

    const/4 v12, 0x0

    move-object v9, p0

    move-wide v10, p1

    move-object/from16 v13, p5

    invoke-static/range {v8 .. v13}, Lcom/android/server/pm/SnapshotStatistics$Stats;->-$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_34
    return-void
.end method


# virtual methods
.method public final shift([Lcom/android/server/pm/SnapshotStatistics$Stats;J)V
    .registers 7

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-wide p2, v1, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-lez v1, :cond_13

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_13
    new-instance v1, Lcom/android/server/pm/SnapshotStatistics$Stats;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;J)V

    aput-object v1, p1, v0

    return-void
.end method
