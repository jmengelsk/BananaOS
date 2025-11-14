.class public final Lcom/android/server/pm/utils/RequestThrottle;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBackoffBase:I

.field public final mBlock:Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;

.field public final mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mFirstDelay:I

.field public final mHandler:Landroid/os/Handler;

.field public final mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mMaxAttempts:I

.field public final mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBlock:Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mMaxAttempts:I

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mFirstDelay:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBackoffBase:I

    new-instance p1, Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/utils/RequestThrottle;)V

    iput-object p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final runInternal()Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBlock:Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v2

    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mMaxAttempts:I

    if-ge v0, v1, :cond_49

    iget v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mFirstDelay:I

    int-to-double v1, v1

    iget v4, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBackoffBase:I

    int-to-double v4, v4

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v1

    double-to-long v0, v4

    iget-object v2, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    :cond_49
    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v3
.end method

.method public final schedule()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
