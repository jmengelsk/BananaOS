.class public final Lcom/samsung/android/server/wallpaper/OMCWallpaper$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/OMCWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/OMCWallpaper;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_1d

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/OMCWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_1d

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez p1, :cond_1d

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    :cond_1d
    :goto_1d
    return-void
.end method
