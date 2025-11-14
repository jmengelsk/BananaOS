.class public Lcom/android/server/power/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

.field final mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsStatusOverride:Z

.field public mLastHeadroomCallbackData:Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

.field public mLastHeadroomCallbackTimeMillis:J

.field public final mLock:Ljava/lang/Object;

.field final mService:Landroid/os/IThermalService$Stub;

.field public mStatus:I

.field public final mTemperatureMap:Landroid/util/ArrayMap;

.field final mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field public final mThermalEventListeners:Landroid/os/RemoteCallbackList;

.field public final mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

.field public final mThermalStatusListeners:Landroid/os/RemoteCallbackList;

.field public final mWrapperCallback:Lcom/android/server/power/ThermalManagerService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLastHeadroomCallbackData:Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/ThermalManagerService$1;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$2;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    if-eqz p2, :cond_4f

    invoke-virtual {p2, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V

    :cond_4f
    iput v1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    new-instance p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    return-void
.end method

.method public static dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_24
    return-void
.end method

.method public static dumpTemperatureThresholds(Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/thermal/TemperatureThreshold;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tTemperatureThreshold{mType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHotThrottlingThresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mColdThrottlingThresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_50
    return-void
.end method

.method public static postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 5

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Landroid/os/Temperature;->getType()I

    move-result v0

    if-eq p2, v0, :cond_d

    goto :goto_26

    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_26

    const-string/jumbo p0, "ThermalManagerService"

    const-string/jumbo p1, "Thermal event callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public final checkAndNotifyHeadroomListenersLocked(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLastHeadroomCallbackData:Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_5e

    :cond_6
    iget v2, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    iget v3, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3cf5c28f  # 0.03f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17

    goto :goto_5e

    :cond_17
    iget v2, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    iget v4, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_25

    goto :goto_5e

    :cond_25
    move v2, v1

    :goto_26
    iget-object v3, p1, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    array-length v4, v3

    if-ge v2, v4, :cond_50

    aget v4, v3, v2

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    iget-object v5, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    aget v6, v5, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eq v4, v6, :cond_3c

    goto :goto_5e

    :cond_3c
    aget v3, v3, v2

    aget v4, v5, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a  # 0.01f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4d

    goto :goto_5e

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/ThermalManagerService;->mLastHeadroomCallbackTimeMillis:J

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_5e

    return-void

    :cond_5e
    :goto_5e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/ThermalManagerService;->mLastHeadroomCallbackTimeMillis:J

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mLastHeadroomCallbackData:Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6c
    if-ge v1, v0, :cond_83

    :try_start_6e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalHeadroomListener;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/power/ThermalManagerService;->postHeadroomListenerLocked(Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_7c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :catchall_7c
    move-exception p1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_83
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string p1, "HAL Ready: "

    const-string/jumbo p3, "Thermal Status: "

    const-string v0, "IsStatusOverride: "

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ThermalManagerService"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_19
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_db

    :try_start_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "ThermalEventListeners:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    const-string v4, "\t"

    invoke-virtual {v0, p2, v4}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v0, "ThermalStatusListeners:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    const-string v4, "\t"

    invoke-virtual {v0, p2, v4}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "Cached temperatures:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/power/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_bc

    const-string p1, "HAL connection:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->dump(Ljava/io/PrintWriter;)V

    const-string p1, "Current temperatures from HAL:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/power/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V

    const-string p1, "Current cooling devices from HAL:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {p1, p3, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(IZ)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/power/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/util/Collection;)V

    const-string/jumbo p1, "Temperature static thresholds from HAL:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {p1, p3, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(IZ)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/power/ThermalManagerService;->dumpTemperatureThresholds(Ljava/io/PrintWriter;Ljava/util/List;)V

    goto :goto_bc

    :catchall_ba
    move-exception p0

    goto :goto_dd

    :cond_bc
    :goto_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_1c .. :try_end_bd} :catchall_ba

    :try_start_bd
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_db

    :try_start_c2
    const-string/jumbo p3, "Temperature headroom thresholds:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p1
    :try_end_d4
    .catchall {:try_start_c2 .. :try_end_d4} :catchall_d8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d8
    move-exception p0

    :try_start_d9
    monitor-exit p1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    :try_start_da
    throw p0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_db

    :catchall_db
    move-exception p0

    goto :goto_df

    :goto_dd
    :try_start_dd
    monitor-exit v3
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_ba

    :try_start_de
    throw p0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_db

    :goto_df
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyEventListenersLocked(Landroid/os/Temperature;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalEventListener;

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {p1, v2, v3}, Lcom/android/server/power/ThermalManagerService;->postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_1f
    move-exception p1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_26
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xab1

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 10

    const/16 v0, 0x226

    const/4 v1, 0x0

    if-ne p1, v0, :cond_be

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    :goto_11
    if-nez v2, :cond_24

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {v2, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;-><init>(Lcom/android/server/power/ThermalManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    move-result v2

    goto :goto_24

    :catchall_21
    move-exception p0

    goto/16 :goto_bc

    :cond_24
    :goto_24
    if-nez v2, :cond_34

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/ThermalManagerService$1;

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>(Lcom/android/server/power/ThermalManagerService$1;I)V

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    move-result v2

    :cond_34
    if-nez v2, :cond_44

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/ThermalManagerService$1;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>(Lcom/android/server/power/ThermalManagerService$1;I)V

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    move-result v2

    :cond_44
    if-nez v2, :cond_57

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;

    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    iput-object v1, v2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    iput-object v5, v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    move-result v2

    :cond_57
    if-nez v2, :cond_64

    const-string/jumbo v2, "ThermalManagerService"

    const-string/jumbo v3, "No Thermal HAL service on this device"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_be

    :cond_64
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v2, v4, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7b

    const-string/jumbo v6, "ThermalManagerService"

    const-string/jumbo v7, "Thermal HAL reported invalid data, abort connection"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    move v6, v4

    :goto_7c
    if-ge v6, v5, :cond_8a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Temperature;

    invoke-virtual {p0, v7, v4}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getAndUpdateThresholds()V

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_97
    .catchall {:try_start_8 .. :try_end_97} :catchall_21

    :try_start_97
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object v5, v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_a7

    if-ne v5, v3, :cond_b2

    :try_start_a1
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_a6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a1 .. :try_end_a6} :catch_a9
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_a7

    goto :goto_b2

    :catchall_a7
    move-exception p0

    goto :goto_ba

    :catch_a9
    :try_start_a9
    const-string/jumbo v4, "ThermalManagerService"

    const-string/jumbo v5, "Thermal HAL does not support forecastSkinTemperature"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_a7

    :try_start_b3
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_21

    goto :goto_be

    :goto_ba
    :try_start_ba
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_a7

    :try_start_bb
    throw p0

    :goto_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bb .. :try_end_bd} :catchall_21

    throw p0

    :cond_be
    :goto_be
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_da

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    if-eqz p1, :cond_da

    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    const/16 p0, 0x27d9

    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_da
    return-void
.end method

.method public final onStart()V
    .registers 3

    const-string/jumbo v0, "thermalservice"

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onTemperatureChanged(Landroid/os/Temperature;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Temperature;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_21

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_5b

    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    :cond_21
    if-eqz p2, :cond_26

    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_1c

    if-eqz p2, :cond_5a

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5a

    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object p2, p2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_35
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    move-result-object p1

    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_57

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4f
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService;->checkAndNotifyHeadroomListenersLocked(Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V

    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_54

    throw p0

    :catchall_57
    move-exception p0

    :try_start_58
    monitor-exit p2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0

    :cond_5a
    return-void

    :goto_5b
    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_1c

    throw p0
.end method

.method public final onTemperatureMapChangedLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_2d

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_20

    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    :cond_20
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    if-lt v4, v2, :cond_2a

    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    if-nez v0, :cond_34

    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    :cond_34
    return-void
.end method

.method public final postHeadroomListenerLocked(Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_22

    :cond_9
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string/jumbo p0, "ThermalManagerService"

    const-string/jumbo p1, "Thermal headroom callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public final setStatusLocked(I)V
    .registers 7

    const-string v0, "/data/data/com.sec.android.sdhms/sdhms_cooldown_disable"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_51

    :cond_9
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    if-eq p1, v0, :cond_51

    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "ThermalManagerService.status"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p1, :cond_4c

    :try_start_21
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IThermalStatusListener;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string/jumbo v1, "ThermalManagerService"

    const-string/jumbo v2, "Thermal status callback failed to queue"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_45

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catchall_45
    move-exception p1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_4c
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_51
    :goto_51
    return-void
.end method
