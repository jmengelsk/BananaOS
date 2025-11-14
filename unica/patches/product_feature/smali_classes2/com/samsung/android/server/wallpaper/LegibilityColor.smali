.class public final Lcom/samsung/android/server/wallpaper/LegibilityColor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAllowScreenRotateLock:Z

.field public mAllowScreenRotateSystem:Z

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mColorExtractors:Landroid/util/SparseArray;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/android/server/wallpaper/LegibilityColor$1;

.field public final mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    new-instance v0, Lcom/samsung/android/server/wallpaper/LegibilityColor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wallpaper/LegibilityColor$1;-><init>(Lcom/samsung/android/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mHandler:Lcom/samsung/android/server/wallpaper/LegibilityColor$1;

    const-string/jumbo v0, "LegibilityColor"

    invoke-static {v0, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    return-void
.end method

.method public static getWallpaperColorPath(IIZ)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_colors_info"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string/jumbo v1, "LegibilityColor"

    if-nez p0, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_21

    const-string/jumbo p0, "getWallpaperColorPath failed to mkdir"

    invoke-static {v1, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_34

    const-string v0, "/home"

    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_51

    :cond_34
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3e

    const-string v0, "/lock"

    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_51

    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unhandle type "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    :goto_51
    if-eqz p2, :cond_5a

    const-string/jumbo p2, "_landscape"

    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5a
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p2

    if-eqz p2, :cond_9b

    const/4 v0, 0x4

    if-ne p2, v0, :cond_64

    goto :goto_9b

    :cond_64
    const/16 v0, 0x8

    if-ne p2, v0, :cond_70

    const-string/jumbo p1, "_dex.xml"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_70
    const/16 v0, 0x10

    if-ne p2, v0, :cond_7c

    const-string/jumbo p1, "_sub.xml"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_7c
    const/16 v0, 0x20

    if-ne p2, v0, :cond_88

    const-string/jumbo p1, "_virtual.xml"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_88
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unhandle mode "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :cond_9b
    :goto_9b
    const-string/jumbo p1, "_phone.xml"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_a2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getWallpaperColorPath, path = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final allowScreenRotate(I)Z
    .registers 6

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_1d

    move p0, v1

    goto :goto_1e

    :cond_1d
    move p0, v3

    :goto_1e
    if-eqz p0, :cond_21

    return v3

    :cond_21
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    const-string/jumbo v3, "LegibilityColor"

    if-eqz v2, :cond_41

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-nez v2, :cond_41

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "allowScreenRotate, allow rotate on tablet or dual main : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_41
    if-ne v0, v1, :cond_44

    goto :goto_47

    :cond_44
    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    :goto_47
    return p0

    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "allowScreenRoatate, unhandle type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final extractColor(IZ)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->getColorExtractor(IZ)Lcom/samsung/android/server/wallpaper/LegibilityColor$2;

    move-result-object p0

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "extractcolor: Error. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "LegibilityColor"

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized getColorExtractor(IZ)Lcom/samsung/android/server/wallpaper/LegibilityColor$2;
    .registers 7

    monitor-enter p0

    if-eqz p2, :cond_6

    const/16 v0, 0x64

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "LegibilityColor"

    const-string/jumbo v3, "getColorExtractor cancel"

    invoke-static {v2, v3}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_52

    :cond_2d
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "makeColorExtractor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LegibilityColor"

    invoke-static {v2, v1}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wallpaper/LegibilityColor$2;-><init>(Lcom/samsung/android/server/wallpaper/LegibilityColor;IZ)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_2b

    monitor-exit p0

    return-object v1

    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_2b

    throw p1
.end method

.method public final initSemWallpaperColors(ILcom/samsung/android/server/wallpaper/SemWallpaperData;)V
    .registers 8

    const-string/jumbo v0, "LegibilityColor"

    if-nez p2, :cond_c

    const-string/jumbo p0, "initSemWallpaperColors wallpaper == null"

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget v1, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const-string/jumbo v2, "initSemWallpaperColors which = "

    const-string v3, ", version = "

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2d

    return-void

    :cond_2d
    const-string/jumbo v3, "initSemWallpaperColors:"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_37
    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/app/SemWallpaperColors;->getXmlVersion(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    move-result v4

    if-eq v3, v4, :cond_51

    const-string/jumbo p1, "fota, calSemWallpaperColors"

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto :goto_97

    :catch_4f
    move-exception p1

    goto :goto_77

    :cond_51
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object p1

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v3

    if-eqz v3, :cond_6d

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_65

    goto :goto_6d

    :cond_65
    iput-object p1, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    goto :goto_97

    :cond_6d
    :goto_6d
    const-string/jumbo p1, "initSemWallpaperColors: SemWallpaperColor or its seed color is null. Extract color again!"

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_76} :catch_4f

    goto :goto_97

    :goto_77
    instance-of p2, p1, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_85

    const-string/jumbo p1, "fota, calcSemWallpaperColors"

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto :goto_97

    :cond_85
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "exception "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_97
    const-string/jumbo p0, "initSemWallpaperColors done"

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
