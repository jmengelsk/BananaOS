.class public abstract Lcom/android/server/wm/PopOverBoundsCalculator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-object v0, v0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/PopOverBoundsCalculator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_2b

    :cond_27
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    :goto_2b
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v4

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_47

    :cond_3c
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_47
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_85

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, v7, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightId()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-nez v1, :cond_81

    iget v1, v6, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    if-ne v1, v9, :cond_7f

    goto :goto_81

    :cond_7f
    div-int/lit8 p0, p0, 0x2

    :cond_81
    :goto_81
    add-int/2addr p0, v3

    iput p0, v2, Landroid/graphics/Rect;->top:I

    goto :goto_ec

    :cond_85
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v7, v7, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v7}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v10, v10, Lcom/android/server/wm/WindowManagerService;->mOverrideConfigTypes:I

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Insets;->top:I

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v8, v10, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-object v7, v7, Lcom/android/server/wm/PopOverState;->mCalculatedSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result p0

    invoke-virtual {v1, v3, p0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz v3, :cond_bb

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz v1, :cond_bb

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_bb
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    sub-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :goto_ec
    iget p0, v2, Landroid/graphics/Rect;->top:I

    const/high16 v1, 0x41400000  # 12.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int/2addr p0, v1

    iput p0, v2, Landroid/graphics/Rect;->top:I

    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, 0x41800000  # 16.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr p0, v3

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    iget p0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, v2, Landroid/graphics/Rect;->left:I

    iget p0, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v1

    iput p0, v2, Landroid/graphics/Rect;->right:I

    iget-object p0, v0, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    aget p0, p0, v4

    int-to-float p0, p0

    mul-float/2addr p0, v5

    float-to-int p0, p0

    iget-object v1, v0, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v1, v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v3, v0, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v3, v3, v4

    iget-object v0, v0, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    and-int/lit8 v6, v3, 0x70

    const/16 v7, 0x10

    const/4 v8, 0x2

    if-eq v6, v7, :cond_160

    const/16 v7, 0x20

    if-eq v6, v7, :cond_14e

    const/16 v4, 0x40

    if-eq v6, v4, :cond_13d

    goto :goto_172

    :cond_13d
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v8

    add-int/2addr v6, v4

    div-int/lit8 v4, p0, 0x2

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p0

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_172

    :cond_14e
    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, p0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_172

    add-int/2addr p0, v4

    iput p0, v5, Landroid/graphics/Rect;->right:I

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_172

    :cond_160
    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p0

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ge v4, v6, :cond_172

    sub-int p0, v4, p0

    iput p0, v5, Landroid/graphics/Rect;->left:I

    iput v4, v5, Landroid/graphics/Rect;->right:I

    :cond_172
    :goto_172
    and-int/lit8 p0, v3, 0x7

    if-eq p0, v9, :cond_19f

    if-eq p0, v8, :cond_18d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17c

    goto :goto_1b1

    :cond_17c
    iget p0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v8

    add-int/2addr v0, p0

    div-int/lit8 p0, v1, 0x2

    sub-int/2addr v0, p0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1b1

    :cond_18d
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    iput p0, v5, Landroid/graphics/Rect;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-ge p0, v0, :cond_1b1

    add-int/2addr v1, v0

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1b1

    :cond_19f
    iget p0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, p0, :cond_1b1

    sub-int p0, v0, v1

    iput p0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    :cond_1b1
    :goto_1b1
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-object v5
.end method
