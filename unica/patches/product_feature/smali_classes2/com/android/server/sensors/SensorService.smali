.class public Lcom/android/server/sensors/SensorService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final START_NATIVE_SENSOR_SERVICE:Ljava/lang/String; = "StartNativeSensorService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mProximityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;",
            "Lcom/android/server/sensors/SensorService$ProximityListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public mPtr:J

.field public final mRuntimeSensorHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tuvhrgJDhAzfGFTh_3IUBIw3Spg(Lcom/android/server/sensors/SensorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sensors/SensorService;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smregisterProximityActiveListenerNative(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->registerProximityActiveListenerNative(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;)I
    .registers 13

    invoke-static/range {p0 .. p12}, Lcom/android/server/sensors/SensorService;->registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorEventNative(JIIJ[F)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smunregisterRuntimeSensorNative(IJ)V
    .registers 3

    invoke-static {p1, p2, p0}, Lcom/android/server/sensors/SensorService;->unregisterRuntimeSensorNative(JI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    monitor-enter p1

    :try_start_19
    new-instance v0, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-string/jumbo v1, "StartNativeSensorService"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    monitor-exit p1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 5

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    const-string/jumbo v1, "StartNativeSensorService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;

    invoke-direct {v1, p0}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;)V

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_16
    iput-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static native registerProximityActiveListenerNative(J)V
.end method

.method private static native registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
.end method

.method private static native sendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z
.end method

.method private static native sendRuntimeSensorEventNative(JIIJ[F)Z
.end method

.method private static native startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J
.end method

.method private static native unregisterProximityActiveListenerNative(J)V
.end method

.method private static native unregisterRuntimeSensorNative(JI)V
.end method


# virtual methods
.method public final onBootPhase(I)V
    .registers 3

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v0, "StartNativeSensorService"

    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    return-void
.end method

.method public final onStart()V
    .registers 2

    new-instance v0, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$LocalService;-><init>(Lcom/android/server/sensors/SensorService;)V

    const-class p0, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
