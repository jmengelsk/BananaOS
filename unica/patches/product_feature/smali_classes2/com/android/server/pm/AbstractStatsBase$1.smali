.class public final Lcom/android/server/pm/AbstractStatsBase$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AbstractStatsBase;

.field public final synthetic val$data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iput-object p3, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iget-object v2, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AbstractStatsBase;->writeImpl(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iget-object v1, v1, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1b
    move-exception v1

    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
