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
    .registers 5

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
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_d

    const/4 v0, 0x2

    if-eq p1, p0, :cond_c

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v0

    :cond_d
    return p0
.end method

.method public final logChangedCaptureBounds(IIILandroid/graphics/Rect;)V
    .registers 19

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

    if-eq v1, v3, :cond_69

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v1, v3, :cond_69

    const-string/jumbo v1, "targetChangeType= changeBounds"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    :goto_67
    move v13, v1

    goto :goto_71

    :cond_69
    const-string/jumbo v1, "targetChangeType= changePosition"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    goto :goto_67

    :goto_71
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
    .registers 18

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
    .registers 2

    packed-switch p1, :pswitch_data_1c

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0xa
    const/16 p0, 0xa

    return p0

    :pswitch_8  #0x9
    const/16 p0, 0x9

    return p0

    :pswitch_b  #0x8
    const/16 p0, 0x8

    return p0

    :pswitch_e  #0x7
    const/4 p0, 0x7

    return p0

    :pswitch_10  #0x6
    const/4 p0, 0x6

    return p0

    :pswitch_12  #0x5
    const/4 p0, 0x5

    return p0

    :pswitch_14  #0x4
    const/4 p0, 0x4

    return p0

    :pswitch_16  #0x3
    const/4 p0, 0x3

    return p0

    :pswitch_18  #0x2
    const/4 p0, 0x2

    return p0

    :pswitch_1a  #0x1
    const/4 p0, 0x1

    return p0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_18  #00000002
        :pswitch_16  #00000003
        :pswitch_14  #00000004
        :pswitch_12  #00000005
        :pswitch_10  #00000006
        :pswitch_e  #00000007
        :pswitch_b  #00000008
        :pswitch_8  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method

.method public windowingModeToTargetWindowingMode(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_f

    const/4 p0, 0x5

    if-eq p1, p0, :cond_d

    const/4 p0, 0x6

    if-eq p1, p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/4 p0, 0x3

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0

    :cond_f
    const/4 p0, 0x2

    return p0
.end method

.method public final writeStateChanged(IIIIIII)V
    .registers 17

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
