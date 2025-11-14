.class public final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

.field public mCurrentCallbackId:I

.field public mDesiredRotation:I

.field public mLastRotationResolution:I

.field public mLastRotationResolutionTimeStamp:J

.field public mProposedRotation:I

.field public mRotationEvaluationScheduled:Z

.field public final mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

.field public mRotationMemorizationTimeoutMillis:J

.field public mRotationResolverTimeoutMillis:J

.field public mTouchEndedTimestampNanos:J

.field public mTouching:Z

.field public mUnfoldEventDetected:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    const-string/jumbo v1, "window_manager"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo p1, "rotation_resolver_timeout_millis"

    const-wide/16 v2, 0x2bc

    invoke-static {v1, p1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    const-string/jumbo p1, "rotation_memorization_timeout_millis"

    const-wide/16 v2, 0xbb8

    invoke-static {v1, p1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "mDesiredRotation="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const-string/jumbo v2, "mTouchEndedTimestampNanos="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mLastRotationResolution="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public final evaluateRotationChangeLocked()I
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    goto :goto_11

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    :goto_11
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_19

    return v2

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    if-eqz v3, :cond_22

    goto :goto_35

    :cond_22
    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v3, :cond_27

    goto :goto_31

    :cond_27
    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v5, 0x1dcd6500

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-gez v3, :cond_35

    :goto_31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    return v2

    :cond_35
    :goto_35
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public final finalizeRotation(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1d

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1c

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final getProposedRotationLocked()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .registers 5

    iget v0, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    const v1, 0x10000004

    if-ne v0, v1, :cond_26

    iget-object p1, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    const-string/jumbo v1, "onSensorAdditionalInfo, unfolding_info: "

    const-string/jumbo v2, "WindowOrientationListener"

    invoke-static {p1, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    move v0, v1

    :cond_1a
    iget-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    if-eq p1, v0, :cond_26

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    const-string/jumbo p0, "onUnfoldEventChanged : "

    invoke-static {p0, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_26
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x1b

    const-string/jumbo v4, "onTableModeChanged: Moving"

    const/4 v5, 0x2

    const-string/jumbo v6, "WindowOrientationListener"

    const/4 v7, 0x0

    if-ne v2, v3, :cond_43

    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    float-to-int v3, v3

    iput v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSensorChanged device orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v3, v3, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    invoke-static {v2, v3, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    if-nez v3, :cond_43

    iget v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    if-eqz v3, :cond_43

    iget v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    if-ltz v3, :cond_43

    if-eq v3, v5, :cond_43

    iput v7, v2, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x10071

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v2, v3, :cond_b1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v2, v7

    const/high16 v10, 0x40400000  # 3.0f

    cmpl-float v3, v3, v10

    if-nez v3, :cond_18a

    aget v2, v2, v9

    float-to-int v2, v2

    if-ltz v2, :cond_8c

    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v10, v3, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    if-eq v10, v2, :cond_8c

    iput v2, v3, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSensorChanged device info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v3, v3, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    invoke-static {v2, v1, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_8c
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    if-ne v1, v9, :cond_9f

    iget v2, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    if-eq v2, v9, :cond_9f

    iput v9, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    const-string/jumbo v0, "onTableModeChanged: Table"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9f
    if-nez v1, :cond_18a

    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    if-ltz v1, :cond_18a

    if-eq v1, v5, :cond_18a

    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    if-ne v1, v9, :cond_18a

    iput v7, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b1
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    float-to-int v13, v2

    const/4 v2, -0x1

    if-lt v13, v2, :cond_18a

    if-le v13, v8, :cond_bd

    goto/16 :goto_18a

    :cond_bd
    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    if-eqz v13, :cond_ce

    if-eq v13, v9, :cond_cc

    if-eq v13, v5, :cond_ca

    if-eq v13, v8, :cond_c8

    goto :goto_cf

    :cond_c8
    const/4 v7, 0x4

    goto :goto_cf

    :cond_ca
    move v7, v8

    goto :goto_cf

    :cond_cc
    move v7, v5

    goto :goto_cf

    :cond_ce
    move v7, v9

    :goto_cf
    const/16 v1, 0x14d

    invoke-static {v1, v3, v4, v7, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener;->isRotationResolverEnabled()Z

    move-result v1

    if-eqz v1, :cond_187

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    check-cast v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_116

    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    if-eq v1, v2, :cond_10e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_10e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Reusing the last rotation resolution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-static {v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void

    :cond_10e
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mDefaultRotation:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void

    :cond_116
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez v2, :cond_130

    const-class v2, Landroid/rotationresolver/RotationResolverInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/rotationresolver/RotationResolverInternal;

    iput-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    if-nez v1, :cond_130

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void

    :cond_130
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v1, :cond_14c

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_14c

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_14c

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_14c

    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_14a
    move-object v12, v1

    goto :goto_14e

    :cond_14c
    const/4 v1, 0x0

    goto :goto_14a

    :goto_14e
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_15e

    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15e
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;-><init>(Landroid/os/CancellationSignal;)V

    iput-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v10, v2, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    new-instance v11, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v11, v0, v13}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    iget v14, v2, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    iget-wide v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    move-object/from16 v17, v1

    move-wide v15, v2

    invoke-virtual/range {v10 .. v17}, Landroid/rotationresolver/RotationResolverInternal;->resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V

    return-void

    :cond_187
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    :cond_18a
    :goto_18a
    return-void
.end method

.method public final onTouchEndLocked(J)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq p1, p2, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    :cond_12
    return-void
.end method

.method public final onTouchStartLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    return-void
.end method

.method public final resetLocked()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v1, :cond_11

    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void
.end method

.method public final scheduleRotationEvaluationIfNecessaryLocked(J)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    const-string/jumbo v1, "WindowOrientationListener"

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v0, v2, :cond_e

    goto :goto_4f

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    if-nez v0, :cond_21

    sget-boolean p0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz p0, :cond_59

    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-ltz v0, :cond_36

    sget-boolean p0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz p0, :cond_59

    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    sub-long/2addr v2, p1

    long-to-float p1, v2

    const p2, 0x358637bd  # 1.0E-6f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return-void

    :cond_4f
    :goto_4f
    sget-boolean p0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz p0, :cond_59

    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method
