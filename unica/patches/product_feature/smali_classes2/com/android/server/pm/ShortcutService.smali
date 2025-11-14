.class public Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ACTIVITY_NOT_EXPORTED:Lcom/android/server/pm/ShortcutService$1;

.field public static final ACTIVITY_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field static final DEFAULT_MAX_SHORTCUTS_PER_ACTIVITY:I = 0xf

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x64

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8

.field static final DIRECTORY_DUMP:Ljava/lang/String; = "shortcut_dump"

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"

.field public static final EMPTY_RESOLVE_INFO:Ljava/util/List;

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"

.field static final FILENAME_USER_PACKAGES_RESERVE_COPY:Ljava/lang/String; = "shortcuts.xml.reservecopy"

.field public static final PACKAGE_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$1;

.field public static final sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBitmapExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mChooserActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDirtyUserIds:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public mIconPersistQuality:I

.field public mLastLockedUser:I

.field public mLastWtfStacktrace:Ljava/lang/Exception;

.field public final mListeners:Ljava/util/ArrayList;

.field public mMaxIconDimension:I

.field public mMaxShortcuts:I

.field public mMaxShortcutsPerApp:I

.field public mMaxUpdatesPerInterval:I

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNonPersistentUsersLock:Ljava/lang/Object;

.field public final mOnRoleHoldersChangedListener:Lcom/android/server/pm/ShortcutService$3;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;

.field public final mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mReceiver:Lcom/android/server/pm/ShortcutService$5;

.field public mResetInterval:J

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public mSaveDelayMillis:I

.field public final mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

.field final mServiceLock:Ljava/lang/Object;

.field public final mShortcutAddCount:Ljava/util/HashMap;

.field public final mShortcutChangeCallbacks:Ljava/util/ArrayList;

.field public final mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

.field public final mShortcutNonPersistentUsers:Landroid/util/SparseArray;

.field public final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mShutdownReceiver:Lcom/android/server/pm/ShortcutService$5;

.field public final mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field public final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

.field public final mUidObserver:Lcom/android/server/pm/ShortcutService$4;

.field public final mUidState:Landroid/util/SparseIntArray;

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mUriGrantsManager:Landroid/app/IUriGrantsManager;

.field public final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUriPermissionOwner:Landroid/os/IBinder;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUsers:Landroid/util/SparseArray;

.field public mWtfCount:I

.field public final mWtfLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static -$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static -$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_22

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_27

    :cond_22
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_20

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_20

    throw p0
.end method

.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutService$1;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Lcom/android/server/pm/ShortcutService$1;

    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutService$1;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutAddCount:Ljava/util/HashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mWtfLock:Ljava/lang/Object;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v10, 0xa

    const-wide/16 v11, 0x3c

    const/16 v9, 0xa

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v8, v0, Lcom/android/server/pm/ShortcutService;->mBitmapExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    new-instance v3, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v22, "isActivityEnabled"

    const-string/jumbo v23, "packageUpdateCheck"

    const-string/jumbo v9, "getHomeActivities()"

    const-string v10, "Launcher permission check"

    const-string/jumbo v11, "getPackageInfo()"

    const-string/jumbo v12, "getPackageInfo(SIG)"

    const-string/jumbo v13, "getApplicationInfo"

    const-string/jumbo v14, "cleanupDanglingBitmaps"

    const-string/jumbo v15, "getActivity+metadata"

    const-string/jumbo v16, "getInstalledPackages"

    const-string/jumbo v17, "checkPackageChanges"

    const-string/jumbo v18, "getApplicationResources"

    const-string/jumbo v19, "resourceNameLookup"

    const-string/jumbo v20, "getLauncherActivity"

    const-string/jumbo v21, "checkLauncherActivity"

    const-string/jumbo v24, "asyncPreloadUserDelay"

    const-string/jumbo v25, "getDefaultLauncher()"

    filled-new-array/range {v9 .. v25}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    iput v7, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Lcom/android/server/pm/ShortcutService$3;

    invoke-direct {v3, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mOnRoleHoldersChangedListener:Lcom/android/server/pm/ShortcutService$3;

    new-instance v3, Lcom/android/server/pm/ShortcutService$4;

    invoke-direct {v3, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Lcom/android/server/pm/ShortcutService$4;

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    new-instance v9, Lcom/android/server/pm/ShortcutService$5;

    const/4 v3, 0x0

    invoke-direct {v9, v0, v3}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    iput-object v9, v0, Lcom/android/server/pm/ShortcutService;->mReceiver:Lcom/android/server/pm/ShortcutService$5;

    new-instance v3, Lcom/android/server/pm/ShortcutService$5;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    new-instance v10, Lcom/android/server/pm/ShortcutService$5;

    const/4 v4, 0x2

    invoke-direct {v10, v0, v4}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    iput-object v10, v0, Lcom/android/server/pm/ShortcutService;->mShutdownReceiver:Lcom/android/server/pm/ShortcutService$5;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/content/pm/ShortcutServiceInternal;

    new-instance v5, Lcom/android/server/pm/ShortcutService$LocalService;

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    invoke-static {v4, v5}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v6, Landroid/os/Handler;

    move-object/from16 v4, p2

    invoke-direct {v6, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    const-class v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string/jumbo v5, "ShortcutService"

    check-cast v4, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v4, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    const-class v4, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/role/RoleManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    new-instance v4, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-direct {v4, v0, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    new-instance v2, Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    if-eqz p3, :cond_196

    return-void

    :cond_196
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v11, 0x3e8

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    move-object v2, v3

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_1ef
    new-instance v2, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, v2, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->onChange(Z)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_20c} :catch_20c

    :catch_20c
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Lcom/android/server/pm/ShortcutService$4;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mOnRoleHoldersChangedListener:Lcom/android/server/pm/ShortcutService$3;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V

    return-void
.end method

.method public static addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1e

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static assignImplicitRanks(Ljava/util/List;)V
    .registers 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    if-eqz p0, :cond_17

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_e
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-wide p2

    :cond_c
    :try_start_c
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_11

    return-wide p0

    :catch_11
    const-string p1, "Error parsing long "

    const-string/jumbo v0, "ShortcutService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide p2
.end method

.method public static prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .registers 12

    if-nez p3, :cond_3

    goto :goto_f

    :cond_3
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_f
    const/4 p0, 0x0

    return-object p0

    :cond_11
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_1f
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_28

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_28
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_37

    new-instance p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;

    const/4 p0, 0x1

    invoke-direct {v3, p0, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    return-object v2
.end method

.method public static removeNonKeyFields(Ljava/util/List;)Ljava/util/List;
    .registers 6

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_2e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_23
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2e
    return-object v1
.end method

.method public static shrinkBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p0, :cond_d

    if-gt v1, p0, :cond_d

    return-object p1

    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v0, p0

    div-int/2addr v0, v2

    mul-int/2addr v1, p0

    div-int/2addr v1, v2

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p0
.end method

.method public static throwForInvalidTag(ILjava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid tag \'%s\' found at depth %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static warnForInvalidTag(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid tag \'%s\' found at depth %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_8

    const-string p2, "1"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    const-string p2, "0"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 11

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(ILjava/util/List;)V

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {p1, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_48

    monitor-exit v2

    return v3

    :catchall_46
    move-exception p0

    goto :goto_74

    :cond_48
    const/4 v0, 0x0

    move-object v5, v0

    move v4, v3

    :goto_4b
    if-ge v4, v1, :cond_69

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, v6, v3, v3}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    invoke-virtual {p1, v6}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    if-nez v5, :cond_63

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_63
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_69
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_1d .. :try_end_6d} :catchall_46

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return p3

    :goto_74
    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_46

    throw p0
.end method

.method public final addShortcutCount(ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutAddCount:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_40

    const-string/jumbo v2, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " tries to create 1,000 shortcuts before saveUser. Schedule saveUser to clear bitamp files."

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    goto :goto_41

    :catchall_3e
    move-exception p0

    goto :goto_4c

    :cond_40
    move v3, v2

    :goto_41
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutAddCount:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_3e

    throw p0
.end method

.method public final allowSmartSwitchBackup(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final applyRestore([BI)V
    .registers 8

    const-string v0, "Can\'t restore: user (with userId="

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v2

    if-nez v2, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is locked or not running"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v1

    return-void

    :catchall_28
    move-exception p0

    goto :goto_a7

    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-0-start.txt"

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-1-payload.xml"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_28

    const/4 p1, 0x1

    :try_start_4e
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1
    :try_end_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_52} :catch_9b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_9b
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_4e .. :try_end_52} :catch_9b
    .catchall {:try_start_4e .. :try_end_52} :catchall_28

    :try_start_52
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v2, "restore-2.txt"

    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v0, "restore-3.txt"

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v0, "restore-4.txt"

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v0, "restore-5-finish.txt"

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_52 .. :try_end_97} :catchall_28

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->injectSaveUser(I)V

    return-void

    :catch_9b
    move-exception p0

    :try_start_9c
    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo p2, "Restoration failed."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return-void

    :goto_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_9c .. :try_end_a8} :catchall_28

    throw p0

    :cond_a9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyRestoreSmartSwitch(Landroid/os/ParcelFileDescriptor;I)I
    .registers 10

    const-string/jumbo v0, "Shortcut Restoration failed : "

    const-string/jumbo v1, "Shortcut Restoration failed : "

    const-string/jumbo v2, "Shortcut Restoration failed : user locked - "

    const-string/jumbo v3, "Start Shortcut Restoration"

    invoke-static {v3}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.scloud.backup.lib.write"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_19
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_33

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    monitor-exit v3

    return v5

    :catchall_31
    move-exception p0

    goto :goto_99

    :cond_33
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_31

    const/4 v4, 0x0

    :try_start_3b
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v6, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_80
    .catchall {:try_start_3b .. :try_end_40} :catchall_60

    :try_start_40
    invoke-virtual {p0, p2, v6, v5}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_47} :catch_64
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_47} :catch_64
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_40 .. :try_end_47} :catch_64
    .catchall {:try_start_40 .. :try_end_47} :catchall_62

    :try_start_47
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->injectSaveUser(I)V
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_60

    :try_start_55
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_31

    const-string/jumbo p0, "Success Shortcut Restoration"

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    return v4

    :catchall_60
    move-exception p1

    goto :goto_95

    :catchall_62
    move-exception p1

    goto :goto_7c

    :catch_64
    move-exception p1

    :try_start_65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_62

    :try_start_74
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_60

    :try_start_77
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    :goto_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_31

    goto :goto_94

    :goto_7c
    :try_start_7c
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    :catch_80
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_60

    :try_start_90
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    goto :goto_7a

    :goto_94
    return v5

    :goto_95
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    throw p1

    :goto_99
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_31

    throw p0
