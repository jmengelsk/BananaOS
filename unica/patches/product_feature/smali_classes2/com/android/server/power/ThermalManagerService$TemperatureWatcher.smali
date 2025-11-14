.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCachedHeadrooms:Landroid/util/SparseArray;

.field public final mGetAndUpdateTemperatureSamplesRunnable:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public final mHeadroomThresholds:[F

.field mInactivityThresholdMillis:J

.field public mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field mSevereThresholds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    const/4 p1, 0x7

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    new-instance p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static normalizeTemperature(FF)F
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p1, v0

    cmpg-float v1, p0, p1

    if-gtz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p0, p1

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .locals 0

    new-instance p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    return-object p0
.end method

.method public final getAndUpdateTemperatureSamples()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/os/Temperature;

    invoke-virtual {p0, v1, v2, v6}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAndUpdateThresholds()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(IZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/thermal/TemperatureThreshold;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getForecast(I)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/16 v6, 0x305

    if-eqz v3, :cond_0

    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v3, "No temperature thresholds found"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v6, v0, v4, v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    monitor-exit v2

    return v5

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object v9, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ne v9, v3, :cond_1

    iget-object v9, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    const/high16 v9, -0x40800000    # -1.0f

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmpl-float v2, v9, v7

    if-lez v2, :cond_2

    :try_start_2
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->forecastSkinTemperature(I)F

    move-result v0

    invoke-static {v0, v9}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v6, v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v1, "forecastSkinTemperature fails"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v1, "forecastSkinTemperature returns unsupported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v5

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    iget-object v9, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :cond_3
    :goto_3
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v2, "No temperature samples found"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v2, 0x5

    invoke-static {v6, v0, v2, v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    monitor-exit v9

    return v5

    :cond_4
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v6, v2, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    monitor-exit v9

    return v0

    :cond_5
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v11, v5

    move v10, v8

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    iget-object v14, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    if-nez v14, :cond_6

    add-int/lit8 v10, v10, 0x1

    const-string/jumbo v12, "ThermalManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No threshold found for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget v13, v13, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v7, 0x3

    if-ge v15, v7, :cond_a

    iget-object v7, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ne v7, v3, :cond_7

    iget-object v7, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v6, v1, v3, v0, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    monitor-exit v9

    return v0

    :cond_7
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v13, v7}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v7

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_9

    cmpl-float v12, v7, v11

    if-lez v12, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_9
    :goto_6
    move v11, v7

    goto :goto_5

    :cond_a
    if-lez v1, :cond_b

    invoke-virtual {v0, v12}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v7

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    int-to-float v12, v1

    mul-float/2addr v7, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v12

    add-float/2addr v7, v13

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v7, v12}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v7

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_9

    cmpl-float v12, v7, v11

    if-lez v12, :cond_8

    goto :goto_6

    :cond_c
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ne v10, v2, :cond_d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v6, v2, v4, v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    goto :goto_8

    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v6, v2, v3, v11, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    :goto_8
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v9

    return v11

    :goto_9
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_a
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;
    .locals 4

    new-instance v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v2

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v3, p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    iput v2, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    iput-object p0, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    return-object v0
.end method

.method public getSlopeOf(Ljava/util/List;)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;)F"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    const/4 v2, 0x0

    move v6, p0

    move-wide v4, v0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget-wide v8, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v4, v8

    iget v7, v7, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v7, v3

    div-long/2addr v4, v7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget-wide v7, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v7, v4

    iget v3, v3, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v3, v6

    mul-long v9, v7, v7

    add-long/2addr v0, v9

    long-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr p0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    long-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public final updateTemperatureSampleLocked(JLandroid/os/Temperature;)V
    .locals 2

    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V
    .locals 5

    iget-object v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    goto :goto_2

    :cond_0
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    const/high16 p0, 0x7fc00000    # Float.NaN

    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    const/4 p0, 0x1

    :goto_0
    const/4 p2, 0x6

    if-gt p0, p2, :cond_7

    iget-object p2, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v3, p2

    if-le v3, p0, :cond_6

    aget p2, p2, p0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p0, v2, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v1, p0

    goto :goto_1

    :cond_4
    invoke-static {p2, v0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result p2

    aget v3, v1, p0

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5

    aput p2, v1, p0

    goto :goto_1

    :cond_5
    aget v3, v1, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, v1, p0

    :cond_6
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method
