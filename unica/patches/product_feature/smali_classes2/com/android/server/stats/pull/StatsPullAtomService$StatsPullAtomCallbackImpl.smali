.class public final Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .registers 8

    const-string/jumbo v0, "Unknown tagId="

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "StatsPull-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1e
    const/16 v3, 0x2716

    if-eq p1, v3, :cond_577

    const/16 v3, 0x2717

    if-eq p1, v3, :cond_564

    const/16 v3, 0x2744

    if-eq p1, v3, :cond_551

    const/16 v3, 0x2745

    if-eq p1, v3, :cond_53c

    const/16 v3, 0x2752

    if-eq p1, v3, :cond_527

    const/16 v3, 0x2753

    if-eq p1, v3, :cond_512

    const/16 v3, 0x2755

    if-eq p1, v3, :cond_4fd

    const/16 v3, 0x2756

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4eb

    const/16 v3, 0x2762

    if-eq p1, v3, :cond_4d6

    const/16 v3, 0x2763

    if-eq p1, v3, :cond_4d6

    packed-switch p1, :pswitch_data_58e

    packed-switch p1, :pswitch_data_59c

    const/16 v3, 0x276f

    if-eq p1, v3, :cond_401

    const/16 v3, 0x2770

    if-eq p1, v3, :cond_3ef

    const/16 v3, 0x2776

    if-eq p1, v3, :cond_3dc

    const/16 v3, 0x2777

    if-eq p1, v3, :cond_3d2

    const/16 v3, 0x278f

    if-eq p1, v3, :cond_3c8

    const/16 v3, 0x2790

    if-eq p1, v3, :cond_3be

    const/16 v3, 0x27a6

    if-eq p1, v3, :cond_3b7

    const/16 v3, 0x27a7

    if-eq p1, v3, :cond_3ae

    const/16 v3, 0x27bb

    if-eq p1, v3, :cond_39b

    const/16 v3, 0x27bc

    if-eq p1, v3, :cond_388

    const/16 v3, 0x27cc

    if-eq p1, v3, :cond_373

    const/16 v3, 0x27cd

    if-eq p1, v3, :cond_36a

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_5b2

    sparse-switch p1, :sswitch_data_5d8

    packed-switch p1, :pswitch_data_61a

    packed-switch p1, :pswitch_data_630

    packed-switch p1, :pswitch_data_646

    :try_start_8d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_9f
    move-exception p0

    goto/16 :goto_58a

    :pswitch_a2  #0x274d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_a9
    .catchall {:try_start_8d .. :try_end_a9} :catchall_9f

    :try_start_a9
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_b1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_b1
    move-exception p1

    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw p1

    :pswitch_b4  #0x274c
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_9f

    :try_start_bb
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_c6

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_c6
    move-exception p0

    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw p0

    :pswitch_c9  #0x274b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_9f

    :try_start_d0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_db

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_db
    move-exception p0

    :try_start_dc
    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw p0

    :pswitch_de  #0x274a
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_9f

    :try_start_e5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_f0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_f0
    move-exception p0

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw p0

    :pswitch_f3  #0x2749
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_9f

    :try_start_fa
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_101
    .catchall {:try_start_fa .. :try_end_101} :catchall_105

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_105
    move-exception p0

    :try_start_106
    monitor-exit v0
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    :try_start_107
    throw p0

    :pswitch_108  #0x2748
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_10f
    .catchall {:try_start_107 .. :try_end_10f} :catchall_9f

    :try_start_10f
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_117

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_117
    move-exception p1

    :try_start_118
    monitor-exit p0
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    :try_start_119
    throw p1

    :pswitch_11a  #0x2741
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_121
    .catchall {:try_start_119 .. :try_end_121} :catchall_9f

    :try_start_121
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_128
    .catchall {:try_start_121 .. :try_end_128} :catchall_12c

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_12c
    move-exception p0

    :try_start_12d
    monitor-exit v0
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    :try_start_12e
    throw p0

    :pswitch_12f  #0x2740
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_134
    .catchall {:try_start_12e .. :try_end_134} :catchall_9f

    :try_start_134
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v3, 0x4

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_13c
    .catchall {:try_start_134 .. :try_end_13c} :catchall_140

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_140
    move-exception p0

    :try_start_141
    monitor-exit v0
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    :try_start_142
    throw p0

    :pswitch_143  #0x273f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_14a
    .catchall {:try_start_142 .. :try_end_14a} :catchall_9f

    :try_start_14a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_151
    .catchall {:try_start_14a .. :try_end_151} :catchall_155

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_155
    move-exception p0

    :try_start_156
    monitor-exit v0
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    :try_start_157
    throw p0

    :pswitch_158  #0x273e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_15f
    .catchall {:try_start_157 .. :try_end_15f} :catchall_9f

    :try_start_15f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_165
    .catchall {:try_start_15f .. :try_end_165} :catchall_169

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_169
    move-exception p0

    :try_start_16a
    monitor-exit v0
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    :try_start_16b
    throw p0

    :pswitch_16c  #0x273c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_173
    .catchall {:try_start_16b .. :try_end_173} :catchall_9f

    :try_start_173
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_177
    .catchall {:try_start_173 .. :try_end_177} :catchall_17b

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_17b
    move-exception p1

    :try_start_17c
    monitor-exit p0
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    :try_start_17d
    throw p1

    :pswitch_17e  #0x273a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_185
    .catchall {:try_start_17d .. :try_end_185} :catchall_9f

    :try_start_185
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_189
    .catchall {:try_start_185 .. :try_end_189} :catchall_18d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_18d
    move-exception p1

    :try_start_18e
    monitor-exit p0
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    :try_start_18f
    throw p1

    :pswitch_190  #0x2785
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)V
    :try_end_193
    .catchall {:try_start_18f .. :try_end_193} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_197
    :try_start_197
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPressureStallInformation(ILjava/util/List;)V
    :try_end_19a
    .catchall {:try_start_197 .. :try_end_19a} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_19e
    :try_start_19e
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_4d6

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    if-eqz v0, :cond_4d6

    invoke-virtual {v0, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransfer(Ljava/util/List;)V
    :try_end_1ab
    .catchall {:try_start_19e .. :try_end_1ab} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_1af
    :try_start_1af
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_1b4
    .catchall {:try_start_1af .. :try_end_1b4} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_1b8
    :try_start_1b8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result p0
    :try_end_1be
    .catchall {:try_start_1b8 .. :try_end_1be} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :sswitch_1c2
    :try_start_1c2
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_9f

    :try_start_1c9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_1d0
    .catchall {:try_start_1c9 .. :try_end_1d0} :catchall_1d4

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1d4
    move-exception p0

    :try_start_1d5
    monitor-exit v0
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    :try_start_1d6
    throw p0

    :sswitch_1d7
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result p0
    :try_end_1db
    .catchall {:try_start_1d6 .. :try_end_1db} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :sswitch_1df
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :sswitch_1e3
    :try_start_1e3
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)V
    :try_end_1e6
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_1ea
    :try_start_1ea
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1f1
    .catchall {:try_start_1ea .. :try_end_1f1} :catchall_9f

    :try_start_1f1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_1f8
    .catchall {:try_start_1f1 .. :try_end_1f8} :catchall_1fc

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_1fc
    move-exception p0

    :try_start_1fd
    monitor-exit v0
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fc

    :try_start_1fe
    throw p0

    :sswitch_1ff
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_206
    .catchall {:try_start_1fe .. :try_end_206} :catchall_9f

    :try_start_206
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_20d
    .catchall {:try_start_206 .. :try_end_20d} :catchall_211

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_211
    move-exception p0

    :try_start_212
    monitor-exit v0
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_211

    :try_start_213
    throw p0

    :sswitch_214
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)V
    :try_end_217
    .catchall {:try_start_213 .. :try_end_217} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :sswitch_21b
    :try_start_21b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_222
    .catchall {:try_start_21b .. :try_end_222} :catchall_9f

    :try_start_222
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_229
    .catchall {:try_start_222 .. :try_end_229} :catchall_22d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_22d
    move-exception p0

    :try_start_22e
    monitor-exit v0
    :try_end_22f
    .catchall {:try_start_22e .. :try_end_22f} :catchall_22d

    :try_start_22f
    throw p0

    :sswitch_230
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_237
    .catchall {:try_start_22f .. :try_end_237} :catchall_9f

    :try_start_237
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_23e
    .catchall {:try_start_237 .. :try_end_23e} :catchall_242

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_242
    move-exception p0

    :try_start_243
    monitor-exit v0
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    :try_start_244
    throw p0

    :pswitch_245  #0x2733
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_24c
    .catchall {:try_start_244 .. :try_end_24c} :catchall_9f

    :try_start_24c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_252
    .catchall {:try_start_24c .. :try_end_252} :catchall_256

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_256
    move-exception p0

    :try_start_257
    monitor-exit v0
    :try_end_258
    .catchall {:try_start_257 .. :try_end_258} :catchall_256

    :try_start_258
    throw p0

    :pswitch_259  #0x2732
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_25e
    .catchall {:try_start_258 .. :try_end_25e} :catchall_9f

    :try_start_25e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_265
    .catchall {:try_start_25e .. :try_end_265} :catchall_269

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_269
    move-exception p0

    :try_start_26a
    monitor-exit v0
    :try_end_26b
    .catchall {:try_start_26a .. :try_end_26b} :catchall_269

    :try_start_26b
    throw p0

    :pswitch_26c  #0x2731
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_273
    .catchall {:try_start_26b .. :try_end_273} :catchall_9f

    :try_start_273
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_279
    .catchall {:try_start_273 .. :try_end_279} :catchall_27d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_27d
    move-exception p0

    :try_start_27e
    monitor-exit v0
    :try_end_27f
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27d

    :try_start_27f
    throw p0

    :pswitch_280  #0x2730
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_287
    .catchall {:try_start_27f .. :try_end_287} :catchall_9f

    :try_start_287
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_28d
    .catchall {:try_start_287 .. :try_end_28d} :catchall_291

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_291
    move-exception p0

    :try_start_292
    monitor-exit v0
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_291

    :try_start_293
    throw p0

    :pswitch_294  #0x272f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_299
    .catchall {:try_start_293 .. :try_end_299} :catchall_9f

    :try_start_299
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_2a0
    .catchall {:try_start_299 .. :try_end_2a0} :catchall_2a4

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2a4
    move-exception p0

    :try_start_2a5
    monitor-exit v0
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a4

    :try_start_2a6
    throw p0

    :pswitch_2a7  #0x272d
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2ac
    .catchall {:try_start_2a6 .. :try_end_2ac} :catchall_9f

    :try_start_2ac
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_2b3
    .catchall {:try_start_2ac .. :try_end_2b3} :catchall_2b7

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_2b7
    move-exception p0

    :try_start_2b8
    monitor-exit v0
    :try_end_2b9
    .catchall {:try_start_2b8 .. :try_end_2b9} :catchall_2b7

    :try_start_2b9
    throw p0

    :pswitch_2ba  #0x272c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_2c1
    .catchall {:try_start_2b9 .. :try_end_2c1} :catchall_9f

    :try_start_2c1
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_2c6
    .catchall {:try_start_2c1 .. :try_end_2c6} :catchall_2ca

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_2ca
    move-exception p1

    :try_start_2cb
    monitor-exit p0
    :try_end_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_2ca

    :try_start_2cc
    throw p1

    :pswitch_2cd  #0x272b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_2d4
    .catchall {:try_start_2cc .. :try_end_2d4} :catchall_9f

    :try_start_2d4
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_2d9
    .catchall {:try_start_2d4 .. :try_end_2d9} :catchall_2dd

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_2dd
    move-exception p1

    :try_start_2de
    monitor-exit p0
    :try_end_2df
    .catchall {:try_start_2de .. :try_end_2df} :catchall_2dd

    :try_start_2df
    throw p1

    :pswitch_2e0  #0x272a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_2e7
    .catchall {:try_start_2df .. :try_end_2e7} :catchall_9f

    :try_start_2e7
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_2eb
    .catchall {:try_start_2e7 .. :try_end_2eb} :catchall_2ef

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_2ef
    move-exception p1

    :try_start_2f0
    monitor-exit p0
    :try_end_2f1
    .catchall {:try_start_2f0 .. :try_end_2f1} :catchall_2ef

    :try_start_2f1
    throw p1

    :pswitch_2f2  #0x2729
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2f9
    .catchall {:try_start_2f1 .. :try_end_2f9} :catchall_9f

    :try_start_2f9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_300
    .catchall {:try_start_2f9 .. :try_end_300} :catchall_304

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_304
    move-exception p0

    :try_start_305
    monitor-exit v0
    :try_end_306
    .catchall {:try_start_305 .. :try_end_306} :catchall_304

    :try_start_306
    throw p0

    :pswitch_307  #0x2728
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_30e
    .catchall {:try_start_306 .. :try_end_30e} :catchall_9f

    :try_start_30e
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_313
    .catchall {:try_start_30e .. :try_end_313} :catchall_317

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_317
    move-exception p1

    :try_start_318
    monitor-exit p0
    :try_end_319
    .catchall {:try_start_318 .. :try_end_319} :catchall_317

    :try_start_319
    throw p1

    :pswitch_31a  #0x2727
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_321
    .catchall {:try_start_319 .. :try_end_321} :catchall_9f

    :try_start_321
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_326
    .catchall {:try_start_321 .. :try_end_326} :catchall_32a

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_32a
    move-exception p1

    :try_start_32b
    monitor-exit p0
    :try_end_32c
    .catchall {:try_start_32b .. :try_end_32c} :catchall_32a

    :try_start_32c
    throw p1

    :pswitch_32d  #0x2726
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_334
    .catchall {:try_start_32c .. :try_end_334} :catchall_9f

    :try_start_334
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_339
    .catchall {:try_start_334 .. :try_end_339} :catchall_33d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_33d
    move-exception p1

    :try_start_33e
    monitor-exit p0
    :try_end_33f
    .catchall {:try_start_33e .. :try_end_33f} :catchall_33d

    :try_start_33f
    throw p1

    :pswitch_340  #0x2725
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_347
    .catchall {:try_start_33f .. :try_end_347} :catchall_9f

    :try_start_347
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_34e
    .catchall {:try_start_347 .. :try_end_34e} :catchall_352

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_352
    move-exception p0

    :try_start_353
    monitor-exit v0
    :try_end_354
    .catchall {:try_start_353 .. :try_end_354} :catchall_352

    :try_start_354
    throw p0

    :pswitch_355  #0x2723, 0x2724, 0x272e, 0x273b, 0x273d
    :sswitch_355
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_35c
    .catchall {:try_start_354 .. :try_end_35c} :catchall_9f

    :try_start_35c
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_363
    .catchall {:try_start_35c .. :try_end_363} :catchall_367

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_367
    move-exception p0

    :try_start_368
    monitor-exit v0
    :try_end_369
    .catchall {:try_start_368 .. :try_end_369} :catchall_367

    :try_start_369
    throw p0

    :cond_36a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_36f
    .catchall {:try_start_369 .. :try_end_36f} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_373
    :try_start_373
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_37a
    .catchall {:try_start_373 .. :try_end_37a} :catchall_9f

    :try_start_37a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullUwbActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_381
    .catchall {:try_start_37a .. :try_end_381} :catchall_385

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_385
    move-exception p0

    :try_start_386
    monitor-exit v0
    :try_end_387
    .catchall {:try_start_386 .. :try_end_387} :catchall_385

    :try_start_387
    throw p0

    :cond_388
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_38d
    .catchall {:try_start_387 .. :try_end_38d} :catchall_9f

    :try_start_38d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_394
    .catchall {:try_start_38d .. :try_end_394} :catchall_398

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_398
    move-exception p0

    :try_start_399
    monitor-exit v0
    :try_end_39a
    .catchall {:try_start_399 .. :try_end_39a} :catchall_398

    :try_start_39a
    throw p0

    :cond_39b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3a0
    .catchall {:try_start_39a .. :try_end_3a0} :catchall_9f

    :try_start_3a0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_3a7
    .catchall {:try_start_3a0 .. :try_end_3a7} :catchall_3ab

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_3ab
    move-exception p0

    :try_start_3ac
    monitor-exit v0
    :try_end_3ad
    .catchall {:try_start_3ac .. :try_end_3ad} :catchall_3ab

    :try_start_3ad
    throw p0

    :cond_3ae
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)V
    :try_end_3b3
    .catchall {:try_start_3ad .. :try_end_3b3} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_3b7
    :try_start_3b7
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)V
    :try_end_3ba
    .catchall {:try_start_3b7 .. :try_end_3ba} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_3be
    :try_start_3be
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result p0
    :try_end_3c4
    .catchall {:try_start_3be .. :try_end_3c4} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_3c8
    :try_start_3c8
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I

    move-result p0
    :try_end_3ce
    .catchall {:try_start_3c8 .. :try_end_3ce} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_3d2
    :pswitch_3d2  #0x2786, 0x2787, 0x2788, 0x2789, 0x278a, 0x278b, 0x278c, 0x278d
    :try_start_3d2
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result p0
    :try_end_3d8
    .catchall {:try_start_3d2 .. :try_end_3d8} :catchall_9f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_3dc
    :try_start_3dc
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_3e3
    .catchall {:try_start_3dc .. :try_end_3e3} :catchall_9f

    :try_start_3e3
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_3e8
    .catchall {:try_start_3e3 .. :try_end_3e8} :catchall_3ec

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_3ec
    move-exception p1

    :try_start_3ed
    monitor-exit p0
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_3ec

    :try_start_3ee
    throw p1

    :cond_3ef
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3f4
    .catchall {:try_start_3ee .. :try_end_3f4} :catchall_9f

    :try_start_3f4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_3fa
    .catchall {:try_start_3f4 .. :try_end_3fa} :catchall_3fe

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_3fe
    move-exception p0

    :try_start_3ff
    monitor-exit v0
    :try_end_400
    .catchall {:try_start_3ff .. :try_end_400} :catchall_3fe

    :try_start_400
    throw p0

    :cond_401
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_408
    .catchall {:try_start_400 .. :try_end_408} :catchall_9f

    :try_start_408
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_40d
    .catchall {:try_start_408 .. :try_end_40d} :catchall_411

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_411
    move-exception p1

    :try_start_412
    monitor-exit p0
    :try_end_413
    .catchall {:try_start_412 .. :try_end_413} :catchall_411

    :try_start_413
    throw p1

    :pswitch_414  #0x2721
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_41b
    .catchall {:try_start_413 .. :try_end_41b} :catchall_9f

    :try_start_41b
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_421
    .catchall {:try_start_41b .. :try_end_421} :catchall_425

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_425
    move-exception p0

    :try_start_426
    monitor-exit v0
    :try_end_427
    .catchall {:try_start_426 .. :try_end_427} :catchall_425

    :try_start_427
    throw p0

    :pswitch_428  #0x2720
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_42f
    .catchall {:try_start_427 .. :try_end_42f} :catchall_9f

    :try_start_42f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_435
    .catchall {:try_start_42f .. :try_end_435} :catchall_439

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_439
    move-exception p0

    :try_start_43a
    monitor-exit v0
    :try_end_43b
    .catchall {:try_start_43a .. :try_end_43b} :catchall_439

    :try_start_43b
    throw p0

    :pswitch_43c  #0x271f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_443
    .catchall {:try_start_43b .. :try_end_443} :catchall_9f

    :try_start_443
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_447
    .catchall {:try_start_443 .. :try_end_447} :catchall_44b

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_44b
    move-exception p1

    :try_start_44c
    monitor-exit p0
    :try_end_44d
    .catchall {:try_start_44c .. :try_end_44d} :catchall_44b

    :try_start_44d
    throw p1

    :pswitch_44e  #0x271e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_455
    .catchall {:try_start_44d .. :try_end_455} :catchall_9f

    :try_start_455
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_459
    .catchall {:try_start_455 .. :try_end_459} :catchall_45d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_45d
    move-exception p1

    :try_start_45e
    monitor-exit p0
    :try_end_45f
    .catchall {:try_start_45e .. :try_end_45f} :catchall_45d

    :try_start_45f
    throw p1

    :pswitch_460  #0x271d
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_467
    .catchall {:try_start_45f .. :try_end_467} :catchall_9f

    :try_start_467
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_46b
    .catchall {:try_start_467 .. :try_end_46b} :catchall_46f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_46f
    move-exception p1

    :try_start_470
    monitor-exit p0
    :try_end_471
    .catchall {:try_start_470 .. :try_end_471} :catchall_46f

    :try_start_471
    throw p1

    :pswitch_472  #0x271c
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_479
    .catchall {:try_start_471 .. :try_end_479} :catchall_9f

    :try_start_479
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_480
    .catchall {:try_start_479 .. :try_end_480} :catchall_484

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_484
    move-exception p0

    :try_start_485
    monitor-exit v0
    :try_end_486
    .catchall {:try_start_485 .. :try_end_486} :catchall_484

    :try_start_486
    throw p0

    :pswitch_487  #0x271b
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_48e
    .catchall {:try_start_486 .. :try_end_48e} :catchall_9f

    :try_start_48e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_495
    .catchall {:try_start_48e .. :try_end_495} :catchall_499

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_499
    move-exception p0

    :try_start_49a
    monitor-exit v0
    :try_end_49b
    .catchall {:try_start_49a .. :try_end_49b} :catchall_499

    :try_start_49b
    throw p0

    :pswitch_49c  #0x271a
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4a1
    .catchall {:try_start_49b .. :try_end_4a1} :catchall_9f

    :try_start_4a1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_4a7
    .catchall {:try_start_4a1 .. :try_end_4a7} :catchall_4ab

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_4ab
    move-exception p0

    :try_start_4ac
    monitor-exit v0
    :try_end_4ad
    .catchall {:try_start_4ac .. :try_end_4ad} :catchall_4ab

    :try_start_4ad
    throw p0

    :pswitch_4ae  #0x2719
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4b5
    .catchall {:try_start_4ad .. :try_end_4b5} :catchall_9f

    :try_start_4b5
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_4bb
    .catchall {:try_start_4b5 .. :try_end_4bb} :catchall_4bf

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_4bf
    move-exception p0

    :try_start_4c0
    monitor-exit v0
    :try_end_4c1
    .catchall {:try_start_4c0 .. :try_end_4c1} :catchall_4bf

    :try_start_4c1
    throw p0

    :pswitch_4c2  #0x2714
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4c9
    .catchall {:try_start_4c1 .. :try_end_4c9} :catchall_9f

    :try_start_4c9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)V

    monitor-exit v0
    :try_end_4cf
    .catchall {:try_start_4c9 .. :try_end_4cf} :catchall_4d3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_4d3
    move-exception p0

    :try_start_4d4
    monitor-exit v0
    :try_end_4d5
    .catchall {:try_start_4d4 .. :try_end_4d5} :catchall_4d3

    :try_start_4d5
    throw p0

    :cond_4d6
    :pswitch_4d6  #0x2710, 0x2711, 0x2712, 0x2713
    :sswitch_4d6
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4dd
    .catchall {:try_start_4d5 .. :try_end_4dd} :catchall_9f

    :try_start_4dd
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_4e4
    .catchall {:try_start_4dd .. :try_end_4e4} :catchall_4e8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_4e8
    move-exception p0

    :try_start_4e9
    monitor-exit v0
    :try_end_4ea
    .catchall {:try_start_4e9 .. :try_end_4ea} :catchall_4e8

    :try_start_4ea
    throw p0

    :cond_4eb
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_4f2
    .catchall {:try_start_4ea .. :try_end_4f2} :catchall_9f

    :try_start_4f2
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)V

    monitor-exit p0
    :try_end_4f6
    .catchall {:try_start_4f2 .. :try_end_4f6} :catchall_4fa

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :catchall_4fa
    move-exception p1

    :try_start_4fb
    monitor-exit p0
    :try_end_4fc
    .catchall {:try_start_4fb .. :try_end_4fc} :catchall_4fa

    :try_start_4fc
    throw p1

    :cond_4fd
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_504
    .catchall {:try_start_4fc .. :try_end_504} :catchall_9f

    :try_start_504
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_50b
    .catchall {:try_start_504 .. :try_end_50b} :catchall_50f

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_50f
    move-exception p0

    :try_start_510
    monitor-exit v0
    :try_end_511
    .catchall {:try_start_510 .. :try_end_511} :catchall_50f

    :try_start_511
    throw p0

    :cond_512
    :pswitch_512  #0x2742
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_519
    .catchall {:try_start_511 .. :try_end_519} :catchall_9f

    :try_start_519
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_520
    .catchall {:try_start_519 .. :try_end_520} :catchall_524

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_524
    move-exception p0

    :try_start_525
    monitor-exit v0
    :try_end_526
    .catchall {:try_start_525 .. :try_end_526} :catchall_524

    :try_start_526
    throw p0

    :cond_527
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_52e
    .catchall {:try_start_526 .. :try_end_52e} :catchall_9f

    :try_start_52e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_535
    .catchall {:try_start_52e .. :try_end_535} :catchall_539

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_539
    move-exception p0

    :try_start_53a
    monitor-exit v0
    :try_end_53b
    .catchall {:try_start_53a .. :try_end_53b} :catchall_539

    :try_start_53b
    throw p0

    :cond_53c
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_543
    .catchall {:try_start_53b .. :try_end_543} :catchall_9f

    :try_start_543
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result p0

    monitor-exit v0
    :try_end_54a
    .catchall {:try_start_543 .. :try_end_54a} :catchall_54e

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_54e
    move-exception p0

    :try_start_54f
    monitor-exit v0
    :try_end_550
    .catchall {:try_start_54f .. :try_end_550} :catchall_54e

    :try_start_550
    throw p0

    :cond_551
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_558
    .catchall {:try_start_550 .. :try_end_558} :catchall_9f

    :try_start_558
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_55d
    .catchall {:try_start_558 .. :try_end_55d} :catchall_561

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_561
    move-exception p1

    :try_start_562
    monitor-exit p0
    :try_end_563
    .catchall {:try_start_562 .. :try_end_563} :catchall_561

    :try_start_563
    throw p1

    :cond_564
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_56b
    .catchall {:try_start_563 .. :try_end_56b} :catchall_9f

    :try_start_56b
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_570
    .catchall {:try_start_56b .. :try_end_570} :catchall_574

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_574
    move-exception p1

    :try_start_575
    monitor-exit p0
    :try_end_576
    .catchall {:try_start_575 .. :try_end_576} :catchall_574

    :try_start_576
    throw p1

    :cond_577
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_57e
    .catchall {:try_start_576 .. :try_end_57e} :catchall_9f

    :try_start_57e
    invoke-static {p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result p1

    monitor-exit p0
    :try_end_583
    .catchall {:try_start_57e .. :try_end_583} :catchall_587

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p1

    :catchall_587
    move-exception p1

    :try_start_588
    monitor-exit p0
    :try_end_589
    .catchall {:try_start_588 .. :try_end_589} :catchall_587

    :try_start_589
    throw p1
    :try_end_58a
    .catchall {:try_start_589 .. :try_end_58a} :catchall_9f

    :goto_58a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :pswitch_data_58e
    .packed-switch 0x2710
        :pswitch_4d6  #00002710
        :pswitch_4d6  #00002711
        :pswitch_4d6  #00002712
        :pswitch_4d6  #00002713
        :pswitch_4c2  #00002714
    .end packed-switch

    :pswitch_data_59c
    .packed-switch 0x2719
        :pswitch_4ae  #00002719
        :pswitch_49c  #0000271a
        :pswitch_487  #0000271b
        :pswitch_472  #0000271c
        :pswitch_460  #0000271d
        :pswitch_44e  #0000271e
        :pswitch_43c  #0000271f
        :pswitch_428  #00002720
        :pswitch_414  #00002721
    .end packed-switch

    :pswitch_data_5b2
    .packed-switch 0x2723
        :pswitch_355  #00002723
        :pswitch_355  #00002724
        :pswitch_340  #00002725
        :pswitch_32d  #00002726
        :pswitch_31a  #00002727
        :pswitch_307  #00002728
        :pswitch_2f2  #00002729
        :pswitch_2e0  #0000272a
        :pswitch_2cd  #0000272b
        :pswitch_2ba  #0000272c
        :pswitch_2a7  #0000272d
        :pswitch_355  #0000272e
        :pswitch_294  #0000272f
        :pswitch_280  #00002730
        :pswitch_26c  #00002731
        :pswitch_259  #00002732
        :pswitch_245  #00002733
    .end packed-switch

    :sswitch_data_5d8
    .sparse-switch
        0x2735 -> :sswitch_230
        0x2737 -> :sswitch_21b
        0x2750 -> :sswitch_214
        0x275b -> :sswitch_1ff
        0x2760 -> :sswitch_1ea
        0x276c -> :sswitch_1e3
        0x2772 -> :sswitch_1df
        0x2774 -> :sswitch_4d6
        0x2779 -> :sswitch_1d7
        0x2782 -> :sswitch_1c2
        0x2792 -> :sswitch_1b8
        0x27bf -> :sswitch_1af
        0x27d8 -> :sswitch_4d6
        0x27dc -> :sswitch_19e
        0x27ec -> :sswitch_355
        0x27f5 -> :sswitch_197
    .end sparse-switch

    :pswitch_data_61a
    .packed-switch 0x2785
        :pswitch_190  #00002785
        :pswitch_3d2  #00002786
        :pswitch_3d2  #00002787
        :pswitch_3d2  #00002788
        :pswitch_3d2  #00002789
        :pswitch_3d2  #0000278a
        :pswitch_3d2  #0000278b
        :pswitch_3d2  #0000278c
        :pswitch_3d2  #0000278d
    .end packed-switch

    :pswitch_data_630
    .packed-switch 0x273a
        :pswitch_17e  #0000273a
        :pswitch_355  #0000273b
        :pswitch_16c  #0000273c
        :pswitch_355  #0000273d
        :pswitch_158  #0000273e
        :pswitch_143  #0000273f
        :pswitch_12f  #00002740
        :pswitch_11a  #00002741
        :pswitch_512  #00002742
    .end packed-switch

    :pswitch_data_646
    .packed-switch 0x2748
        :pswitch_108  #00002748
        :pswitch_f3  #00002749
        :pswitch_de  #0000274a
        :pswitch_c9  #0000274b
        :pswitch_b4  #0000274c
        :pswitch_a2  #0000274d
    .end packed-switch
.end method
