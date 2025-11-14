.class public Lcom/android/server/sensorprivacy/CameraPrivacyLightController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final LIGHT_VALUE_MULTIPLIER:D


# instance fields
.field public final mActivePackages:Ljava/util/Set;

.field public final mActivePhonePackages:Ljava/util/Set;

.field public mAlvSum:J

.field public final mAmbientLightValues:Ljava/util/ArrayDeque;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCameraLights:Ljava/util/List;

.field public final mColors:[I

.field public final mContext:Landroid/content/Context;

.field public final mDelayedUpdateToken:Ljava/lang/Object;

.field public mElapsedRealTime:J

.field public mElapsedTimeStartedReading:J

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public mIsAmbientLightListenerRegistered:Z

.field public mLastLightColor:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsManager:Landroid/hardware/lights/LightsManager;

.field public mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

.field public final mMovingAverageIntervalMillis:J

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mThresholds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    sput-wide v2, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iput v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/HandlerExecutor;

    invoke-direct {p2, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-class p2, Landroid/hardware/lights/LightsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/lights/LightsManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    const-class p2, Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x10e0064

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length p2, p1

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_5

    array-length p2, p1

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    move p2, v1

    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_1

    aget v2, p1, p2

    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v6, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v4, v6

    double-to-long v4, v4

    aput-wide v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    invoke-virtual {p1}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/lights/Light;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string/jumbo p2, "android:camera"

    const-string/jumbo v0, "android:phone_call_camera"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "There must be exactly one more color than thresholds. Found "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " colors and "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    const-string v0, " thresholds."

    invoke-static {p1, p2, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCurrentIntervalMillis()J
    .locals 6

    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_0
    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    const-string/jumbo p2, "android:camera"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "android:phone_call_camera"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    :goto_0
    if-eqz p4, :cond_1

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    :cond_2
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-wide v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v0, v5

    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    mul-long/2addr v5, v7

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public final removeObsoleteData(J)V
    .locals 8

    :goto_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setElapsedRealTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    return-void
.end method

.method public final updateLightSession()V
    .locals 12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    :cond_2
    const-wide/16 v4, -0x1

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v6, p0, v1, v8, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iput-boolean v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    iget-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :cond_3
    iput-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    array-length v1, v0

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    goto :goto_1

    :cond_8
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    iget-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v8

    sub-long v8, v0, v8

    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v0, v8

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    move v6, v3

    :goto_2
    iget-object v7, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mThresholds:[J

    array-length v8, v7

    if-ge v6, v8, :cond_b

    aget-wide v7, v7, v6

    mul-long/2addr v7, v4

    cmp-long v7, v0, v7

    if-gez v7, :cond_a

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    aget v0, v0, v6

    goto :goto_3

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mColors:[I

    array-length v1, v0

    sub-int/2addr v1, v2

    aget v0, v0, v1

    :goto_3
    iget v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    if-ne v1, v0, :cond_c

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-eqz v1, :cond_c

    :goto_4
    return-void

    :cond_c
    iput v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    new-instance v1, Landroid/hardware/lights/LightsRequest$Builder;

    invoke-direct {v1}, Landroid/hardware/lights/LightsRequest$Builder;-><init>()V

    :goto_5
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_d

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/lights/Light;

    new-instance v4, Landroid/hardware/lights/LightState$Builder;

    invoke-direct {v4}, Landroid/hardware/lights/LightState$Builder;-><init>()V

    invoke-virtual {v4, v0}, Landroid/hardware/lights/LightState$Builder;->setColor(I)Landroid/hardware/lights/LightState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/lights/LightState$Builder;->build()Landroid/hardware/lights/LightState;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/lights/LightsRequest$Builder;->addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/hardware/lights/LightsManager;->openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    :cond_e
    iget-object p0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    invoke-virtual {v1}, Landroid/hardware/lights/LightsRequest$Builder;->build()Landroid/hardware/lights/LightsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/lights/LightsManager$LightsSession;->requestLights(Landroid/hardware/lights/LightsRequest;)V

    return-void
.end method
