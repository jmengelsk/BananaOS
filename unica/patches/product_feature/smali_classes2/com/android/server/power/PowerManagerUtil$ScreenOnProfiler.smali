.class public final Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static CHECK_FRAME:Z = true

.field public static mDisplayType:I = 0x1

.field public static mFrameCheckCnt:I = 0x0

.field public static mFramePass:Z = false

.field public static mFramePrevTime:J = -0x1L

.field public static mHandler:Landroid/os/Handler;

.field public static mHandlerThread:Landroid/os/HandlerThread;

.field public static sInitialized:Z


# instance fields
.field public mDisplayDuration:I

.field public mDisplayStartTime:J

.field public final mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

.field public mFrameDone:Z

.field public mFrameDuration:I

.field public mFrameEndTime:J

.field public mFrameStartTime:J

.field public mListenerDuration:I

.field public mListenerStartTime:J

.field public mOrder:I

.field public mSaved:Z

.field public mWakeUpDiff:I

.field public mWakeUpDuration:I

.field public mWakeUpEndTime:J

.field public mWakeUpStartTime:J

.field public mWakeUpTimeStr:Ljava/lang/String;

.field public mWmsDone:Z

.field public mWmsDuration:I

.field public mWmsStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->sInitialized:Z

    if-nez v0, :cond_2b

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PmsFrameChecker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->sInitialized:Z

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->clearAll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    iget-object v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    iget-boolean p1, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    return-void
.end method

.method public static getFrameTimeFromDriver()J
    .registers 3

    sget v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    const/4 v1, 0x1

    const-string/jumbo v2, "PowerManagerUtil"

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display Type err = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const-string v0, ""

    goto :goto_27

    :cond_1a
    const-string v0, "/sys/class/lcd/panel1/display_on"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_21
    const-string v0, "/sys/class/lcd/panel/display_on"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    if-nez v0, :cond_30

    const-string/jumbo v0, "null : /sys/class/lcd/panel/display_on or /sys/class/lcd/panel1/display_on"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_30
    :try_start_30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_34} :catch_35

    return-wide v0

    :catch_35
    const-string v1, "/sys/class/lcd/panel/display_on or /sys/class/lcd/panel1/display_on data is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public final clearAll()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    return-void
.end method

.method public final noteFrameEnd()V
    .registers 7

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckCnt:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameEndTime:J

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_19

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    :cond_19
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    if-nez v1, :cond_27

    iget-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    goto :goto_27

    :cond_26
    return-void

    :cond_27
    :goto_27
    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    return-void
.end method

.method public final noteFrameStart(I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    if-eqz v0, :cond_9

    goto :goto_21

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    sput p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameStartTime:J

    sget-object p1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameCheckerRunnable:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler$1;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_21
    :goto_21
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    if-nez p1, :cond_35

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    return-void

    :cond_35
    :goto_35
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    return-void
.end method

.method public final noteWakeupEnd(Z)V
    .registers 6

    if-nez p1, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    sub-long/2addr v0, v2

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    goto :goto_22

    :cond_13
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    sub-long/2addr v0, v2

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-int p1, v0

    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    :goto_22
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    if-nez p1, :cond_48

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mSaved:Z

    const-string/jumbo p1, "PowerManagerUtil"

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/power/PowerManagerUtil;->sScreenOnProfilers:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;-><init>(Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_48
    return-void
.end method

.method public final toString(Z)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_42

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpTimeStr:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "[%3d][%s][T:%4d]  [Caller:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d] [Frame:%3d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_42
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "[%3d][T:%4d]  [Caller:%2d] [WMS:%3d] [DSL:%2d] [Panel:%3d] [Frame:%3d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
