.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SHIPPED:Z

.field public static final sLogList:Ljava/util/ArrayList;

.field public static sSnapshotTestMode:Z


# instance fields
.field public mAodVisibilityState:I

.field public final mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

.field public final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field public mDensityDpi:I

.field public final mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;

.field public final mHomeVisibilityListener:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public final mKnox:Lcom/samsung/android/server/wallpaper/Knox;

.field public final mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

.field public final mLiveWallpaperHelper:Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;

.field public final mOMCWallpaper:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

.field public mOldUserId:I

.field public mOrientation:I

.field public final mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public final mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final mSnapshotDataLock:Ljava/lang/Object;

.field public final mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

.field public final mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

.field public final mVirtualDisplayMode:Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/samsung/android/wallpaper/Rune;->isShipBuild()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    iput v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/android/server/wallpaper/Knox;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mAodVisibilityState:I

    new-instance v1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;

    const-string/jumbo v1, "SemWallpaperManagerService"

    invoke-static {v1, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    new-instance v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-direct {v1, p1, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iput-object p4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    new-instance p3, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    invoke-direct {p3, p1, p2, p0, p4}, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    new-instance p3, Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-direct {p3, p1, p0, p4}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    new-instance p3, Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/android/server/wallpaper/OMCWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/android/server/wallpaper/OMCWallpaper;

    const-string/jumbo p3, "LockWallpaper"

    invoke-static {p3, p3}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/server/wallpaper/DesktopMode;

    invoke-direct {p3, p2}, Lcom/samsung/android/server/wallpaper/DesktopMode;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

    new-instance p3, Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    invoke-direct {p3, p2}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    new-instance p3, Lcom/samsung/android/server/wallpaper/LegibilityColor;

    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/android/server/wallpaper/LegibilityColor;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    new-instance p2, Lcom/samsung/android/server/wallpaper/Knox;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wallpaper/Knox;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/android/server/wallpaper/Knox;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance p3, Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;

    invoke-direct {p3, p2}, Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x104068c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_b2

    goto :goto_b3

    :cond_b2
    move-object p2, p3

    :goto_b3
    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    new-instance p2, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;

    new-instance p3, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$1;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/samsung/android/server/wallpaper/ProviderRequester;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p4, Lcom/samsung/android/server/wallpaper/ProviderRequester;->mContext:Landroid/content/Context;

    iput-object p4, p2, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->mProviderRequester:Lcom/samsung/android/server/wallpaper/ProviderRequester;

    iput-object p3, p2, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->mCallback:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$1;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p3, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    const-string/jumbo p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;

    if-nez p3, :cond_102

    new-instance p3, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;

    const-string/jumbo p3, "activity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager;

    iget-object p4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$3;

    invoke-virtual {p3, v0, p4}, Landroid/app/ActivityManager;->addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V

    :cond_102
    new-instance p3, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$2;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static buildCustompackParams(ILandroid/net/Uri;)Landroid/os/Bundle;
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/overlays/homewallpaper/"

    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result p0

    const/4 v3, 0x1

    if-nez v2, :cond_32

    if-eqz p0, :cond_33

    :cond_32
    move v1, v3

    :cond_33
    const/4 p0, 0x0

    if-ne v1, v3, :cond_37

    goto :goto_38

    :cond_37
    move v3, p0

    :goto_38
    const-string/jumbo v1, "isMigration"

    invoke-virtual {p1, v1, p0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "isCustom"

    invoke-virtual {p1, v4, p0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_51

    const-string/jumbo p0, "USER.PACK."

    goto :goto_54

    :cond_51
    const-string/jumbo p0, "MULTI.PACK."

    :goto_54
    if-eqz v3, :cond_5d

    const-string v4, "02"

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_63

    :cond_5d
    const-string v4, "01"

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_63
    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "wallpaper_path"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "screen"

    invoke-virtual {p1, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_13

    :cond_25
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCallStackString()Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_b
    array-length v4, v0

    if-ge v3, v4, :cond_22

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getCallStackString"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    add-int/lit8 v2, v3, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_22
    array-length v3, v0

    sub-int/2addr v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_29

    array-length v1, v0

    sub-int/2addr v1, v2

    :cond_29
    const-string v3, ""

    move v4, v2

    move-object v5, v3

    :goto_2d
    add-int v6, v2, v1

    if-ge v4, v6, :cond_81

    array-length v6, v0

    if-ge v4, v6, :cond_81

    aget-object v6, v0, v4

    if-ne v4, v2, :cond_3d

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    goto :goto_5a

    :cond_3d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(line "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") :"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_81
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_90

    const-string v0, "("

    const-string v1, ") "

    invoke-static {v0, v5, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_90
    return-object v3
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "getStringFromFile "

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_d
    invoke-static {p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_17
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_15
    move-exception v0

    goto :goto_2f

    :catch_17
    move-exception v1

    :try_start_18
    const-string/jumbo v2, "SemWallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_15

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_2f
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method public static initializeThumnailFile(IIILcom/android/server/wallpaper/WallpaperData;)V
    .registers 8

    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    if-nez p3, :cond_e

    const-string/jumbo p0, "SemWallpaperManagerService"

    const-string/jumbo p1, "initializeThumnailFile: SemWallpaperData is null."

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_79

    iget-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    if-nez v1, :cond_79

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/io/File;

    if-eqz v0, :cond_29

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    goto :goto_2d

    :cond_29
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    :goto_2d
    if-eqz v0, :cond_33

    const-string/jumbo v3, "wallpaper_first_virtual"

    goto :goto_36

    :cond_33
    const-string/jumbo v3, "wallpaper_first_virtual_home"

    :goto_36
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    goto :goto_79

    :cond_3c
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    new-instance v1, Ljava/io/File;

    if-eqz v0, :cond_4b

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    goto :goto_4f

    :cond_4b
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    :goto_4f
    if-eqz v0, :cond_55

    const-string/jumbo v3, "wallpaper_first_sub"

    goto :goto_58

    :cond_55
    const-string/jumbo v3, "wallpaper_first_sub_home"

    :goto_58
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    goto :goto_79

    :cond_5e
    new-instance v1, Ljava/io/File;

    if-eqz v0, :cond_67

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    goto :goto_6b

    :cond_67
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    :goto_6b
    if-eqz v0, :cond_71

    const-string/jumbo v3, "wallpaper_first"

    goto :goto_74

    :cond_71
    const-string/jumbo v3, "wallpaper_first_home"

    :goto_74
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    :cond_79
    :goto_79
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a5

    if-eqz v0, :cond_a5

    iget-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    if-nez v1, :cond_a5

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_97

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_animated_background_sub"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    goto :goto_a5

    :cond_97
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_animated_background"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    :cond_a5
    :goto_a5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d1

    if-eqz v0, :cond_d1

    iget-object p1, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    if-nez p1, :cond_d1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_c3

    new-instance p0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo p2, "wallpaper_motion_background_sub"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    goto :goto_d1

    :cond_c3
    new-instance p0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo p2, "wallpaper_motion_background"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, p3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    :cond_d1
    :goto_d1
    return-void
.end method

.method public static isSupportingMode(I)Z
    .registers 3

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x10

    if-eq v0, v1, :cond_11

    goto :goto_24

    :cond_11
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_16

    goto :goto_22

    :cond_16
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    if-ne p0, v0, :cond_24

    goto :goto_22

    :cond_1e
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-nez p0, :cond_24

    :goto_22
    const/4 p0, 0x0

    return p0

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method

.method public static putLog(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "SemWallpaperManagerService"

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    rem-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v1, 0x14

    if-le p0, v1, :cond_57

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_59

    :cond_57
    :goto_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_55

    throw p0
.end method

.method public static removeLegibilityFields(Landroid/os/Bundle;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "systemLegibilityColors"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "lockLegibilityColors"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final buildParams(III)Landroid/os/Bundle;
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5b

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_27

    const-string/jumbo p0, "buildParams: userId = "

    const-string v0, ", which = "

    const-string v1, ", type = "

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemWallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "flag"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object p2, p2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "type"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p0

    const-string/jumbo p2, "screen"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :cond_5b
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->buildCustompackParams(ILandroid/net/Uri;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final connectSnapshotForLiveWallpaper(IILjava/util/ArrayList;)V
    .registers 11

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_9

    :goto_7
    move p3, v1

    goto :goto_35

    :cond_9
    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v0

    if-gtz v0, :cond_10

    goto :goto_7

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "shouldCheckCorrespondingWhichForLiveWallpaper: Check existance of correspondingWhich ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SemWallpaperManagerService"

    invoke-static {v3, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    :goto_35
    if-eqz p3, :cond_ad

    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result p3

    if-gtz p3, :cond_3f

    goto/16 :goto_ad

    :cond_3f
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getSnapshotCount(I)I

    move-result v0

    if-gtz v0, :cond_46

    goto :goto_ad

    :cond_46
    iget v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_56
    const/4 v4, 0x0

    if-ge v1, v3, :cond_68

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-virtual {v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_69

    :cond_68
    move-object v5, v4

    :goto_69
    if-eqz v5, :cond_ad

    invoke-virtual {v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    if-nez v0, :cond_72

    goto :goto_ad

    :cond_72
    invoke-virtual {v5, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v0

    if-eqz v0, :cond_79

    goto :goto_ad

    :cond_79
    invoke-virtual {v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_9e

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    :cond_9e
    invoke-virtual {v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_ad

    iget p0, v5, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {v4, p1, p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    invoke-virtual {v5, p3, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public final deleteThumbnailFile(II)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getInstance()Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->deleteThumbnailFiles(II)Z

    return-void
.end method

.method public final doRestoreOrMigrate(II)Ljava/util/Map;
    .registers 14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_78

    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_77

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v7, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_34
    if-ltz v8, :cond_65

    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v9

    if-nez v9, :cond_46

    const-string/jumbo v9, "SnapshotManager"

    const-string/jumbo v10, "shouldRestoreSnapshot: Something wrong!"

    invoke-static {v9, v10}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_46
    invoke-virtual {v9, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v9

    if-eqz v9, :cond_62

    iget-object v9, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4f
    iget-object v7, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v7, p1, p2, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->migrateToPriorSnapshot(III)V

    monitor-exit v9
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_5f

    const/16 v6, 0x3ec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_5f
    move-exception p0

    :try_start_60
    monitor-exit v9
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    :goto_62
    add-int/lit8 v8, v8, -0x1

    goto :goto_34

    :cond_65
    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    invoke-virtual {p0, p1, v6, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    move-result v7

    invoke-virtual {p0, p1, v6, v2, v7}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_77
    return-object v0

    :catchall_78
    move-exception p0

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public final ensureSeedColorsWithNotification(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 5

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v0, v0

    if-eqz v0, :cond_10

    goto :goto_33

    :cond_10
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "ensureSeedColorsWithNotification: Extracting SemWallpaperColors.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_33

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final getCurrentImplicitMode()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/android/server/wallpaper/SubDisplayMode;

    iget p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->determineMode(Z)I

    move-result p0

    return p0
.end method

.method public final getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1a

    :try_start_8
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0xc0000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    const/4 p0, 0x0

    return-object p0

    :cond_1a
    return-object p1
.end method

.method public final getDefaultWallpaperType(I)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getDisplayId(I)I
    .registers 11

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/android/server/wallpaper/DesktopMode;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/DesktopMode;->mExternalDisplayIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_1e

    monitor-exit v0

    move p0, v2

    goto :goto_2b

    :catchall_1c
    move-exception p0

    goto :goto_3c

    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/DesktopMode;->mExternalDisplayIds:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_1c

    :goto_2b
    if-ne p0, v2, :cond_3b

    const-string/jumbo p1, "SemWallpaperManagerService"

    const-string/jumbo v0, "getDisplayId: no external display attached."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    return p0

    :goto_3c
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_1c

    throw p0

    :cond_3e
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_43

    return v1

    :cond_43
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v0

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz v2, :cond_4d

    move v1, v0

    goto :goto_97

    :cond_4d
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v3, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p0, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length v3, p0

    move v4, v1

    :goto_5d
    if-ge v4, v3, :cond_97

    aget-object v5, p0, v4

    if-eqz v5, :cond_7f

    invoke-virtual {v5, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-nez v6, :cond_6a

    goto :goto_7f

    :cond_6a
    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_73

    const/4 v5, 0x1

    goto :goto_74

    :cond_73
    move v5, v1

    :goto_74
    if-eqz v0, :cond_78

    if-nez v5, :cond_7c

    :cond_78
    if-nez v0, :cond_94

    if-nez v5, :cond_94

    :cond_7c
    iget v1, v2, Landroid/view/DisplayInfo;->displayId:I

    goto :goto_97

    :cond_7f
    :goto_7f
    const-string/jumbo v6, "SemWallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getDisplayId: failed to get display. display="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_97
    :goto_97
    const-string/jumbo p0, "SemWallpaperManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getDisplayId: which="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", displayId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getModeEnsuredWhich(I)I
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p1

    or-int/2addr p0, p1

    const-string/jumbo p1, "getModeEnsuredWhich: detected which = "

    const-string/jumbo v0, "SemWallpaperManagerService"

    invoke-static {p0, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getPairingConsideredWallpaperId(II)I
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekPairingConsideredWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    if-nez p0, :cond_12

    const/4 p0, -0x1

    return p0

    :cond_12
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    return p0

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final getSnapshotCount(I)I
    .registers 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    if-ne p1, v0, :cond_10

    iget p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result p0

    return p0

    :cond_10
    iget p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_39

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_26
    :goto_26
    if-ge v2, v0, :cond_39

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v3

    if-eqz v3, :cond_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_39
    return v1
.end method

.method public final getThumbnailFile(III)Ljava/io/File;
    .registers 12

    const-string/jumbo v0, "getThumbnailFile: "

    const-string/jumbo v1, "wallpaper changed during fetching thumbnail. which = "

    invoke-static {}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getInstance()Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailFile(III)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_22

    return-object v3

    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getPairingConsideredWallpaperId(II)I

    move-result v4

    const-string/jumbo v5, "getThumbnailFile: which = "

    const-string v6, ", userId = "

    const-string v7, ", rotation = "

    invoke-static {p1, p2, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", wpId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SemWallpaperManagerService"

    invoke-static {v6, v5}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_47
    iget-object v7, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;

    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->fetchThumbnailFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_57

    if-eqz v7, :cond_b5

    :cond_51
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_54} :catch_55

    return-object v5

    :catch_55
    move-exception p0

    goto :goto_a3

    :cond_57
    :try_start_57
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getPairingConsideredWallpaperId(II)I

    move-result p0

    if-ne p0, v4, :cond_69

    invoke-virtual {v2, p1, p2, p3, v7}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->writeThumbnailFile(IIILandroid/os/ParcelFileDescriptor;)Z

    move-result p0
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_67

    if-eqz p0, :cond_51

    :try_start_63
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_55

    return-object v3

    :catchall_67
    move-exception p0

    goto :goto_9a

    :cond_69
    :try_start_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , wpId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_9a
    .catchall {:try_start_69 .. :try_end_9a} :catchall_67

    :goto_9a
    :try_start_9a
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception p1

    :try_start_9f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a3} :catch_55

    :goto_a3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getThumbnailFile: e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    return-object v5
.end method

.method public final getThumbnailFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getThumbnailFile(III)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_23

    const/high16 p1, 0x10000000

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getThumbnailFileDescriptor: e = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemWallpaperManagerService"

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWallpaperTypeByComponentName(Lcom/android/server/wallpaper/WallpaperData;Landroid/content/ComponentName;)I
    .registers 6

    const-string/jumbo v0, "SemWallpaperManagerService"

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-nez p2, :cond_45

    iget-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_5a

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget p1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result p2

    if-ne p2, v1, :cond_3a

    iget-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_3a

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getWallpaperTypeByComponentName: Default live wallpaper = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_3a
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    goto :goto_5a

    :cond_45
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_5b

    :cond_4e
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p0, :cond_5a

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-eqz p0, :cond_5a

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    :cond_5a
    :goto_5a
    move v1, v2

    :cond_5b
    :goto_5b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getWallpaperTypeByComponentName: wallpaperType = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final handleWallpaperBindingTimeout(Z)V
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$4;

    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_e

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e
    return-void
.end method

.method public isSnapshotTestMode()Z
    .registers 1

    sget-boolean p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    sget-boolean p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return p0
.end method

.method public final isSystemAndLockPaired(II)Z
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result p0

    return p0
.end method

.method public final postProcess(IILcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V
    .registers 12

    const/16 v0, 0x3e9

    if-ne p4, v0, :cond_193

    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_49

    iget-object v2, p4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    if-eqz v2, :cond_49

    iget v3, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    :try_start_12
    iget-object v4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    invoke-static {p1, p2, v1}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-eqz v6, :cond_2c

    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v6, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iput-object v6, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    goto :goto_2c

    :catch_2a
    move-exception v2

    goto :goto_45

    :cond_2c
    :goto_2c
    iget-object v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_4a

    array-length v5, v2

    if-lez v5, :cond_4a

    aget-object v5, v2, v1

    if-eqz v5, :cond_4a

    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object v2, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_44} :catch_2a

    goto :goto_4a

    :goto_45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    :cond_49
    move v3, v1

    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4f
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_190

    iget-object v2, p3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    if-eqz v2, :cond_89

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_71

    const-string/jumbo v4, "lockscreen_wallpaper_sub"

    goto :goto_74

    :cond_71
    const-string/jumbo v4, "lockscreen_wallpaper"

    :goto_74
    iget-object v2, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getDefaultValue(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_8a

    :cond_89
    move v2, v0

    :goto_8a
    if-ne v2, v0, :cond_8d

    goto :goto_ae

    :cond_8d
    invoke-virtual {p3, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_95

    goto :goto_ae

    :cond_95
    iget-object v4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v4, p1, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v4

    if-eqz v2, :cond_ae

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v5

    if-nez v5, :cond_a8

    goto :goto_ae

    :cond_a8
    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setLockscreenVisibility(II)V

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setLockscreenVisibility(II)V

    :cond_ae
    :goto_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_b2
    iget-object v4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result v5

    iget-object p3, p3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    if-eqz p3, :cond_cb

    iget-object p3, p3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    goto :goto_cc

    :cond_cb
    const/4 p3, 0x0

    :goto_cc
    iget-object v5, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-static {v4, p1, p3, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->updateSettings(Landroid/content/Context;ILjava/util/Map;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    :try_end_d1
    .catchall {:try_start_b2 .. :try_end_d1} :catchall_18b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result p3

    if-eqz p3, :cond_113

    if-eqz v3, :cond_18a

    const/4 p3, 0x3

    if-eq v3, p3, :cond_10c

    const/16 p3, 0x3e8

    if-eq v3, p3, :cond_10c

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p4, "trigger"

    const-string/jumbo v1, "snapshot"

    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p4

    or-int/lit8 p4, p4, 0x2

    invoke-virtual {p3, p1, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_105

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_105
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifySemWallpaperColors(I)V

    goto/16 :goto_18a

    :cond_10c
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    goto/16 :goto_18a

    :cond_113
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result p3

    if-nez p3, :cond_152

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p3

    if-eqz p3, :cond_120

    goto :goto_152

    :cond_120
    const/4 p3, 0x7

    if-ne v3, p3, :cond_12e

    iget-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifySemWallpaperColors(I)V

    goto :goto_18a

    :cond_12e
    if-nez v3, :cond_18a

    if-eqz p4, :cond_18a

    invoke-virtual {p4, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_13e

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_18a

    :cond_13e
    const-string/jumbo p3, "SemWallpaperManagerService"

    const-string/jumbo p4, "postProcess: Restored wallpaper is image type with no file."

    invoke-static {p3, p4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifySemWallpaperColors(I)V

    goto :goto_18a

    :cond_152
    :goto_152
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "requestNotifyCoverWallpaperChanged: userId = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", which = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "WallpaperManagerService"

    invoke-static {p4, p3}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result p3

    if-nez p3, :cond_181

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result p3

    if-nez p3, :cond_181

    goto :goto_18a

    :cond_181
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    if-eqz p1, :cond_18a

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_18a
    :goto_18a
    return-void

    :catchall_18b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_190
    move-exception p0

    :try_start_191
    monitor-exit v4
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw p0

    :cond_193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_197
    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->writeDefaultSettings(Landroid/content/Context;II)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastCallingPackage(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestClearWallpaper: lastCallingPackage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_1ba
    .catchall {:try_start_197 .. :try_end_1ba} :catchall_1be

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1be
    move-exception p0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final putDefaultLiveWallpaperProperties(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 4

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperExtras(I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "putDefaultLiveWallpaperProperties: default extra data is not present. which="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SemWallpaperManagerService"

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_26
    const-string/jumbo v0, "isPreloaded"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object p0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    iput-boolean v1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return-void
.end method

.method public final removeSnapshotByKey(I)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    iget p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final removeSnapshotByWhich(I)V
    .registers 13

    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getWhiches(I)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo v0, "SemWallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeSnapshotByWhich: whiches = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_28
    :goto_28
    if-ge v5, v2, :cond_69

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v9, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v8, v9, v7}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByWhich(II)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    if-eqz v6, :cond_28

    if-nez v4, :cond_28

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_28

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v3

    :cond_57
    if-ge v9, v6, :cond_28

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget-boolean v10, v10, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    if-eqz v10, :cond_57

    move v4, v8

    goto :goto_28

    :catchall_67
    move-exception p0

    goto :goto_d0

    :cond_69
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-virtual {p1, v2, v5, v6, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_21 .. :try_end_73} :catchall_67

    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    if-eqz p1, :cond_ca

    if-eqz v4, :cond_ca

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_89
    if-ge v3, v0, :cond_b9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget-object v2, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.dynamiclock"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    iget-boolean v2, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    if-eqz v2, :cond_89

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getPairedDlsSnapshotKey: key = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SnapshotManager"

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    if-lez v6, :cond_ca

    const-string/jumbo p1, "SemWallpaperManagerService"

    const-string/jumbo v0, "removeSnapshotByWhich: One of paired snapshot was removed. Restore last paired snapshot."

    invoke-static {p1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "android"

    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->restoreSnapshot(ILjava/lang/String;)V

    :cond_ca
    iget p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    return-void

    :goto_d0
    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_67

    throw p0
.end method

.method public final requestWallpaperPrepare(Landroid/content/ComponentName;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->mProviderRequester:Lcom/samsung/android/server/wallpaper/ProviderRequester;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/server/wallpaper/ProviderRequester;->isValidComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "ProviderRequester"

    if-nez v0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "requestWallpaperPrepare : service component is invalid - "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    goto :goto_7a

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requestWallpaperPrepare : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", which="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", hasExtras="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_43

    move v5, v1

    goto :goto_44

    :cond_43
    move v5, v2

    :goto_44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "which"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "user_id"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "wallpaper_service_class_name"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "external_params"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "prepare_wallpaper"

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/samsung/android/server/wallpaper/ProviderRequester;->invokeProviderCall(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    :goto_7a
    if-nez p0, :cond_7d

    return-object v3

    :cond_7d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_9e

    move-object p3, v3

    goto :goto_e4

    :cond_9e
    const-string/jumbo v0, "[\\W_]+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    if-ne v0, v1, :cond_ab

    aget-object p3, p3, v2

    goto :goto_e4

    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v2

    :goto_b1
    array-length v5, p3

    if-ge v4, v5, :cond_e0

    aget-object v5, p3, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_bd

    goto :goto_dd

    :cond_bd
    if-nez v4, :cond_c7

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dd

    :cond_c7
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_dd
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    :cond_e0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_e4
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8a

    :cond_e8
    return-object p1
.end method

.method public final restoreSnapshot(ILjava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "SemWallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreSnapshot: key = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callingPackage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    if-eqz v3, :cond_45

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v4, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getPairedDlsSnapshotKey(II)I

    move-result v3

    const-string/jumbo v4, "SemWallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "restoreSnapshot: pairedDlsSnapshotKey = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_45
    const/4 v3, -0x1

    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    iget-object v7, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v6

    const-string/jumbo v8, "SemWallpaperManagerService"

    if-gtz v6, :cond_67

    const-string/jumbo v2, "canRestore: No snapshot."

    invoke-static {v8, v2}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(II)V

    return-void

    :cond_67
    iget v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v6, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v6

    if-eqz v6, :cond_16d

    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result v6

    if-nez v6, :cond_77

    goto/16 :goto_16d

    :cond_77
    iget-object v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_7a
    iget-object v7, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v8, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v7

    iget-object v8, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v8, :cond_95

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_95

    iget-object v7, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    goto :goto_96

    :cond_95
    const/4 v7, 0x0

    :goto_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_7a .. :try_end_97} :catchall_16a

    if-eqz v7, :cond_123

    iget v6, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    if-ne v1, v6, :cond_fc

    iget-object v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v8, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v10, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_a9
    iget-object v11, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v11, v8, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v11

    monitor-exit v10
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_f9

    if-eqz v11, :cond_f4

    const-string/jumbo v10, "SemWallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "doRestore: which set = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_d4
    if-ge v13, v12, :cond_f4

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v15, v8}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    invoke-virtual {v0, v8, v15, v11}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    move-result v7

    invoke-virtual {v0, v8, v15, v11, v7}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d4

    :cond_f4
    const/4 v7, 0x2

    invoke-virtual {v6, v8, v7, v1, v9}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    goto :goto_133

    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit v10
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v0

    :cond_fc
    const-string/jumbo v6, "SemWallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "restoreSnapshot: SnapshotData for key "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is not the latest one."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v7, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->doRestoreOrMigrate(II)Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v9, v1, v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    goto :goto_133

    :cond_123
    const-string/jumbo v6, "SemWallpaperManagerService"

    const-string/jumbo v7, "restoreSnapshot: No snapshot."

    invoke-static {v6, v7}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v7, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(II)V

    :goto_133
    iget-object v7, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_136
    iget-object v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    iget v8, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v6, v8, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    monitor-exit v7
    :try_end_13e
    .catchall {:try_start_136 .. :try_end_13e} :catchall_167

    iget v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    const-string/jumbo v1, "SemWallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "restoreSnapshot: Elapsed Time = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    if-eqz v1, :cond_166

    if-lez v3, :cond_166

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->restoreSnapshot(ILjava/lang/String;)V

    :cond_166
    return-void

    :catchall_167
    move-exception v0

    :try_start_168
    monitor-exit v7
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw v0

    :catchall_16a
    move-exception v0

    :try_start_16b
    monitor-exit v6
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16a

    throw v0

    :cond_16d
    :goto_16d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "canRestore: No snapshot for key ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->addHistory(II)V

    return-void
.end method

.method public final restoreSnapshotInternal(IILcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    const/16 v6, 0x3eb

    if-nez v5, :cond_20

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "restoreSnapshotInternal: snapshot or WallpaperData in snapshot is null."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_20
    :try_start_20
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_418

    if-nez v5, :cond_34

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "restoreSnapshotInternal: wallpaperToRestore is null."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_34
    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v8, v5, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iget v9, v4, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    const/16 v10, 0x3e9

    if-ne v9, v8, :cond_65

    iget v9, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {v9}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->containsSystem(I)Z

    move-result v9

    if-eqz v9, :cond_65

    const-string/jumbo v0, "SemWallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoreSnapshotInternal: Same image wallpaper does not need to be restored. (id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_65
    iget v9, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v5, v9}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v12, v12, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v4, v12}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    iget-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v12, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    iget v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eq v12, v15, :cond_123

    if-eq v12, v14, :cond_101

    if-eq v12, v13, :cond_b5

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v16

    if-eqz v16, :cond_a4

    move/from16 v16, v10

    new-instance v10, Ljava/io/File;

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_144

    :cond_a4
    move/from16 v16, v10

    new-instance v10, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_144

    :cond_b5
    move/from16 v16, v10

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v10

    if-eqz v10, :cond_df

    new-instance v10, Ljava/io/File;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v13

    if-eqz v13, :cond_ca

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    goto :goto_ce

    :cond_ca
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    :goto_ce
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v14

    if-eqz v14, :cond_d8

    const-string/jumbo v14, "wallpaper_first_sub"

    goto :goto_db

    :cond_d8
    const-string/jumbo v14, "wallpaper_first_sub_home"

    :goto_db
    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_144

    :cond_df
    new-instance v10, Ljava/io/File;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v13

    if-eqz v13, :cond_ec

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    goto :goto_f0

    :cond_ec
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    :goto_f0
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v14

    if-eqz v14, :cond_fa

    const-string/jumbo v14, "wallpaper_first"

    goto :goto_fd

    :cond_fa
    const-string/jumbo v14, "wallpaper_first_home"

    :goto_fd
    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_144

    :cond_101
    move/from16 v16, v10

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v10

    if-eqz v10, :cond_116

    new-instance v10, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "wallpaper_animated_background_sub"

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_144

    :cond_116
    new-instance v10, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "wallpaper_animated_background"

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_144

    :cond_123
    move/from16 v16, v10

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v10

    if-eqz v10, :cond_138

    new-instance v10, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "wallpaper_motion_background_sub"

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_144

    :cond_138
    new-instance v10, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "wallpaper_motion_background"

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_144
    const-string/jumbo v13, "getTargetFile: which = "

    const-string v14, ", WallpaperDataWhich = "

    const-string v15, ", wallpaperType = "

    invoke-static {v2, v4, v13, v14, v15}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", targetFile = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "SemWallpaperManagerService"

    invoke-static {v12, v4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v12

    if-eqz v12, :cond_174

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v12

    goto :goto_178

    :cond_174
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v12

    :goto_178
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getCropFileName(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v12, v5, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    iget v13, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    const-string/jumbo v12, "SemWallpaperManagerService"

    const-string/jumbo v13, "restoreSnapshotInternal: which = "

    const-string v14, ", type = "

    const-string v15, ", backupFile = "

    invoke-static {v2, v9, v13, v14, v15}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", targetFile = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", restoreWallpaperId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", lastCallingPackage = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v6, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1de

    const-string/jumbo v6, "[RESTORE]"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1da

    const-string/jumbo v6, "[RESTORE]"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    goto :goto_1e4

    :cond_1da
    invoke-virtual {v5, v4}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    goto :goto_1e4

    :cond_1de
    const-string/jumbo v4, "[RESTORE]"

    invoke-virtual {v5, v4}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    :goto_1e4
    const-string/jumbo v4, "SemWallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "restoreSnapshotInternal: wallpaperToRestore ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v9, :cond_361

    const/4 v6, 0x1

    if-eq v9, v6, :cond_352

    const/4 v6, 0x3

    if-eq v9, v6, :cond_339

    const/4 v6, 0x4

    if-eq v9, v6, :cond_337

    const/4 v6, 0x5

    if-eq v9, v6, :cond_327

    const/4 v6, 0x7

    if-eq v9, v6, :cond_2ae

    const/16 v6, 0x8

    if-eq v9, v6, :cond_285

    const/16 v3, 0x3e8

    if-eq v9, v3, :cond_27a

    if-eqz v11, :cond_233

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_233

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    invoke-static {v11, v10}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_39a

    goto/16 :goto_399

    :cond_233
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v3

    if-eqz v3, :cond_26e

    const-string/jumbo v3, "SemWallpaperManagerService"

    const-string/jumbo v4, "restoreSnapshotInternal: Live wallpaper."

    invoke-static {v3, v4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    const/4 v6, 0x1

    or-int/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput-boolean v6, v3, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    if-gez v8, :cond_25e

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    goto :goto_263

    :cond_25e
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    :goto_263
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    return v16

    :cond_26e
    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "restoreSnapshotInternal: Unhandled snapshot!"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ea

    return v0

    :cond_27a
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    return v16

    :cond_285
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    if-eqz v11, :cond_2a4

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a4

    invoke-static {v11, v10}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_39a

    goto/16 :goto_399

    :cond_2a4
    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "restoreSnapshotInternal: backupFile not exist."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_2ae
    sget-boolean v6, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-eqz v6, :cond_2d7

    iget v6, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-static {v1, v6, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2d4

    const-string/jumbo v6, "SemWallpaperManagerService"

    const-string/jumbo v7, "restoreSnapshotInternal: Asset files exist."

    invoke-static {v6, v7}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-static {v1, v6, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v1, v4}, Lcom/samsung/android/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->renameDirectory(Ljava/io/File;Ljava/io/File;)V

    :cond_2d4
    invoke-static {v5}, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->recoverComponentNameIfMissed(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_2d7
    iget v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    if-nez v4, :cond_2dd

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :cond_2dd
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v4

    if-eqz v4, :cond_31a

    iget v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v4

    if-eqz v4, :cond_31a

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    goto :goto_31a

    :cond_2f6
    iget-object v6, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {v6, v1, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v6

    if-eqz v3, :cond_308

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v7

    if-nez v7, :cond_30a

    :cond_308
    const/4 v8, 0x1

    goto :goto_318

    :cond_30a
    iget v7, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v7}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v7

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v3, v6, v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    goto :goto_31a

    :goto_318
    iput-boolean v8, v5, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    :cond_31a
    :goto_31a
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    return v16

    :cond_327
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    return v16

    :cond_337
    const/4 v6, 0x1

    goto :goto_352

    :cond_339
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DLS_SNAPSHOT:Z

    if-eqz v3, :cond_34c

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_34c
    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    return v16

    :cond_352
    :goto_352
    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    return v16

    :cond_361
    if-eqz v11, :cond_39e

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_39e

    if-ltz v8, :cond_39e

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    iput v2, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_375
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v4

    if-eqz v4, :cond_380

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    goto :goto_382

    :catchall_37e
    move-exception v0

    goto :goto_39c

    :cond_380
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    :goto_382
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v7

    invoke-virtual {v4, v1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    monitor-exit v6
    :try_end_38e
    .catchall {:try_start_375 .. :try_end_38e} :catchall_37e

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    invoke-static {v11, v10}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_39a

    :goto_399
    return v16

    :cond_39a
    const/4 v0, -0x2

    return v0

    :goto_39c
    :try_start_39c
    monitor-exit v6
    :try_end_39d
    .catchall {:try_start_39c .. :try_end_39d} :catchall_37e

    throw v0

    :cond_39e
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v6

    if-eqz v6, :cond_404

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v6

    if-eqz v6, :cond_3bf

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v3

    if-eqz v3, :cond_3bf

    const/4 v4, 0x1

    :cond_3bf
    const-string/jumbo v3, "SemWallpaperManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "restoreSnapshotInternal: isPartOfSystemAndLock = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", restoreWallpaperId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_3e0

    if-gez v8, :cond_404

    :cond_3e0
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    const/4 v6, 0x1

    or-int/2addr v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput-boolean v6, v3, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    return v16

    :cond_404
    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "restoreSnapshotInternal: Preloaded ?"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :catch_418
    move-exception v0

    const-string/jumbo v1, "SemWallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreSnapshotInternal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public final saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 5

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveDefaultLiveWallpaperData: componentName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SemWallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_28

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->putDefaultLiveWallpaperProperties(Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_28
    return-void
.end method

.method public final saveDefaultMutipackWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 10

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultMultipackStyle(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_60

    const-string/jumbo v0, "MULTIPLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_60

    :cond_1d
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_32

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_33

    :cond_32
    move v4, v6

    :goto_33
    if-ne v4, v6, :cond_3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v0, v2

    goto :goto_49

    :cond_3b
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "tilt"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    move-object v7, v0

    move v0, p0

    move-object p0, v7

    :goto_49
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "multipack://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5b

    const-string p0, "?tilt=true"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6a

    :cond_60
    :goto_60
    const-string/jumbo p0, "SemWallpaperManagerService"

    const-string/jumbo v0, "getDefaultMultiPackUri: defaultWallpaperStyle is empty or not MULTIPLE!"

    invoke-static {p0, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_6a
    iput-boolean v2, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object p0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    iput-boolean v3, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    return-void
.end method

.method public final saveDefaultVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {p0, v2}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoWallpaperFileName(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    iput-object v1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.wallpaper.res"

    iput-object v1, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    iput-object v0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    return-void
.end method

.method public final saveSettingsLockedForSnapshot(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->saveSettingsLockedForSnapshot(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final semClearWallpaperLocked(IILjava/lang/String;)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByWhich(I)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string/jumbo v4, "android"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string/jumbo v4, "SemWallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "semClearWallpaperLocked with \'android\'.\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    const-string v4, "(clear)"

    invoke-static {v3, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v5

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v6

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {v9}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v1, v9}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-eqz v8, :cond_b3

    const-string/jumbo v4, "SemWallpaperManagerService"

    const-string/jumbo v5, "semClearWallpaperLocked: Default operator wallpaper"

    invoke-static {v4, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v10, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v1, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-boolean v9, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_ad

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ad

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SemWallpaperManagerService"

    const-string/jumbo v4, "setFactoryDefaultWallpaper: uriString = "

    invoke-static {v4, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object v1, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    :cond_ad
    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :cond_b3
    iget-object v8, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    or-int/lit8 v11, v4, 0x1

    invoke-virtual {v8, v2, v11}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    or-int/lit8 v13, v4, 0x2

    invoke-virtual {v12, v2, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v12

    new-instance v13, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v13, v2, v1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    iput v1, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v14, v13, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v1, v14, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result v14

    iget-object v15, v13, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v14, v15, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v13, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    const-string/jumbo v15, "SemWallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "semClearWallpaperLocked: factoryDefaultType = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    if-eq v14, v9, :cond_299

    const/4 v9, 0x7

    if-eq v14, v9, :cond_285

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v14, v5, :cond_1c1

    if-eqz v7, :cond_172

    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    if-eqz v5, :cond_172

    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v5}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_11d

    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    if-ne v5, v9, :cond_11d

    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v5}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_125

    :cond_11d
    iget-object v5, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v5, v4, v14}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultWallpaperPaired(II)Z

    move-result v4

    if-eqz v4, :cond_172

    :cond_125
    iget-object v4, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v5, -0x1

    iput v5, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v12}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    iget-object v4, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v14, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v12, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onDetachWallpaper(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object v4, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onLockWallpaperChanged(II)V

    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v2, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v1, v12, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "semClearWallpaperLocked: Back to default system&lock wallpaper."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_172
    if-eqz v7, :cond_175

    move-object v8, v12

    :cond_175
    iget-object v4, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v5, -0x1

    iput v5, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    iget-object v4, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v4}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    iget-object v4, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v14, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v8, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperUri(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object v3, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v7, :cond_1ad

    iget-object v3, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object v4, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onLockWallpaperChanged(II)V

    :cond_1ad
    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v2, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    return-void

    :cond_1c1
    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v13, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v15}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    invoke-static {v15}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v2

    iget v3, v13, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v4, v13, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-boolean v5, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    iget-boolean v7, v13, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    iget-object v8, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    iget-object v9, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iget-object v10, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iget-object v11, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    const-string/jumbo v12, "WallpaperManagerService"

    const-string/jumbo v14, "onSetVideoWallpaper: userId = "

    const-string v6, ", which = "

    move/from16 p0, v1

    const-string v1, ", isPreloaded = "

    invoke-static {v3, v15, v14, v6, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", allowBackup = "

    const-string v14, ", extras = "

    invoke-static {v1, v5, v6, v7, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", videoFilePath = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", videoPackage = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", videoFileName = "

    const-string v14, ", callingPackage = "

    invoke-static {v1, v10, v6, v11, v14}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_227
    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move/from16 v20, v3

    move-object/from16 v19, v4

    move/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/wallpaper/WallpaperManagerService;->setVideoWallpaperLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/os/Bundle;)V

    move/from16 v3, v20

    if-eqz v2, :cond_257

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v5, 0x1

    or-int/lit8 v6, p0, 0x1

    invoke-virtual {v4, v3, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_257

    :catchall_255
    move-exception v0

    goto :goto_283

    :cond_257
    :goto_257
    monitor-exit v1
    :try_end_258
    .catchall {:try_start_227 .. :try_end_258} :catchall_255

    invoke-static {v15}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v1

    if-nez v1, :cond_267

    invoke-static {v15}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_265

    goto :goto_267

    :cond_265
    const/4 v4, 0x1

    goto :goto_26d

    :cond_267
    :goto_267
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x1

    invoke-virtual {v1, v13, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :goto_26d
    if-eqz v2, :cond_274

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, v13, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;Z)V

    :cond_274
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    iget-object v1, v13, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v1, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    return-void

    :goto_283
    :try_start_283
    monitor-exit v1
    :try_end_284
    .catchall {:try_start_283 .. :try_end_284} :catchall_255

    throw v0

    :cond_285
    if-nez v6, :cond_28b

    if-eqz v5, :cond_28a

    goto :goto_28b

    :cond_28a
    return-void

    :cond_28b
    :goto_28b
    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :cond_299
    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultMutipackWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semClearWallpaperLocked: wallpaper = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    const-string/jumbo v2, "android"

    if-eqz v1, :cond_31

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    or-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    return-void

    :cond_31
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    return-void
.end method

.method public final setFactoryDefaultWallpaper(IILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 12

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_69

    const-string/jumbo v1, "SemWallpaperManagerService"

    const-string/jumbo v4, "setFactoryDefaultWallpaper: system & lock requested. userId = "

    const-string v5, ", which = "

    invoke-static {p1, p2, v4, v5, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v1, v0, 0x1

    or-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->setFactoryDefaultWallpaper(IILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {p0, p1, v4, p3, p4}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->setFactoryDefaultWallpaper(IILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {p1}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, p1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, p1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    if-nez v5, :cond_12f

    if-nez p1, :cond_12f

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v1, v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultWallpaperPaired(II)Z

    move-result p1

    if-eqz p1, :cond_12f

    const-string/jumbo p1, "SemWallpaperManagerService"

    const-string/jumbo v0, "setFactoryDefaultWallpaper: default wallpaper paired"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput-boolean v3, p3, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    iput-boolean v3, p4, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    iget-object p1, p4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5d
    iput v2, p4, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_66

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onDetachWallpaper(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :catchall_66
    move-exception p0

    :try_start_67
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p0

    :cond_69
    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "setFactoryDefaultWallpaper: userId = "

    const-string v4, ", which = "

    const-string v5, ", systemWallpaper = "

    invoke-static {p1, p2, v1, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", lockWallpaper = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-nez v0, :cond_a6

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "setFactoryDefaultWallpaper: which should contain mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz v0, :cond_9d

    goto :goto_a6

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "setFactoryDefaultWallpaper: which should contain mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    :goto_a6
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    if-eqz v1, :cond_b4

    move-object p3, p4

    :cond_b4
    if-nez p3, :cond_c0

    const-string/jumbo p0, "SemWallpaperManagerService"

    const-string/jumbo p1, "setFactoryDefaultWallpaper: No WallpaperData to initialize."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c0
    iget-object p1, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {p3}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    const-string/jumbo p1, "android"

    invoke-virtual {p3, p1}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    iput p2, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object p1, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput p2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 p4, 0x0

    iput-boolean p4, p3, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    iput-boolean v3, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    iput-boolean p4, p3, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperIdRequested(Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p1

    if-eqz p1, :cond_ea

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p3, p1}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    :cond_ea
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/android/server/wallpaper/CMFWallpaper;

    invoke-virtual {p4}, Lcom/samsung/android/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p4}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_130

    const-string/jumbo p1, "SemWallpaperManagerService"

    const-string/jumbo p4, "setFactoryDefaultWallpaper: Default operator wallpaper."

    invoke-static {p1, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_12f

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_12f

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "file://"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemWallpaperManagerService"

    const-string/jumbo p2, "setFactoryDefaultWallpaper: uriString = "

    invoke-static {p2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object p0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    :cond_12f
    return-void

    :cond_130
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result p1

    const-string/jumbo p4, "SemWallpaperManagerService"

    const-string/jumbo v1, "setFactoryDefaultWallpaper: factoryDefaultType = "

    invoke-static {p1, v1, p4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p4, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput p1, p4, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 p4, 0x3

    if-eq p1, p4, :cond_171

    const/4 p4, 0x7

    if-eq p1, p4, :cond_15a

    const/16 p4, 0x8

    if-eq p1, p4, :cond_156

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/android/server/wallpaper/DefaultWallpaper;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperUri(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput-object p0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    return-void

    :cond_156
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :cond_15a
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {p1, p2, p4}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultWallpaperPaired(II)Z

    move-result p1

    if-eqz p1, :cond_16d

    if-eqz v0, :cond_168

    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :cond_168
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    return-void

    :cond_16d
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    :cond_171
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultMutipackWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public final setLegibilityColorsToWallpaperData(IILandroid/os/Bundle;)V
    .registers 9

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p1

    or-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->setLegibilityColorsToWallpaperData(IILandroid/os/Bundle;)V

    or-int/2addr p1, v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->setLegibilityColorsToWallpaperData(IILandroid/os/Bundle;)V

    return-void

    :cond_15
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "lockLegibilityColors"

    goto :goto_22

    :cond_1f
    const-string/jumbo v0, "systemLegibilityColors"

    :goto_22
    const/4 v2, 0x0

    if-nez p3, :cond_27

    move-object p3, v2

    goto :goto_2b

    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    :goto_2b
    const-string/jumbo v0, "setLegibilityColorsToWallpaperData: which="

    const-string v3, ", colorsBundle = "

    invoke-static {p1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_3a

    const-string/jumbo v3, "null"

    goto :goto_4f

    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SemWallpaperManagerService"

    invoke-static {v3, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    if-nez p3, :cond_6b

    iput-object v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iput-object v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-void

    :cond_6b
    const-string/jumbo p2, "rotation0"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/SemWallpaperColors;

    if-nez p2, :cond_81

    const-string/jumbo p0, "setSemWallpaperColors: color of rotation 0 is missing!"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iput-object v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    return-void

    :cond_81
    iput-object p2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v0, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    const-string/jumbo p0, "rotation90"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/SemWallpaperColors;

    const-string/jumbo v0, "rotation270"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/app/SemWallpaperColors;

    const/4 v0, 0x1

    if-eqz p0, :cond_ad

    if-eqz p3, :cond_ad

    new-array v2, v1, [Landroid/app/SemWallpaperColors;

    aput-object p0, v2, v4

    aput-object p3, v2, v0

    goto :goto_c4

    :cond_ad
    if-eqz p0, :cond_b6

    new-array v2, v1, [Landroid/app/SemWallpaperColors;

    aput-object p0, v2, v4

    aput-object p0, v2, v0

    goto :goto_c4

    :cond_b6
    if-eqz p3, :cond_c4

    const-string/jumbo v2, "setSemWallpaperColors: colors of rotation 90 is missing"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v1, [Landroid/app/SemWallpaperColors;

    aput-object p3, v2, v4

    aput-object p3, v2, v0

    :cond_c4
    :goto_c4
    iput-object v2, p1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSemWallpaperColors: rotation_0="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", rotation_90="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", rotation_270="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSnapshotTestMode(Z)V
    .registers 2

    sget-boolean p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    sput-boolean p1, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    return-void
.end method
