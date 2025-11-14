.class public final Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCurrentSessionCount:I

.field public mMaxConcurrentSession:I

.field public mMaxThreadCount:I

.field public mPowerEfficientSessionCount:I

.field public final mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mCurrentSessionCount:I

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxConcurrentSession:I

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mMaxThreadCount:I

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mPowerEfficientSessionCount:I

    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public final updateTargetDurationNs(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    iget-wide v3, v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    iget p0, v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    add-int/2addr p0, v2

    iput p0, v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_34
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->mTargetDurationNsCountPQ:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    iput v2, v0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
