.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;


# instance fields
.field public mActive:Z

.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mExcessivePower:Ljava/util/ArrayList;

.field public mForegroundTimeMs:J

.field public mNumAnrs:I

.field public mNumCrashes:I

.field public mStarts:I

.field public mSystemTimeMs:J

.field public mUserTimeMs:J


# virtual methods
.method public final countExcessivePowers()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final detach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public final getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getForegroundTime(I)J
    .locals 0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-wide p0
.end method

.method public final getNumAnrs(I)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return p0
.end method

.method public final getNumCrashes(I)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return p0
.end method

.method public final getStarts(I)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return p0
.end method

.method public final getSystemTime(I)J
    .locals 0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    return-wide p0
.end method

.method public final getUserTime(I)J
    .locals 0

    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    return-wide p0
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mActive:Z

    return p0
.end method

.method public final onTimeStarted(JJ)V
    .locals 0

    return-void
.end method

.method public final onTimeStopped(JJJ)V
    .locals 0

    return-void
.end method

.method public final readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/16 v1, 0x2710

    if-gt v0, v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "File corrupt: too many excessive power entries "

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset(JZ)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
