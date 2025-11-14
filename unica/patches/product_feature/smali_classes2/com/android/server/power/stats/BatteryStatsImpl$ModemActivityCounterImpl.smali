.class public final Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;
.super Landroid/os/BatteryStats$ModemActivityCounter;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

.field public final mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/BatteryStats$ModemActivityCounter;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-object p0
.end method

.method public final getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-object p0
.end method

.method public final getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
