.class public final Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAlignment:I

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mControlTargetHeight:I

.field public mIsIntersectWithIme:Z

.field public final mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getAlignment(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    and-int/lit8 p0, p0, 0x7

    or-int/lit8 p0, p0, 0x30

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    return p0
.end method

.method public final getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getAlignment(Z)I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public final getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getAlignment(Z)I

    move-result p0

    and-int/lit8 p0, p0, 0x70

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public final updateResolvedBoundsPosition(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v3, :cond_0

    iget-boolean v1, v1, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x2

    const-string/jumbo v4, "MultiTaskingAppCompatReachabilityPolicy"

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, v7, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    if-nez v6, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "adjustSizeCompatBounds: resolvedAppBounds is null. r="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eq v4, v0, :cond_3

    if-ne v4, v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v4, v1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p2, v7}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    iget p2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    invoke-virtual {v7, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p2, v7}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v3

    iget v0, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    invoke-virtual {v7, p0, p2}, Landroid/graphics/Rect;->offset(II)V

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getCompatScale()F

    move-result p0

    goto :goto_4

    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_4
    iget p1, v7, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    div-float/2addr p1, p0

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    div-float/2addr v0, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    iget p2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    invoke-virtual {v5, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "adjustAspectRatioBounds: resolvedAppBounds is null. r="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget p1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eq p1, v0, :cond_9

    if-ne p1, v3, :cond_a

    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p1, v1, :cond_a

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getVerticalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    iget p1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    invoke-virtual {v5, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_b
    invoke-virtual {p0, p2, v5}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->getHorizontalOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    iget p1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    invoke-virtual {v5, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, p0, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_c
    return-void
.end method
