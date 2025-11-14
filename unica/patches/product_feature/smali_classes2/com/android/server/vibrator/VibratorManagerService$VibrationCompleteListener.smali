.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public mServiceRef:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/VibrationEffect;
    .registers 2

    iget v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_18

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast p0, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$BasicEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast p0, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e  #00000001
    .end packed-switch
.end method

.method public onComplete(IJJ)V
    .registers 15

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_4d

    const-string/jumbo v0, "Vibration "

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_49

    const-string/jumbo v2, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " step "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " on vibrator "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " complete, notifying thread"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/server/vibrator/VibrationSession;->notifyVibratorCallback(IJJ)V

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object p0, v0

    goto :goto_4b

    :cond_49
    :goto_49
    monitor-exit v1

    return-void

    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_46

    throw p0

    :cond_4d
    return-void
.end method

.method public onSyncedVibrationComplete(J)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_39

    const-string/jumbo v0, "Synced vibration "

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_35

    const-string/jumbo v2, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " complete, notifying thread"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSession;->notifySyncedVibratorsCallback(J)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_37

    :cond_35
    :goto_35
    monitor-exit v1

    return-void

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_33

    throw p0

    :cond_39
    return-void
.end method

.method public onVibrationSessionComplete(J)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_5d

    const-string/jumbo v0, "Vibration session "

    const-string/jumbo v1, "Vibration session "

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_15
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v3, :cond_42

    invoke-interface {v3}, Lcom/android/server/vibrator/VibrationSession;->getSessionId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-eqz v3, :cond_22

    goto :goto_42

    :cond_22
    const-string/jumbo v0, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " complete, notifying session"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->notifySessionCallback()V

    monitor-exit v2

    return-void

    :catchall_40
    move-exception p0

    goto :goto_5b

    :cond_42
    :goto_42
    const-string/jumbo p0, "VibratorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " callback ignored"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_15 .. :try_end_5c} :catchall_40

    throw p0

    :cond_5d
    return-void
.end method
