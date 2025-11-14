.class public final Lcom/android/server/power/HqmDataDispatcher$Timer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

.field public startTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    return-void
.end method


# virtual methods
.method public final start()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    check-cast v0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    return-void
.end method

.method public final stop()F
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    check-cast v0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L  # 1000.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method
