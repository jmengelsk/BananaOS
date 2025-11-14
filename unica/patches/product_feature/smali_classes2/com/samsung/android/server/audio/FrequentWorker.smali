.class public abstract Lcom/samsung/android/server/audio/FrequentWorker;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCachedValue:Ljava/lang/Object;

.field public mLastProcessTime:J

.field public mPeriodMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    return-void
.end method


# virtual methods
.method public abstract func()Ljava/lang/Object;
.end method

.method public final runOrSkip()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FrequentWorker;->func()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-object v0
.end method
