.class public final Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e8

    :pswitch_5  #0x3ed
    goto :goto_7c

    :pswitch_6  #0x3f0
    const-string p1, "DefaultWallpaper"

    const-string/jumbo v0, "msg MSG_UPDATE_DEFAULT_WALLPAPER"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p1}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {p1}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "rebindDefaultWallpaperIfNeeded: Change system wallpaper by color("

    const-string v2, ")"

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    if-eqz v7, :cond_62

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_45
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_5e

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto :goto_62

    :catchall_5e
    move-exception v0

    move-object p0, v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5e

    throw p0

    :cond_62
    :goto_62
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "rebindDefaultWallpaperIfNeeded: Change lock wallpaper by color("

    const-string v2, ")"

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    const-string/jumbo p1, "android_CMF"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    :cond_7c
    :goto_7c
    return-void

    :pswitch_7d  #0x3ef
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p0, "DefaultWallpaper"

    const-string/jumbo p1, "send wallpaperChangedIntent"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_a8  #0x3ee
    iget v0, p1, Landroid/os/Message;->arg2:I

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v2

    if-eqz v2, :cond_b7

    const-string/jumbo v1, "dex_lockscreen_wallpaper_transparency"

    goto :goto_c0

    :cond_b7
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    :cond_c0
    :goto_c0
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/android/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    return-void

    :pswitch_c8  #0x3ec
    iget v0, p1, Landroid/os/Message;->arg2:I

    const-string/jumbo v1, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string/jumbo v1, "dex_system_wallpaper_transparency"

    goto :goto_e0

    :cond_d7
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_e0

    const-string/jumbo v1, "sub_display_system_wallpaper_transparency"

    :cond_e0
    :goto_e0
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/android/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    return-void

    :pswitch_data_e8
    .packed-switch 0x3ec
        :pswitch_c8  #000003ec
        :pswitch_5  #000003ed
        :pswitch_a8  #000003ee
        :pswitch_7d  #000003ef
        :pswitch_6  #000003f0
    .end packed-switch
.end method
