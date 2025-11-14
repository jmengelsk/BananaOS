.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# static fields
.field public static sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;


# virtual methods
.method public final getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 1

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "PowerStatsHALWrapper"

    const-string v0, "Failed to get energy consumer results: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 2

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PowerStatsHALWrapper"

    const-string v1, "Failed to get energy consumer info: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 2

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PowerStatsHALWrapper"

    const-string v1, "Failed to get energy meter info: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 2

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PowerStatsHALWrapper"

    const-string v1, "Failed to get power entity info: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 1

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "PowerStatsHALWrapper"

    const-string v0, "Failed to get state residency: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 1

    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    check-cast p0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "PowerStatsHALWrapper"

    const-string v0, "Failed to get energy measurements: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
