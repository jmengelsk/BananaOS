.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;
.super Landroid/app/HomeVisibilityListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHomeVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;

    new-instance v1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
