.class public final Lcom/android/server/wallpaper/WallpaperManagerService$7;
.super Landroid/app/UserSwitchObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$7;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$7;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/Map;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$7;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    return-void
.end method
