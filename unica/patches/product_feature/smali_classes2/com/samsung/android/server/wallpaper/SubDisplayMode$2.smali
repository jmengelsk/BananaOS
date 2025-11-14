.class public final Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/SubDisplayMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayFoldChanged(IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDisplayFoldChanged: displayId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", folded = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SubDisplayMode"

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget v0, p1, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    xor-int/lit8 v1, p2, 0x1

    iput v1, p1, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_3

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors$1(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors$1(I)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;->this$0:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mHandler:Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;

    const/16 p1, 0x3f2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->arg1:I

    iput v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method
