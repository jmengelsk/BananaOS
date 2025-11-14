.class public final Lcom/android/server/power/stats/format/SensorPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSensorPositions:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_38

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v1, v2

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v6, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_38
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    return-void
.end method


# virtual methods
.method public final toExtras(Landroid/os/PersistableBundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_14
    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->mSensorPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    const-string/jumbo p0, "dshs"

    invoke-static {p1, p0, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    const-string/jumbo p0, "usp"

    invoke-static {p1, p0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    return-void
.end method
