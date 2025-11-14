.class public final Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field public final mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mInner:Landroid/graphics/Rect;

.field public mInputWindow:Lcom/android/server/wm/WindowState;

.field public mLastUseFullWindowSurface:Z

.field public final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mOuter:Landroid/graphics/Rect;

.field public final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mSurfaceControlFactory:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda0;

.field public final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTransactionFactory:Ljava/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda0;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatReachabilityPolicy;Lcom/android/server/wm/AppCompatLetterboxOverrides;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v2, "left"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v3, "bottom"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v4, "right"

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string/jumbo v5, "fullWindow"

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    filled-new-array {v1, v0, v3, v2}, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/server/wm/Letterbox;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    iput-object p4, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    return-void
.end method


# virtual methods
.method public final layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    move-object v11, v6

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget-object p1, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p2, p2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layoutSurfaceFrameRelativeForCrop(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p1, p2, p2, p3, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layoutSurfaceFrameRelativeForCrop(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, p2, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layoutSurfaceFrameRelativeForCrop(IIII)V

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0, p3, p2, p2, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layoutSurfaceFrameRelativeForCrop(IIII)V

    return-void
.end method

.method public final useFullWindowSurface()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
