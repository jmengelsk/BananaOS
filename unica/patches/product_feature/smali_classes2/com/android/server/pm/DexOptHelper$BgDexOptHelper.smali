.class public final Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# static fields
.field public static SurfaceTemperatureThreshold:I = 0x0

.field public static abortCount:I = 0x0

.field public static enableTemperaturePolicy:Z = false

.field public static initialSurfaceTemperature:I = 0x0

.field public static policySelector:Z = true


# instance fields
.field public mArtManager:Lcom/android/server/art/ArtManagerLocal;

.field public mContext:Landroid/content/Context;

.field public mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

.field public volatile mObserveStarted:Z


# virtual methods
.method public final isBatteryFullyCharged()Z
    .locals 5

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    sget-boolean v1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    const-string p0, "BgDexOptHelper"

    const-string/jumbo v0, "Not fully charged. Optimize only recently used packages"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "bg-dexopt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Bg dexopt finished"

    const-string v0, "BgDexOptHelper"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "Stop observing thermal"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p1, p0}, Lcom/android/server/art/ArtManagerLocal;->removeDexoptDoneCallback(Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    :cond_1
    return-void
.end method

.method public final reachedToThermalThrottleLevel()Z
    .locals 6

    sget-boolean v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->enableTemperaturePolicy:Z

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    if-le p0, v0, :cond_2

    const-string v0, "Aborted by thermal: "

    const-string v1, " (initial : "

    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " threshold : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v2

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return v4

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->isBatteryFullyCharged()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x190

    goto :goto_1

    :cond_4
    const/16 p0, 0x177

    :goto_1
    if-lt v0, p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    if-eqz v2, :cond_6

    const-string v1, "Current temperature: "

    const-string v4, ", criteria: "

    const-string v5, ", reached: "

    invoke-static {v0, p0, v1, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_6
    return v2
.end method
