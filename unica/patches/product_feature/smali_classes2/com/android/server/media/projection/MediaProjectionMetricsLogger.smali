.class public final Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;


# instance fields
.field public final mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

.field public mPreviousProjectionState:I

.field public final mPreviousTargetBounds:Landroid/graphics/Rect;

.field public mPreviousTargetWindowingMode:I

.field public final mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field public final mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    return-void
.end method


# virtual methods
.method public contentToRecordToTargetType(I)I
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public final logChangedCaptureBounds(IIILandroid/graphics/Rect;)V
    .locals 14

    move-object/from16 v0, p4

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "logChangedCaptureBounds: captureBounds= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " position= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    move-result v5

    iget v8, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string/jumbo v1, "targetChangeType= changeBounds"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    :goto_0
    move v13, v1

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "targetChangeType= changePosition"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x2da

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v3 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final logChangedWindowingMode(IIII)V
    .locals 13

    move/from16 v0, p4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "logChangedWindowingMode: windowingMode= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "targetChangeType= changeWindowingMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->windowingModeToTargetWindowingMode(I)I

    move-result v7

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2da

    const/4 v12, 0x1

    move v5, p2

    move/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    return-void
.end method

.method public stopReasonToSessionStopSource(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public windowingModeToTargetWindowingMode(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public final writeStateChanged(IIIIIII)V
    .locals 9

    iget v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2d9

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIII)V

    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    return-void
.end method
