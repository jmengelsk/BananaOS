.class public final Lcom/android/server/power/stats/format/WifiPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDeviceActiveTimePosition:I

.field public mDeviceBasicScanTimePosition:I

.field public mDeviceBatchedScanTimePosition:I

.field public mDeviceIdleTimePosition:I

.field public mDeviceRxTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceTxTimePosition:I

.field public mPowerReportingSupported:Z

.field public mUidBatchScanTimePosition:I

.field public mUidRxBytesPosition:I

.field public mUidRxPacketsPosition:I

.field public mUidScanTimePosition:I

.field public mUidTxBytesPosition:I

.field public mUidTxPacketsPosition:I


# virtual methods
.method public final toExtras(Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "prs"

    iget-boolean v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "dt-rx"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-tx"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-basic-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-batch-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-on"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "urxb"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "utxb"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "urxp"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "utxp"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ut-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ut-bscan"

    iget p0, p0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
