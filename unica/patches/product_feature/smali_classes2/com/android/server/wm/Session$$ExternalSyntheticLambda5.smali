.class public final synthetic Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(FFFF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$0:F

    iput p2, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$1:F

    iput p3, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$2:F

    iput p4, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$3:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget v0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$0:F

    iget v1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$1:F

    iget v2, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$2:F

    iget p0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$3:F

    check-cast p1, Lcom/android/server/wm/WallpaperController;

    check-cast p2, Lcom/android/server/wm/WindowState;

    sget v3, Lcom/android/server/wm/Session;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1f

    iget v3, p2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    return-void

    :cond_1f
    :goto_1f
    iput v0, p2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v2, p2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput p0, p2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
