.class public final Lcom/android/server/vibrator/VibratorControlService;
.super Landroid/frameworks/vibrator/IVibratorControlService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRequestVibrationParamsForUsages:[I

.field public final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

.field public final mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object v0, Landroid/frameworks/vibrator/IVibratorControlService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iput-object p5, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iput-object p6, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    iget-object p2, p4, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p2}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsages()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0137

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0136

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    new-instance p3, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-direct {p3, p2, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    iput-object p3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    return-void
.end method

.method public static mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I
    .locals 2

    new-instance v0, Landroid/util/IntArray;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_3
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    const/16 p0, 0x12

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    const/16 p0, 0x32

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    :cond_4
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V
    .locals 9

    const-string v0, "Failed to clear VibrationParams. The provided controller doesn\'t match the registered one. "

    const-string/jumbo v1, "Received request to clear VibrationParams for IVibratorController = "

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    iget-object v3, v3, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-nez v3, :cond_0

    const-string/jumbo p0, "VibratorControlService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but no controller was previously registered. Request Ignored."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    check-cast v3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    iget-object v1, v3, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    check-cast p2, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    iget-object p2, p2, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p1, "VibratorControlService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(FI)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    new-instance v3, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    sget-object v4, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    const/high16 v8, -0x40800000    # -1.0f

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    monitor-exit v2

    return-void

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final endOngoingRequestVibrationParamsLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    return-void
.end method

.method public getRequestVibrationParamsToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final recordUpdateVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Z)V
    .locals 8

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    array-length p2, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, p2, :cond_2

    aget-object v0, p1, v6

    iget v4, v0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unsupported vibration param ignored from dumpsys records: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "VibratorControlService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    move-object v4, v0

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    move-object v5, v4

    iget v4, v5, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v5, v5, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;-><init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V

    invoke-virtual {v7, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final updateAdaptiveHapticsScales(FI)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControlService;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v0, p1}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    invoke-static {p2}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateAdaptiveHapticsScales([Landroid/frameworks/vibrator/VibrationParam;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unsupported vibration param: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VibratorControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object v2

    iget v3, v2, Landroid/frameworks/vibrator/ScaleParam;->typesMask:I

    iget v2, v2, Landroid/frameworks/vibrator/ScaleParam;->scale:F

    invoke-virtual {p0, v2, v3}, Lcom/android/server/vibrator/VibratorControlService;->updateAdaptiveHapticsScales(FI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
