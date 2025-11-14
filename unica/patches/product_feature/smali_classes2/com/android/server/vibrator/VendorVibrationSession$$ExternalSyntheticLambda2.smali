.class public final synthetic Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Lcom/android/server/vibrator/VendorVibrationSession;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/server/vibrator/VibrationSession$Status;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_118

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_10
    iget-object v0, v0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_120

    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_20  #0x14
    const/4 p0, 0x3

    goto :goto_29

    :pswitch_22  #0x11, 0x12, 0x13, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d
    const/4 p0, 0x2

    goto :goto_29

    :pswitch_24  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0x1e, 0x1f, 0x20, 0x21
    const/4 p0, 0x4

    goto :goto_29

    :pswitch_26  #0x2
    const/4 p0, 0x1

    goto :goto_29

    :pswitch_28  #0x0, 0x1, 0x3, 0x4, 0xd, 0xe, 0xf, 0x10
    const/4 p0, 0x5

    :goto_29
    invoke-interface {v0, p0}, Landroid/os/vibrator/IVibrationSessionCallback;->onFinished(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    move-exception p0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string v1, "Error notifying vendor session finished"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void

    :pswitch_37  #0x1
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/vibrator/VendorVibrationSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_42
    iget-object v0, v0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0, p0}, Landroid/os/vibrator/IVibrationSessionCallback;->onStarted(Landroid/os/vibrator/IVibrationSession;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_51

    :catch_48
    move-exception p0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string v1, "Error notifying vendor session started"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_51
    return-void

    :pswitch_52  #0x0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    iget-wide v2, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "VibrationSession invalid on vibration session release. currentSession="

    const-string/jumbo v5, "VibratorManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Vibration session "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " released"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "onVendorSessionReleased"

    const-wide/32 v6, 0x800000

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_87
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_112

    :try_start_8c
    iget-object v8, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v8, v8, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v9, v8, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v9, :cond_ee

    check-cast v8, Lcom/android/server/vibrator/VendorVibrationSession;

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_bc

    iget-wide v9, v8, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    cmp-long v4, v9, v2

    if-eqz v4, :cond_bc

    const-string/jumbo v4, "VibratorManagerService"

    const-string/jumbo v11, "SessionId mismatch on vendor vibration session release. expected=%d, released=%d"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v9, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :catchall_ba
    move-exception p0

    goto :goto_110

    :cond_bc
    :goto_bc
    iget-object v2, v8, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_c0
    if-ge v4, v3, :cond_d4

    aget v8, v2, v4

    iget-object v9, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v9, v9, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibratorController;->off()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    :cond_d4
    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v3, v2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v3}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V

    monitor-exit v5
    :try_end_ea
    .catchall {:try_start_8c .. :try_end_ea} :catchall_ba

    :goto_ea
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_10a

    :cond_ee
    :try_start_ee
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_108

    const-string/jumbo v2, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_108
    monitor-exit v5
    :try_end_109
    .catchall {:try_start_ee .. :try_end_109} :catchall_ba

    goto :goto_ea

    :goto_10a
    iget-object v0, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void

    :goto_110
    :try_start_110
    monitor-exit v5
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_ba

    :try_start_111
    throw p0
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_112

    :catchall_112
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_52  #00000000
        :pswitch_37  #00000001
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_28  #00000001
        :pswitch_26  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_24  #00000005
        :pswitch_24  #00000006
        :pswitch_24  #00000007
        :pswitch_24  #00000008
        :pswitch_24  #00000009
        :pswitch_24  #0000000a
        :pswitch_24  #0000000b
        :pswitch_24  #0000000c
        :pswitch_28  #0000000d
        :pswitch_28  #0000000e
        :pswitch_28  #0000000f
        :pswitch_28  #00000010
        :pswitch_22  #00000011
        :pswitch_22  #00000012
        :pswitch_22  #00000013
        :pswitch_20  #00000014
        :pswitch_22  #00000015
        :pswitch_22  #00000016
        :pswitch_22  #00000017
        :pswitch_22  #00000018
        :pswitch_22  #00000019
        :pswitch_22  #0000001a
        :pswitch_22  #0000001b
        :pswitch_22  #0000001c
        :pswitch_22  #0000001d
        :pswitch_24  #0000001e
        :pswitch_24  #0000001f
        :pswitch_24  #00000020
        :pswitch_24  #00000021
    .end packed-switch
.end method
