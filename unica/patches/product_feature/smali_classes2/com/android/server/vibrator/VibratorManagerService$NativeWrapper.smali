.class public Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mNativeServicePtr:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    return-void
.end method


# virtual methods
.method public final cancelSynced()V
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeCancelSynced(J)V

    return-void
.end method

.method public final clearSessions()V
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeClearSessions(J)V

    return-void
.end method

.method public final endSession(JZ)V
    .registers 6

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeEndSession(JJZ)V

    return-void
.end method

.method public final getCapabilities()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetCapabilities(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVibratorIds()[I
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetVibratorIds(J)[I

    move-result-object p0

    return-object p0
.end method

.method public final init(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)V
    .registers 6

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeInit(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetFinalizer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1f

    const-class p1, Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    :cond_1f
    return-void
.end method

.method public final prepareSynced([I)Z
    .registers 4

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativePrepareSynced(J[I)Z

    move-result p0

    return p0
.end method

.method public final startSession(J[I)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeStartSession(JJ[I)Z

    move-result p0

    return p0
.end method

.method public final triggerSynced(J)Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->nativeTriggerSynced(JJ)Z

    move-result p0

    return p0
.end method
