.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorManagerService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService$1;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SERVICE_RECOVERED:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v3, :cond_0

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v2, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_2

    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
