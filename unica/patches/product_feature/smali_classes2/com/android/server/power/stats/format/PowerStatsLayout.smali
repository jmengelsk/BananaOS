.class public Lcom/android/server/power/stats/format/PowerStatsLayout;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDeviceDurationPosition:I

.field public mDeviceEnergyConsumerCount:I

.field public mDeviceEnergyConsumerPosition:I

.field public final mDeviceFormat:Ljava/lang/StringBuilder;

.field public mDevicePowerEstimatePosition:I

.field public mDeviceStatsArrayLength:I

.field public final mStateFormat:Ljava/lang/StringBuilder;

.field public mStateStatsArrayLength:I

.field public mUidDurationPosition:I

.field public mUidEnergyConsumerCount:I

.field public mUidEnergyConsumerPosition:I

.field public final mUidFormat:Ljava/lang/StringBuilder;

.field public mUidPowerEstimatePosition:I

.field public mUidStatsArrayLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    iget-object p1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const-string/jumbo v0, "dd"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    const-string/jumbo v0, "de"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    const-string/jumbo v0, "dec"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    const-string/jumbo v0, "dp"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const-string/jumbo v0, "ud"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    const-string/jumbo v0, "ue"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    const-string/jumbo v0, "uec"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    const-string/jumbo v0, "up"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method

.method public static appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p3, 0x5b

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_3

    const/16 p2, 0x70

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    and-int/2addr p1, p4

    if-eqz p1, :cond_4

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    return-void
.end method

.method public static getIntArray(Ljava/lang/String;Landroid/os/PersistableBundle;)[I
    .locals 4

    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "Invalid CSV format: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PowerStatsLayout"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    return-object v1
.end method

.method public static putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p2, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addDeviceSection(IILjava/lang/String;)I
    .locals 2

    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    add-int v1, v0, p1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceStatsArrayLength:I

    iget-object p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    invoke-static {p0, v0, p1, p3, p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    return v0
.end method

.method public final addDeviceSectionEnergyConsumers(I)V
    .locals 2

    const-string/jumbo v0, "energy"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    iput p1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    return-void
.end method

.method public addDeviceSectionPowerEstimate()V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    return-void
.end method

.method public final addDeviceSectionUsageDuration()V
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "usage"

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    return-void
.end method

.method public final addUidSection(IILjava/lang/String;)I
    .locals 2

    iget v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    add-int v1, v0, p1

    iput v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    iget-object p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    invoke-static {p0, v0, p1, p3, p2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->appendFormat(Ljava/lang/StringBuilder;IILjava/lang/String;I)V

    return v0
.end method

.method public final addUidSectionPowerEstimate()V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    return-void
.end method

.method public final getConsumedEnergy(I[J)J
    .locals 0

    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    add-int/2addr p0, p1

    aget-wide p0, p2, p0

    return-wide p0
.end method

.method public final getUidUsageDuration([J)J
    .locals 1

    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final getUsageDuration([J)J
    .locals 1

    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final setDevicePowerEstimate([JD)V
    .locals 2

    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    aput-wide p2, p1, p0

    return-void
.end method

.method public final setUidPowerEstimate([JD)V
    .locals 2

    iget p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p2, v0

    double-to-long p2, p2

    aput-wide p2, p1, p0

    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    const-string/jumbo v0, "dd"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "de"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dec"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "dp"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDevicePowerEstimatePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ud"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidDurationPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "ue"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "uec"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "up"

    iget v1, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidPowerEstimatePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "format-device"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mStateFormat:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "format-state"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidFormat:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "format-uid"

    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
