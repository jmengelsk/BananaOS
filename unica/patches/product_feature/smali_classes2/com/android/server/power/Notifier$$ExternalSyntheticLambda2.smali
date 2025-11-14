.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Landroid/os/IWakeLockCallback;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/WorkSource;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;ZLjava/lang/String;IIILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;JLandroid/os/IWakeLockCallback;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/Notifier;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$5:I

    iput-object p7, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$6:Landroid/os/WorkSource;

    iput-object p8, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$7:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$8:Ljava/lang/String;

    iput-wide p10, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$9:J

    iput-object p12, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$10:Landroid/os/IWakeLockCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/Notifier;

    iget-boolean v2, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v6, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$3:I

    iget v5, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$4:I

    iget v14, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$5:I

    iget-object v4, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$6:Landroid/os/WorkSource;

    iget-object v11, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$7:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$8:Ljava/lang/String;

    iget-wide v12, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$9:J

    iget-object v0, v0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$10:Landroid/os/IWakeLockCallback;

    iget-object v3, v1, Lcom/android/server/power/Notifier;->mFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    iget-object v3, v3, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_ea

    iget-object v3, v1, Lcom/android/server/power/Notifier;->mPartialWakeLockLog:Lcom/android/server/power/WakeLockLog;

    iget-object v8, v1, Lcom/android/server/power/Notifier;->mFullWakeLockLog:Lcom/android/server/power/WakeLockLog;

    if-eqz v2, :cond_9b

    move-object v9, v8

    invoke-virtual {v1, v14}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    if-ltz v8, :cond_71

    const/16 v15, 0x3e8

    if-ne v10, v15, :cond_3a

    const/high16 v15, 0x40000000  # 2.0f

    and-int/2addr v15, v14

    if-eqz v15, :cond_3a

    const/4 v15, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v15, 0x0

    :goto_3b
    if-eqz v4, :cond_4f

    move-object/from16 v16, v3

    :try_start_3f
    iget-object v3, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_41} :catch_73

    move/from16 v20, v15

    move-object v15, v9

    move/from16 v9, v20

    :try_start_46
    invoke-interface/range {v3 .. v9}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4c

    move-object/from16 v17, v4

    goto :goto_76

    :catch_4c
    move-object/from16 v17, v4

    goto :goto_76

    :cond_4f
    move/from16 v16, v15

    move-object v15, v9

    move/from16 v9, v16

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :try_start_58
    iget-object v3, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5a} :catch_76

    move v4, v10

    :try_start_5b
    invoke-interface/range {v3 .. v9}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v7, v1, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_6f

    move-wide v8, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v9, v8

    const/16 v8, 0x28

    move-wide/from16 v18, v9

    move-object v10, v11

    const/4 v11, 0x0

    move v9, v4

    :try_start_6b
    invoke-virtual/range {v7 .. v13}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_79

    goto :goto_79

    :catch_6f
    move v9, v4

    goto :goto_77

    :cond_71
    move-object/from16 v16, v3

    :catch_73
    move-object/from16 v17, v4

    move-object v15, v9

    :catch_76
    :goto_76
    move v9, v10

    :goto_77
    move-wide/from16 v18, v12

    :catch_79
    :goto_79
    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v1

    if-eqz v1, :cond_81

    move-object v3, v15

    goto :goto_83

    :cond_81
    move-object/from16 v3, v16

    :goto_83
    if-eqz v17, :cond_8c

    invoke-virtual/range {v17 .. v17}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v1

    move v10, v1

    :goto_8a
    const/4 v1, -0x1

    goto :goto_8e

    :cond_8c
    const/4 v10, -0x1

    goto :goto_8a

    :goto_8e
    if-eq v10, v1, :cond_92

    move v5, v10

    goto :goto_93

    :cond_92
    move v5, v9

    :goto_93
    const/4 v4, 0x1

    move v7, v14

    move-wide/from16 v8, v18

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    goto :goto_ea

    :cond_9b
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v15, v8

    move v9, v10

    move-wide/from16 v18, v12

    move v10, v14

    invoke-virtual {v1, v10}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v8

    if-ltz v8, :cond_c8

    if-eqz v17, :cond_b9

    :try_start_ac
    iget-object v3, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_ae} :catch_c8

    move-object/from16 v4, v17

    :try_start_b0
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b3} :catch_b6

    move-object/from16 v17, v4

    goto :goto_c8

    :catch_b6
    move-object/from16 v17, v4

    goto :goto_c8

    :cond_b9
    :try_start_b9
    iget-object v3, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bb} :catch_c8

    move v4, v9

    :try_start_bc
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, v1, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x28

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v11, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c7} :catch_c9

    goto :goto_c9

    :catch_c8
    :cond_c8
    :goto_c8
    move v4, v9

    :catch_c9
    :goto_c9
    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->isScreenLock(I)Z

    move-result v1

    if-eqz v1, :cond_d1

    move-object v3, v15

    goto :goto_d3

    :cond_d1
    move-object/from16 v3, v16

    :goto_d3
    if-eqz v17, :cond_dc

    invoke-virtual/range {v17 .. v17}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v1

    move v10, v1

    :goto_da
    const/4 v1, -0x1

    goto :goto_de

    :cond_dc
    const/4 v10, -0x1

    goto :goto_da

    :goto_de
    if-eq v10, v1, :cond_e2

    move v5, v10

    goto :goto_e3

    :cond_e2
    move v5, v4

    :goto_e3
    const/4 v4, 0x2

    const/4 v7, 0x0

    move-wide/from16 v8, v18

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(IILjava/lang/String;IJ)V

    :cond_ea
    :goto_ea
    if-eqz v0, :cond_10c

    :try_start_ec
    invoke-interface {v0, v2}, Landroid/os/IWakeLockCallback;->onStateChanged(Z)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_ef} :catch_f0

    goto :goto_10c

    :catch_f0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Wakelock.mCallback ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] is already dead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PowerManagerNotifier"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10c
    :goto_10c
    return-void
.end method
