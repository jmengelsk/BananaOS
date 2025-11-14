.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJIZLandroid/util/SparseLongArray;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$2:J

    iput p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$3:I

    iput-boolean p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$4:Z

    iput-object p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$5:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$1:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$2:J

    iget v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$3:I

    iget-boolean v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$4:Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda4;->f$5:Landroid/util/SparseLongArray;

    check-cast p2, [J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget-wide v8, p2, v1

    const/4 v1, 0x1

    aget-wide v10, p2, v1

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_59

    :cond_22
    iget-object p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_59

    :cond_2f
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p1

    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    if-lez v6, :cond_47

    const-wide/16 v0, 0x32

    mul-long/2addr v8, v0

    const-wide/16 v2, 0x64

    div-long/2addr v8, v2

    mul-long/2addr v10, v0

    div-long/2addr v10, v2

    :cond_47
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, v8, v9, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, v10, v11, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    if-eqz p0, :cond_59

    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    add-long/2addr v8, v10

    invoke-virtual {p0, p1, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_59
    :goto_59
    return-void
.end method
