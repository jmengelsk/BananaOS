.class public final Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-void
.end method


# virtual methods
.method public final onDisplayAddSystemDecorations(I)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo v0, "onDisplayAddSystemDecorationsInternal, displayId = "

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/DisplayManager;->isExternalDesktopDisplay(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v2, "onDisplayAddSystemDecorationsInternal: desktop display attached"

    invoke-static {v0, v2}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "WallpaperManagerService"

    const-string v2, "DEX_DISPLAY is added"

    invoke-static {v0, v2}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wallpaper/DesktopMode;->attachExternalDisplay(I)V

    iget p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSystemAndLockPaired(I)Z

    move-result p1

    const/16 v3, 0xa

    if-nez p1, :cond_6c

    iget p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    goto :goto_6c

    :catchall_6a
    move-exception p0

    goto :goto_cd

    :cond_6c
    :goto_6c
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColorIfSeedColorEmpty(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColorIfSeedColorEmpty(I)V

    monitor-exit v1

    return-void

    :cond_74
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    if-eqz v0, :cond_82

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVirtualWallpaperDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_82

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    monitor-exit v1

    return-void

    :cond_82
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v0, :cond_88

    monitor-exit v1

    return-void

    :cond_88
    sget-boolean v2, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object p1

    if-nez p1, :cond_9e

    monitor-exit v1

    return-void

    :cond_9e
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    monitor-exit v1

    return-void

    :cond_a7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v0, :cond_c2

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_c2

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object p1

    if-nez p1, :cond_b7

    monitor-exit v1

    return-void

    :cond_b7
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_cb

    :cond_c2
    const-string/jumbo p0, "WallpaperManagerService"

    const-string/jumbo p1, "No wallpaper can be added to the new display"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    monitor-exit v1

    return-void

    :goto_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_8 .. :try_end_ce} :catchall_6a

    throw p0
.end method

.method public final onScreenTurnedOn(I)V
    .registers 9

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers(I)[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_53

    aget-object v3, p0, v2

    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyScreenTurnedOn: displayId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , target data= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_45

    if-eqz v3, :cond_50

    :try_start_41
    invoke-interface {v3}, Landroid/service/wallpaper/IWallpaperEngine;->onScreenTurnedOn()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_47
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_50

    :catchall_45
    move-exception p0

    goto :goto_55

    :catch_47
    move-exception v3

    :try_start_48
    const-string/jumbo v4, "WallpaperManagerService"

    const-string v5, "Failed to notify that the screen turned on"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_45

    throw p0
.end method

.method public final onScreenTurningOn(I)V
    .registers 9

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers(I)[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_53

    aget-object v3, p0, v2

    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyScreenTurningOn: displayId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , target data= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_45

    if-eqz v3, :cond_50

    :try_start_41
    invoke-interface {v3}, Landroid/service/wallpaper/IWallpaperEngine;->onScreenTurningOn()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_47
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_50

    :catchall_45
    move-exception p0

    goto :goto_55

    :catch_47
    move-exception v3

    :try_start_48
    const-string/jumbo v4, "WallpaperManagerService"

    const-string v5, "Failed to notify that the screen is turning on"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_45

    throw p0
.end method