.end method

.method public areShortcutsSupportedOnHomeScreen(I)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x10

    :try_start_c
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2b

    :try_start_f
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_21

    :catchall_1e
    move-exception p1

    goto :goto_29

    :cond_20
    const/4 p1, 0x0

    :goto_21
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_1e

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return p1

    :goto_29
    :try_start_29
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_1e

    :try_start_2a
    throw p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public final canSeeAnyPinnedShortcut(IIILjava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_b
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/ShortcutNonPersistentUser;

    if-nez p3, :cond_1f

    new-instance p3, Lcom/android/server/pm/ShortcutNonPersistentUser;

    invoke-direct {p3, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    iget-object p0, p3, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p2

    return p0

    :catchall_27
    move-exception p0

    monitor-exit p2
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw p0
.end method

.method public checkPackageChanges(I)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    move-result v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_1d
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_21

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v2

    :goto_21
    if-eqz v3, :cond_2d

    const-string/jumbo p0, "ShortcutService"

    const-string/jumbo p1, "Safe mode, skipping checkPackageChanges()"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    const/16 v3, 0x8

    :try_start_35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_78

    :try_start_3d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;

    invoke-direct {v7, p0, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_69

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_55
    if-ltz v7, :cond_69

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserPackage;

    iget-object v9, v8, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    iget v8, v8, Landroid/content/pm/UserPackage;->userId:I

    invoke-virtual {p0, v9, p1, v8, v2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_55

    :catchall_67
    move-exception p1

    goto :goto_76

    :cond_69
    iget-wide v6, v6, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_3d .. :try_end_6f} :catchall_67

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_76
    :try_start_76
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_67

    :try_start_77
    throw p1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public final cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    if-ne p3, p2, :cond_23

    iget-object v4, v3, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackage;

    iget-object v5, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v6, v3, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v5, v6, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_27

    move v1, v2

    :cond_27
    iget-object v5, v3, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p3, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShortcutLauncher;

    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p1, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    if-eqz v1, :cond_4e

    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    :cond_4e
    if-eqz p4, :cond_55

    if-ne p3, p2, :cond_55

    invoke-virtual {v3, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    :cond_55
    if-nez p4, :cond_62

    if-ne p3, p2, :cond_62

    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;

    const/4 p3, 0x0

    invoke-direct {p1, p3, v4, v5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    :cond_62
    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_6c
    return-void
.end method

.method public final cleanupBitmapsForPackage(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_1d

    :cond_10
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    :goto_1e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unable to remove directory "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cleanupDanglingBitmapDirectoriesLocked(I)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_7a

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2a

    return-void

    :cond_2a
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v4, :cond_75

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_6f

    :cond_37
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/ShortcutPackage;

    if-nez v8, :cond_47

    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    goto :goto_6f

    :cond_47
    iget-object v7, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4a
    iget-object v9, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    new-instance v9, Landroid/util/ArraySet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v10, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v9}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;-><init>(ILandroid/util/ArraySet;)V

    invoke-virtual {v8, v10}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_72

    iget-object v7, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v7, v7, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v8, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;

    invoke-direct {v8, v10, v9, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;-><init>([Ljava/io/File;Landroid/util/ArraySet;Ljava/io/File;)V

    invoke-virtual {v7, v6, v8}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :catchall_72
    move-exception p0

    :try_start_73
    monitor-exit v7
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0

    :cond_75
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-void

    :catchall_7a
    move-exception p0

    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public final createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_16
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v1, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_33

    const-string/jumbo p2, "ShortcutService"

    const-string p3, "Default launcher not found."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_33
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {v0, v2, p2, v3, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    :goto_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_4b

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-object v3

    :catchall_4b
    move-exception p0

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public final disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .registers 16

    invoke-virtual {p0, p5, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-virtual {p0, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p5, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    const/4 p1, 0x0

    if-nez p3, :cond_1b

    move-object p3, p1

    goto :goto_1f

    :cond_1b
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    const/4 v0, 0x1

    sub-int/2addr p5, v0

    move-object v8, p1

    move-object v9, v8

    :goto_27
    if-ltz p5, :cond_70

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_6d

    :cond_3d
    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    const/4 v6, 0x0

    invoke-direct {v5, v2, p3, p4, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;II)V

    invoke-virtual {v2, v4, p1, v5}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    if-nez v3, :cond_63

    if-nez v8, :cond_5b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_5b

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_7b

    :cond_5b
    :goto_5b
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    :cond_63
    if-nez v9, :cond_6a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_6a
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6d
    add-int/lit8 p5, p5, -0x1

    goto :goto_27

    :cond_70
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_c .. :try_end_74} :catchall_58

    invoke-virtual {p0, v2, v8, v9}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_7b
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_58

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ShortcutService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p2, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    if-eqz v1, :cond_10a

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "Now: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Raw last reset: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v1, "] "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-string v3, "  Last reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v1, v3

    const-string v3, "  Next reset: ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Max icon dim: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    Icon format: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "    Icon quality: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    saveDelayMillis: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    resetInterval: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v1, "    maxUpdatesPerInterval: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    maxShortcutsPerActivity: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_df
    .catchall {:try_start_3 .. :try_end_df} :catchall_106

    :try_start_df
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  #Failures: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    if-eqz v2, :cond_101

    const-string v2, "  Last failure stack trace: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_101

    :catchall_ff
    move-exception p0

    goto :goto_108

    :cond_101
    :goto_101
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_df .. :try_end_102} :catchall_ff

    :try_start_102
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_10a

    :catchall_106
    move-exception p0

    goto :goto_150

    :goto_108
    :try_start_108
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_ff

    :try_start_109
    throw p0

    :cond_10a
    :goto_10a
    const/4 v1, 0x0

    move v2, v1

    :goto_10c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_12d

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    iget v4, v3, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v4

    if-eqz v4, :cond_12a

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_12a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10c

    :cond_12d
    :goto_12d
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_14e

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    iget v3, v2, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_14b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12d

    :cond_14e
    monitor-exit v0

    return-void

    :goto_150
    monitor-exit v0
    :try_end_151
    .catchall {:try_start_109 .. :try_end_151} :catchall_106

    throw p0
.end method

.method public dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    new-instance p1, Lcom/android/server/pm/ShortcutService$DumpFilter;

    invoke-direct {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_b

    goto/16 :goto_115

    :cond_b
    move v2, v0

    :goto_c
    array-length v3, p3

    if-ge v2, v3, :cond_fe

    add-int/lit8 v3, v2, 0x1

    aget-object v4, p3, v2

    const-string v5, "-c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    goto/16 :goto_fb

    :cond_1f
    const-string v5, "--checkin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    goto/16 :goto_fb

    :cond_2d
    const-string v5, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f7

    const-string v5, "--all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    goto/16 :goto_f7

    :cond_3f
    const-string v5, "-u"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f4

    const-string v5, "--uid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto/16 :goto_f4

    :cond_51
    const-string v5, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f1

    const-string v5, "--files"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    goto/16 :goto_f1

    :cond_63
    const-string v5, "-n"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    const-string v5, "--no-main"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    goto/16 :goto_ee

    :cond_75
    const-string v5, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    array-length v4, p3

    if-ge v3, v4, :cond_9e

    add-int/lit8 v2, v2, 0x2

    :try_start_82
    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_93} :catch_95

    goto/16 :goto_c

    :catch_95
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid user ID"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing user ID for --user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a7
    const-string v5, "-p"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    const-string v5, "--package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    goto :goto_cf

    :cond_b8
    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c2

    :goto_c0
    move v2, v3

    goto :goto_fe

    :cond_c2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown option "

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cf
    :goto_cf
    array-length v4, p3

    if-ge v3, v4, :cond_e5

    add-int/lit8 v2, v2, 0x2

    aget-object v3, p3, v3

    iget-object v4, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    goto/16 :goto_c

    :cond_e5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing package name for --package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ee
    :goto_ee
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    goto :goto_fb

    :cond_f1
    :goto_f1
    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    goto :goto_fb

    :cond_f4
    :goto_f4
    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    goto :goto_fb

    :cond_f7
    :goto_f7
    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    :goto_fb
    move v2, v3

    goto/16 :goto_c

    :cond_fe
    :goto_fe
    array-length v3, p3

    if-ge v2, v3, :cond_115

    add-int/lit8 v3, v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    :cond_115
    :goto_115
    iget-boolean p3, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    if-eqz p3, :cond_174

    iget-boolean p1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_11e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_123
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_141

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_123

    :catchall_13d
    move-exception p0

    goto :goto_172

    :catch_13f
    move-exception p0

    goto :goto_166

    :cond_141
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "shortcut"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "lowRam"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "iconSize"

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_165
    .catch Lorg/json/JSONException; {:try_start_11e .. :try_end_165} :catch_13f
    .catchall {:try_start_11e .. :try_end_165} :catchall_13d

    goto :goto_16f

    :goto_166
    :try_start_166
    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo p2, "Unable to write in json"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16f
    monitor-exit p3

    goto/16 :goto_1f3

    :goto_172
    monitor-exit p3
    :try_end_173
    .catchall {:try_start_166 .. :try_end_173} :catchall_13d

    throw p0

    :cond_174
    iget-boolean p3, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    if-eqz p3, :cond_17e

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_17e
    iget-boolean p3, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    if-eqz p3, :cond_1da

    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_185
    const-string v2, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v0

    :goto_18b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d3

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const-string v5, "    UID="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " state="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const/4 v5, 0x5

    if-gt v4, v5, :cond_1b4

    move v4, v1

    goto :goto_1b5

    :cond_1b4
    move v4, v0

    :goto_1b5
    if-eqz v4, :cond_1bf

    const-string v4, "  [FG]"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1bf

    :catchall_1bd
    move-exception p0

    goto :goto_1d8

    :cond_1bf
    :goto_1bf
    const-string v4, "  last FG="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18b

    :cond_1d3
    monitor-exit p3
    :try_end_1d4
    .catchall {:try_start_185 .. :try_end_1d4} :catchall_1bd

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1da

    :goto_1d8
    :try_start_1d8
    monitor-exit p3
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1bd

    throw p0

    :cond_1da
    :goto_1da
    iget-boolean p1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    if-eqz p1, :cond_1f3

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1e1
    const-string p3, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    monitor-exit p1
    :try_end_1ec
    .catchall {:try_start_1e1 .. :try_end_1ec} :catchall_1f0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_1f0
    move-exception p0

    :try_start_1f1
    monitor-exit p1
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    throw p0

    :cond_1f3
    :goto_1f3
    return-void
.end method

.method public final enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 11

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1e
    if-ltz p3, :cond_50

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_4d

    :cond_33
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v4, v2, v5}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    if-nez v3, :cond_46

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_58

    :cond_46
    :goto_46
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 p3, p3, -0x1

    goto :goto_1e

    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_c .. :try_end_51} :catchall_44

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_58
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_44

    throw p0
.end method

.method public final fillInDefaultActivity(Ljava/util/List;)V
    .registers 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_7
    if-ltz v0, :cond_43

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_40

    if-nez v2, :cond_3d

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(ILjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_27

    move v4, v1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launcher activity not found for package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_3d
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    :cond_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_43
    return-void
.end method

.method public final fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 10

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot publish shortcut: activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(ILandroid/content/ComponentName;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not main activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_6a
    if-nez p2, :cond_7f

    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    if-nez p3, :cond_7f

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_79

    const/4 p2, 0x1

    goto :goto_7a

    :cond_79
    const/4 p2, 0x0

    :goto_7a
    const-string p3, "Cannot publish shortcut: target activity is not set"

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_7f
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-eqz p2, :cond_bf

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    if-nez p2, :cond_97

    goto :goto_bf

    :cond_97
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_a2

    const/4 v0, 0x6

    if-eq p3, v0, :cond_a2

    goto :goto_bf

    :cond_a2
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    move-object v0, p0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    :cond_bf
    :goto_bf
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    return-void
.end method

.method public final fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    const/16 v3, 0xa

    :try_start_16
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    return-void

    :catchall_20
    move-exception p1

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1

    :cond_25
    return-void
.end method

.method public final forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBackupPayload(I)[B
    .registers 7

    const-string v0, "Can\'t backup: userId="

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is locked or not running"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v1

    return-object v3

    :catchall_28
    move-exception p0

    goto :goto_7c

    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_28

    const/4 v2, 0x1

    :try_start_58
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5b} :catch_71
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_71
    .catchall {:try_start_58 .. :try_end_5b} :catchall_28

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    const-string/jumbo v0, "backup-1-payload.txt"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    monitor-exit v1

    return-object p1

    :catch_71
    move-exception p0

    const-string/jumbo p1, "ShortcutService"

    const-string v0, "Backup failed."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return-object v3

    :goto_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_5b .. :try_end_7d} :catchall_28

    throw p0

    :cond_7e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getBackupShortcut(I)Landroid/os/ParcelFileDescriptor;
    .registers 12

    const-string/jumbo v0, "Shortcut Backup failed : "

    const-string/jumbo v1, "Shortcut Backup failed : "

    const-string/jumbo v2, "Shortcut Backup failed : "

    const-string/jumbo v3, "Shortcut Backup failed : user locked - "

    const-string/jumbo v4, "Start Shortcut Backup"

    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.scloud.backup.lib.write"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v6

    if-nez v6, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    monitor-exit v4

    return-object v5

    :catchall_33
    move-exception p0

    goto/16 :goto_f2

    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_33

    const/4 v7, 0x0

    :try_start_3f
    new-instance v8, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    new-instance v8, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    new-instance v3, Ljava/io/File;

    const-string v8, "/data/misc/shortcutbnr"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "shortcut.br"

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_70

    :try_start_66
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_75

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_75

    :catchall_70
    move-exception p1

    goto/16 :goto_ee

    :catch_73
    move-exception p1

    goto :goto_da

    :cond_75
    :goto_75
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7e} :catch_73
    .catchall {:try_start_66 .. :try_end_7e} :catchall_70

    :cond_7e
    :try_start_7e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_83} :catch_a7
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_a5
    .catchall {:try_start_7e .. :try_end_83} :catchall_70

    :try_start_83
    invoke-virtual {p0, p1, v0, v6}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    const/16 v6, 0x192

    invoke-static {p1, v3, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_92
    .catchall {:try_start_83 .. :try_end_92} :catchall_a9

    :try_start_92
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_95} :catch_a7
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_a5
    .catchall {:try_start_92 .. :try_end_95} :catchall_70

    :try_start_95
    const-string/jumbo v0, "Success Shortcut Backup"

    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_70

    :try_start_a0
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_33

    return-object v0

    :catch_a5
    move-exception p1

    goto :goto_b3

    :catch_a7
    move-exception p1

    goto :goto_c7

    :catchall_a9
    move-exception p1

    :try_start_aa
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v0

    :try_start_af
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b2
    throw p1
    :try_end_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_af .. :try_end_b3} :catch_a7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b3} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_a5
    .catchall {:try_start_af .. :try_end_b3} :catchall_70

    :goto_b3
    :try_start_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_70

    :try_start_c2
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    :goto_c5
    monitor-exit v4
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_33

    goto :goto_ed

    :goto_c7
    :try_start_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_c7 .. :try_end_d6} :catchall_70

    :try_start_d6
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_33

    goto :goto_c5

    :goto_da
    :try_start_da
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_da .. :try_end_e9} :catchall_70

    :try_start_e9
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    goto :goto_c5

    :goto_ed
    return-object v5

    :goto_ee
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    throw p1

    :goto_f2
    monitor-exit v4
    :try_end_f3
    .catchall {:try_start_e9 .. :try_end_f3} :catchall_33

    throw p0
