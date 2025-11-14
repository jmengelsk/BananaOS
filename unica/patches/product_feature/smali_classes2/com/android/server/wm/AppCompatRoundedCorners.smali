.class public final Lcom/android/server/wm/AppCompatRoundedCorners;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mRoundedCornersWindowCondition:Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v2, :cond_2a

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_47

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne p0, v2, :cond_46

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq p0, v2, :cond_47

    :cond_46
    return-object v1

    :cond_47
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    iget p0, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_5a

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_5a

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->scale(F)V

    :cond_5a
    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0
.end method

.method public final getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-ltz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result p0

    goto :goto_44

    :cond_1b
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    if-nez v0, :cond_2c

    move v0, v1

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    :goto_30
    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    :goto_40
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_44
    iget p1, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_54

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_54

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :cond_54
    return p0
.end method

.method public final requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    iget-object p1, v0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_24

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    if-eqz p0, :cond_3b

    goto :goto_39

    :cond_24
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz p0, :cond_33

    invoke-static {p1}, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    if-eqz p0, :cond_3b

    goto :goto_39

    :cond_33
    iget-object p0, v0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    if-eqz p0, :cond_3b

    :goto_39
    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method
