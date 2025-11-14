.class public final Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFinished:Z

.field public mIsFinishing:Z

.field public mIsStarted:Z


# direct methods
.method public constructor <init>(Landroid/os/vibrator/IVibrationSessionCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final declared-synchronized notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Lcom/android/server/vibrator/VibrationSession$Status;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
