.class public final Lcom/android/server/utils/AnrTimer$TimerLock;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public mClosed:Z

.field public final mGuard:Landroid/util/CloseGuard;

.field public final mLock:Ljava/lang/Object;

.field public final mTimerId:I

.field public final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->this$0:Lcom/android/server/utils/AnrTimer;

    new-instance p1, Landroid/util/CloseGuard;

    invoke-direct {p1}, Landroid/util/CloseGuard;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mGuard:Landroid/util/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mClosed:Z

    iput p2, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    const-string p0, "AnrTimer.release"

    invoke-virtual {p1, p0}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object v1, v1, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v1, p0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->release(Lcom/android/server/utils/AnrTimer$TimerLock;)V

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mClosed:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$TimerLock;->mGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$TimerLock;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
