.class public final Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-void
.end method


# virtual methods
.method public final calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;
    .locals 13

    const-string/jumbo v0, "calcSemWallpaperColors: e = "

    const-string/jumbo v1, "calcSemWallpaperColors: mode mismatched. which="

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getSourceWhich(II)I

    move-result v3

    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "calcSemWallpaperColors: which = "

    const-string v6, ", sourceWhich = "

    const-string v7, ", rotation = "

    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string/jumbo p0, "WallpaperManagerService"

    const-string/jumbo p1, "calcSemWallpaperColors: failed to get source wallpaper data"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4

    return-object v6

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v7, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v8, v8, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;

    invoke-virtual {v8, v5}, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->supportsSamsungLiveWallpaperProvider(Lcom/android/server/wallpaper/WallpaperData;)Z

    move-result v8

    iget-object v9, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v9, v9, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v10

    invoke-static {v9}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v11

    if-eq v10, v11, :cond_1

    const-string/jumbo v10, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", semData.which"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v8, :cond_7

    const/16 v4, 0x5a

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne p2, v4, :cond_2

    move v4, v9

    goto :goto_0

    :cond_2
    const/16 v4, 0xb4

    if-ne p2, v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const/16 v4, 0x10e

    if-ne p2, v4, :cond_4

    move v4, v8

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v11, v11, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v11, v10, v2, v4}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getThumbnailFile(III)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_3
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    if-lez p2, :cond_6

    iget-object v2, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_6

    if-ne p2, v9, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    aget-object p0, v2, v1

    goto :goto_1

    :cond_5
    if-ne p2, v8, :cond_6

    array-length v4, v2

    if-le v4, v9, :cond_6

    aget-object p0, v2, v9

    goto :goto_1

    :cond_6
    iget-object p0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return-object p0

    :cond_7
    move-object v0, v6

    :goto_2
    if-nez v0, :cond_8

    const/4 v4, 0x7

    if-ne v7, v4, :cond_8

    :try_start_4
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    :goto_3
    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "calcSemWallpaperColors: e="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :goto_4
    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "calcSemWallpaperColors: sourceWhich="

    const-string v4, ", bitmap="

    invoke-static {v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, p1, p2, v6}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_9
    const-string/jumbo p0, "WallpaperManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "calcSemWallpaperColors: sourceWhich="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", noBitmap"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    invoke-virtual {p0, v1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    :goto_6
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final handleWallpaperBindingTimeout()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/DesktopMode;->isExternalDisplayAttached()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    goto :goto_0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo p0, "WallpaperManagerService"

    const-string/jumbo v0, "wallpaper binded already!"

    invoke-static {p0, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "trying to bind wallpaperComponent with timeout"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

    iput-boolean v2, v0, Lcom/samsung/android/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(Z)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final notifySemWallpaperColors(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "WallpaperManagerService"

    const-string/jumbo p1, "notifySemWallpaperColors, wallpaper == null"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifySemWallpaperColors$1(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "WallpaperManagerService"

    const-string/jumbo p1, "notifySemWallpaperColors, wallpaper == null"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBindWallpaperRequested(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string/jumbo v7, "onBindWallpaperRequested: which = "

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v12

    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v4, "onBindWallpaperRequested: userId = "

    const-string v5, ", which = "

    const-string v6, " , wallpaper = "

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_1

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "onBindWallpaperRequested: wallpaper is null."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v8, v12, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iget-object v1, v12, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    invoke-direct {v15, v1, v12, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    iget-object v1, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v6, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    move-object/from16 v18, v4

    move v4, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->invokePrepare(IIILandroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v4, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    const-string/jumbo v6, "contentAttributes"

    if-nez v4, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v9, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object v4, v9, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->canBindComponentNow(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iput v3, v12, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-gez v8, :cond_5

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v5, :cond_6

    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    :cond_6
    move-object v9, v5

    const/4 v14, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_3
    :try_start_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v15}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->complete()V

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onDesktopModeChanged(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DesktopMode changed. enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "WallpaperManagerService"

    invoke-static {v2, v0}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(Z)V

    :cond_0
    return-void
.end method

.method public final onDetachWallpaper(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastWallpaper(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onLockWallpaperChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_0
    return-void
.end method

.method public final onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 8

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v5, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v6, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    const-string/jumbo v2, "isPreloaded"

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v4, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    const-string/jumbo v1, "onSetWallpaperComponent: userId = "

    const-string v2, ", which = "

    const-string v3, ", extras = "

    invoke-static {v6, v5, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", componentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPreloaded = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fromForeground = false, reply = null, callingPackage = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    return-void
.end method

.method public final onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onWallpaperFlagUpdated(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onWallpaperFlagUpdated: which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_1
    if-eqz v0, :cond_2

    iget p1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateDisplayData()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    if-nez v0, :cond_0

    const-string/jumbo p0, "WallpaperManagerService"

    const-string/jumbo v0, "updateDisplayData: display helper is not ready yet"

    invoke-static {p0, v0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "updateDisplayData"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v5, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mDisplayId:I

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p0

    move/from16 v3, p5

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_desktop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "wallpaper_sub_display"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "wallpaper_virtual_display"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    :goto_0
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v8, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_4

    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v8, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v8

    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_5

    :goto_2
    move-object v13, v8

    goto :goto_3

    :cond_5
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_2

    :goto_3
    const/16 v6, 0x80

    if-ne v0, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-eq v0, v5, :cond_8

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v6, :cond_9

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    if-eqz v6, :cond_a

    if-nez v11, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    iget v12, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    :goto_9
    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v14}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_d

    if-ne v0, v5, :cond_d

    iget-boolean v5, v13, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v5, 0x1

    :goto_b
    if-eqz v11, :cond_e

    goto/16 :goto_f

    :cond_e
    if-nez v1, :cond_f

    if-nez v3, :cond_f

    goto/16 :goto_f

    :cond_f
    const-string/jumbo v14, "WallpaperManagerService"

    const-string/jumbo v15, "Wallpaper file change: evt="

    const-string v9, " path="

    const-string v8, " sys="

    move-object/from16 v7, p2

    invoke-static {v0, v15, v9, v7, v8}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " lock="

    const-string v8, " imagePending="

    invoke-static {v0, v1, v7, v3, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v7, v13, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mWhich=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " written="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isMigration="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isRestore="

    const-string v8, " isAppliedToLock="

    invoke-static {v0, v11, v7, v6, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " needsUpdate="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v10, :cond_1c

    if-nez v5, :cond_10

    goto/16 :goto_10

    :cond_10
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-object v0, v13, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_11

    :cond_11
    :goto_c
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v5, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v8, v13, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v5, v8}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    if-eqz v1, :cond_13

    iget v0, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v5, 0x1

    invoke-virtual {v0, v13, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_13
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-static/range {p3 .. p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    if-eqz v6, :cond_14

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v6, v13, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v8, v4, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    :cond_14
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v0, v13}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    if-eqz v1, :cond_15

    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    const/4 v1, 0x0

    invoke-direct {v14, v2, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;I)V

    sget-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v1, v13, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v6, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/2addr v6, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->canBindComponentNow(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v10, v9, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v15, 0x0

    const/4 v11, 0x1

    move v8, v12

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    goto :goto_d

    :cond_15
    move v8, v12

    :goto_d
    if-eqz v3, :cond_17

    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    const/4 v1, 0x1

    invoke-direct {v14, v2, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;I)V

    sget-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v1, v13, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->canBindComponentNow(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v10, v9, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v15, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    :cond_16
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, v13, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    goto :goto_e

    :cond_17
    if-eqz v8, :cond_19

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v6, -0x1

    iput v6, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    iget-object v4, v13, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->getLastCallingPackage(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v9, 0x1

    invoke-virtual {v4, v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    if-eqz v3, :cond_18

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget v4, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDisplayId(I)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_e

    :cond_18
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    :cond_19
    :goto_e
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v13, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->complete()V

    :cond_1a
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v2, v13, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1b

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0, v13, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_1b
    :goto_f
    return-void

    :cond_1c
    :goto_10
    :try_start_2
    monitor-exit v7

    return-void

    :goto_11
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_12
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
