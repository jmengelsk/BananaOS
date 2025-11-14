.class public Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BLUR_SUPPORTED:Z


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WINDOW_BLUR_SUPPORTED:Z

    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->BLUR_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method

.method public static getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    iget v2, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    if-eqz v2, :cond_5e

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_5e

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    if-eqz v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mIsCameraCompatEnabled:Z

    if-nez v2, :cond_5e

    :cond_1e
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    if-nez v2, :cond_59

    iget v2, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    goto :goto_59

    :cond_3d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    goto :goto_59

    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppCompatConfigurationPreset("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    const-string v3, ") is unknown."

    const-string/jumbo v4, "MultiTaskingAppCompat"

    invoke-static {v0, v3, v4, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    if-eqz p0, :cond_5e

    return-object p0

    :cond_5e
    return-object v1
.end method

.method public static isPresetBlurWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isLetterboxWallpaperBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    if-eqz p0, :cond_e

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetConfig()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxBackgroundType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getLetterboxActivityCornersRadius()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return p0
.end method

.method public getLetterboxBackgroundColor()Landroid/graphics/Color;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    move-result p0

    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurColorCurve()Landroid/view/SemBlurInfo$ColorCurve;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return p0
.end method

.method public hasCapturedLetterboxSurface()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isLetterboxWallpaperBlurSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isPresetConfig()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onAdjustWallpaperWindows(Z)V
    .registers 2

    return-void
.end method

.method public shouldUseLetterboxBackgroundColor()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
