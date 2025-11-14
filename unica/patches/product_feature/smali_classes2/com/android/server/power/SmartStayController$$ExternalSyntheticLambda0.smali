.class public final synthetic Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/SmartStayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/SmartStayController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/SmartStayController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object p0, p0, Lcom/android/server/power/SmartStayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/SmartStayController;

    iget-object v0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    iget-object p0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceCallback:Lcom/android/server/power/SmartStayController$1;

    iget-object v1, v0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v1, v0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartStay()Z

    move-result v1

    iget-object v0, v0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string/jumbo v0, "SmartStayController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleSmartStay : faceDetected : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/SmartStayController$1;->this$0:Lcom/android/server/power/SmartStayController;

    iget-object v0, v0, Lcom/android/server/power/SmartStayController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_36
    iget-object v2, p0, Lcom/android/server/power/SmartStayController$1;->this$0:Lcom/android/server/power/SmartStayController;

    iget v3, v2, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_53

    iget-object v2, v2, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object p0, p0, Lcom/android/server/power/SmartStayController$1;->this$0:Lcom/android/server/power/SmartStayController;

    iget v2, p0, Lcom/android/server/power/SmartStayController;->mUserActivitySummary:I

    and-int/2addr v2, v4

    if-nez v2, :cond_4d

    goto :goto_53

    :cond_4d
    iput-boolean v1, p0, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    goto :goto_5e

    :cond_53
    :goto_53
    const-string/jumbo p0, "SmartStayController"

    const-string/jumbo v1, "handleSmartStay : cancelled"

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_36 .. :try_end_5f} :catchall_51

    throw p0
.end method
