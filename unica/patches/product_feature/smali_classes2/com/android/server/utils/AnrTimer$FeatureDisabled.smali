.class public final Lcom/android/server/utils/AnrTimer$FeatureDisabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final cancel(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final discard(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v0, v0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "started=%d maxStarted=%d running=%d expired=%d errors=%d\n"

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget v2, v2, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget v3, v3, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v4, v4, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget v5, v5, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, v3, v4, v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 0

    return-void
.end method

.method public final start(Ljava/lang/Object;IIJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object p2, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p3, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
