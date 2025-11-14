.class public final Lcom/android/server/wm/AnrController$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$monitor:Ljava/lang/Runnable;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$now:J

.field public final synthetic val$shouldDumpSf:[Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AnrController$1;->val$monitor:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/wm/AnrController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p3, p0, Lcom/android/server/wm/AnrController$1;->val$now:J

    iput-object p5, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wm/AnrController$1;->val$shouldDumpSf:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$monitor:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/AnrController$1;->val$now:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    cmp-long v2, v0, v2

    const-string/jumbo v3, "WindowManager"

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Pre-dump acquired "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-static {v2, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AnrController$1;->val$shouldDumpSf:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    :cond_1
    return-void
.end method
