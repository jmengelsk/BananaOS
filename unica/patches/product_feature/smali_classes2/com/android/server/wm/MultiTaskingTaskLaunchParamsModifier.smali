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
    .registers 3

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
    .registers 10

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

    if-eqz v3, :cond_41

    if-eqz p0, :cond_41

    iget-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_41

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v3, 0x5

    if-eq p0, v3, :cond_41

    iget-object p0, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object p1, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-static {p0, v2, p1, p3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_41
    invoke-static {v1, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4b

    const/4 v3, 0x3

    if-ne p0, v3, :cond_56

    :cond_4b
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v5, v5, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_56
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

    const/high16 p2, 0x3f800000  # 1.0f

    cmpl-float v3, p0, p2

    const/high16 v4, 0x3f000000  # 0.5f

    if-eqz v3, :cond_b6

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

    :cond_b6
    cmpl-float p0, v2, p2

    if-eqz p0, :cond_ca

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

    :cond_ca
    if-eq v0, v1, :cond_cf

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    :cond_cf
    return-void
.end method

.method public static boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 10

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

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

    if-ge v2, v3, :cond_20

    move v2, v4

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_2e

    move v5, v4

    goto :goto_2f

    :cond_2e
    move v5, v1

    :goto_2f
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_3c

    move v6, v4

    goto :goto_3d

    :cond_3c
    move v6, v1

    :goto_3d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_49

    move v1, v4

    :cond_49
    if-eqz v2, :cond_4d

    if-nez v5, :cond_59

    :cond_4d
    if-eqz v2, :cond_51

    if-nez v1, :cond_59

    :cond_51
    if-eqz v6, :cond_55

    if-nez v5, :cond_59

    :cond_55
    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    :cond_59
    return v4

    :cond_5a
    return v1
.end method

.method public static canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_31

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    if-ne p0, v0, :cond_31

    :cond_18
    iget-object p0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_31

    iget p0, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V
    .registers 21
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

    if-nez v4, :cond_10

    goto/16 :goto_142

    :cond_10
    invoke-static/range {p2 .. p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_142

    :cond_18
    const/4 v4, 0x0

    move v5, v4

    :goto_1a
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v7, v6

    if-ge v5, v7, :cond_24

    aput v4, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_24
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

    if-ge v5, v7, :cond_3b

    aput v10, v6, v4

    goto :goto_63

    :cond_3b
    if-le v5, v8, :cond_40

    aput v9, v6, v4

    goto :goto_63

    :cond_40
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

    if-lt v5, v7, :cond_5f

    if-le v5, v8, :cond_56

    goto :goto_5f

    :cond_56
    const/16 v5, 0x55

    aput v5, v6, v4

    const/16 v5, 0x33

    aput v5, v6, v11

    goto :goto_63

    :cond_5f
    :goto_5f
    aput v10, v6, v4

    aput v9, v6, v11

    :goto_63
    array-length v5, v6

    move v7, v4

    :goto_65
    if-ge v7, v5, :cond_142

    aget v8, v6, v7

    if-nez v8, :cond_6d

    goto/16 :goto_142

    :cond_6d
    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v11, v4

    :goto_73
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v2, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_116

    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_85

    if-eqz p4, :cond_116

    :cond_85
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    and-int/lit8 v13, v8, 0x7

    if-eq v13, v9, :cond_92

    if-eq v13, v10, :cond_8f

    move v13, v4

    goto :goto_95

    :cond_8f
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    goto :goto_95

    :cond_92
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    neg-int v13, v13

    :goto_95
    and-int/lit8 v14, v8, 0x70

    const/16 v15, 0x30

    if-eq v14, v15, :cond_a4

    const/16 v15, 0x50

    if-eq v14, v15, :cond_a1

    move v14, v4

    goto :goto_a7

    :cond_a1
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    goto :goto_a7

    :cond_a4
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    neg-int v14, v14

    :goto_a7
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v12, v11, 0x1

    const/16 v13, 0xc8

    if-le v11, v13, :cond_113

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

    goto :goto_116

    :cond_113
    move v11, v12

    goto/16 :goto_73

    :cond_116
    :goto_116
    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {v2, v8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_13e

    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_13e

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

    :cond_13e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_65

    :cond_142
    :goto_142
    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 7

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

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x41d80000  # 27.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt p1, v1, :cond_39

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p1, v1, :cond_8b

    :cond_39
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

    if-nez p2, :cond_58

    move v2, v1

    goto :goto_5a

    :cond_58
    iget v2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_5a
    if-nez p2, :cond_5d

    goto :goto_5f

    :cond_5d
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    :goto_5f
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

    if-lt v1, p2, :cond_b1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, p1, :cond_82

    goto :goto_b1

    :cond_82
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    add-int/2addr p1, v1

    invoke-virtual {p3, p0, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8b
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    const/4 p2, 0x0

    if-le p0, p1, :cond_94

    :goto_92
    sub-int/2addr p1, p0

    goto :goto_9c

    :cond_94
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_9b

    goto :goto_92

    :cond_9b
    move p1, p2

    :goto_9c
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v1, :cond_a5

    sub-int p2, v1, p0

    goto :goto_ad

    :cond_a5
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_ad

    sub-int p2, v0, p0

    :cond_ad
    :goto_ad
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_b1
    :goto_b1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_b8

    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    goto :goto_ba

    :cond_b8
    iget p0, v0, Landroid/graphics/Rect;->left:I

    :goto_ba
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    add-int/2addr p1, v0

    invoke-virtual {p3, p0, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

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
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_13

    iget-object v2, p2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_11a

    :cond_13
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v2, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget v3, Lcom/android/server/wm/DexController;->$r8$clinit:I

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move-object v3, v1

    :goto_23
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2a

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_2b

    :cond_2a
    move-object v2, v1

    :goto_2b
    if-nez v3, :cond_32

    if-nez v2, :cond_32

    :cond_2f
    move-object v4, v1

    goto/16 :goto_b5

    :cond_32
    const-string/jumbo v4, "com.samsung.android.dex.launchheight"

    const-string/jumbo v5, "com.samsung.android.dex.launchwidth"

    if-eqz v3, :cond_4f

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4f

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_6b

    :cond_4f
    if-eqz v2, :cond_69

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_6b

    :cond_69
    move-object v2, v1

    move-object v3, v2

    :goto_6b
    if-eqz v2, :cond_9e

    if-eqz v3, :cond_9e

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_7e

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_86

    :cond_7e
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_85

    check-cast v2, Ljava/lang/String;

    goto :goto_86

    :cond_85
    move-object v2, v1

    :goto_86
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_95

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a0

    :cond_95
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9c

    check-cast v3, Ljava/lang/String;

    goto :goto_a0

    :cond_9c
    move-object v3, v1

    goto :goto_a0

    :cond_9e
    move-object v2, v1

    move-object v3, v2

    :goto_a0
    if-eqz v2, :cond_2f

    if-eqz v3, :cond_2f

    new-instance v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    move-result-object v2

    iput-object v2, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    invoke-static {v3}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    move-result-object v2

    iput-object v2, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    :goto_b5
    iget-object v2, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_11a

    iget-object v3, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    iget-object v4, v4, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    iget v5, v3, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-nez v5, :cond_d3

    iget v5, v4, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-nez v5, :cond_d3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_11a

    :cond_d3
    iget-object v5, p2, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_de

    goto :goto_11a

    :cond_de
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

    :cond_11a
    :goto_11a
    if-eqz v1, :cond_15d

    iget p2, v1, Landroid/graphics/Point;->x:I

    if-nez p2, :cond_12e

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_12e

    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    const-string/jumbo p1, "dex-fullscreen-metadata-bounds"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_15b

    :cond_12e
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, v0, v0, p2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p2, :cond_143

    iget v0, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_143

    iget p2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_156

    :cond_143
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    const/high16 v6, -0x40800000  # -1.0f

    const/16 v7, 0x11

    const/high16 v4, -0x40800000  # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_156
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :goto_15b
    const/4 p0, 0x1

    return p0

    :cond_15d
    return v0
.end method

.method public final getInitialDwBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 14

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

    if-nez v3, :cond_39

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v3

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    invoke-static {p1, v2, v0, v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->calculateDesktopCompatInitialBounds(Landroid/graphics/Rect;IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_36
    :goto_36
    move v3, v0

    move v5, v1

    goto :goto_6c

    :cond_39
    const/high16 v3, 0x3f000000  # 0.5f

    if-le v0, v1, :cond_55

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

    if-ne v2, v4, :cond_36

    if-lt v0, v1, :cond_36

    int-to-float v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_36

    :cond_55
    int-to-float v0, v0

    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowUtils;->DEX_DEFAULT_SIZE_RATIO_FOR_NEW_DEX:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v1, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-nez v2, :cond_36

    if-gt v0, v1, :cond_36

    int-to-float v2, v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v2, v1

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_36

    :goto_6c
    const-string/jumbo v0, "from-default-size"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_7e

    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ne v1, v3, :cond_7e

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-eq v0, v5, :cond_8d

    :cond_7e
    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    const/high16 v6, -0x40800000  # -1.0f

    const/16 v7, 0x11

    const/high16 v4, -0x40800000  # -1.0f

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_8d
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 19

    move-object/from16 v3, p3

    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v7, v0, 0x70

    and-int/lit8 v8, v0, 0x7

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_16

    if-nez v7, :cond_16

    if-nez v8, :cond_16

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_16
    iget-object v9, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v9}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    const/high16 v12, 0x3f800000  # 1.0f

    const/4 v13, 0x0

    if-nez v0, :cond_51

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result p1

    move-object/from16 v6, p4

    goto :goto_7f

    :cond_3d
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

    goto :goto_7f

    :cond_51
    move-object/from16 v6, p4

    iget p0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ltz p0, :cond_5a

    if-ge p0, v10, :cond_5a

    goto :goto_69

    :cond_5a
    iget p0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float p1, p0, v13

    if-lez p1, :cond_68

    cmpg-float p1, p0, v12

    if-gez p1, :cond_68

    int-to-float p1, v10

    mul-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_69

    :cond_68
    move p0, v10

    :goto_69
    iget p1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ltz p1, :cond_70

    if-ge p1, v11, :cond_70

    goto :goto_7f

    :cond_70
    iget p1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v0, p1, v13

    if-lez v0, :cond_7e

    cmpg-float v0, p1, v12

    if-gez v0, :cond_7e

    int-to-float v0, v11

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_7f

    :cond_7e
    move p1, v11

    :goto_7f
    const/4 v0, 0x3

    const/high16 v1, 0x3f000000  # 0.5f

    if-eq v8, v0, :cond_8b

    const/4 v0, 0x5

    if-eq v8, v0, :cond_89

    move v0, v1

    goto :goto_8c

    :cond_89
    move v0, v12

    goto :goto_8c

    :cond_8b
    move v0, v13

    :goto_8c
    const/16 v2, 0x30

    if-eq v7, v2, :cond_96

    const/16 v2, 0x50

    if-eq v7, v2, :cond_97

    move v12, v1

    goto :goto_97

    :cond_96
    move v12, v13

    :cond_97
    :goto_97
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
    .registers 11

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p4, v0, :cond_1d

    if-eq p4, v1, :cond_1d

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

    :cond_1d
    invoke-virtual {p0, p6, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I

    move-result p1

    if-eq p1, v1, :cond_3f

    if-nez p1, :cond_26

    goto :goto_3f

    :cond_26
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

    :cond_3f
    :goto_3f
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_53
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

    if-nez p5, :cond_af

    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_85

    goto :goto_af

    :cond_85
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

    goto :goto_122

    :cond_af
    :goto_af
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-le p3, p4, :cond_ba

    move v1, v3

    :cond_ba
    if-ne p1, v1, :cond_cf

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "freeform-size-orientation-match="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_122

    :cond_cf
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_105

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

    goto :goto_122

    :cond_105
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

    :goto_122
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
    .registers 32

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

    if-eqz v7, :cond_3e

    invoke-virtual {v7, v14, v15}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_39

    goto :goto_3e

    :cond_39
    invoke-virtual {v7, v14, v15}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_3f

    :cond_3e
    :goto_3e
    move-object v3, v8

    :goto_3f
    const-string v4, "ActivityTaskManager"

    if-nez v3, :cond_49

    if-eqz p7, :cond_49

    move-object/from16 v21, v4

    goto/16 :goto_cf6

    :cond_49
    if-eqz p5, :cond_50

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v6

    goto :goto_51

    :cond_50
    const/4 v6, 0x0

    :goto_51
    if-eqz v6, :cond_70

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

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    :goto_71
    iget-object v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, -0x1

    if-nez v6, :cond_b3

    if-eqz p5, :cond_b3

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v15

    if-eq v15, v5, :cond_b3

    move-object/from16 v17, v6

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    if-ne v6, v5, :cond_88

    const/4 v6, 0x0

    goto :goto_8c

    :cond_88
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    :goto_8c
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_b5

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

    goto :goto_b7

    :cond_b3
    move-object/from16 v17, v6

    :cond_b5
    move-object/from16 v6, v17

    :goto_b7
    if-nez v6, :cond_e7

    if-eqz p5, :cond_c1

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    :goto_bf
    const/4 v15, -0x1

    goto :goto_c3

    :cond_c1
    const/4 v5, -0x1

    goto :goto_bf

    :goto_c3
    if-eq v5, v15, :cond_e7

    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    if-eqz v15, :cond_e7

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

    :cond_e7
    if-nez v6, :cond_12a

    if-eqz v9, :cond_12a

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v5, :cond_12a

    iget-object v6, v9, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v6, :cond_106

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-area-from-no-display-source="

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_12a

    :cond_106
    iget v5, v9, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    if-eqz v15, :cond_12a

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

    :cond_12a
    :goto_12a
    if-eqz v7, :cond_1a5

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_1a5

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_1a5

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v5

    if-eqz v5, :cond_1a5

    if-eqz p5, :cond_14a

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->useExtendedDesktopModeLaunchPolicy()Z

    move-result v5

    if-nez v5, :cond_150

    :cond_14a
    if-eqz v9, :cond_1a5

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mExtendedDesktopModeLaunchPolicyAppliedAliasActivity:Z

    if-eqz v5, :cond_1a5

    :cond_150
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v5}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v17

    if-eqz v17, :cond_1a5

    iget-boolean v5, v5, Lcom/android/server/wm/DexController;->mInDesktopWindowing:Z

    if-eqz v5, :cond_1a5

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

    if-nez v11, :cond_187

    iget v5, v5, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_1a7

    if-eqz v3, :cond_1a7

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    :cond_187
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

    goto/16 :goto_501

    :cond_1a5
    move-object/from16 v17, v3

    :cond_1a7
    const-string/jumbo v3, "display-from-task="

    if-eqz v6, :cond_1c1

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v11, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v5, v11}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v5

    if-eqz v5, :cond_1bb

    goto :goto_1c1

    :cond_1bb
    move-object/from16 v20, v4

    move-object/from16 v19, v6

    goto/16 :goto_2bd

    :cond_1c1
    :goto_1c1
    if-nez v6, :cond_1c5

    const/4 v5, -0x1

    goto :goto_1c9

    :cond_1c5
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    :goto_1c9
    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v11}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v11

    if-eqz v11, :cond_23c

    const/4 v15, -0x1

    if-ne v5, v15, :cond_1ee

    if-eqz v9, :cond_1ee

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-from-source="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_1ee
    const/4 v15, -0x1

    if-ne v5, v15, :cond_20c

    if-eqz v7, :cond_20c

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v11

    if-eqz v11, :cond_20c

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_20c
    const/4 v15, -0x1

    if-ne v5, v15, :cond_23d

    if-eqz v8, :cond_23d

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v11

    if-nez v11, :cond_23d

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v11

    if-nez v11, :cond_23d

    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    if-eqz v11, :cond_23d

    iget v5, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "display-from-focused-stack="

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_23d

    :cond_23c
    const/4 v5, -0x1

    :cond_23d
    :goto_23d
    iget-object v11, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_24a

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    goto :goto_24b

    :cond_24a
    const/4 v5, 0x0

    :goto_24b
    const-string/jumbo v11, "display-from-dex-policy"

    if-eqz p5, :cond_2a3

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v15

    move-object/from16 v19, v6

    const/4 v6, -0x1

    if-eq v15, v6, :cond_2a0

    iget-object v6, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v15

    move-object/from16 v20, v4

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v15, v4, v10, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_28a

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_28a

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

    goto :goto_2bf

    :cond_28a
    if-eqz v5, :cond_2bd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_2bb

    :cond_2a0
    :goto_2a0
    move-object/from16 v20, v4

    goto :goto_2a6

    :cond_2a3
    move-object/from16 v19, v6

    goto :goto_2a0

    :goto_2a6
    if-eqz v5, :cond_2bd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_2bb
    move-object v6, v5

    goto :goto_2bf

    :cond_2bd
    :goto_2bd
    move-object/from16 v6, v19

    :goto_2bf
    if-eqz v7, :cond_2cf

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_2ca

    goto :goto_2cf

    :cond_2ca
    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    goto :goto_2d0

    :cond_2cf
    :goto_2cf
    move-object v10, v8

    :goto_2d0
    if-nez v6, :cond_336

    if-eqz v10, :cond_336

    iget-object v4, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    invoke-virtual {v4}, Lcom/android/server/wm/RemoteAppController;->isRemoteAppDisplayRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_336

    if-eqz v9, :cond_2e5

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_2e6

    :cond_2e5
    const/4 v4, 0x0

    :goto_2e6
    if-nez v4, :cond_2f6

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_2f6

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    :cond_2f6
    if-eqz v4, :cond_335

    iget-object v5, v4, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_302

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v6, :cond_302

    const/4 v6, 0x1

    goto :goto_303

    :cond_302
    const/4 v6, 0x0

    :goto_303
    if-eqz v5, :cond_30d

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v11

    if-eqz v11, :cond_30d

    const/4 v11, 0x1

    goto :goto_30e

    :cond_30d
    const/4 v11, 0x0

    :goto_30e
    if-nez v6, :cond_321

    if-eqz v11, :cond_31f

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v6

    if-nez v6, :cond_321

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v6

    if-eqz v6, :cond_31f

    goto :goto_321

    :cond_31f
    const/4 v4, 0x0

    goto :goto_335

    :cond_321
    :goto_321
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "display-from-remote-app-policy="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_335
    :goto_335
    move-object v6, v4

    :cond_336
    if-nez v6, :cond_350

    if-eqz v9, :cond_350

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-area-from-source="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_350
    if-nez v6, :cond_359

    if-eqz v7, :cond_359

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_35a

    :cond_359
    const/4 v4, 0x0

    :goto_35a
    if-eqz v4, :cond_3b8

    sget-boolean v5, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v5, :cond_39f

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v5, :cond_39f

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v5, :cond_39f

    if-eqz v10, :cond_39d

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v5

    if-nez v5, :cond_39d

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v6, :cond_39d

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

    goto :goto_39e

    :cond_39d
    const/4 v10, 0x0

    :goto_39e
    move-object v6, v10

    :cond_39f
    if-nez v6, :cond_3b8

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

    :cond_3b8
    if-nez v6, :cond_3de

    if-eqz p5, :cond_3de

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v3

    iget-object v4, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_3de

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "display-from-caller="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_3de
    if-nez v6, :cond_3f6

    if-eqz v12, :cond_3f6

    iget-object v6, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-from-current-params="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_3f6
    if-eqz v6, :cond_41e

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v3, :cond_41e

    iget-object v3, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v3, :cond_41e

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

    :cond_41e
    if-eqz v6, :cond_44e

    if-eqz v8, :cond_44e

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_44e

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_44e

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

    :cond_44e
    if-eqz v6, :cond_453

    move-object v2, v6

    goto/16 :goto_501

    :cond_453
    if-eqz v8, :cond_4a6

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v5, v8, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_47b

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_47b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-for-launching-record="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_479
    move-object v2, v3

    goto :goto_4e7

    :cond_47b
    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_4a6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_4a6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-for-record="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_479

    :cond_4a6
    if-eqz v2, :cond_4cd

    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_4cd

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_4cd

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "display-area-source-process="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_4e7

    :cond_4cd
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

    :goto_4e7
    iget-object v3, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldChooseDefaultTaskDisplayArea(I)Z

    move-result v3

    if-eqz v3, :cond_501

    iget-object v2, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    :cond_501
    :goto_501
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

    if-eqz v1, :cond_548

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    if-eqz v8, :cond_543

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_544

    :cond_543
    const/4 v5, 0x0

    :goto_544
    invoke-static {v3, v4, v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->recalculateWindowLayout(FFLandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    :cond_548
    move-object v3, v1

    if-eqz v8, :cond_5ab

    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_5ab

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v15, -0x1

    if-eq v1, v15, :cond_5a9

    const/16 v4, -0x2710

    if-ne v1, v4, :cond_56a

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_56a

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v5, 0x0

    goto :goto_572

    :cond_56a
    iget-object v4, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_572
    if-eqz v1, :cond_579

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_57a

    :cond_579
    move-object v1, v5

    :goto_57a
    if-eqz v1, :cond_5ad

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

    goto :goto_5ad

    :cond_5a9
    const/4 v5, 0x0

    goto :goto_5ad

    :cond_5ab
    const/4 v5, 0x0

    const/4 v15, -0x1

    :cond_5ad
    :goto_5ad
    if-nez p7, :cond_5b4

    move-object/from16 v21, v20

    :goto_5b1
    const/4 v15, 0x2

    goto/16 :goto_cf6

    :cond_5b4
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

    if-eqz p5, :cond_5dd

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    goto :goto_5de

    :cond_5dd
    const/4 v1, 0x0

    :goto_5de
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v4

    if-nez v4, :cond_5ea

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v4

    if-eqz v4, :cond_5eb

    :cond_5ea
    const/4 v1, 0x1

    :cond_5eb
    const/4 v11, 0x5

    if-nez v1, :cond_657

    if-eqz v9, :cond_657

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v4, :cond_5f5

    goto :goto_657

    :cond_5f5
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_5fc

    goto :goto_657

    :cond_5fc
    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_608

    if-eq v4, v11, :cond_608

    goto :goto_657

    :cond_608
    if-ne v4, v11, :cond_620

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_620

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_620

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_620

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_620

    goto :goto_657

    :cond_620
    iget v4, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    if-ne v4, v5, :cond_657

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_63b

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_63b

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    goto :goto_641

    :cond_63b
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    :goto_641
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "inherit-from-source="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_657
    :goto_657
    if-nez v1, :cond_68f

    if-eqz v7, :cond_68f

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-ne v4, v2, :cond_68f

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-nez v4, :cond_68f

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_675

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v4, :cond_68f

    :cond_675
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

    :cond_68f
    if-eqz v7, :cond_699

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    move-result v4

    if-eqz v4, :cond_699

    const/4 v4, 0x0

    goto :goto_69d

    :cond_699
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v4

    :goto_69d
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v5, :cond_6b0

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6ac

    if-eqz v1, :cond_6ae

    :cond_6ac
    if-ne v1, v6, :cond_6b0

    :cond_6ae
    const/4 v5, 0x1

    goto :goto_6b1

    :cond_6b0
    const/4 v5, 0x0

    :goto_6b1
    const/4 v6, 0x6

    if-eqz p5, :cond_6cd

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v18

    if-eqz v18, :cond_6cd

    if-eq v1, v6, :cond_6cd

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_6cd

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v18

    if-nez v18, :cond_6cd

    goto :goto_6dd

    :cond_6cd
    iget-object v15, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v15, :cond_6df

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v15

    if-eqz v15, :cond_6db

    if-eqz v1, :cond_6dd

    :cond_6db
    if-ne v1, v11, :cond_6df

    :cond_6dd
    :goto_6dd
    const/4 v15, 0x1

    goto :goto_6e0

    :cond_6df
    const/4 v15, 0x0

    :goto_6e0
    if-eqz v3, :cond_6ed

    if-nez v15, :cond_6e6

    if-eqz v5, :cond_6ed

    :cond_6e6
    const/16 v19, 0x1

    :goto_6e8
    move/from16 p2, v4

    move-object/from16 v4, p5

    goto :goto_6f0

    :cond_6ed
    const/16 v19, 0x0

    goto :goto_6e8

    :goto_6f0
    invoke-virtual {v14, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v21

    if-eqz v21, :cond_706

    if-nez v15, :cond_709

    iget-object v6, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v6, :cond_702

    const/4 v6, 0x2

    if-ne v1, v6, :cond_703

    goto :goto_70a

    :cond_702
    const/4 v6, 0x2

    :cond_703
    if-eqz v5, :cond_706

    goto :goto_70a

    :cond_706
    move-object/from16 v6, v20

    goto :goto_758

    :cond_709
    const/4 v6, 0x2

    :goto_70a
    if-eq v1, v6, :cond_70e

    :goto_70c
    move v1, v11

    goto :goto_713

    :cond_70e
    if-nez v1, :cond_713

    if-eqz v15, :cond_713

    goto :goto_70c

    :cond_713
    :goto_713
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v15, :cond_72f

    if-eqz v5, :cond_72f

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v6}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_72f

    const-string/jumbo v5, "launchBounds.top is smaller than stableRect.top."

    move-object/from16 v6, v20

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_731

    :cond_72f
    move-object/from16 v6, v20

    :goto_731
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

    :goto_74e
    move-object/from16 v21, v6

    move/from16 p2, v15

    move-object/from16 v6, v17

    :goto_754
    const/4 v5, 0x1

    :goto_755
    const/4 v11, 0x0

    goto/16 :goto_934

    :goto_758
    if-eqz v9, :cond_79c

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v5, :cond_79c

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityRecord;->mIsUnhandledDropLaunch:Z

    if-eqz v5, :cond_79c

    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v11, 0x5

    if-eq v5, v11, :cond_774

    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_79c

    :cond_774
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v11, 0x5

    if-ne v5, v11, :cond_786

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_786
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "inherit-unhandled-drop-bounds="

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v1, v5

    goto :goto_74e

    :cond_79c
    if-eqz p2, :cond_8bc

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDefaultDisplayDesktop()Z

    move-result v5

    iget-object v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDwPersistBounds:Lcom/android/server/wm/LastDwBounds;

    if-eqz v5, :cond_7b4

    iget-object v5, v11, Lcom/android/server/wm/LastDwBounds;->mDefault:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    goto :goto_7ba

    :cond_7b4
    iget-object v5, v11, Lcom/android/server/wm/LastDwBounds;->mExternal:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    :goto_7ba
    if-nez v5, :cond_841

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v19

    move-object/from16 v21, v6

    if-eqz v19, :cond_7db

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDefaultDisplayDesktop()Z

    move-result v6

    invoke-virtual {v11, v6}, Lcom/android/server/wm/LastDwBounds;->getBounds(Z)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_7db

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7db

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    goto :goto_7dc

    :cond_7db
    const/4 v5, 0x0

    :goto_7dc
    if-eqz v5, :cond_843

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_828

    if-eqz v9, :cond_821

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-eqz v6, :cond_821

    if-eqz v8, :cond_821

    invoke-virtual {v8, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-nez v6, :cond_821

    if-eqz v7, :cond_821

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_821

    iget-object v5, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v7, v5, :cond_821

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

    goto :goto_83c

    :cond_821
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :cond_828
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dw-persistent-bounds="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_83c
    move/from16 p2, v15

    move-object/from16 v6, v17

    goto :goto_8b3

    :cond_841
    move-object/from16 v21, v6

    :cond_843
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object/from16 v6, v17

    invoke-virtual {v0, v2, v7, v6, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getDexMetaDataBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_856

    const-string/jumbo v5, "dex-metadata-bounds"

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 p2, v15

    goto :goto_8b3

    :cond_856
    const-string/jumbo v5, "dex-initial-bounds="

    if-eqz v3, :cond_89b

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v11

    if-eqz v11, :cond_89b

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

    if-eqz v11, :cond_8b3

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v6, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getInitialDwBounds(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_8b3

    :cond_89b
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

    :cond_8b3
    :goto_8b3
    iget-object v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_754

    :cond_8bc
    move-object/from16 v21, v6

    move/from16 p2, v15

    move-object/from16 v6, v17

    if-eqz v19, :cond_900

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v6, v3, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8f9

    if-eqz p2, :cond_8db

    const/4 v1, 0x5

    :cond_8db
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

    goto :goto_934

    :cond_8f9
    const-string/jumbo v5, "empty-window-layout"

    invoke-virtual {v0, v5}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_931

    :cond_900
    const/4 v5, 0x6

    if-ne v1, v5, :cond_92a

    if-eqz v4, :cond_92a

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_92a

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

    goto/16 :goto_754

    :cond_92a
    if-eqz p2, :cond_931

    const/4 v11, 0x5

    if-ne v1, v11, :cond_931

    iput v11, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_931
    :goto_931
    const/4 v5, 0x0

    goto/16 :goto_755

    :goto_934
    invoke-virtual {v12}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_945

    invoke-static {v10, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v15

    if-eqz v15, :cond_941

    goto :goto_945

    :cond_941
    move-object/from16 p6, v3

    goto/16 :goto_9ea

    :cond_945
    :goto_945
    if-nez v5, :cond_941

    iget-object v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v15, :cond_956

    iget-object v15, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v15, v15, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object/from16 p6, v3

    iget v3, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v15, v3, :cond_9ea

    goto :goto_958

    :cond_956
    move-object/from16 p6, v3

    :goto_958
    iget v3, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v3, :cond_95e

    const/4 v3, 0x1

    goto :goto_95f

    :cond_95e
    const/4 v3, 0x0

    :goto_95f
    if-eqz v3, :cond_98f

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_98f

    const/4 v3, 0x5

    if-eqz p2, :cond_96d

    if-ne v1, v3, :cond_96d

    goto :goto_96f

    :cond_96d
    iget v1, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_96f
    if-eq v1, v3, :cond_973

    const/4 v3, 0x1

    goto :goto_974

    :cond_973
    const/4 v3, 0x0

    :goto_974
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

    goto :goto_990

    :cond_98f
    const/4 v3, 0x0

    :goto_990
    invoke-static {v10, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->canApplyFreeformPersistentBounds(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v15

    if-eqz v15, :cond_9b1

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

    :cond_9af
    :goto_9af
    const/4 v15, 0x1

    goto :goto_9eb

    :cond_9b1
    iget-object v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9e5

    iget v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    move/from16 p2, v3

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v15, v3, :cond_9c6

    goto :goto_9e7

    :cond_9c6
    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v15, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x5

    if-ne v1, v3, :cond_9af

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "inherit-bounds="

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_9af

    :cond_9e5
    move/from16 p2, v3

    :goto_9e7
    move/from16 v15, p2

    goto :goto_9eb

    :cond_9ea
    :goto_9ea
    const/4 v15, 0x0

    :goto_9eb
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_a0c

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_a0c

    const-string/jumbo v3, "unresizable-desktop"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_9fd
    :goto_9fd
    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object v11, v4

    goto/16 :goto_a77

    :cond_a0c
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_a79

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a1c

    const-string/jumbo v3, "picture-in-picture"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_9fd

    :cond_a1c
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_9fd

    invoke-virtual {v0, v6, v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_a5e

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v4, 0x5

    if-eqz v1, :cond_a46

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

    goto :goto_a55

    :cond_a46
    move-object/from16 p2, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object/from16 v3, p6

    move/from16 p2, v11

    move/from16 p6, v15

    const/4 v15, -0x1

    move-object/from16 v11, p5

    const/4 v1, 0x0

    :goto_a55
    const-string/jumbo v4, "unresizable-freeform"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v4, v1

    const/4 v1, 0x5

    goto :goto_a8d

    :cond_a5e
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

    :goto_a77
    const/4 v4, 0x0

    goto :goto_a8d

    :cond_a79
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

    goto :goto_a77

    :goto_a8d
    if-nez v1, :cond_b03

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-eqz v15, :cond_b03

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_b03

    invoke-virtual {v0, v15}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result v17

    if-eqz v17, :cond_ada

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v17

    if-nez v17, :cond_ada

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v17

    if-eqz v17, :cond_abc

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move/from16 v19, v4

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    if-ne v1, v4, :cond_ade

    goto :goto_abe

    :cond_abc
    move/from16 v19, v4

    :goto_abe
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

    goto :goto_b0a

    :cond_ada
    move/from16 v17, v1

    move/from16 v19, v4

    :cond_ade
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b01

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

    goto :goto_b0a

    :cond_b01
    :goto_b01
    const/4 v4, 0x5

    goto :goto_b08

    :cond_b03
    move/from16 v17, v1

    move/from16 v19, v4

    goto :goto_b01

    :goto_b08
    move/from16 v1, v17

    :goto_b0a
    if-ne v1, v4, :cond_b12

    iput v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_b0e
    move/from16 v15, p7

    const/4 v4, 0x1

    goto :goto_b1e

    :cond_b12
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v1, v4, :cond_b1a

    const/4 v4, 0x0

    goto :goto_b1b

    :cond_b1a
    move v4, v1

    :goto_b1b
    iput v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_b0e

    :goto_b1e
    if-ne v15, v4, :cond_b23

    move-object v0, v2

    goto/16 :goto_5b1

    :cond_b23
    if-eqz v1, :cond_b27

    move v4, v1

    goto :goto_b2b

    :cond_b27
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    :goto_b2b
    if-eqz v11, :cond_b4a

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v17

    if-nez v17, :cond_b3d

    move/from16 v17, v5

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_b3f

    goto :goto_b4c

    :cond_b3d
    move/from16 v17, v5

    :cond_b3f
    move-object v1, v2

    move-object v2, v0

    move-object v0, v1

    move v14, v4

    move-object v1, v6

    move/from16 v5, v17

    const/16 v16, 0x1

    goto/16 :goto_beb

    :cond_b4a
    move/from16 v17, v5

    :goto_b4c
    iget-object v5, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v7

    new-instance v5, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v4, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    iget-object v5, v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v5, :cond_bac

    if-eq v5, v0, :cond_bac

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-ne v1, v5, :cond_b6b

    const/4 v5, 0x0

    goto :goto_b6c

    :cond_b6b
    move v5, v1

    :goto_b6c
    iput v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz p2, :cond_b8b

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

    goto :goto_bb4

    :cond_b8b
    const/16 v16, 0x1

    if-eqz v19, :cond_ba5

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

    goto :goto_bb4

    :cond_ba5
    move-object v9, v0

    move-object v0, v2

    move v14, v4

    move-object v1, v6

    move/from16 v5, v17

    goto :goto_bb4

    :cond_bac
    move-object v9, v0

    move-object v0, v2

    move v14, v4

    move-object v1, v6

    move/from16 v5, v17

    const/16 v16, 0x1

    :goto_bb4
    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_bea

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

    goto :goto_beb

    :cond_bea
    move-object v2, v9

    :goto_beb
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "display-area="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    iput-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v6, 0x2

    if-ne v15, v6, :cond_c05

    :cond_c02
    :goto_c02
    move v15, v6

    goto/16 :goto_cf6

    :cond_c05
    if-eqz p6, :cond_c2c

    const/4 v4, 0x5

    if-ne v14, v4, :cond_c02

    iget-object v1, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v2, :cond_c13

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    :cond_c13
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

    goto :goto_c02

    :cond_c2c
    const/4 v7, 0x0

    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_c6e

    if-eqz v11, :cond_c6e

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isApplyBigFreeformSize()Z

    move-result v4

    if-eqz v4, :cond_c6e

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c6e

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_c54

    const v1, 0x3f733333  # 0.95f

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->scale(F)V

    :cond_c54
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

    goto :goto_c02

    :cond_c6e
    if-eqz v8, :cond_c81

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_c81

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c81

    move/from16 v4, v16

    goto :goto_c82

    :cond_c81
    move v4, v7

    :goto_c82
    move-object/from16 v9, p4

    if-eqz p4, :cond_c96

    iget-object v8, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_c96

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c96

    move/from16 v7, v16

    :cond_c96
    const/4 v11, 0x5

    if-ne v14, v11, :cond_cb5

    if-nez v4, :cond_c9d

    if-eqz v7, :cond_cb5

    :cond_c9d
    if-eqz v7, :cond_ce1

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_ce1

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_ce1

    :cond_cb5
    if-eqz v9, :cond_ce1

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_ce1

    const/4 v11, 0x5

    if-ne v14, v11, :cond_ce1

    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ce1

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-ne v4, v2, :cond_ce1

    iget-boolean v4, v9, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v4, :cond_ce1

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2, v7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    :cond_ce1
    :goto_ce1
    iget-object v4, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p7, v4

    move/from16 p6, v5

    move/from16 p5, v14

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto/16 :goto_c02

    :goto_cf6
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v21

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v15
.end method

.method public final resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I
    .registers 8

    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0xe

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p2, v1, :cond_4d

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v3, :cond_20

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1e

    move p2, v2

    goto :goto_2d

    :cond_1e
    :goto_1e
    move p2, v0

    goto :goto_2d

    :cond_20
    move p2, v3

    goto :goto_2d

    :cond_22
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p2, p3, :cond_20

    goto :goto_1e

    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3b

    const-string/jumbo p3, "locked-orientation-from-display="

    invoke-static {p2, p3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4a

    :cond_3b
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locked-orientation-from-bounds="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_4a
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_4d
    if-ne p2, v2, :cond_80

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_56

    goto :goto_63

    :cond_56
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le p2, p3, :cond_61

    goto :goto_62

    :cond_61
    move v0, v3

    :goto_62
    move v3, v0

    :goto_63
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6d

    const-string/jumbo p1, "default-portrait"

    goto :goto_7c

    :cond_6d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "orientation-from-bounds="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return v3

    :cond_80
    return p2
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/16 v1, 0xb

    if-eq p1, v1, :cond_22

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1a

    packed-switch p1, :pswitch_data_2a

    const/4 p0, -0x1

    return p0

    :cond_1a
    :pswitch_1a  #0x5
    return v1

    :cond_1b
    :pswitch_1b  #0x7, 0x9
    const-string/jumbo p1, "activity-requested-portrait"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return v0

    :cond_22
    :pswitch_22  #0x6, 0x8
    const-string/jumbo p1, "activity-requested-landscape"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :pswitch_data_2a
    .packed-switch 0x5
        :pswitch_1a  #00000005
        :pswitch_22  #00000006
        :pswitch_1b  #00000007
        :pswitch_22  #00000008
        :pswitch_1b  #00000009
    .end packed-switch
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_b

    goto :goto_41

    :cond_b
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p3, :cond_41

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p3

    if-eqz p3, :cond_41

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p3

    if-eqz p3, :cond_1e

    goto :goto_41

    :cond_1e
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-le v2, p3, :cond_2e

    move p3, v1

    goto :goto_2f

    :cond_2e
    move p3, v0

    :goto_2f
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_41

    if-eq p3, p0, :cond_41

    return v0

    :cond_41
    :goto_41
    return v1
.end method
