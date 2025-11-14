.class public final synthetic Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;

.field public final synthetic f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:[I

    iput-object p4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:[I

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    iget-object v4, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    array-length v5, v2

    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v7, v6

    if-ne v5, v7, :cond_67

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/processor/MultiStateStats;

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    iget-object v5, p1, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p1, p1, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result p1

    invoke-virtual {v5, v4, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result p1

    goto :goto_31

    :cond_30
    move p1, v1

    :goto_31
    if-nez p1, :cond_34

    goto :goto_66

    :cond_34
    iget-object p1, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    iget p1, p1, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aget-wide v4, v2, p1

    iget-wide v6, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object p1, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v8, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v4, v4

    mul-double/2addr v8, v4

    add-double/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    :goto_47
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p1

    if-ge v1, p1, :cond_66

    iget-object p1, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    iget p1, p1, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr p1, v1

    aget-wide v4, v2, p1

    iget-wide v6, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-object p1, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p1, p1, v1

    iget-wide v8, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    long-to-double v4, v4

    mul-double/2addr v8, v4

    add-double/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_66
    :goto_66
    return-void

    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid number of tracked states: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
