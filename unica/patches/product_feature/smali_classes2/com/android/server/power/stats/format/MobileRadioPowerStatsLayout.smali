.class public final Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDeviceCallPowerPosition:I

.field public mDeviceCallTimePosition:I

.field public mDeviceIdleTimePosition:I

.field public mDeviceScanTimePosition:I

.field public mDeviceSleepTimePosition:I

.field public mStateRxTimePosition:I

.field public mStateTxTimesCount:I

.field public mStateTxTimesPosition:I

.field public mUidRxBytesPosition:I

.field public mUidRxPacketsPosition:I

.field public mUidTxBytesPosition:I

.field public mUidTxPacketsPosition:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "dt-sleep"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    const-string/jumbo v0, "dt-idle"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    const-string/jumbo v0, "dt-scan"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    const-string/jumbo v0, "dt-call"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    const-string/jumbo v0, "dp-call"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    const-string/jumbo v0, "srx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    const-string/jumbo v0, "stx"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    const-string/jumbo v0, "stxc"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    const-string/jumbo v0, "urxb"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    const-string/jumbo v0, "utxb"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    const-string/jumbo v0, "urxp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    const-string/jumbo v0, "utxp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    return-void
.end method

.method public static mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I
    .locals 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v1, "Unhandled RadioAccessNetworkType ("

    const-string v2, "), mapping to OTHER"

    const-string/jumbo v3, "MobileRadioPowerStatsLayout"

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addDeviceSectionPowerEstimate()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    const-string/jumbo v0, "call-power"

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    return-void
.end method

.method public final addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V
    .locals 4

    array-length v0, p6

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid TX time array size: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MobileRadioPowerStatsLayout"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, p6

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    aget v3, p6, v2

    if-eqz v3, :cond_4

    :goto_1
    invoke-static {p2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mapRadioAccessNetworkTypeToRadioAccessTechnology(I)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    :cond_2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [J

    if-nez p3, :cond_3

    iget p3, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateStatsArrayLength:I

    new-array p3, p3, [J

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget p1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    aget-wide v2, p3, p1

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    add-long/2addr p4, v2

    aput-wide p4, p3, p1

    iget p1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_5

    iget p2, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    add-int/2addr p2, p1

    aget-wide p4, p3, p2

    const/4 v0, 0x0

    aget v1, p6, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p4, v0

    aput-wide p4, p3, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    const-string/jumbo v0, "dt-sleep"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-idle"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-scan"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dt-call"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dp-call"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "srx"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateRxTimePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "stx"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "stxc"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mStateTxTimesCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "urxb"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "utxb"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxBytesPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "urxp"

    iget v1, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "utxp"

    iget p0, p0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
