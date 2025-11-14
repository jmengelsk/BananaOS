.class public abstract Lcom/android/server/wm/DesktopModeBoundsCalculator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

.field public static final DESKTOP_MODE_LANDSCAPE_APP_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.desktop_mode_initial_bounds_scale"

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    const-string/jumbo v0, "persist.wm.debug.desktop_mode_landscape_app_padding"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    return-void
.end method

.method public static calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v6}, Landroid/util/Size;-><init>(II)V

    sget-object v5, Landroid/window/DesktopModeFlags;->ENABLE_WINDOWING_DYNAMIC_INITIAL_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v5}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v5

    if-eqz v5, :cond_21

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v5, v5, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v5, v5, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v5, v5, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-lt v6, v8, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    move v6, v10

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v8

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    if-eq v8, v1, :cond_4

    :cond_3
    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v9

    goto :goto_1

    :cond_5
    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v10

    goto :goto_1

    :cond_6
    move v1, v6

    :goto_1
    if-eq v6, v1, :cond_7

    move v11, v9

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    :goto_2
    iget-object v12, v5, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object v12, v12, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {v12}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result v13

    iget-object v14, v5, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v15, 0x0

    if-eqz v13, :cond_8

    iget v12, v12, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    goto :goto_3

    :cond_8
    iget-object v12, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v12

    cmpl-float v13, v12, v15

    if-eqz v13, :cond_9

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    move v12, v15

    :cond_a
    :goto_3
    invoke-virtual {v5, v0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v13

    invoke-virtual {v5, v0, v11}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDesiredAspectRatio(Lcom/android/server/wm/Task;Z)F

    move-result v16

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v18, v12, v17

    if-ltz v18, :cond_b

    cmpl-float v18, v16, v12

    if-lez v18, :cond_b

    goto :goto_4

    :cond_b
    cmpl-float v12, v13, v17

    if-ltz v12, :cond_c

    cmpg-float v12, v16, v13

    if-gez v12, :cond_c

    move v12, v13

    goto :goto_4

    :cond_c
    move/from16 v12, v16

    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v16, 0x3f000000    # 0.5f

    if-eq v6, v9, :cond_11

    if-eq v6, v10, :cond_d

    goto/16 :goto_7

    :cond_d
    cmpl-float v6, v12, v15

    if-nez v6, :cond_e

    move/from16 v12, v17

    :cond_e
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v6

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_f

    goto :goto_5

    :cond_f
    if-eqz v11, :cond_17

    new-instance v0, Landroid/util/Size;

    div-float/2addr v8, v12

    add-float v8, v8, v16

    float-to-int v1, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    move-object v7, v0

    goto :goto_7

    :cond_10
    :goto_5
    invoke-static {v1, v7, v12, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v7

    goto :goto_7

    :cond_11
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget v8, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    mul-int/2addr v8, v10

    sub-int/2addr v6, v8

    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v8

    invoke-virtual {v5, v0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_12

    goto :goto_6

    :cond_12
    if-eqz v11, :cond_17

    cmpl-float v0, v12, v15

    if-nez v0, :cond_13

    sub-float v0, v13, v17

    div-float v12, v13, v0

    :cond_13
    new-instance v7, Landroid/util/Size;

    div-float/2addr v13, v12

    add-float v13, v13, v16

    float-to-int v0, v13

    invoke-direct {v7, v6, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_7

    :cond_14
    :goto_6
    cmpl-float v0, v12, v15

    if-nez v0, :cond_15

    move/from16 v12, v17

    :cond_15
    if-eqz v11, :cond_16

    new-instance v0, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v0, v6, v5}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v0, v12, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v7

    goto :goto_7

    :cond_16
    invoke-static {v1, v7, v12, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v7

    :cond_17
    :goto_7
    if-eqz p4, :cond_20

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_18

    move v1, v9

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    :goto_8
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_19

    move v3, v9

    goto :goto_9

    :cond_19
    const/4 v3, 0x0

    :goto_9
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ne v4, v5, :cond_1a

    move v4, v9

    goto :goto_a

    :cond_1a
    const/4 v4, 0x0

    :goto_a
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_1b

    goto :goto_b

    :cond_1b
    const/4 v9, 0x0

    :goto_b
    if-eqz v1, :cond_1c

    if-eqz v4, :cond_1c

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_1c
    if-eqz v1, :cond_1d

    if-eqz v9, :cond_1d

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_1d
    if-eqz v3, :cond_1e

    if-eqz v4, :cond_1e

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_1e
    if-eqz v3, :cond_1f

    if-eqz v9, :cond_1f

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_1f
    invoke-static {v7, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-static {v7, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_21
    :goto_c
    invoke-static {v7, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public static maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;
    .locals 2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    int-to-float p0, v0

    div-float/2addr p0, p2

    float-to-int p0, p0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p1

    mul-float/2addr p0, p2

    goto :goto_1

    :cond_1
    int-to-float p0, v0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    if-gt p0, p1, :cond_2

    :goto_0
    move p1, p0

    goto :goto_2

    :cond_2
    int-to-float p0, p1

    div-float/2addr p0, p2

    :goto_1
    float-to-int v0, p0

    :goto_2
    new-instance p0, Landroid/util/Size;

    add-int/2addr v0, p3

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method
