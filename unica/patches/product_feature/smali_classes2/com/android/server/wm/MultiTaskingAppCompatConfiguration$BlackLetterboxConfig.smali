.class public Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;
.super Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BLACK_COLOR:Landroid/graphics/Color;

.field public static final LETTERBOX_ACTIVITY_CORNERS_RADIUS_DP:I


# instance fields
.field public final mDisplay:Lcom/android/server/wm/DisplayContent;

.field public mLetterboxActivityCornersRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->BLACK_COLOR:Landroid/graphics/Color;

    const/16 v0, 0xf

    sput v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->LETTERBOX_ACTIVITY_CORNERS_RADIUS_DP:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mLetterboxActivityCornersRadius:I

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public final getLetterboxActivityCornersRadius()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mLetterboxActivityCornersRadius:I

    return p0
.end method

.method public final getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 0

    sget-object p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->BLACK_COLOR:Landroid/graphics/Color;

    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isPresetConfig()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget p1, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->LETTERBOX_ACTIVITY_CORNERS_RADIUS_DP:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public final shouldUseLetterboxBackgroundColor()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->getLetterboxBackgroundType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
