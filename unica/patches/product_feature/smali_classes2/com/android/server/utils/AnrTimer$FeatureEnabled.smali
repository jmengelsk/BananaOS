.class public final Lcom/android/server/utils/AnrTimer$FeatureEnabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mNative:J

.field public mTotalRestarted:I

.field public final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    iget-object v2, p1, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    iget-boolean v4, v3, Lcom/android/server/utils/AnrTimer$Args;->mExtend:Z

    iget-boolean v5, v3, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    if-eqz v5, :cond_1d

    iget-object v3, v3, Lcom/android/server/utils/AnrTimer$Args;->mInjector:Lcom/android/server/utils/AnrTimer$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    :cond_1d
    invoke-static {p1, v2, v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_2a
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unable to create native timer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .registers 9

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string/jumbo v1, "accept"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :catchall_16
    move-exception p0

    goto :goto_4a

    :cond_18
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v3, v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerAccept(IJ)Z

    move-result p1

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string/jumbo v4, "accept"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s(%d)"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnrTimerTrack"

    const-wide/16 v5, 0x40

    invoke-static {v5, v6, v4, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_48

    new-instance v2, Lcom/android/server/utils/AnrTimer$TimerLock;

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, p0, p1}, Lcom/android/server/utils/AnrTimer$TimerLock;-><init>(Lcom/android/server/utils/AnrTimer;I)V

    :cond_48
    monitor-exit v0

    return-object v2

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_16

    throw p0
.end method

.method public final cancel(Ljava/lang/Object;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_2a

    :cond_10
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v3, v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerCancel(IJ)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit v0

    return v2

    :cond_27
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_e

    throw p0
.end method

.method public final close()V
    .registers 7

    sget-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v1, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    invoke-static {v2, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerClose(J)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_20

    :cond_1c
    :goto_1c
    iput-wide v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    monitor-exit v1

    return-void

    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1a

    throw p0

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final discard(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string/jumbo v1, "discard"

    invoke-static {p0, v1, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    goto :goto_3d

    :cond_18
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v2, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDiscard(IJ)V

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string/jumbo p1, "discard"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s(%d)"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnrTimerTrack"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, p1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_16

    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_17

    const-string/jumbo p0, "closed"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto :goto_4a

    :cond_17
    invoke-static {v1, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    const-string/jumbo p0, "no-data"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_25
    array-length v2, v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_15

    throw p0
.end method

.method public final enabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .registers 5

    iget v0, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    if-nez v0, :cond_5

    goto :goto_28

    :cond_5
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerRelease(IJ)Z

    move-result p0

    if-nez p0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "failed to release id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "AnrTimer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public final removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_15
    return-object p1
.end method

.method public final start(Ljava/lang/Object;IIJ)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v1, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->cancel(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    goto :goto_15

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto :goto_53

    :cond_15
    :goto_15
    iget-wide v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    move v2, p2

    move v3, p3

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerStart(IIJJ)I

    move-result p2

    if-lez p2, :cond_4a

    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object p3, p3, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object p3, p3, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    iget-object p2, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    monitor-exit v1

    return-void

    :cond_4a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unable to start timer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_12

    throw p0
.end method
