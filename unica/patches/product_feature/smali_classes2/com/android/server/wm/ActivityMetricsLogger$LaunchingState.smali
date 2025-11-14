.class public final Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sTraceSeqId:I


# instance fields
.field public mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field public final mStartRealtimeNs:J

.field public final mStartUptimeNs:J

.field public mTraceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    sget v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "launchingActivity#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public allDrawn()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_b

    :cond_5
    if-nez p1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eq p2, v1, :cond_c

    :goto_b
    return-void

    :cond_c
    const-wide/16 v1, 0x40

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-nez v0, :cond_19

    const-string p1, ":failed"

    goto :goto_4f

    :cond_19
    if-eqz p1, :cond_1e

    const-string p1, ":canceled:"

    goto :goto_3e

    :cond_1e
    iget-boolean p1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    if-nez p1, :cond_25

    const-string p1, ":completed-same-process:"

    goto :goto_3e

    :cond_25
    iget p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_35

    iget-boolean p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    if-nez p1, :cond_32

    const-string p1, ":completed-hot:"

    goto :goto_3e

    :cond_32
    const-string p1, ":completed-relaunch:"

    goto :goto_3e

    :cond_35
    const/16 p2, 0x8

    if-ne p1, p2, :cond_3c

    const-string p1, ":completed-warm:"

    goto :goto_3e

    :cond_3c
    const-string p1, ":completed-cold:"

    :goto_3e
    invoke-static {p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    iget-object p2, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    return-void
.end method