.end method

.method public final getBaseStateFile()Lcom/android/server/pm/ResilientAtomicFile;
    .registers 8

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "shortcut_service.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "shortcut_service.xml.backup"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v0, "shortcut_service.xml.reservecopy"

    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    const-string/jumbo v5, "base shortcut"

    const/4 v6, 0x0

    const/16 v4, 0x1f9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getBitmapPathList(I)[Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "com.samsung.android.scloud.backup.lib.write"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getDefaultLauncher(I)Ljava/lang/String;
    .registers 14

    const-string v0, "Default launcher not found. userId="

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/16 v5, 0x10

    :try_start_e
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_5b

    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    if-eqz v8, :cond_26

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_24

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v8

    :catchall_24
    move-exception p1

    goto :goto_59

    :cond_26
    :try_start_26
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v8}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v10, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutService;->injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v8, v9}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    if-eqz v10, :cond_3f

    iput-object v10, v7, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    goto :goto_51

    :cond_3f
    const-string/jumbo v7, "ShortcutService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    monitor-exit v6
    :try_end_52
    .catchall {:try_start_26 .. :try_end_52} :catchall_24

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v10

    :goto_59
    :try_start_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_24

    :try_start_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public final getIconMaxDimensions(Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    monitor-exit p1

    return p0

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public getIconPersistQualityForTest()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return p0
.end method

.method public final getInstalledPackages(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x7

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    move-result-object p1

    sget-object v5, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$1;

    invoke-interface {p1, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_1d
    .catchall {:try_start_b .. :try_end_14} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_1b
    move-exception p1

    goto :goto_2f

    :catch_1d
    move-exception p1

    :try_start_1e
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 p0, 0x0

    return-object p0

    :goto_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutUser;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    goto :goto_22

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutLauncher;

    monitor-exit v0

    return-object p0

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_10

    throw p0
.end method

.method public final getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-static {p2, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/android/server/pm/ShortcutLauncher;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v0, p0, v1, p3, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    return-object v0
.end method

.method public getMaxIconDimensionForTest()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    return p0
.end method

.method public final getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return p0
.end method

.method public getMaxShortcutsForTest()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    return p0
.end method

.method public getMaxUpdatesPerIntervalForTest()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    return p0
.end method

.method public final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    goto :goto_14

    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_c

    throw p0
.end method

.method public getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutUser;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    goto :goto_1e

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object p0

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_10

    throw p0
.end method

.method public final getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getRateLimitResetTime(Ljava/lang/String;I)J
    .registers 7

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long/2addr v0, v2

    monitor-exit p1

    return-wide v0

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final getRemainingCallCount(Ljava/lang/String;I)I
    .registers 5

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result p1

    sub-int/2addr p0, p1

    monitor-exit v1

    return p0

    :catchall_22
    move-exception p0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public getResetIntervalForTest()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    return-wide v0
.end method

.method public final getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;
    .registers 11

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "intentFilter"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectChooserActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_2b

    :cond_17
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v1, v0, :cond_2b

    goto :goto_2e

    :cond_2b
    :goto_2b
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    :goto_2e
    const-string/jumbo p1, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string/jumbo v0, "getShareTargets"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_3e

    :cond_3b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectChooserActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_48
    move-object v4, p1

    goto :goto_51

    :cond_4a
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    :goto_51
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_54
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v6

    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/IntentFilter;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit p1

    return-object p0

    :catchall_72
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_72

    throw p0
.end method

.method public final getShortcutBitmapsFileDescriptor()Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .registers 3

    const-string/jumbo v0, "com.samsung.android.scloud.backup.lib.write"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/ShortcutService$8;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$8;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-object v0
.end method

.method public getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    return-object p0
.end method

.method public final getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 14

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v3

    :goto_12
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v3

    :goto_19
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_1f

    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v3

    :goto_20
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_26

    move p2, v2

    goto :goto_27

    :cond_26
    move p2, v3

    :goto_27
    if-eqz v4, :cond_2b

    const/4 v4, 0x2

    goto :goto_2c

    :cond_2b
    move v4, v3

    :goto_2c
    or-int/2addr v0, v4

    if-eqz v5, :cond_32

    const/16 v4, 0x20

    goto :goto_33

    :cond_32
    move v4, v3

    :goto_33
    or-int/2addr v0, v4

    if-eqz p2, :cond_39

    const v3, 0x60004000

    :cond_39
    or-int p2, v0, v3

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;

    invoke-direct {v5, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v6, 0x9

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_58
    if-ltz p1, :cond_66

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_58

    :cond_66
    invoke-direct {p0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p0

    :catchall_6b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6 .. :try_end_6e} :catchall_6b

    throw p0
.end method

.method public getShortcutsForTest()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/ShortcutUser;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getUserBitmapFilePath(I)Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "bitmaps"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .registers 9

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "shortcuts.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "shortcuts.xml.backup"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "shortcuts.xml.reservecopy"

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    const-string/jumbo v5, "user shortcut"

    const/4 v6, 0x0

    const/16 v4, 0x1f9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    if-eq p1, v0, :cond_17

    const/4 v0, 0x0

    const-string/jumbo v1, "User still locked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    goto :goto_17

    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    if-nez v0, :cond_34

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectLoadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    :cond_34
    return-object v0
.end method

.method public final handleOnUidStateChanged(II)V
    .registers 8

    const-string/jumbo v0, "shortcutHandleOnUidStateChanged"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x5

    if-gt p2, v3, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_2a

    :cond_25
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_23

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_23

    throw p0
.end method

.method public final handleStopUser(I)V
    .registers 7

    const-string/jumbo v0, "shortcutHandleStopUser"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_23

    :try_start_17
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_25

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_23

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_23
    move-exception p0

    goto :goto_28

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw p0

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_23

    throw p0
.end method

.method public final hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    const-string/jumbo p1, "android.permission.MANAGE_APP_PREDICTIONS"

    const-string/jumbo v0, "hasShareTargets"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_16
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_2f

    :try_start_24
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2f

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_34

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0

    :goto_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_2f

    throw p0
.end method

.method public hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    goto :goto_17

    :cond_14
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw p0
.end method

.method public injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x3

    :try_start_b
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0x200c2200

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_1d
    .catchall {:try_start_b .. :try_end_14} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_1b
    move-exception p1

    goto :goto_2f

    :catch_1d
    move-exception p1

    :try_start_1e
    const-string/jumbo p2, "ShortcutService"

    const-string/jumbo v5, "RemoteException"

    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 p0, 0x0

    return-object p0

    :goto_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public injectBinderCallingPid()I
    .registers 1

    invoke-static {}, Landroid/content/pm/IShortcutService$Stub;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public injectBinderCallingUid()I
    .registers 1

    invoke-static {}, Landroid/content/pm/IShortcutService$Stub;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public injectChooserActivity()Landroid/content/ComponentName;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104030b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    :cond_17
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public injectCurrentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectDipToPixel(I)I
    .registers 3

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public injectElapsedRealtime()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x6

    :try_start_b
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v6, 0x200c2280

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_1d
    .catchall {:try_start_b .. :try_end_14} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_1b
    move-exception p1

    goto :goto_2f

    :catch_1d
    move-exception p1

    :try_start_1e
    const-string/jumbo p2, "ShortcutService"

    const-string/jumbo v5, "RemoteException"

    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 p0, 0x0

    return-object p0

    :goto_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public final injectGetDefaultMainActivity(ILjava/lang/String;)Landroid/content/ComponentName;
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    const/16 v2, 0xb

    :try_start_8
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v4, p1}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_22

    goto :goto_2f

    :cond_22
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    :goto_2f
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object v4

    :catchall_33
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    const-string/jumbo v0, "android.app.role.HOME"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final injectGetPackageUid(ILjava/lang/String;)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0x200c2200

    invoke-interface {p0, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    goto :goto_22

    :catch_13
    move-exception p0

    :try_start_14
    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo p2, "RemoteException"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v0, 0x200c2200

    invoke-interface {p0, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_e

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;
    .registers 12

    const-string/jumbo v0, "Resources of package "

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/16 v5, 0x9

    :try_start_f
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_22} :catch_2b
    .catchall {:try_start_f .. :try_end_22} :catchall_29

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_29
    move-exception p1

    goto :goto_52

    :catch_2b
    :try_start_2b
    const-string/jumbo v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for userId="

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_29

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 p0, 0x0

    return-object p0

    :goto_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public injectHasAccessShortcutsPermission(II)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    const/16 v2, 0xd

    :try_start_8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_22

    if-lez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return p1

    :catchall_22
    move-exception p1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public injectIsLowRamDevice()Z
    .registers 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p0

    return p0
.end method

.method public final injectIsMainActivity(ILandroid/content/ComponentName;)Z
    .registers 10

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    const/4 v0, 0x0

    const/16 v4, 0xc

    if-nez p2, :cond_22

    :try_start_15
    const-string/jumbo p1, "null activity detected"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v0

    :catchall_20
    move-exception p1

    goto :goto_55

    :cond_22
    :try_start_22
    const-string/jumbo v5, "android.__dummy__"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_20

    if-eqz v5, :cond_33

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v1

    :cond_33
    :try_start_33
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p2, p1}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_20

    if-lez p1, :cond_50

    goto :goto_51

    :cond_50
    move v1, v0

    :goto_51
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v1

    :goto_55
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public injectLoadBaseState()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->loadBaseStateAsXml(Ljava/io/InputStream;)V

    goto :goto_34

    :catchall_f
    move-exception p0

    goto :goto_38

    :catch_11
    move-exception v2

    goto :goto_1f

    :cond_13
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, v0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1f} :catch_34
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_1f} :catch_11
    .catchall {:try_start_5 .. :try_end_1f} :catchall_f

    :goto_1f
    :try_start_1f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectLoadBaseState()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_f

    :catch_34
    :goto_34
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    goto :goto_41

    :goto_38
    :try_start_38
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0

    :goto_41
    return-void
.end method

.method public injectLoadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_1c
    .catchall {:try_start_5 .. :try_end_9} :catchall_18

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v1

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_1a
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :catchall_18
    move-exception p0

    goto :goto_2b

    :catch_1a
    move-exception v1

    goto :goto_20

    :catch_1c
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    :goto_20
    :try_start_20
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectLoadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_18

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :goto_2b
    if-eqz v0, :cond_35

    :try_start_2d
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw p0
.end method

.method public injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_c
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz p3, :cond_13

    const/high16 v7, 0x8000000

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    const v8, 0x200c2200

    or-int/2addr v7, v8

    int-to-long v7, v7

    invoke-interface {v6, p1, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_29
    .catchall {:try_start_c .. :try_end_1d} :catchall_27

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p3, :cond_23

    move v4, v5

    :cond_23
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return-object p1

    :catchall_27
    move-exception p1

    goto :goto_3e

    :catch_29
    move-exception p1

    :try_start_2a
    const-string/jumbo p2, "ShortcutService"

    const-string/jumbo v6, "RemoteException"

    invoke-static {p2, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_27

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p3, :cond_39

    move v4, v5

    :cond_39
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    const/4 p0, 0x0

    return-object p0

    :goto_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p3, :cond_44

    move v4, v5

    :cond_44
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p1
.end method

.method public final injectPostToHandler(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p2, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public injectSaveBaseState()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_17
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_19

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->saveBaseStateAsXml(Ljava/io/OutputStream;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_38

    :catchall_15
    move-exception p0

    goto :goto_3c

    :catch_17
    move-exception p0

    goto :goto_1c

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_17
    .catchall {:try_start_1b .. :try_end_1c} :catchall_15

    :goto_1c
    :try_start_1c
    const-string/jumbo v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_15

    :goto_38
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p0
.end method

.method public injectSaveUser(I)V
    .registers 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService;->mShortcutAddCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_185

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_12
    iget-object v6, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_15} :catch_7f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_7f
    .catchall {:try_start_12 .. :try_end_15} :catchall_72

    :try_start_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "packages"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "launchers"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_7a

    move/from16 v7, p1

    :try_start_35
    invoke-virtual {v1, v7, v5, v4}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(ILjava/io/OutputStream;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    iget-object v8, v0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v4

    :goto_43
    if-ge v9, v8, :cond_53

    iget-object v10, v0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    :cond_53
    iget-object v8, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v4

    :goto_5a
    if-ge v9, v8, :cond_6a

    iget-object v10, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    :cond_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_35 .. :try_end_6b} :catchall_78

    :try_start_6b
    invoke-virtual {v2, v5, v3}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_71} :catch_76
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_71} :catch_76
    .catchall {:try_start_6b .. :try_end_71} :catchall_72

    goto :goto_9c

    :catchall_72
    move-exception v0

    move-object v1, v0

    goto/16 :goto_17a

    :catch_76
    move-exception v0

    goto :goto_82

    :catchall_78
    move-exception v0

    goto :goto_7d

    :catchall_7a
    move-exception v0

    move/from16 v7, p1

    :goto_7d
    :try_start_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_78

    :try_start_7e
    throw v0
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_7f} :catch_76
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_7f} :catch_76
    .catchall {:try_start_7e .. :try_end_7f} :catchall_72

    :catch_7f
    move-exception v0

    move/from16 v7, p1

    :goto_82
    :try_start_82
    const-string/jumbo v6, "ShortcutService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write to file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v5}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_72

    :goto_9c
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_a1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move v2, v4

    move v5, v2

    move v6, v5

    :goto_aa
    iget-object v7, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_14c

    iget-object v7, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShortcutPackage;

    iget-object v8, v7, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_bd
    iget-object v7, v7, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    monitor-exit v8
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_149

    if-nez v7, :cond_143

    add-int/lit8 v5, v5, 0x1

    iget-object v7, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/ShortcutPackage;

    iget-object v7, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d4
    iget-object v9, v8, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e1

    monitor-exit v7

    move v11, v4

    goto :goto_13f

    :catchall_df
    move-exception v0

    goto :goto_141

    :cond_e1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v11, 0x1b

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    move v10, v4

    move v11, v10

    :goto_f6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_13e

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_139

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_10f

    goto :goto_139

    :cond_10f
    move v13, v4

    :goto_110
    iget-object v14, v8, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_139

    iget-object v14, v8, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/ShareTargetInfo;

    move v15, v4

    :goto_121
    iget-object v4, v14, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v3, v4

    if-ge v15, v3, :cond_137

    aget-object v3, v4, v15

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_133

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_110

    :cond_133
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    goto :goto_121

    :cond_137
    add-int/lit8 v11, v11, 0x1

    :cond_139
    :goto_139
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_f6

    :cond_13e
    monitor-exit v7

    :goto_13f
    add-int/2addr v6, v11

    goto :goto_143

    :goto_141
    monitor-exit v7
    :try_end_142
    .catchall {:try_start_d4 .. :try_end_142} :catchall_df

    throw v0

    :cond_143
    :goto_143
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_aa

    :catchall_149
    move-exception v0

    :try_start_14a
    monitor-exit v8
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw v0

    :cond_14c
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x6b5

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v0, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :goto_17a
    if-eqz v2, :cond_184

    :try_start_17c
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_180

    goto :goto_184

    :catchall_180
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_184
    :goto_184
    throw v1

    :catchall_185
    move-exception v0

    :try_start_186
    monitor-exit v2
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_185

    throw v0
.end method

.method public injectShortcutManagerConstants()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shortcut_manager_constants"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public injectShouldPerformVerification()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public injectSystemDataPath()Ljava/io/File;
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public injectUptimeMillis()J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectUserDataPath(I)Ljava/io/File;
    .registers 3

    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "shortcut_service"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isCallerSystem()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final isPackageInstalled(ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isRequestPinItemSupported(II)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_11

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_29

    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_24

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_29
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid userId"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isUidForegroundLocked(I)Z
    .registers 5

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_12

    return v1

    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    if-gt p0, v2, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserUnlockedL(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_18

    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0

    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_e

    throw p0
.end method

.method public loadBaseStateAsXml(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ShortcutService"

    if-ne v0, v1, :cond_37

    const-string/jumbo v0, "root"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid root tag: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "last_reset_time"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    const-string v0, "Invalid tag: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4d
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "value"

    invoke-static {p1, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_4

    :cond_5c
    return-void
.end method

.method public loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_12

    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_10
    move-object p2, v0

    goto :goto_17

    :cond_12
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    goto :goto_10

    :goto_17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_118

    const/4 v4, 0x2

    if-eq v2, v4, :cond_22

    goto :goto_17

    :cond_22
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p2

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne p2, v3, :cond_114

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_114

    new-instance p2, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    :try_start_3a
    const-string/jumbo v2, "locales"

    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string/jumbo v2, "last-app-scan-time2"

    const-wide/16 v5, 0x0

    invoke-static {v1, v2, v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_55

    move-wide v5, v7

    :cond_55
    iput-wide v5, p2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string/jumbo v2, "last-app-scan-fp"

    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string/jumbo v2, "restore-from-fp"

    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    :goto_6f
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v3, :cond_dd

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7e

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_dd

    :cond_7e
    if-eq v7, v4, :cond_81

    goto :goto_6f

    :cond_81
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    if-ne v7, v9, :cond_d9

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x4457a875

    if-eq v9, v10, :cond_a7

    const v10, -0x301acbba

    if-eq v9, v10, :cond_9c

    goto :goto_b2

    :cond_9c
    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    move v9, v5

    goto :goto_b3

    :cond_a7
    const-string/jumbo v9, "launcher-pins"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    move v9, v3

    goto :goto_b3

    :cond_b2
    :goto_b2
    const/4 v9, -0x1

    :goto_b3
    if-eqz v9, :cond_cd

    if-eq v9, v3, :cond_b8

    goto :goto_d9

    :cond_b8
    invoke-static {v1, p2, p1, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v6

    iput-object p2, v6, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v7, p2, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    iget v8, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    iget-object v9, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_cb
    move v6, v3

    goto :goto_6f

    :cond_cd
    invoke-static {p2, v1, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutUser;Lcom/android/modules/utils/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    iget-object v8, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cb

    :cond_d9
    :goto_d9
    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_dc} :catch_10a

    goto :goto_6f

    :cond_dd
    if-eqz v6, :cond_e4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    goto/16 :goto_17

    :cond_e4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "packages"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V

    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutUser;->forMainFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "launchers"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutUser;IZ)V

    invoke-static {v3, v2}, Lcom/android/server/pm/ShortcutUser;->forMainFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    goto/16 :goto_17

    :catch_10a
    move-exception p0

    new-instance p1, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string/jumbo p2, "Unable to parse file"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_114
    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    throw v0

    :cond_118
    return-object p2
.end method

.method public final logDurationStat(IJ)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public final onApplicationActive(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_15

    :cond_7
    const-string/jumbo v0, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_15

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_18
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v1

    if-nez v1, :cond_22

    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto :goto_33

    :cond_22
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    monitor-exit v0

    return-void

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_20

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_17
    new-instance v3, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-result p0

    const/4 p1, 0x0

    move-object/from16 v10, p6

    invoke-virtual {v10, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_33

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_33
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_2d

    :cond_20
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "Unable to create directory "

    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_3f

    move-object v1, p0

    goto :goto_46

    :cond_3f
    const-string/jumbo v1, "_"

    invoke-static {p1, p0, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_46
    const-string v2, ".png"

    invoke-static {p2, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5d

    new-instance p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    return-object p0

    :cond_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_36
.end method

.method public final openIconFileForWriteSmartSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .registers 5

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const-string/jumbo p1, "ShortcutService"

    if-nez p0, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    goto :goto_3c

    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Unable to create directory "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/IOException;

    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4d

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p1

    :cond_4d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to create file - already exists "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    invoke-static {p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V
    .registers 12

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    iget v3, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    iget-object v5, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, v5, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void
.end method

.method public final pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V
    .registers 8

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->addShortcutCount(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x0

    aput-object p2, p3, v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result p3

    if-nez p3, :cond_3c

    invoke-virtual {p2, v2}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_82

    :cond_3c
    :goto_3c
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v3, 0x1

    invoke-direct {p3, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v2}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    invoke-virtual {p0, p2, v2, v2}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    invoke-virtual {p1, p2, v0}, Lcom/android/server/pm/ShortcutPackage;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_6a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5c

    monitor-exit v1

    return-void

    :cond_5c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_6b

    :cond_6a
    const/4 p3, 0x0

    :goto_6b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_11 .. :try_end_72} :catchall_3a

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_82
    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_3a

    throw p0
.end method

.method public final queryActivities(ILandroid/content/Intent;Z)Ljava/util/List;
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x200c2200

    invoke-virtual {v2, p2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_35

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_32

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_32

    :cond_1d
    sget-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    invoke-interface {p2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz p3, :cond_31

    sget-object p0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Lcom/android/server/pm/ShortcutService$1;

    invoke-interface {p2, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_31
    return-object p2

    :cond_32
    :goto_32
    sget-object p0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object p0

    :catchall_35
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_b

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_b
    const/4 p2, 0x1

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(ILandroid/content/Intent;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .registers 11

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    const/4 p1, 0x1

    invoke-direct {v2, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    move-result-object p1

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p2, v1}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    invoke-static {p2, v1, p1, v0}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object p2

    monitor-exit v7
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_40

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :catchall_40
    move-exception v0

    move-object p0, v0

    :try_start_42
    monitor-exit v7
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_40

    throw p0
.end method

.method public final removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 12

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v7, 0x1

    sub-int/2addr p1, v7

    const/4 p3, 0x0

    move-object v0, p3

    :goto_1e
    if-ltz p1, :cond_5d

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_5a

    :cond_34
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-nez v3, :cond_50

    if-nez p3, :cond_48

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_48

    :catchall_45
    move-exception v0

    move-object p0, v0

    goto :goto_68

    :cond_48
    :goto_48
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_50
    if-nez v0, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    :cond_57
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5a
    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    :cond_5d
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_c .. :try_end_61} :catchall_45

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_68
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_45

    throw p0
.end method

.method public final removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .registers 14

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    const-string/jumbo v0, "shortcutIds must be provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    const/4 v0, 0x0

    move-object v8, v0

    move-object v9, v8

    :goto_1f
    if-ltz p1, :cond_6e

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_6b

    :cond_35
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_44

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_44
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_5d

    if-nez v9, :cond_59

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_59

    :catchall_56
    move-exception v0

    move-object p0, v0

    goto :goto_79

    :cond_59
    :goto_59
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_5d
    if-nez v8, :cond_64

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_64
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6b
    add-int/lit8 p1, p1, -0x1

    goto :goto_1f

    :cond_6e
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_56

    invoke-virtual {p0, v2, v8, v9}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return-void

    :goto_79
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_56

    throw p0
.end method

.method public final reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v0, "reportShortcutUsed: package "

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    if-nez v2, :cond_37

    const-string/jumbo p0, "ShortcutService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have shortcut "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_35
    move-exception p0

    goto :goto_3e

    :cond_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_35

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p3, p0, p2}, Lcom/android/server/pm/ShortcutPackage;->reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V

    return-void

    :goto_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_35

    throw p0
.end method

.method public final requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z
    .registers 12

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    if-eqz p3, :cond_b

    invoke-virtual {p0, p7, p8}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    move-result p7

    if-nez p7, :cond_e

    :cond_b
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    :cond_e
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_11
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p8}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result p7

    const-string p8, "Calling application must have a foreground activity or a foreground service"

    invoke-static {p7, p8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    if-eqz p3, :cond_5d

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p0, p2, p7}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p7

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p7, p8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p8

    if-eqz p8, :cond_5d

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p8

    if-nez p8, :cond_5d

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p7, p8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p8

    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p8, p7, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object p8, p8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p8, p3, v0, v1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    const/4 p8, 0x2

    invoke-virtual {p3, p8}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    invoke-virtual {p7, p3}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p7}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p8

    const/4 v0, 0x0

    invoke-virtual {p0, p7, p8, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    :cond_5d
    move-object p7, p6

    move p6, p2

    goto :goto_63

    :catchall_60
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :goto_63
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    move p8, p9

    invoke-virtual/range {p2 .. p8}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;I)Z

    move-result p2

    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_11 .. :try_end_6b} :catchall_60

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return p2

    :goto_6f
    :try_start_6f
    monitor-exit p1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_60

    throw p0
.end method

.method public final requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 16

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string/jumbo v1, "Shortcut excluded from launcher cannot be pinned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v9

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move v3, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    move-result v0

    return v0
.end method

.method public final requestPinShortcutAsDisplay(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;II)Z
    .registers 17

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "Shortcut must be enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string/jumbo v1, "Shortcut excluded from launcher cannot be pinned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move v3, p4

    move/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    move-result v0

    return v0
.end method

.method public final rescanUpdatedPackagesLocked(IJ)V
    .registers 15

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1a
    if-ltz v5, :cond_44

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_2a

    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v8, v8, p2

    if-ltz v8, :cond_41

    :cond_2a
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v9, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v10, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    invoke-direct {v10, p1, v8, v9}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    :cond_41
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    :cond_44
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    return-void
.end method

.method public final resetThrottling()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be system or shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    return-void
.end method

.method public final resetThrottlingInner(I)V
    .registers 7

    const-string/jumbo v0, "User (with userId="

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v2

    if-nez v2, :cond_27

    const-string/jumbo p0, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is locked or not running"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_25
    move-exception p0

    goto :goto_5d

    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_33
    if-ltz v2, :cond_43

    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_25

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    const-string/jumbo p0, "ShortcutService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ShortcutManager: throttling counter reset for userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_5d
    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_25

    throw p0
.end method

.method public final restoreBitmapsFromBackupService(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "com.samsung.android.scloud.backup.lib.write"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_3c

    :try_start_c
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->openIconFileForWriteSmartSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_28

    const/16 p1, 0x400

    :try_start_12
    new-array p1, p1, [B

    :goto_14
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_21

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1f

    goto :goto_14

    :catchall_1f
    move-exception p1

    goto :goto_2a

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    :try_start_24
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_3c

    return-void

    :catchall_28
    move-exception p0

    goto :goto_33

    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p0

    :try_start_2f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_28

    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception p1

    :try_start_38
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    return-void
.end method

.method public saveBaseStateAsXml(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "root"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_30

    :cond_21
    const-string/jumbo v2, "last_reset_time"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "value"

    invoke-interface {p1, v1, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_30
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public saveDirtyInfo()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_52

    :cond_9
    const-wide/32 v0, 0x80000

    :try_start_c
    const-string/jumbo v2, "shortcutSaveDirtyInfo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_3b
    .catchall {:try_start_c .. :try_end_1a} :catchall_39

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_47

    :try_start_1f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_25
    if-ltz v2, :cond_43

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, -0x2710

    if-ne v3, v5, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSaveBaseState()V

    goto :goto_40

    :catchall_39
    move-exception p0

    goto :goto_53

    :catch_3b
    move-exception v2

    goto :goto_4a

    :cond_3d
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->injectSaveUser(I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_3b
    .catchall {:try_start_1f .. :try_end_40} :catchall_39

    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    :cond_43
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_3b
    .catchall {:try_start_49 .. :try_end_4a} :catchall_39

    :goto_4a
    :try_start_4a
    const-string v3, "Exception in saveDirtyInfo"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_39

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :goto_52
    return-void

    :goto_53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_c5

    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_18
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_4e

    if-nez v2, :cond_25

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_25
    :try_start_25
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_4e

    :try_start_27
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v4, v5, :cond_7c

    if-eq v4, v6, :cond_68

    const/4 v5, 0x5

    if-eq v4, v5, :cond_57

    const/4 p0, 0x6

    if-ne v4, p0, :cond_52

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const p0, 0x8200

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_50

    :try_start_47
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_c1

    :catchall_50
    move-exception p0

    goto :goto_bd

    :cond_52
    :try_start_52
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_57
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    int-to-float v2, v3

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000  # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_a6

    :cond_68
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    const p0, 0x8000

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_75
    .catchall {:try_start_52 .. :try_end_75} :catchall_50

    :try_start_75
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7c
    :try_start_7c
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9b

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    invoke-virtual {p2, v6}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_50

    :try_start_94
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9b
    :try_start_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Icon resource must reside in shortcut owner package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a3
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    :goto_a6
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    iget-object v4, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_ad
    .catchall {:try_start_9b .. :try_end_ad} :catchall_50

    :try_start_ad
    iget-object p1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {p1, p2, v3, v2, p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V

    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_ba

    :try_start_b3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ba
    move-exception p0

    :try_start_bb
    monitor-exit v4
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_50

    :goto_bd
    :try_start_bd
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    throw p0
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_4e

    :goto_c1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_c5
    :goto_c5
    return-void
.end method

.method public saveUserInternalLocked(ILjava/io/OutputStream;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p3, :cond_10

    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_14

    :cond_10
    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    :goto_14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    const-string/jumbo p1, "user"

    invoke-interface {v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "restore-from-fp"

    if-nez p3, :cond_47

    const-string/jumbo v3, "locales"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "last-app-scan-time2"

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v0, v3, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v3, "last-app-scan-fp"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_51

    :cond_47
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_51
    if-eqz p3, :cond_9a

    iget-object p3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v1, 0x0

    move v3, v1

    :goto_5b
    const/4 v4, 0x1

    if-ge v3, p3, :cond_78

    iget-object v5, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShortcutPackageItem;

    iget v6, v5, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v7

    if-eq v6, v7, :cond_6f

    goto :goto_75

    :cond_6f
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    invoke-virtual {v5, v0, v4}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_78
    iget-object p3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    :goto_7e
    if-ge v1, p3, :cond_9a

    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackageItem;

    iget v5, v3, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v6

    if-eq v5, v6, :cond_91

    goto :goto_97

    :cond_91
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    :goto_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_9a
    invoke-interface {v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final scheduleSaveInner(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_32

    :cond_1f
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1d

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_32
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_1d

    throw p0
.end method

.method public final setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 14

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(ILjava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result p3

    if-nez p3, :cond_3c

    monitor-exit v2

    return p1

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_9b

    :cond_3c
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v3, p3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    move p3, p1

    :goto_49
    if-ge p3, v1, :cond_57

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_49

    :cond_57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    const/4 p3, 0x0

    invoke-direct {v5, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x4

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    move-result-object p3

    :goto_6d
    if-ge p1, v1, :cond_7b

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6d

    :cond_7b
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p1, v4}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0, p2}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    invoke-static {p1, v0, p3, v3}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object p1

    monitor-exit v2
    :try_end_93
    .catchall {:try_start_1d .. :try_end_93} :catchall_39

    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    const/4 p0, 0x1

    return p0

    :goto_9b
    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_39

    throw p0
.end method

.method public final throwIfUserLockedL(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "User (with userId="

    const-string v1, ") is locked or not running"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateConfigurationLocked(Ljava/lang/String;)Z
    .registers 10

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_e

    move p1, v2

    goto :goto_18

    :catch_e
    move-exception p1

    const-string/jumbo v3, "ShortcutService"

    const-string v4, "Bad shortcut manager settings"

    invoke-static {v3, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v1

    :goto_18
    const-string/jumbo v3, "save_delay_ms"

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    const-string/jumbo v3, "reset_interval_sec"

    const-wide/32 v4, 0x15180

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    const-string/jumbo v3, "max_updates_per_interval"

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    const-string/jumbo v3, "max_shortcuts"

    const-wide/16 v4, 0xf

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    const-string/jumbo v3, "max_shortcuts_per_app"

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string/jumbo v1, "max_icon_dimension_dp_lowram"

    const-wide/16 v6, 0x30

    invoke-virtual {v0, v1, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_7c
    long-to-int v1, v6

    goto :goto_88

    :cond_7e
    const-string/jumbo v1, "max_icon_dimension_dp"

    const-wide/16 v6, 0x60

    invoke-virtual {v0, v1, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_7c

    :goto_88
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    const-string/jumbo v1, "icon_format"

    sget-object v2, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    const-string/jumbo v1, "icon_quality"

    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    return p1
.end method

.method public updatePackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    if-nez p0, :cond_d

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_16

    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_b

    throw p0
.end method

.method public final updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .registers 13

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    move-result v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_23
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(ILjava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_42

    monitor-exit v4

    return v0

    :catchall_40
    move-exception p0

    goto :goto_7c

    :cond_42
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v5, 0x1

    invoke-direct {p3, v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    move p3, v0

    :goto_4f
    const/4 v5, 0x0

    if-ge p3, v1, :cond_6a

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, v6, v3, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;

    invoke-direct {v8, p0, v6, p1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;)V

    invoke-virtual {p1, v7, v5, v8}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4f

    :cond_6a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_23 .. :try_end_6e} :catchall_40

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_75

    move-object v2, v5

    :cond_75
    invoke-virtual {p0, p1, v2, v5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    return v3

    :goto_7c
    :try_start_7c
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_40

    throw p0
.end method

.method public final updateTimesLocked()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    goto :goto_34

    :cond_11
    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    const-wide/32 v4, 0x54a48e00

    cmp-long v4, v0, v4

    if-ltz v4, :cond_33

    const-string/jumbo v4, "ShortcutService"

    const-string v5, "Clock rewound"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_25
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    add-long v6, v2, v4

    cmp-long v6, v6, v0

    if-gtz v6, :cond_33

    rem-long v6, v2, v4

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    goto :goto_34

    :cond_33
    move-wide v0, v2

    :goto_34
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    cmp-long v0, v2, v0

    if-eqz v0, :cond_42

    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    :cond_42
    return-void
.end method

.method public final verifyCaller(ILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "packageName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_3c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_34

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    if-eqz p0, :cond_2c

    move p0, p1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    xor-int/2addr p0, p1

    const-string p1, "Ephemeral apps can\'t use ShortcutManager"

    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void

    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid userId"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    if-nez p2, :cond_3

    goto :goto_3f

    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v0

    if-eq p1, v0, :cond_3f

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-nez p0, :cond_36

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-eqz p0, :cond_36

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-void

    :cond_36
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "UserId in shortcut doesn\'t match the caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, ""

    const-string p2, "109824443"

    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Shortcut package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public final verifyStates()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    return-void
.end method

.method public waitForBitmapSavesForTest()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    if-nez p2, :cond_a

    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "Stacktrace"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Last failure was logged here:"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_24

    const-string/jumbo p0, "ShortcutService"

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method
