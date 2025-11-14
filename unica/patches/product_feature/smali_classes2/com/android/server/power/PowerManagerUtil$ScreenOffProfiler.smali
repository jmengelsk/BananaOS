.class public final Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCfAnimationDuration:I

.field public mCfAnimationStartTime:J

.field public mCfPrepareDuration:I

.field public mCfPrepareStartTime:J

.field public mDisplayDuration:I

.field public mDisplayStartTime:J

.field public mDone:Z

.field public mGoToSleepDiff:I

.field public mGoToSleepDuration:I

.field public mGoToSleepStartTime:J

.field public mGoToSleepTimeStr:Ljava/lang/String;

.field public mNeedSkip:Z

.field public mOrder:I

.field public mSaved:Z


# virtual methods
.method public final clearAll()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    return-void
.end method

.method public final noteDisplayEnd()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_10

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    goto :goto_14

    :cond_10
    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    :goto_14
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_29

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    sub-long/2addr v2, v6

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    int-to-long v6, v0

    add-long/2addr v2, v6

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    :cond_29
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    if-nez p0, :cond_8a

    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8a

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    if-nez v0, :cond_8a

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PowerManagerUtil"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/PowerManagerUtil;->sScreenOffProfilers:Lcom/android/internal/util/RingBuffer;

    new-instance v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    iput-boolean v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    iput-boolean v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    iput v0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    iput-boolean p0, v2, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_8a
    return-void
.end method

.method public final setSkip()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mNeedSkip:Z

    return-void
.end method

.method public final toString(Z)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3c

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "[OFF][%3d][%s][T:%4d]  [Caller:%2d] [Cfp:%3d] [Cfa:%2d] [Panel:%3d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    :cond_3c
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "[OFF][%3d][T:%4d]  [Caller:%2d] [Cfp:%3d] [Cfa:%2d] [Panel:%3d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
