.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field public final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field public final mLock:Ljava/lang/Object;

.field public final mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPrevStartedUserId:I

.field public final mService:Lcom/android/server/om/OverlayManagerService$1;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const-string/jumbo v8, "OverlayManager"

    const-string/jumbo v9, "createIdmapForThemeOverlay() failed : "

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    new-instance v2, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mService:Lcom/android/server/om/OverlayManagerService$1;

    const-wide/32 v10, 0x4000000

    :try_start_0
    const-string/jumbo v2, "OMS#OverlayManagerService"

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v4, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-direct {v4, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    new-instance v14, Lcom/android/server/om/IdmapManager;

    sget-object v2, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v2}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    sput-object v2, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    :cond_0
    sget-object v2, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {v14, v2, v4}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V

    new-instance v15, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v15}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v15, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    new-instance v12, Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v16

    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v17

    move-object v13, v4

    invoke-direct/range {v12 .. v17}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V

    move-object v4, v13

    iput-object v12, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    new-instance v2, Lcom/android/server/om/OverlayActorEnforcer;

    invoke-direct {v2, v4}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V

    iput-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x1

    invoke-virtual {v0, v3, v2, v5, v13}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v16

    new-instance v2, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    new-instance v2, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V

    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt;

    new-instance v7, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;

    invoke-direct {v7, v1}, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    move-object v6, v14

    move-object v5, v15

    invoke-direct/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;)V

    move-object v15, v5

    iput-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    iput-object v2, v12, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

    new-instance v0, Lcom/android/server/om/OverlayManagerSettingsHelper;

    invoke-direct {v0, v15}, Lcom/android/server/om/OverlayManagerSettingsHelper;-><init>(Lcom/android/server/om/OverlayManagerSettings;)V

    invoke-static {v3, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getInstance(Landroid/content/Context;Lcom/android/server/om/OverlayManagerSettingsHelper;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x104002a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v13}, Lcom/android/server/om/OverlayManagerService;->onStartUser(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->isFotaUpgrade(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->createIdmapForThemeOverlay()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string/jumbo v0, "overlay"

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerService;->mService:Lcom/android/server/om/OverlayManagerService$1;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static handleIncomingUser$1(ILjava/lang/String;)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final backgroundAllowList()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v1, "com.samsung.android.shortcutbackupservice"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "backgroundAllowlist exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "SWT_OverlayManager"

    invoke-static {v1, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final disableDynamicContrast()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    const-string/jumbo v5, "contrast_level"

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    const-string/jumbo v5, "theme_customization_overlay_packages"

    const-string v6, ""

    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disableDynamicContrast posted delay, due: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final getSettingsFile()Lcom/android/server/om/ResilientAtomicFile;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "overlays.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "overlays-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "overlays.xml.reservecopy"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/om/ResilientAtomicFile;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/om/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/om/OverlayManagerService;)V

    return-object v3
.end method

.method public final initIfNeeded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 11

    const/16 v0, 0x226

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    iget-object p1, p1, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "SemWT_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->isFotaUpgrade(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string v0, "/data/overlays/remaps"

    const-string/jumbo v2, "SWT_Utils"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleteAllFilesInDir, failed to delete "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/om/wallpapertheme/FotaPreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "ro.build.PDA"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->readCSCVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro.omc.build.id"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "stored_pda_version"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "stored_csc_version"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "stored_qbid_version"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateFotaUpgradeStatus : currentPDAVersion = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentCSCVersion = "

    const-string v5, ", currentQBId = "

    invoke-static {v0, v2, v3, v5, v4}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SWT_Utils"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->backgroundAllowList()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    sput-boolean v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    sget-object v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_e

    :cond_8
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "initWallpaperTheme"

    const-string/jumbo v3, "SWT_OverlayManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$ValidatorListener;-><init>()V

    iget v4, v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->id:I

    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.samsung.android.shortcutbackupservice"

    const-string/jumbo v8, "com.samsung.android.shortcutbackupservice.colorthemevalidator.ValidatorService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.shortcutbackupservice.colorthemevalidator.action.ACTION_CHECK_ON_BOOT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "UNIQUE_ID"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    sput-boolean v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Couldn\'t start ValidatorService, e :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget-boolean v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z

    if-nez v2, :cond_9

    goto :goto_8

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Start validation service, "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v2, v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    invoke-virtual {v2, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_a

    :goto_5
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->removeValidatorListener(I)V

    goto :goto_6

    :cond_a
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->removeValidatorListener(I)V

    iget-boolean v0, v0, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->isValidated:Z

    if-eqz v0, :cond_b

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p1

    :try_start_3
    const-string/jumbo v0, "await for validator service has been interrupted, e:"

    invoke-static {v3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :cond_b
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed at initWallpaperTheme, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :goto_7
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->removeValidatorListener(I)V

    throw p0

    :cond_c
    :goto_8
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService$ValidatorListener;->removeValidatorListener(I)V

    :goto_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    const-string/jumbo v2, "ms"

    const-string/jumbo v3, "SWT_WTM_Wrapper"

    iget-object v4, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    const-string/jumbo v5, "init color theme metadata has finished : "

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "restore palette overlays"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v8, v9}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    iget-object v10, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    invoke-virtual {v10, v8, v9, v5}, Landroid/content/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_a

    :catch_2
    move-exception p1

    goto/16 :goto_d

    :cond_d
    :goto_a
    if-eqz p1, :cond_12

    new-instance p1, Landroid/content/om/OverlayManagerTransaction$Builder;

    invoke-direct {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    iget-object v5, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    new-instance v8, Landroid/content/om/OverlayIdentifier;

    const-string/jumbo v9, "android"

    const-string/jumbo v10, "MonetPalette"

    invoke-direct {v8, v9, v10}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, v8, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->restoreMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayInfo;)V

    const-string/jumbo v1, "regenerate color theme overlays"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    invoke-virtual {v4, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v8}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v8}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "SemWT_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "unregister unnecessary color theme overlays for fota upgrade"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p1, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->unregisterNotExistedOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/util/ArrayList;)V

    :cond_10
    const-string/jumbo v0, "SWT_ThemeManager"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/overlays/wallpapertheme/"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    invoke-static {v1, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    const-string/jumbo v1, "success to change color theme directory permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    :catch_3
    move-exception v1

    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed setPermissionsDirIfExisted, e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v4, "overlay"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    move-result-object p1

    invoke-interface {v4, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoring color theme has finished, ready:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms, commit:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_e

    :goto_d
    const-string/jumbo v0, "failed initWallpaperTheme, wallpaper theming will not working, ex = "

    invoke-static {p1, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "jobscheduler"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const-string/jumbo p1, "OverlayManager"

    if-eqz p0, :cond_13

    const/16 v0, 0x2a8f

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    const-string/jumbo p0, "removeJobFromJobScheduler: LOM JOB is removed from jobScheduler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_13
    const-string/jumbo p0, "removeJobFromJobScheduler: jobScheduler is not initialized"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :goto_f
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :cond_14
    :goto_10
    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStartUser(IZ)V
    .locals 6

    const-string/jumbo v0, "[onStartUser] newUserId : "

    const-string/jumbo v1, "OMS#onStartUser "

    iget v2, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v3, "Updating overlays for starting user "

    invoke-static {p1, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x4000000

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v4, "OMS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz v0, :cond_1

    iput-boolean p2, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mIsInitOnBoot:Z

    :cond_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p2, :cond_2

    iput-boolean v0, p2, Lcom/android/server/om/OverlayManagerServiceExt;->mIsInitOnBoot:Z

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iput p1, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->onStartUser(IZ)V

    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    const-class p0, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/UiModeManagerService$LocalService;

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const-string/jumbo p2, "onEarlySwitchUser : "

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Lcom/android/server/UiModeManagerService$10;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    sget-object v1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p2, p2, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " userID : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p1, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    iget v1, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean p2, p1, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    if-nez p2, :cond_1

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$3;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$3;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final persistSettingsLocked()V
    .locals 3

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "Writing overlay settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getSettingsFile()Lcom/android/server/om/ResilientAtomicFile;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/om/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0, v2}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lcom/android/server/om/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/server/om/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v2, "failed to persist overlay state"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/om/ResilientAtomicFile;->close()V

    return-void

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/om/ResilientAtomicFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public final restoreSettingsLocked()V
    .locals 13

    const-string/jumbo v0, "failed to restore overlay state"

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string/jumbo v2, "OverlayManager"

    const-wide/32 v3, 0x4000000

    :try_start_0
    const-string/jumbo v5, "restoreSettingsLocked"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "OMS#restoreSettings"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getSettingsFile()Lcom/android/server/om/ResilientAtomicFile;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/om/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v1, "settings file recovery failure"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/om/ResilientAtomicFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    :try_start_3
    invoke-virtual {v1, v6}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8, v8}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v7

    array-length v10, v7

    :goto_1
    if-ge v9, v10, :cond_5

    aget v11, v7, v9

    invoke-static {v8, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v12

    if-gez v12, :cond_2

    invoke-virtual {v1, v11}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :goto_2
    :try_start_4
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v5, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v5, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v5, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v5, v6, v1}, Lcom/android/server/om/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettingsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/om/ResilientAtomicFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_5
    :try_start_6
    invoke-virtual {v5}, Lcom/android/server/om/ResilientAtomicFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 6

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v2, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p1, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;
    .locals 10

    const-string/jumbo v0, "OMS#updatePackageManagerLocked "

    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v3, "Update package manager about changed overlays"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v3, "android"

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    move-object p2, v0

    check-cast p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;-><init>(ILjava/lang/Object;)V

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    move-object p2, p3

    :cond_0
    new-instance p3, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {p3, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string/jumbo v5, "android"

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v7}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    const-string/jumbo v8, "android"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v6, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v8

    invoke-static {v8, v8, v6, p1}, Lcom/android/server/om/OverlayPolicyManager;->filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-static {v4, v8, v6, p1}, Lcom/android/server/om/OverlayPolicyManager;->filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-virtual {v7, v8}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-virtual {v7}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, p3, p0, v3}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-> Updating overlay: target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " overlays=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "] userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "OverlayManager"

    const-string v5, "Failed to change enabled overlays for %s user %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;Z)V
    .locals 10

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p1, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7, v9, v1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v5, p0

    move v8, p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    move-object v5, p0

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZLandroid/util/ArraySet;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    move p2, v8

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
