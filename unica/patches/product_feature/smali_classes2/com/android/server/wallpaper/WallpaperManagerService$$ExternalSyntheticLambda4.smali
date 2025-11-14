.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;->f$1:I

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v2, p0, :cond_8

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    sget-object v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->ensureSeedColorsWithNotification(Lcom/android/server/wallpaper/WallpaperData;)V

    const/4 v2, 0x6

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    sget-object v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_1
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->ensureSeedColorsWithNotification(Lcom/android/server/wallpaper/WallpaperData;)V

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    const/16 v3, 0x11

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_2
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->ensureSeedColorsWithNotification(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_4
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->ensureSeedColorsWithNotification(Lcom/android/server/wallpaper/WallpaperData;)V

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x12

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    if-eqz v3, :cond_5

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_5
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->ensureSeedColorsWithNotification(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_6
    :goto_1
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;->isVirtualWallpaperDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    if-eqz v3, :cond_7

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_7
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
