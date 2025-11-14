.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:[I

.field public final synthetic f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZZZII[ILcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$3:Z

    iput-boolean p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$4:Z

    iput-boolean p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$5:Z

    iput p9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$6:I

    iput p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$7:I

    iput-object p11, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$8:[I

    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$1:J

    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$2:J

    iget-boolean v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$3:Z

    iget-boolean v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$4:Z

    iget-boolean v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$5:Z

    iget v9, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$6:I

    iget v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$7:I

    iget-object v11, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$8:[I

    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    move-object/from16 v13, p2

    check-cast v13, [J

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v14

    if-eqz v14, :cond_28

    goto/16 :goto_12b

    :cond_28
    iget-object v14, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    move-result v14

    if-nez v14, :cond_36

    goto/16 :goto_12b

    :cond_36
    move-object/from16 v24, v1

    move v1, v0

    move-object/from16 v0, v24

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->getSize()I

    move-result v2

    array-length v3, v13

    if-eq v2, v3, :cond_58

    :cond_4a
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    :cond_58
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v2, v13, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    if-eqz v2, :cond_68

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->getSize()I

    move-result v2

    array-length v3, v13

    if-eq v2, v3, :cond_76

    :cond_68
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    :cond_76
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-virtual {v2, v13, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    if-eqz v8, :cond_12b

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v2, :cond_84

    array-length v3, v2

    if-eq v3, v9, :cond_8b

    :cond_84
    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([[Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    new-array v2, v9, [[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    :cond_8b
    if-lez v10, :cond_95

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    if-nez v2, :cond_95

    new-array v2, v9, [[J

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    :cond_95
    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_97
    if-ge v14, v9, :cond_12b

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    aget v5, v11, v14

    invoke-virtual {v4, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v14

    if-eqz v5, :cond_ab

    array-length v7, v5

    array-length v8, v4

    if-eq v7, v8, :cond_b5

    :cond_ab
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v7, v4

    new-array v7, v7, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aput-object v7, v5, v14

    :cond_b5
    if-lez v10, :cond_c2

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    aget-object v7, v5, v14

    if-nez v7, :cond_c2

    array-length v7, v4

    new-array v7, v7, [J

    aput-object v7, v5, v14

    :cond_c2
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    aget-object v5, v5, v14

    const/4 v15, 0x0

    :goto_c7
    array-length v7, v4

    if-ge v15, v7, :cond_11d

    aget-object v7, v5, v15

    if-nez v7, :cond_d7

    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v5, v15

    :cond_d7
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    const-wide/16 v16, 0x3e8

    if-eqz v7, :cond_f7

    aget-wide v18, v13, v3

    const-wide/32 v20, 0xc350

    mul-long v20, v20, v18

    const-wide/16 v22, 0x64

    div-long v20, v20, v22

    aget-object v7, v7, v14

    aget-wide v22, v7, v15

    mul-long v18, v18, v16

    sub-long v18, v18, v20

    add-long v18, v18, v22

    aput-wide v18, v7, v15

    :goto_f4
    move-wide/from16 v7, v20

    goto :goto_fc

    :cond_f7
    aget-wide v7, v13, v3

    mul-long v20, v7, v16

    goto :goto_f4

    :goto_fc
    aget-object v2, v5, v15

    invoke-virtual {v2, v7, v8, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    if-eqz v12, :cond_10e

    div-long v16, v7, v16

    move-object/from16 v24, v13

    move-object v13, v1

    move-object/from16 v1, v24

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->addCpuClusterSpeedDurationsMs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;IIJ)V

    goto :goto_113

    :cond_10e
    move-object/from16 v24, v13

    move-object v13, v1

    move-object/from16 v1, v24

    :goto_113
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v24, v13

    move-object v13, v1

    move-object/from16 v1, v24

    goto :goto_c7

    :cond_11d
    move-object/from16 v24, v13

    move-object v13, v1

    move-object/from16 v1, v24

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v24, v13

    move-object v13, v1

    move-object/from16 v1, v24

    goto/16 :goto_97

    :cond_12b
    :goto_12b
    return-void
.end method
