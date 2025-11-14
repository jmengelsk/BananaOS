.class public final Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBrightnessLimitPeriod:I

.field public final mLock:Landroid/os/IBinder;

.field public final mPid:I

.field public final mUid:I

.field public mUpperLimit:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mLock:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    iput p4, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    iput p5, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUid:I

    iput p6, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mPid:I

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "PowerManagerService"

    const-string p1, "Failed to link HdrBrightnessLimitLock.mLock"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mLock:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "PowerManagerService"

    const-string v2, "Failed to unlink HdrBrightnessLimitLock.mLock"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 p0, 0xc8

    const/4 v3, -0x1

    invoke-virtual {v1, v3, p0}, Lcom/android/server/power/PowerManagerService;->calculateHdrBrightnessLimitLocked(II)V

    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    if-lez p0, :cond_2

    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    if-eq p0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    :goto_1
    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    invoke-virtual {v1, p0, v3}, Lcom/android/server/power/PowerManagerService;->getStartingLimitationOfBrightness(II)I

    move-result p0

    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    if-ne v3, p0, :cond_1

    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iput v3, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p0, p0, 0x20

    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p0, p0, 0x20

    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUpperLimit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBrightnessLimitPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
