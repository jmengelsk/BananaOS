.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# instance fields
.field public final mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    return-void
.end method

.method private static native nativeGetEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
.end method

.method private static native nativeGetPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
.end method

.method private static native nativeGetStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeReadEnergyMeters([I)[Landroid/hardware/power/stats/EnergyMeasurement;
.end method


# virtual methods
.method public final getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/power/stats/EnergyConsumerResult;

    return-object p0
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/power/stats/EnergyConsumer;

    return-object p0
.end method

.method public final getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p0

    return-object p0
.end method

.method public final getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 0

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    return p0
.end method

.method public final readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 0

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeReadEnergyMeters([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0

    return-object p0
.end method
