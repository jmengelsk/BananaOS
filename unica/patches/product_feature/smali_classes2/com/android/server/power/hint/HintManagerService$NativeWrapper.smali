.class public Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCloseHintSession(J)V
.end method

.method private static native nativeCreateHintSession(II[IJ)J
.end method

.method private static native nativeCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J
.end method

.method private static native nativeGetHintSessionPreferredRate()J
.end method

.method private native nativeInit()V
.end method

.method private static native nativePauseHintSession(J)V
.end method

.method private static native nativeReportActualWorkDuration(J[J[J)V
.end method

.method private static native nativeReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V
.end method

.method private static native nativeResumeHintSession(J)V
.end method

.method private static native nativeSendHint(JI)V
.end method

.method private static native nativeSetMode(JIZ)V
.end method

.method private static native nativeSetThreads(J[I)V
.end method

.method private static native nativeUpdateTargetWorkDuration(JJ)V
.end method


# virtual methods
.method public final halCloseHintSession(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCloseHintSession(J)V

    return-void
.end method

.method public final halCreateHintSession(II[IJ)J
    .registers 6

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSession(II[IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final halCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J
    .registers 8

    invoke-static/range {p1 .. p7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeCreateHintSessionWithConfig(II[IJILandroid/hardware/power/SessionConfig;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final halGetHintSessionPreferredRate()J
    .registers 3

    invoke-static {}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeGetHintSessionPreferredRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final halInit()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeInit()V

    return-void
.end method

.method public final halPauseHintSession(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativePauseHintSession(J)V

    return-void
.end method

.method public final halReportActualWorkDuration(J[J[J)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[J[J)V

    return-void
.end method

.method public final halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    return-void
.end method

.method public final halResumeHintSession(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeResumeHintSession(J)V

    return-void
.end method

.method public final halSendHint(JI)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSendHint(JI)V

    return-void
.end method

.method public final halSetMode(JIZ)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSetMode(JIZ)V

    return-void
.end method

.method public final halSetThreads(J[I)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeSetThreads(J[I)V

    return-void
.end method

.method public final halUpdateTargetWorkDuration(JJ)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->nativeUpdateTargetWorkDuration(JJ)V

    return-void
.end method
