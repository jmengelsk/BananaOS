.class final Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    return-void
.end method


# virtual methods
.method public final getServiceType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
