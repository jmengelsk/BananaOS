.class public final Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 5

    const-string/jumbo v0, "Unknown tagId="

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "StatsPull-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/16 v3, 0x2716

    if-eq p1, v3, :cond_15

    const/16 v3, 0x2717

    if-eq p1, v3, :cond_14

    const/16 v3, 0x2744

    if-eq p1, v3, :cond_13

    const/16 v3, 0x2745

    if-eq p1, v3, :cond_12

    const/16 v3, 0x2752

    if-eq p1, v3, :cond_11

    const/16 v3, 0x2753

    if-eq p1, v3, :cond_10

    const/16 v3, 0x2755

    if-eq p1, v3, :cond_f

    const/16 v3, 0x2756

    const/4 v4, 0x0

    if-eq p1, v3, :cond_e

    const/16 v3, 0x2762

    if-eq p1, v3, :cond_d

    const/16 v3, 0x2763

    if-eq p1, v3, :cond_d

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v3, 0x276f

    if-eq p1, v3, :cond_c

    const/16 v3, 0x2770

    if-eq p1, v3, :cond_b

    const/16 v3, 0x2776

    if-eq p1, v3, :cond_a

    const/16 v3, 0x2777

    if-eq p1, v3, :cond_9

    const/16 v3, 0x278f

    if-eq p1, v3, :cond_8

    const/16 v3, 0x2790

    if-eq p1, v3, :cond_7

    const/16 v3, 0x27a6

    if-eq p1, v3, :cond_6

    const/16 v3, 0x27a7

    if-eq p1, v3, :cond_5

    const/16 v3, 0x27bb

    if-eq p1, v3, :cond_4

    const/16 v3, 0x27bc

    if-eq p1, v3, :cond_3

    const/16 v3, 0x27cc

    if-eq p1, v3, :cond_2

    const/16 v3, 0x27cd

    if-eq p1, v3, :cond_1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    :try_start_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw p0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_5
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_6
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw p1

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_7
    move-exception p0

    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    throw p0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x4

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_8
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    throw p0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_9
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    throw p0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :try_start_1c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_a
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    :try_start_1e
    throw p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_b
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    throw p1

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_c
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    :try_start_24
    throw p1

    :pswitch_c
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_0
    :try_start_25
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPressureStallInformation(ILjava/util/List;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_1
    :try_start_26
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransfer(Ljava/util/List;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_2
    :try_start_27
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_3
    :try_start_28
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :sswitch_4
    :try_start_29
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :try_start_2a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_d
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    :try_start_2c
    throw p0

    :sswitch_5
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result p0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :sswitch_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :sswitch_7
    :try_start_2d
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_8
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :try_start_2f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_e
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    :try_start_31
    throw p0

    :sswitch_9
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    :try_start_32
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_f
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_f

    :try_start_34
    throw p0

    :sswitch_a
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_b
    :try_start_35
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    :try_start_36
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_10

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_10
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    :try_start_38
    throw p0

    :sswitch_c
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    :try_start_39
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_11

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_11
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_11

    :try_start_3b
    throw p0

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    :try_start_3c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_12

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_12
    move-exception p0

    :try_start_3d
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_12

    :try_start_3e
    throw p0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    :try_start_3f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_13

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_13
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_13

    :try_start_41
    throw p0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    :try_start_42
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_14

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_14
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_14

    :try_start_44
    throw p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    :try_start_45
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_15

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_15
    move-exception p0

    :try_start_46
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    :try_start_47
    throw p0

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    :try_start_48
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_16

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_16
    move-exception p0

    :try_start_49
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_16

    :try_start_4a
    throw p0

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    :try_start_4b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_17

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_17
    move-exception p0

    :try_start_4c
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_17

    :try_start_4d
    throw p0

    :pswitch_13
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    :try_start_4e
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_18

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_18
    move-exception p1

    :try_start_4f
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_18

    :try_start_50
    throw p1

    :pswitch_14
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    :try_start_51
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_19

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_19
    move-exception p1

    :try_start_52
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_19

    :try_start_53
    throw p1

    :pswitch_15
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0

    :try_start_54
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_1a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_1a
    move-exception p1

    :try_start_55
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    :try_start_56
    throw p1

    :pswitch_16
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    :try_start_57
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_1b

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1b
    move-exception p0

    :try_start_58
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1b

    :try_start_59
    throw p0

    :pswitch_17
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_0

    :try_start_5a
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_1c
    move-exception p1

    :try_start_5b
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1c

    :try_start_5c
    throw p1

    :pswitch_18
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_0

    :try_start_5d
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_1d
    move-exception p1

    :try_start_5e
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1d

    :try_start_5f
    throw p1

    :pswitch_19
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_0

    :try_start_60
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_1e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_1e
    move-exception p1

    :try_start_61
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1e

    :try_start_62
    throw p1

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_0

    :try_start_63
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_1f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1f
    move-exception p0

    :try_start_64
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1f

    :try_start_65
    throw p0

    :pswitch_1b
    :sswitch_d
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_0

    :try_start_66
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_20
    move-exception p0

    :try_start_67
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_20

    :try_start_68
    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_2
    :try_start_69
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    :try_start_6a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullUwbActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_21

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_21
    move-exception p0

    :try_start_6b
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_21

    :try_start_6c
    throw p0

    :cond_3
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    :try_start_6d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_22

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_22
    move-exception p0

    :try_start_6e
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_22

    :try_start_6f
    throw p0

    :cond_4
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0

    :try_start_70
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_23

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_23
    move-exception p0

    :try_start_71
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_23

    :try_start_72
    throw p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_6
    :try_start_73
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)V
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_7
    :try_start_74
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result p0
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_8
    :try_start_75
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I

    move-result p0
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_9
    :pswitch_1c
    :try_start_76
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result p0
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_a
    :try_start_77
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_0

    :try_start_78
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_24

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_24
    move-exception p1

    :try_start_79
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_24

    :try_start_7a
    throw p1

    :cond_b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_0

    :try_start_7b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_25

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_25
    move-exception p0

    :try_start_7c
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_25

    :try_start_7d
    throw p0

    :cond_c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_0

    :try_start_7e
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_26

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_26
    move-exception p1

    :try_start_7f
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_26

    :try_start_80
    throw p1

    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_0

    :try_start_81
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_27

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_27
    move-exception p0

    :try_start_82
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_27

    :try_start_83
    throw p0

    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_0

    :try_start_84
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_28

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_28
    move-exception p0

    :try_start_85
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_28

    :try_start_86
    throw p0

    :pswitch_1f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_0

    :try_start_87
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_29

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_29
    move-exception p1

    :try_start_88
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_29

    :try_start_89
    throw p1

    :pswitch_20
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_0

    :try_start_8a
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_2a
    move-exception p1

    :try_start_8b
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2a

    :try_start_8c
    throw p1

    :pswitch_21
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_0

    :try_start_8d
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_2b

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_2b
    move-exception p1

    :try_start_8e
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2b

    :try_start_8f
    throw p1

    :pswitch_22
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_0

    :try_start_90
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_2c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2c
    move-exception p0

    :try_start_91
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2c

    :try_start_92
    throw p0

    :pswitch_23
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_0

    :try_start_93
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_2d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2d
    move-exception p0

    :try_start_94
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_2d

    :try_start_95
    throw p0

    :pswitch_24
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_0

    :try_start_96
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_2e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_2e
    move-exception p0

    :try_start_97
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_2e

    :try_start_98
    throw p0

    :pswitch_25
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_0

    :try_start_99
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_2f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_2f
    move-exception p0

    :try_start_9a
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_2f

    :try_start_9b
    throw p0

    :pswitch_26
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_0

    :try_start_9c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_30

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_30
    move-exception p0

    :try_start_9d
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_30

    :try_start_9e
    throw p0

    :cond_d
    :pswitch_27
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_0

    :try_start_9f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_31

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_31
    move-exception p0

    :try_start_a0
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_31

    :try_start_a1
    throw p0

    :cond_e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_0

    :try_start_a2
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_32

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_32
    move-exception p1

    :try_start_a3
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_32

    :try_start_a4
    throw p1

    :cond_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_0

    :try_start_a5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_33

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_33
    move-exception p0

    :try_start_a6
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_33

    :try_start_a7
    throw p0

    :cond_10
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_0

    :try_start_a8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_34

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_34
    move-exception p0

    :try_start_a9
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_34

    :try_start_aa
    throw p0

    :cond_11
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_0

    :try_start_ab
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_35

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_35
    move-exception p0

    :try_start_ac
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_35

    :try_start_ad
    throw p0

    :cond_12
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_0

    :try_start_ae
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_36

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_36
    move-exception p0

    :try_start_af
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_36

    :try_start_b0
    throw p0

    :cond_13
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_0

    :try_start_b1
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_37

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_37
    move-exception p1

    :try_start_b2
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_37

    :try_start_b3
    throw p1

    :cond_14
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_0

    :try_start_b4
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_38

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_38
    move-exception p1

    :try_start_b5
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_38

    :try_start_b6
    throw p1

    :cond_15
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_0

    :try_start_b7
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_39

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_39
    move-exception p1

    :try_start_b8
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_39

    :try_start_b9
    throw p1
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2719
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2723
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1b
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2735 -> :sswitch_c
        0x2737 -> :sswitch_b
        0x2750 -> :sswitch_a
        0x275b -> :sswitch_9
        0x2760 -> :sswitch_8
        0x276c -> :sswitch_7
        0x2772 -> :sswitch_6
        0x2774 -> :sswitch_e
        0x2779 -> :sswitch_5
        0x2782 -> :sswitch_4
        0x2792 -> :sswitch_3
        0x27bf -> :sswitch_2
        0x27d8 -> :sswitch_e
        0x27dc -> :sswitch_1
        0x27ec -> :sswitch_d
        0x27f5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x2785
        :pswitch_c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x273a
        :pswitch_b
        :pswitch_1b
        :pswitch_a
        :pswitch_1b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_28
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2748
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
