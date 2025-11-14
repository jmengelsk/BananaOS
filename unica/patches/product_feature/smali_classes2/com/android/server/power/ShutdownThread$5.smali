.class public final Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$done:[Z

.field public final synthetic val$endTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string/jumbo v0, "ShutdownThread"

    const-string v1, "!@Start shutdown radios"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string/jumbo v2, "ShutdownTiming"

    const-wide/32 v3, 0x80000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    if-nez v5, :cond_2

    const-string/jumbo v6, "Turning off cellular radios..."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->shutdownAllRadios()V

    :cond_2
    const-string/jumbo v6, "Waiting for Radio..."

    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :goto_2
    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_7

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v8, :cond_3

    const/16 v8, 0x2ee0

    int-to-long v9, v8

    sub-long/2addr v9, v6

    long-to-double v6, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    mul-double/2addr v6, v9

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x6

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_3
    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    if-nez v5, :cond_4

    const-string v5, "!@Radio turned off."

    invoke-static {v0, v5}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string/jumbo v5, "ShutdownRadio"

    invoke-virtual {v1, v5, v7, v8}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_4
    move v5, v6

    :cond_5
    if-eqz v5, :cond_6

    const-string/jumbo v1, "Radio shutdown complete."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v3, p0, v4

    return-void

    :cond_6
    const-string v6, "!@before sleep"

    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    const-string v6, "!@after sleep"

    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!@[Phone off retry:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " radio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    goto/16 :goto_2

    :cond_7
    return-void
.end method
