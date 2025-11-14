.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public energy:J

.field public idleTimeMs:J

.field public rxTimeMs:J

.field public txTimeMs:J

.field public uidRxBytes:Landroid/util/SparseLongArray;

.field public uidTxBytes:Landroid/util/SparseLongArray;


# virtual methods
.method public final set(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/UidTraffic;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
