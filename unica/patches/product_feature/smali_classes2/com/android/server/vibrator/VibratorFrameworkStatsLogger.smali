.class public Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

.field public static final sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mLastVibrationReportedLogUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mVibrationReportedLogIntervalMillis:J

.field public final mVibrationReportedQueueMaxSize:J

.field public final mVibrationStatsQueue:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x42c80000  # 100.0f

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v2, "vibrator.value_vibration_param_request_latency"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v5, "vibrator.value_vibration_param_scale"

    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v2, "vibrator.value_vibration_adaptive_haptic_scale"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x19

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3fb33333  # 1.4f

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "vibrator.value_vibration_vendor_effect_size"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "vibrator.value_vibration_vendor_session_vibrations"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    return-void
.end method

.method public static logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z
    .registers 7

    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    instance-of v0, p1, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/os/VibrationEffect$VendorEffect;

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V

    return v1

    :cond_16
    return v2

    :cond_17
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_3e

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    move v0, v2

    :goto_1e
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v4, :cond_3a

    check-cast v3, Landroid/os/VibrationEffect$VendorEffect;

    invoke-static {p0, v3}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V

    move v0, v1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3d
    return v0

    :cond_3e
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_62

    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    move v0, v2

    :goto_45
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_61

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    invoke-static {p0, v1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_61
    return v0

    :cond_62
    return v2
.end method

.method public static logVibrationVendorEffectSize(ILandroid/os/VibrationEffect$VendorEffect;)V
    .registers 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    invoke-virtual {p1}, Landroid/os/VibrationEffect$VendorEffect;->getVendorData()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorEffectSizeHistogram:Lcom/android/modules/expresslog/Histogram;

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
