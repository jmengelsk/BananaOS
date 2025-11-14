.class public final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0

    return-void
.end method

.method public final onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0

    return-void
.end method

.method public final onWallpaperChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperRestoreCompletion;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    return-void
.end method
