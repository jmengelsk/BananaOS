.class public final Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;
.super Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field public mBlurRadiusPx:I

.field public mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    :cond_a
    return-void
.end method

.method public final getLetterboxBackgroundType()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final getLetterboxBackgroundWallpaperBlurColorCurve()Landroid/view/SemBlurInfo$ColorCurve;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurRadiusPx:I

    return p0
.end method

.method public final hasCapturedLetterboxSurface()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isLetterboxWallpaperBlurSupported()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->BLUR_SUPPORTED:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final onAdjustWallpaperWindows(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    if-nez v0, :cond_17

    if-nez p1, :cond_e

    goto :goto_3a

    :cond_e
    new-instance v0, Lcom/android/server/wm/CapturedLetterbox;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1}, Lcom/android/server/wm/CapturedLetterbox;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    if-eqz p1, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    if-nez v0, :cond_3a

    :cond_1f
    iput-boolean p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11

    invoke-super {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x10

    goto :goto_e

    :cond_c
    const/16 p1, 0xd

    :goto_e
    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object p1

    const/4 v0, 0x0

    aget v1, p1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurRadiusPx:I

    new-instance v2, Landroid/view/SemBlurInfo$ColorCurve;

    const/4 v1, 0x1

    aget v3, p1, v1

    const/4 v1, 0x2

    aget v4, p1, v1

    const/4 v1, 0x3

    aget v5, p1, v1

    const/4 v1, 0x4

    aget v6, p1, v1

    const/4 v1, 0x5

    aget v7, p1, v1

    const/4 v1, 0x6

    aget v8, p1, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    if-eqz p1, :cond_62

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    iget-boolean p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    iput-boolean p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5b
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    iput-boolean v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    :cond_62
    return-void
.end method
