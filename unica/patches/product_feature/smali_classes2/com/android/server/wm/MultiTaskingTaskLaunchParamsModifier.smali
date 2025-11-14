.class public final Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public mDefaultFreeformStepHorizontal:I

.field public mDefaultFreeformStepVertical:I

.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpBounds2:Landroid/graphics/Rect;

.field public final mTmpDirections:[I

.field public mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method

.method public static adjustPersistFreeformBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V
    .locals 6

    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object v0, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    iget-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    iget-object p0, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object p1, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-static {p0, v2, p1, p3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-static {v1, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v5, v5, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "adjustPersistFreeformBounds: alignedDisplay="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " persistDisplay="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rot:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    iget-object v3, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p0, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object p2, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v3, p0, p2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_3

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v3, v4

    float-to-int p0, v3

    iput p0, p3, Landroid/graphics/Rect;->right:I

    :cond_3
    cmpl-float p0, v2, p2

    if-eqz p0, :cond_4

    iget p0, p3, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->top:I

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v4

    float-to-int p0, p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_4
    if-eq v0, v1, :cond_5

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method public static boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_4

    move v1, v4

    :cond_4
    if-eqz v2, :cond_5

    if-nez v5, :cond_8

    :cond_5
    if-eqz v2, :cond_6

    if-nez v1, :cond_8

    :cond_6
    if-eqz v6, :cond_7

    if-nez v5, :cond_8

    :cond_7
    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    :cond_8
    return v4

    :cond_9
    return v1
.end method

.method public static canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    if-ne p0, v0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aput v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v7, v5, 0x2

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    const/4 v9, 0x3

    div-int/2addr v7, v9

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    div-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    const/4 v10, 0x5

    if-ge v5, v7, :cond_3

    aput v10, v6, v4

    goto :goto_2

    :cond_3
    if-le v5, v8, :cond_4

    aput v9, v6, v4

    goto :goto_2

    :cond_4
    iget v5, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v7, v5, 0x2

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/2addr v7, v9

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    div-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    const/4 v11, 0x1

    if-lt v5, v7, :cond_6

    if-le v5, v8, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x55

    aput v5, v6, v4

    const/16 v5, 0x33

    aput v5, v6, v11

    goto :goto_2

    :cond_6
    :goto_1
    aput v10, v6, v4

    aput v9, v6, v11

    :goto_2
    array-length v5, v6

    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_10

    aget v8, v6, v7

    if-nez v8, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v11, v4

    :goto_4
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v2, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_8

    if-eqz p4, :cond_e

    :cond_8
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    and-int/lit8 v13, v8, 0x7

    if-eq v13, v9, :cond_a

    if-eq v13, v10, :cond_9

    move v13, v4

    goto :goto_5

    :cond_9
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    goto :goto_5

    :cond_a
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    neg-int v13, v13

    :goto_5
    and-int/lit8 v14, v8, 0x70

    const/16 v15, 0x30

    if-eq v14, v15, :cond_c

    const/16 v15, 0x50

    if-eq v14, v15, :cond_b

    move v14, v4

    goto :goto_6

    :cond_b
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    goto :goto_6

    :cond_c
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    neg-int v14, v14

    :goto_6
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0xc8

    if-le v11, v13, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, inOutBounds="

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", mTmpBounds="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", displayBounds="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", mDefaultFreeformStepHorizontal="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mDefaultFreeformStepVertical="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", Callers="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x8

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "ActivityTaskManager"

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, adjusted proposal="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", break!"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    move v11, v12

    goto/16 :goto_4

    :cond_e
    :goto_7
    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v2, v8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "avoid-bounds-conflict="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_10
    :goto_8
    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    sget-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x41d80000    # 27.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p1, v1, :cond_4

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, -0x1

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget v2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, p2, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, p1, :cond_3

    goto :goto_5

    :cond_3
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    add-int/2addr p1, v1

    invoke-virtual {p3, p0, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    const/4 p2, 0x0

    if-le p0, p1, :cond_5

    :goto_2
    sub-int/2addr p1, p0

    goto :goto_3

    :cond_5
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_3
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v1, :cond_7

    sub-int p2, v1, p0

    goto :goto_4

    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_8

    sub-int p2, v0, p0

    :cond_8
    :goto_4
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_9
    :goto_5
    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    goto :goto_6

    :cond_a
    iget p0, v0, Landroid/graphics/Rect;->left:I

    :goto_6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    add-int/2addr p1, v0

    invoke-virtual {p3, p0, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_6

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v2, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget v3, Lcom/android/server/wm/DexController;->$r8$clinit:I

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    :cond_3
    move-object v4, v1

    goto/16 :goto_5

    :cond_4
    const-string/jumbo v4, "com.samsung.android.dex.launchheight"

    const-string/jumbo v5, "com.samsung.android.dex.launchwidth"

    if-eqz v3, :cond_5

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_2

    :cond_6
    move-object v2, v1

    move-object v3, v2

    :goto_2
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v2, v1

    :goto_3
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_9

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    check-cast v3, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v3, v1

    goto :goto_4

    :cond_b
    move-object v2, v1

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    move-result-object v2

    iput-object v2, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    invoke-static {v3}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    move-result-object v2

    iput-object v2, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    :goto_5
    iget-object v2, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_e

    iget-object v3, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    iget-object v4, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    iget v5, v3, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-nez v5, :cond_c

    iget v5, v4, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-nez v5, :cond_c

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    :cond_c
    iget-object v5, p2, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v5, p2, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/16 v6, 0x3c0

    invoke-static {v3, v2, v5, v6}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I

    move-result v2

    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p2, p2, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/16 v5, 0x2d0

    invoke-static {v4, v3, p2, v5}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I

    move-result p2

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Landroid/graphics/Point;->y:I

    move-object v1, v3

    :cond_e
    :goto_6
    if-eqz v1, :cond_12

    iget p2, v1, Landroid/graphics/Point;->x:I

    if-nez p2, :cond_f

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_f

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    const-string/jumbo p1, "dex-fullscreen-metadata-bounds"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, v0, v0, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p2, :cond_10

    iget v0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_10

    iget p2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_11

    :cond_10
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x11

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_11
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :goto_7
    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method public final getInitialDwBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 10

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->calculateDesktopCompatInitialBounds(Landroid/graphics/Rect;IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_1
    :goto_1
    move v3, v0

    move v5, v1

    goto :goto_2

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    if-le v0, v1, :cond_3

    int-to-float v0, v0

    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v1, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    if-lt v0, v1, :cond_1

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v1, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-nez v2, :cond_1

    if-gt v0, v1, :cond_1

    int-to-float v2, v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1

    :goto_2
    const-string/jumbo v0, "from-default-size"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_4

    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ne v1, v3, :cond_4

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-eq v0, v5, :cond_5

    :cond_4
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x11

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 14

    move-object/from16 v3, p3

    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v7, v0, 0x70

    and-int/lit8 v8, v0, 0x7

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v9}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v0, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    move-object/from16 v6, p4

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v1, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p4

    iget p0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ltz p0, :cond_3

    if-ge p0, v10, :cond_3

    goto :goto_0

    :cond_3
    iget p0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float p1, p0, v13

    if-lez p1, :cond_4

    cmpg-float p1, p0, v12

    if-gez p1, :cond_4

    int-to-float p1, v10

    mul-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_0

    :cond_4
    move p0, v10

    :goto_0
    iget p1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ltz p1, :cond_5

    if-ge p1, v11, :cond_5

    goto :goto_1

    :cond_5
    iget p1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v0, p1, v13

    if-lez v0, :cond_6

    cmpg-float v0, p1, v12

    if-gez v0, :cond_6

    int-to-float v0, v11

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_1

    :cond_6
    move p1, v11

    :goto_1
    const/4 v0, 0x3

    const/high16 v1, 0x3f000000    # 0.5f

    if-eq v8, v0, :cond_8

    const/4 v0, 0x5

    if-eq v8, v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v12

    goto :goto_2

    :cond_8
    move v0, v13

    :goto_2
    const/16 v2, 0x30

    if-eq v7, v2, :cond_9

    const/16 v2, 0x50

    if-eq v7, v2, :cond_a

    move v12, v1

    goto :goto_3

    :cond_9
    move v12, v13

    :cond_a
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    sub-int/2addr v10, p0

    int-to-float p0, v10

    mul-float/2addr v0, p0

    float-to-int p0, v0

    sub-int/2addr v11, p1

    int-to-float p1, v11

    mul-float/2addr v12, p1

    float-to-int p1, v12

    invoke-virtual {v6, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p4, v0, :cond_0

    if-eq p4, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "skip-bounds-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p6, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I

    move-result p1

    if-eq p1, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, p4, p3, v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    new-instance p4, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p4, v0, v2}, Landroid/util/Size;-><init>(II)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p5, :cond_5

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "freeform-size-mismatch="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-le p3, p4, :cond_6

    move v1, v3

    :cond_6
    if-ne p1, v1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "freeform-size-orientation-match="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-static {p2, p1, p3, p4}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "freeform-orientation-ignore="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "freeform-orientation-mismatch="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;)V

    invoke-virtual {p2, p3, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p6, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v2, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "TaskLaunchParamsModifier:task="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " activity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7, v14, v15}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v14, v15}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v8

    :goto_1
    const-string v4, "ActivityTaskManager"

    if-nez v3, :cond_2

    if-eqz p7, :cond_2

    move-object/from16 v21, v4

    goto/16 :goto_57

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-area-token-from-option="

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    iget-object v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, -0x1

    if-nez v6, :cond_6

    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v15

    if-eq v15, v5, :cond_6

    move-object/from16 v17, v6

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    if-ne v6, v5, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    :goto_4
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;

    invoke-direct {v6, v15}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-area-feature-from-option="

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object/from16 v17, v6

    :cond_7
    move-object/from16 v6, v17

    :goto_5
    if-nez v6, :cond_9

    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    :goto_6
    const/4 v15, -0x1

    goto :goto_7

    :cond_8
    const/4 v5, -0x1

    goto :goto_6

    :goto_7
    if-eq v5, v15, :cond_9

    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string/jumbo v6, "display-from-option="

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v6, v17

    :cond_9
    if-nez v6, :cond_b

    if-eqz v9, :cond_b

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v5, :cond_b

    iget-object v6, v9, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v6, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-area-from-no-display-source="

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    iget v5, v9, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string/jumbo v6, "display-from-no-display-source="

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v6, v17

    :cond_b
    :goto_8
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->useExtendedDesktopModeLaunchPolicy()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    if-eqz v9, :cond_f

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mExtendedDesktopModeLaunchPolicyAppliedAliasActivity:Z

    if-eqz v5, :cond_f

    :cond_d
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v5}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v17

    if-eqz v17, :cond_f

    iget-boolean v5, v5, Lcom/android/server/wm/DexController;->mInDesktopWindowing:Z

    if-eqz v5, :cond_f

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v15

    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v17, v3

    iget v3, v5, Lcom/android/server/wm/Task;->mLinkedDeskId:I

    invoke-virtual {v11, v3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    iget v5, v5, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_10

    if-eqz v3, :cond_10

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "display-from-extended-desktop-mode-launch-policy="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object/from16 v20, v4

    goto/16 :goto_1d

    :cond_f
    move-object/from16 v17, v3

    :cond_10
    const-string/jumbo v3, "display-from-task="

    if-eqz v6, :cond_12

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v11, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v11}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v20, v4

    move-object/from16 v19, v6

    goto/16 :goto_10

    :cond_12
    :goto_9
    if-nez v6, :cond_13

    const/4 v5, -0x1

    goto :goto_a

    :cond_13
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    :goto_a
    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v11}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v15, -0x1

    if-ne v5, v15, :cond_14

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-from-source="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_14
    const/4 v15, -0x1

    if-ne v5, v15, :cond_15

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_15
    const/4 v15, -0x1

    if-ne v5, v15, :cond_17

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    if-eqz v11, :cond_17

    iget v5, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-from-focused-stack="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const/4 v5, -0x1

    :cond_17
    :goto_b
    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    goto :goto_c

    :cond_18
    const/4 v5, 0x0

    :goto_c
    const-string/jumbo v11, "display-from-dex-policy"

    if-eqz p5, :cond_1b

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v15

    move-object/from16 v19, v6

    const/4 v6, -0x1

    if-eq v15, v6, :cond_1a

    iget-object v6, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v15

    move-object/from16 v20, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v15, v4, v10, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-from-launch-target-task"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_11

    :cond_19
    if-eqz v5, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_f

    :cond_1a
    :goto_d
    move-object/from16 v20, v4

    goto :goto_e

    :cond_1b
    move-object/from16 v19, v6

    goto :goto_d

    :goto_e
    if-eqz v5, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_f
    move-object v6, v5

    goto :goto_11

    :cond_1c
    :goto_10
    move-object/from16 v6, v19

    :goto_11
    if-eqz v7, :cond_1e

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_1d

    goto :goto_12

    :cond_1d
    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    goto :goto_13

    :cond_1e
    :goto_12
    move-object v10, v8

    :goto_13
    if-nez v6, :cond_26

    if-eqz v10, :cond_26

    iget-object v4, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    invoke-virtual {v4}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_26

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    :goto_14
    if-nez v4, :cond_20

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    :cond_20
    if-eqz v4, :cond_25

    iget-object v5, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_21

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v6, :cond_21

    const/4 v6, 0x1

    goto :goto_15

    :cond_21
    const/4 v6, 0x0

    :goto_15
    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v11

    if-eqz v11, :cond_22

    const/4 v11, 0x1

    goto :goto_16

    :cond_22
    const/4 v11, 0x0

    :goto_16
    if-nez v6, :cond_24

    if-eqz v11, :cond_23

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_17

    :cond_23
    const/4 v4, 0x0

    goto :goto_18

    :cond_24
    :goto_17
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "display-from-remote-app-policy="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_25
    :goto_18
    move-object v6, v4

    :cond_26
    if-nez v6, :cond_27

    if-eqz v9, :cond_27

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-area-from-source="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_27
    if-nez v6, :cond_28

    if-eqz v7, :cond_28

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_19

    :cond_28
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_2b

    sget-boolean v5, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v5, :cond_2a

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v5, :cond_2a

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v5, :cond_2a

    if-eqz v10, :cond_29

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v6, :cond_29

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "display-from-focus="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    goto :goto_1a

    :cond_29
    const/4 v10, 0x0

    :goto_1a
    move-object v6, v10

    :cond_2a
    if-nez v6, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    :cond_2b
    if-nez v6, :cond_2c

    if-eqz p5, :cond_2c

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v3

    iget-object v4, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-from-caller="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_2c
    if-nez v6, :cond_2d

    if-eqz v12, :cond_2d

    iget-object v6, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-from-current-params="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_2d
    if-eqz v6, :cond_2e

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v3, :cond_2e

    iget-object v3, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v3, :cond_2e

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-from-no-multidisplay="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_2e
    if-eqz v6, :cond_2f

    if-eqz v8, :cond_2f

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-area-from-home="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v6, v3

    :cond_2f
    if-eqz v6, :cond_30

    move-object v2, v6

    goto/16 :goto_1d

    :cond_30
    if-eqz v8, :cond_32

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v5, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-for-launching-record="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_1b
    move-object v2, v3

    goto :goto_1c

    :cond_31
    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-for-record="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_1b

    :cond_32
    if-eqz v2, :cond_33

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-source-process="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_1c

    :cond_33
    iget-object v2, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-from-default-fallback="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_1c
    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldChooseDefaultTaskDisplayArea(I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v2, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    :cond_34
    :goto_1d
    iput-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v10, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " task-display-area-windowing-mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " suggested-display-area="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    if-eqz v1, :cond_36

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    if-eqz v8, :cond_35

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1e

    :cond_35
    const/4 v5, 0x0

    :goto_1e
    invoke-static {v3, v4, v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->recalculateWindowLayout(FFLandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    :cond_36
    move-object v3, v1

    if-eqz v8, :cond_3a

    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v15, -0x1

    if-eq v1, v15, :cond_39

    const/16 v4, -0x2710

    if-ne v1, v4, :cond_37

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v5, 0x0

    goto :goto_1f

    :cond_37
    iget-object v4, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_1f
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_20

    :cond_38
    move-object v1, v5

    :goto_20
    if-eqz v1, :cond_3b

    iput-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "tda-from-lott="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " dc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " display-windowing-mode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_21

    :cond_39
    const/4 v5, 0x0

    goto :goto_21

    :cond_3a
    const/4 v5, 0x0

    const/4 v15, -0x1

    :cond_3b
    :goto_21
    if-nez p7, :cond_3c

    move-object/from16 v21, v20

    :goto_22
    const/4 v15, 0x2

    goto/16 :goto_57

    :cond_3c
    iget-object v1, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050409

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    const v4, 0x1050408

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    if-eqz p5, :cond_3d

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_23

    :cond_3d
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_3e
    const/4 v1, 0x1

    :cond_3f
    const/4 v11, 0x5

    if-nez v1, :cond_45

    if-eqz v9, :cond_45

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v4, :cond_40

    goto :goto_25

    :cond_40
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_25

    :cond_41
    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_42

    if-eq v4, v11, :cond_42

    goto :goto_25

    :cond_42
    if-ne v4, v11, :cond_43

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_43

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_43

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_43

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_43

    goto :goto_25

    :cond_43
    iget v4, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    if-ne v4, v5, :cond_45

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    goto :goto_24

    :cond_44
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    :goto_24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "inherit-from-source="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_45
    :goto_25
    if-nez v1, :cond_47

    if-eqz v7, :cond_47

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-ne v4, v2, :cond_47

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-nez v4, :cond_47

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v4, :cond_47

    :cond_46
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "inherit-from-task="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_47
    if-eqz v7, :cond_48

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v4, 0x0

    goto :goto_26

    :cond_48
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v4

    :goto_26
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v5, :cond_4b

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_49

    if-eqz v1, :cond_4a

    :cond_49
    if-ne v1, v6, :cond_4b

    :cond_4a
    const/4 v5, 0x1

    goto :goto_27

    :cond_4b
    const/4 v5, 0x0

    :goto_27
    const/4 v6, 0x6

    if-eqz p5, :cond_4c

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v18

    if-eqz v18, :cond_4c

    if-eq v1, v6, :cond_4c

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4c

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v18

    if-nez v18, :cond_4c

    goto :goto_28

    :cond_4c
    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v15, :cond_4f

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v15

    if-eqz v15, :cond_4d

    if-eqz v1, :cond_4e

    :cond_4d
    if-ne v1, v11, :cond_4f

    :cond_4e
    :goto_28
    const/4 v15, 0x1

    goto :goto_29

    :cond_4f
    const/4 v15, 0x0

    :goto_29
    if-eqz v3, :cond_51

    if-nez v15, :cond_50

    if-eqz v5, :cond_51

    :cond_50
    const/16 v19, 0x1

    :goto_2a
    move/from16 p2, v4

    move-object/from16 v4, p5

    goto :goto_2b

    :cond_51
    const/16 v19, 0x0

    goto :goto_2a

    :goto_2b
    invoke-virtual {v14, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v21

    if-eqz v21, :cond_54

    if-nez v15, :cond_55

    iget-object v6, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v6, :cond_52

    const/4 v6, 0x2

    if-ne v1, v6, :cond_53

    goto :goto_2c

    :cond_52
    const/4 v6, 0x2

    :cond_53
    if-eqz v5, :cond_54

    goto :goto_2c

    :cond_54
    move-object/from16 v6, v20

    goto :goto_33

    :cond_55
    const/4 v6, 0x2

    :goto_2c
    if-eq v1, v6, :cond_56

    :goto_2d
    move v1, v11

    goto :goto_2e

    :cond_56
    if-nez v1, :cond_57

    if-eqz v15, :cond_57

    goto :goto_2d

    :cond_57
    :goto_2e
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v15, :cond_58

    if-eqz v5, :cond_58

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_58

    const-string/jumbo v5, "launchBounds.top is smaller than stableRect.top."

    move-object/from16 v6, v20

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_58
    move-object/from16 v6, v20

    :goto_2f
    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "activity-options-bounds="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_30
    move-object/from16 v21, v6

    move/from16 p2, v15

    move-object/from16 v6, v17

    :goto_31
    const/4 v5, 0x1

    :goto_32
    const/4 v11, 0x0

    goto/16 :goto_39

    :goto_33
    if-eqz v9, :cond_5b

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v5, :cond_5b

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mIsUnhandledDropLaunch:Z

    if-eqz v5, :cond_5b

    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v11, 0x5

    if-eq v5, v11, :cond_59

    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_5b

    :cond_59
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v11, 0x5

    if-ne v5, v11, :cond_5a

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "inherit-unhandled-drop-bounds="

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v1, v5

    goto :goto_30

    :cond_5b
    if-eqz p2, :cond_65

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDefaultDisplayDesktop()Z

    move-result v5

    iget-object v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDwPersistBounds:Lcom/android/server/wm/LastDwBounds;

    if-eqz v5, :cond_5c

    iget-object v5, v11, Lcom/android/server/wm/LastDwBounds;->mDefault:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    goto :goto_34

    :cond_5c
    iget-object v5, v11, Lcom/android/server/wm/LastDwBounds;->mExternal:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    :goto_34
    if-nez v5, :cond_60

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v19

    move-object/from16 v21, v6

    if-eqz v19, :cond_5d

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDefaultDisplayDesktop()Z

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/server/wm/LastDwBounds;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5d

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    goto :goto_35

    :cond_5d
    const/4 v5, 0x0

    :goto_35
    if-eqz v5, :cond_61

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5f

    if-eqz v9, :cond_5e

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-eqz v6, :cond_5e

    if-eqz v8, :cond_5e

    invoke-virtual {v8, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-nez v6, :cond_5e

    if-eqz v7, :cond_5e

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v7, v5, :cond_5e

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dw-inherit-source-bounds="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_36

    :cond_5e
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :cond_5f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dw-persistent-bounds="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_36
    move/from16 p2, v15

    move-object/from16 v6, v17

    goto :goto_37

    :cond_60
    move-object/from16 v21, v6

    :cond_61
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object/from16 v6, v17

    invoke-virtual {v0, v2, v7, v6, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_62

    const-string/jumbo v5, "dex-metadata-bounds"

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 p2, v15

    goto :goto_37

    :cond_62
    const-string/jumbo v5, "dex-initial-bounds="

    if-eqz v3, :cond_63

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v11

    if-eqz v11, :cond_63

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v6, v3, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    new-instance v11, Ljava/lang/StringBuilder;

    move/from16 p2, v15

    const-string/jumbo v15, "dex-layout-bounds="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_64

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v6, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDwBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_37

    :cond_63
    move/from16 p2, v15

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v6, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDwBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_64
    :goto_37
    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_31

    :cond_65
    move-object/from16 v21, v6

    move/from16 p2, v15

    move-object/from16 v6, v17

    if-eqz v19, :cond_68

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v6, v3, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_67

    if-eqz p2, :cond_66

    const/4 v1, 0x5

    :cond_66
    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "bounds-from-layout="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v11, 0x1

    goto :goto_39

    :cond_67
    const-string/jumbo v5, "empty-window-layout"

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_38

    :cond_68
    const/4 v5, 0x6

    if-ne v1, v5, :cond_69

    if-eqz v4, :cond_69

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_69

    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "multiwindow-activity-options-bounds="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_31

    :cond_69
    if-eqz p2, :cond_6a

    const/4 v11, 0x5

    if-ne v1, v11, :cond_6a

    iput v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_6a
    :goto_38
    const/4 v5, 0x0

    goto/16 :goto_32

    :goto_39
    invoke-virtual {v12}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6c

    invoke-static {v10, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v15

    if-eqz v15, :cond_6b

    goto :goto_3a

    :cond_6b
    move-object/from16 p6, v3

    goto/16 :goto_42

    :cond_6c
    :goto_3a
    if-nez v5, :cond_6b

    iget-object v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v15, :cond_6d

    iget-object v15, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v15, v15, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 p6, v3

    iget v3, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v15, v3, :cond_76

    goto :goto_3b

    :cond_6d
    move-object/from16 p6, v3

    :goto_3b
    iget v3, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v3, :cond_6e

    const/4 v3, 0x1

    goto :goto_3c

    :cond_6e
    const/4 v3, 0x0

    :goto_3c
    if-eqz v3, :cond_71

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x5

    if-eqz p2, :cond_6f

    if-ne v1, v3, :cond_6f

    goto :goto_3d

    :cond_6f
    iget v1, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_3d
    if-eq v1, v3, :cond_70

    const/4 v3, 0x1

    goto :goto_3e

    :cond_70
    const/4 v3, 0x0

    :goto_3e
    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v17, v1

    const-string/jumbo v1, "inherit-"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v1, v17

    goto :goto_3f

    :cond_71
    const/4 v3, 0x0

    :goto_3f
    invoke-static {v10, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v15

    if-eqz v15, :cond_73

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v7, v10, v12, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustPersistFreeformBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "freeform-persist-bounds="

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_72
    :goto_40
    const/4 v15, 0x1

    goto :goto_43

    :cond_73
    iget-object v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_75

    iget v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    move/from16 p2, v3

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v15, v3, :cond_74

    goto :goto_41

    :cond_74
    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x5

    if-ne v1, v3, :cond_72

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "inherit-bounds="

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_40

    :cond_75
    move/from16 p2, v3

    :goto_41
    move/from16 v15, p2

    goto :goto_43

    :cond_76
    :goto_42
    const/4 v15, 0x0

    :goto_43
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "unresizable-desktop"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_77
    :goto_44
    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object v11, v4

    goto/16 :goto_46

    :cond_78
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v3, 0x2

    if-ne v1, v3, :cond_79

    const-string/jumbo v3, "picture-in-picture"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_44

    :cond_79
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual {v0, v6, v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v4, 0x5

    if-eqz v1, :cond_7a

    move-object v1, v6

    iget-object v6, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object/from16 v11, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    move-object v6, v1

    const/4 v1, 0x1

    goto :goto_45

    :cond_7a
    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object/from16 v11, p5

    const/4 v1, 0x0

    :goto_45
    const-string/jumbo v4, "unresizable-freeform"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v4, v1

    const/4 v1, 0x5

    goto :goto_47

    :cond_7b
    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object v11, v4

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const-string/jumbo v1, "unresizable-forced-maximize"

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_46
    const/4 v4, 0x0

    goto :goto_47

    :cond_7c
    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object v11, v4

    const-string/jumbo v4, "non-freeform-task-display-area"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_46

    :goto_47
    if-nez v1, :cond_81

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v15, :cond_81

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_81

    invoke-virtual {v0, v15}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result v17

    if-eqz v17, :cond_7e

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v17

    if-nez v17, :cond_7e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v17

    if-eqz v17, :cond_7d

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move/from16 v19, v4

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    if-ne v1, v4, :cond_7f

    goto :goto_48

    :cond_7d
    move/from16 v19, v4

    :goto_48
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "notMinimizedFreeform-to-display-windowing-mode="

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v4, 0x5

    goto :goto_4b

    :cond_7e
    move/from16 v17, v1

    move/from16 v19, v4

    :cond_7f
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "freeform-task"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v1, v4

    goto :goto_4b

    :cond_80
    :goto_49
    const/4 v4, 0x5

    goto :goto_4a

    :cond_81
    move/from16 v17, v1

    move/from16 v19, v4

    goto :goto_49

    :goto_4a
    move/from16 v1, v17

    :goto_4b
    if-ne v1, v4, :cond_82

    iput v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_4c
    move/from16 v15, p7

    const/4 v4, 0x1

    goto :goto_4e

    :cond_82
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v1, v4, :cond_83

    const/4 v4, 0x0

    goto :goto_4d

    :cond_83
    move v4, v1

    :goto_4d
    iput v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_4c

    :goto_4e
    if-ne v15, v4, :cond_84

    move-object v0, v2

    goto/16 :goto_22

    :cond_84
    if-eqz v1, :cond_85

    move v4, v1

    goto :goto_4f

    :cond_85
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    :goto_4f
    if-eqz v11, :cond_88

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v17

    if-nez v17, :cond_86

    move/from16 v17, v5

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_87

    goto :goto_50

    :cond_86
    move/from16 v17, v5

    :cond_87
    move-object v1, v2

    move-object v2, v0

    move-object v0, v1

    move v14, v4

    move-object v1, v6

    move/from16 v5, v17

    const/16 v16, 0x1

    goto/16 :goto_53

    :cond_88
    move/from16 v17, v5

    :goto_50
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v7

    new-instance v5, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v4, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    iget-object v5, v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v5, :cond_8c

    if-eq v5, v0, :cond_8c

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-ne v1, v5, :cond_89

    const/4 v5, 0x0

    goto :goto_51

    :cond_89
    move v5, v1

    :goto_51
    iput v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p2, :cond_8a

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v6, v3, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/16 v16, 0x1

    xor-int/lit8 v5, v1, 0x1

    move-object v9, v0

    move-object v0, v2

    move v14, v4

    move-object v1, v6

    goto :goto_52

    :cond_8a
    const/16 v16, 0x1

    if-eqz v19, :cond_8b

    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move-object v5, v0

    move-object v0, v2

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move v9, v4

    move v4, v1

    move-object v1, v6

    iget-object v6, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move v14, v9

    move-object v9, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_52

    :cond_8b
    move-object v9, v0

    move-object v0, v2

    move v14, v4

    move-object v1, v6

    move/from16 v5, v17

    goto :goto_52

    :cond_8c
    move-object v9, v0

    move-object v0, v2

    move v14, v4

    move-object v1, v6

    move/from16 v5, v17

    const/16 v16, 0x1

    :goto_52
    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_8d

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "overridden-display-area=["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_53

    :cond_8d
    move-object v2, v9

    :goto_53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "display-area="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    iput-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v6, 0x2

    if-ne v15, v6, :cond_8f

    :cond_8e
    :goto_54
    move v15, v6

    goto/16 :goto_57

    :cond_8f
    if-eqz p6, :cond_91

    const/4 v4, 0x5

    if-ne v14, v4, :cond_8e

    iget-object v1, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v2, :cond_90

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :cond_90
    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    invoke-direct {v4, v10, v10, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    goto :goto_54

    :cond_91
    const/4 v7, 0x0

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_93

    if-eqz v11, :cond_93

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isApplyBigFreeformSize()Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_92

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->scale(F)V

    :cond_92
    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "big-freeform-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_54

    :cond_93
    if-eqz v8, :cond_94

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_94

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    move/from16 v4, v16

    goto :goto_55

    :cond_94
    move v4, v7

    :goto_55
    move-object/from16 v9, p4

    if-eqz p4, :cond_95

    iget-object v8, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_95

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_95

    move/from16 v7, v16

    :cond_95
    const/4 v11, 0x5

    if-ne v14, v11, :cond_97

    if-nez v4, :cond_96

    if-eqz v7, :cond_97

    :cond_96
    if-eqz v7, :cond_98

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_98

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_56

    :cond_97
    if-eqz v9, :cond_98

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_98

    const/4 v11, 0x5

    if-ne v14, v11, :cond_98

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-ne v4, v2, :cond_98

    iget-boolean v4, v9, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v4, :cond_98

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    :cond_98
    :goto_56
    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p7, v4

    move/from16 p6, v5

    move/from16 p5, v14

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto/16 :goto_54

    :goto_57
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v21

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v15
.end method

.method public final resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p2, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    move p2, v2

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p2, p3, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string/jumbo p3, "locked-orientation-from-display="

    invoke-static {p2, p3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locked-orientation-from-bounds="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_4
    if-ne p2, v2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p2, p3, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    move v3, v0

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string/jumbo p1, "default-portrait"

    goto :goto_5

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "orientation-from-bounds="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return v3

    :cond_8
    return p2
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :pswitch_0
    return v1

    :cond_1
    :pswitch_1
    const-string/jumbo p1, "activity-requested-portrait"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return v0

    :cond_2
    :pswitch_2
    const-string/jumbo p1, "activity-requested-landscape"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le v2, p3, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    if-eq p3, p0, :cond_3

    return v0

    :cond_3
    :goto_1
    return v1
.end method
