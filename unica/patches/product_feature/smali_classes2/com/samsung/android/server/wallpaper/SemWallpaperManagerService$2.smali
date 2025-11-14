.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p2, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v1, "SemWallpaperManagerService"

    const-string/jumbo v2, "onReceive: "

    const-string v3, ", densityDpi="

    invoke-static {v2, p1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation [old="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    const-string v3, ", new="

    const-string/jumbo v4, "]"

    invoke-static {v2, p2, v3, v4, p1}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v0, :cond_0

    iput v0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_HOME_CONTROLLER:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    if-eq v0, p2, :cond_4

    iput p2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget p2, p2, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    return-void

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string/jumbo p2, "WallpaperManagerService"

    const-string/jumbo v0, "orientation is changed, notifySemColorListeners"

    invoke-static {p2, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-boolean v0, v0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    if-eqz v0, :cond_2

    iget-object p2, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-virtual {p2, v3}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-boolean v0, v0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    if-eqz v0, :cond_3

    iget-object p2, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-virtual {p2, v2}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    :cond_3
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method
