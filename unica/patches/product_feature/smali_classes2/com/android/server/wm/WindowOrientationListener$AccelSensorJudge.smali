.class public final Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAccelerating:Z

.field public mAccelerationTimestampNanos:J

.field public mFlat:Z

.field public mFlatTimestampNanos:J

.field public mLastFilteredTimestampNanos:J

.field public mLastFilteredX:F

.field public mLastFilteredY:F

.field public mLastFilteredZ:F

.field public mOverhead:Z

.field public mPredictedRotation:I

.field public mPredictedRotationTimestampNanos:J

.field public mProposedRotation:I

.field public mSwingTimestampNanos:J

.field public mSwinging:Z

.field public final mTiltHistory:[F

.field public mTiltHistoryIndex:I

.field public final mTiltHistoryTimestampNanos:[J

.field public final mTiltToleranceConfig:[[I

.field public mTouchEndedTimestampNanos:J

.field public mTouched:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    const/16 p1, 0x46

    const/16 v0, -0x19

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const/16 v1, 0x41

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/16 v3, 0x3c

    filled-new-array {v0, v3}, [I

    move-result-object v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    filled-new-array {p1, v2, v3, v0}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    const/16 p1, 0xc8

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700a2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length p2, p1

    const/16 v0, 0x8

    const-string/jumbo v1, "WindowOrientationListener"

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    aget v3, p1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget v2, p1, v2

    const/16 v5, -0x5a

    if-lt v3, v5, :cond_0

    if-gt v3, v2, :cond_0

    const/16 v5, 0x5a

    if-gt v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v5, v5, v0

    aput v3, v5, p2

    aput v2, v5, v4

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo p0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static remainingMS(JJ)F
    .locals 1

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-long/2addr p2, p0

    long-to-float p0, p2

    const p1, 0x358637bd    # 1.0E-6f

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

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

    const-string/jumbo v0, "mProposedRotation="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    const-string/jumbo v2, "mPredictedRotation="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    const-string/jumbo v2, "mLastFilteredX="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    const-string/jumbo v2, "mLastFilteredTimestampNanos="

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms ago)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTiltHistory={last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v2, v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    const-string/jumbo v2, "mSwinging="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    const-string/jumbo v2, "mAccelerating="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    const-string/jumbo v2, "mOverhead="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    const-string/jumbo v2, "mTouched="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mTiltToleranceConfig=["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    const/4 v1, 0x4

    const-string/jumbo v2, "]"

    if-ge v0, v1, :cond_2

    const-string v1, ", "

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v0

    aget v3, v3, p2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getProposedRotationLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return p0
.end method

.method public final nextTiltHistoryIndexLocked(I)I
    .locals 4

    if-nez p1, :cond_0

    const/16 p1, 0xc8

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, p0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Filtered acceleration vector: x="

    const-string/jumbo v3, "Raw acceleration vector: x="

    iget-object v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v4, v4, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x1

    aget v9, v5, v8

    const/4 v10, 0x2

    aget v5, v5, v10

    sget-boolean v10, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v11, "WindowOrientationListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", z="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", magnitude="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v3, v7, v7

    mul-float v13, v9, v9

    add-float/2addr v13, v3

    mul-float v3, v5, v5

    add-float/2addr v3, v13

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_13

    :cond_0
    :goto_0
    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    move v3, v7

    sub-long v6, v11, v13

    long-to-float v6, v6

    const v7, 0x358637bd    # 1.0E-6f

    mul-float/2addr v6, v7

    cmp-long v15, v11, v13

    const-wide/32 v16, 0x3b9aca00

    if-ltz v15, :cond_3

    add-long v13, v13, v16

    cmp-long v13, v11, v13

    if-gtz v13, :cond_3

    const/4 v13, 0x0

    cmpl-float v14, v3, v13

    if-nez v14, :cond_1

    cmpl-float v14, v9, v13

    if-nez v14, :cond_1

    cmpl-float v13, v5, v13

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v13, 0x43480000    # 200.0f

    add-float/2addr v13, v6

    div-float v13, v6, v13

    iget v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float/2addr v3, v14

    mul-float/2addr v3, v13

    add-float/2addr v3, v14

    iget v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float/2addr v9, v14

    mul-float/2addr v9, v13

    add-float/2addr v9, v14

    iget v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float/2addr v5, v14

    mul-float/2addr v5, v13

    add-float/2addr v5, v14

    if-eqz v10, :cond_2

    const-string/jumbo v13, "WindowOrientationListener"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", z="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", magnitude="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v2, v3, v3

    mul-float v15, v9, v9

    add-float/2addr v15, v2

    mul-float v2, v5, v5

    add-float/2addr v2, v15

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    const-string/jumbo v1, "WindowOrientationListener"

    const-string/jumbo v2, "Resetting orientation listener."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->resetLocked()V

    move v1, v8

    :goto_2
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    iput v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    iput v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    iput v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    if-nez v1, :cond_22

    mul-float v1, v3, v3

    mul-float v2, v9, v9

    add-float/2addr v2, v1

    mul-float v1, v5, v5

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    const/4 v15, -0x1

    const-wide/32 v18, 0x11e1a300

    const-wide/high16 v13, -0x8000000000000000L

    if-gez v2, :cond_6

    if-eqz v10, :cond_5

    const-string/jumbo v1, "WindowOrientationListener"

    const-string v2, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput-wide v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    :goto_3
    move-object v1, v4

    const/4 v9, 0x0

    goto/16 :goto_10

    :cond_6
    const v2, 0x40b9d014

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_8

    const v2, 0x415ce80a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    move v2, v8

    :goto_5
    div-float/2addr v5, v1

    move-wide/from16 v20, v13

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    const-wide v22, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v13, v13, v22

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v5, v13

    int-to-float v1, v5

    iget-object v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput v1, v10, v13

    iget-object v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide v11, v10, v13

    add-int/2addr v13, v8

    rem-int/lit16 v13, v13, 0xc8

    iput v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput-wide v20, v10, v13

    :cond_9
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v13

    if-ltz v13, :cond_b

    iget-object v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v10, v10, v13

    const/high16 v14, 0x42a00000    # 80.0f

    cmpg-float v10, v10, v14

    if-gez v10, :cond_a

    goto :goto_6

    :cond_a
    iget-object v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v24, v10, v13

    add-long v24, v24, v16

    cmp-long v10, v24, v11

    if-gtz v10, :cond_9

    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    move v10, v8

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v10, 0x0

    :goto_7
    iget v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    :cond_c
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v13

    if-ltz v13, :cond_e

    iget-object v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v16, v14, v13

    add-long v16, v16, v18

    cmp-long v14, v16, v11

    if-gez v14, :cond_d

    goto :goto_8

    :cond_d
    iget-object v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v14, v14, v13

    const/high16 v16, 0x41a00000    # 20.0f

    add-float v14, v14, v16

    cmpg-float v14, v14, v1

    if-gtz v14, :cond_c

    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    move v13, v8

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v13, 0x0

    :goto_9
    const/16 v1, -0x28

    if-gt v5, v1, :cond_f

    iput-boolean v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_a

    :cond_f
    const/16 v1, -0xf

    if-lt v5, v1, :cond_10

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    :cond_10
    :goto_a
    iget-boolean v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v14, :cond_12

    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_11

    const-string/jumbo v1, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    move-wide/from16 v7, v20

    iput-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    :goto_b
    move-object v1, v4

    goto/16 :goto_f

    :cond_12
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v1, 0x50

    if-le v14, v1, :cond_14

    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :cond_14
    neg-float v1, v3

    move v14, v7

    move v3, v8

    float-to-double v7, v1

    move/from16 v16, v3

    move-object v1, v4

    float-to-double v3, v9

    :try_start_1
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    neg-double v3, v3

    mul-double v3, v3, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    if-gez v3, :cond_15

    add-int/lit16 v3, v3, 0x168

    :cond_15
    add-int/lit8 v4, v3, 0x2d

    div-int/lit8 v4, v4, 0x5a

    const/4 v7, 0x4

    if-ne v4, v7, :cond_16

    const/4 v4, 0x0

    :cond_16
    iget-object v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v8, v8, v4

    const/4 v9, 0x0

    aget v9, v8, v9

    if-lt v5, v9, :cond_1f

    aget v8, v8, v16

    if-gt v5, v8, :cond_1f

    iget-object v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v8, v8, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    if-ltz v8, :cond_1d

    if-eq v4, v8, :cond_18

    add-int/lit8 v9, v8, 0x1

    rem-int/2addr v9, v7

    if-ne v4, v9, :cond_17

    goto :goto_c

    :cond_17
    move/from16 p1, v7

    goto :goto_d

    :cond_18
    :goto_c
    mul-int/lit8 v9, v4, 0x5a

    move/from16 p1, v7

    add-int/lit8 v7, v9, -0x17

    if-nez v4, :cond_19

    const/16 v7, 0x13b

    if-lt v3, v7, :cond_1a

    add-int/lit16 v9, v9, 0x151

    if-ge v3, v9, :cond_1a

    goto :goto_e

    :cond_19
    if-ge v3, v7, :cond_1a

    goto :goto_e

    :cond_1a
    :goto_d
    if-eq v4, v8, :cond_1b

    add-int/lit8 v8, v8, 0x3

    rem-int/lit8 v8, v8, 0x4

    if-ne v4, v8, :cond_1d

    :cond_1b
    mul-int/lit8 v7, v4, 0x5a

    add-int/lit8 v7, v7, 0x17

    if-nez v4, :cond_1c

    const/16 v8, 0x2d

    if-gt v3, v8, :cond_1d

    if-le v3, v7, :cond_1d

    goto :goto_e

    :cond_1c
    if-le v3, v7, :cond_1d

    goto :goto_e

    :cond_1d
    iget v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v7, v4, :cond_1e

    iput v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    :cond_1e
    sget-boolean v4, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v4, :cond_21

    const-string/jumbo v4, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Predicted: tiltAngle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientationAngle="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictedRotation="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", predictedRotationAgeMS="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v8, v11, v8

    long-to-float v3, v8

    mul-float/2addr v3, v14

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_1f
    :goto_e
    sget-boolean v4, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v4, :cond_20

    const-string/jumbo v4, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", orientationAngle="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    :cond_21
    :goto_f
    move v9, v10

    goto :goto_11

    :cond_22
    const-wide/32 v18, 0x11e1a300

    goto/16 :goto_3

    :goto_10
    move v2, v9

    move v13, v2

    :goto_11
    iput-boolean v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    iput-boolean v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    iput-boolean v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    iget v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    const-wide/32 v14, 0x1dcd6500

    if-ltz v4, :cond_27

    const-wide/32 v16, 0x2625a00

    iget-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    add-long v7, v7, v16

    cmp-long v5, v11, v7

    if-gez v5, :cond_23

    goto :goto_12

    :cond_23
    iget-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long/2addr v7, v14

    cmp-long v5, v11, v7

    if-gez v5, :cond_24

    goto :goto_12

    :cond_24
    iget-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    add-long v7, v7, v18

    cmp-long v5, v11, v7

    if-gez v5, :cond_25

    goto :goto_12

    :cond_25
    iget-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v7, v14

    cmp-long v5, v11, v7

    if-gez v5, :cond_26

    goto :goto_12

    :cond_26
    iget-boolean v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v5, :cond_29

    iget-wide v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v7, v14

    cmp-long v5, v11, v7

    if-gez v5, :cond_28

    goto :goto_12

    :cond_27
    const-wide/32 v16, 0x2625a00

    :cond_28
    iput v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    :cond_29
    :goto_12
    iget v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    sget-boolean v5, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    if-eqz v5, :cond_2a

    const-string/jumbo v7, "WindowOrientationListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Result: currentRotation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget v10, v10, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", proposedRotation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", predictedRotation="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", timeDeltaMS="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", isAccelerating="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFlat="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSwinging="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isOverhead="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isTouched="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", timeUntilSettledMS="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    add-long v9, v9, v16

    invoke-static {v11, v12, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v9, v14

    invoke-static {v11, v12, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long/2addr v9, v14

    invoke-static {v11, v12, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    add-long v9, v9, v18

    invoke-static {v11, v12, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v9, v14

    invoke-static {v11, v12, v9, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v4, v3, :cond_2c

    if-ltz v4, :cond_2c

    if-eqz v5, :cond_2b

    const-string/jumbo v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Proposed rotation changed!  proposedRotation="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldProposedRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    :cond_2c
    return-void

    :goto_13
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onTouchEndLocked(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    return-void
.end method

.method public final onTouchStartLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    return-void
.end method

.method public final resetLocked()V
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    return-void
.end method
