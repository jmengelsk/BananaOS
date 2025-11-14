.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64

.field static final MAX_USER_ID:I = 0x53e1

.field static final MIN_USER_ID:I = 0xa

.field public static final PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static sContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final mAppRestrictionsLock:Ljava/lang/Object;

.field public final mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public mBootUser:I

.field public final mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mConfigurationChangeReceiver:Lcom/android/server/pm/UserManagerService$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBootPhase:I

.field public mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

.field public final mDeviceInactivityBroadcastReceiver:Lcom/android/server/pm/UserManagerService$1;

.field public mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

.field public final mDisableQuietModeCallback:Lcom/android/server/pm/UserManagerService$1;

.field public mForceEphemeralUsers:Z

.field public final mGuestRestrictions:Landroid/os/Bundle;

.field public final mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

.field public final mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mIsDeviceInactivityBroadcastReceiverRegistered:Z

.field public mIsDeviceManaged:Z

.field public final mIsUserManaged:Landroid/util/SparseBooleanArray;

.field public mKeyguardLockedStateListener:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNextSerialNumber:I

.field public final mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mOwnerNameTypedValue:Landroid/util/TypedValue;

.field public final mPackagesLock:Ljava/lang/Object;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

.field public mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

.field public final mRecentlyRemovedIds:Ljava/util/LinkedList;

.field public final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field public final mRestrictionsLock:Ljava/lang/Object;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final mUpdatingSystemUserMode:Z

.field public final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field public mUserIds:[I

.field public mUserIdsIncludingPreCreated:[I

.field public final mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

.field public final mUserLifecycleListeners:Ljava/util/ArrayList;

.field public final mUserListFile:Ljava/io/File;

.field public final mUserRestrictionToken:Landroid/os/IBinder;

.field public final mUserRestrictionsListeners:Ljava/util/ArrayList;

.field public final mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

.field public mUserTypeVersion:I

.field public final mUserTypes:Landroid/util/ArrayMap;

.field public mUserVersion:I

.field public final mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

.field public final mUsers:Landroid/util/SparseArray;

.field public final mUsersDir:Ljava/io/File;

.field public final mUsersLock:Ljava/lang/Object;

.field public final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public static $r8$lambda$yIybRUvnMFarqB2JHfYXkMUsauk(Lcom/android/server/pm/UserManagerService;ILjava/util/List;)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/16 v4, 0x27a8

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3, v3, v3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_4

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    iget-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_1
    move-object v12, v8

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :goto_2
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v8

    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    move/from16 v18, v3

    goto :goto_3

    :cond_1
    move/from16 v18, v5

    :goto_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    iget v13, v7, Landroid/content/pm/UserInfo;->flags:I

    iget-wide v14, v7, Landroid/content/pm/UserInfo;->creationTime:J

    iget-wide v7, v7, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const/16 v9, 0x27a8

    move-wide/from16 v16, v7

    invoke-static/range {v9 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIILjava/lang/String;IJJZ)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x27b0

    if-ne v1, v4, :cond_5

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v7

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "no_add_user"

    invoke-virtual {v0, v8, v6}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    move v3, v5

    :goto_4
    invoke-static {v4, v1, v7, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return v5

    :cond_5
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v2, "Unexpected atom tag: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public static -$$Nest$mwriteBitmapLP(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "photo.png"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "UserManagerService"

    const-string p2, "Error setting photo for user "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "system"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v2, "users"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x37

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/UserManagerService;->PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserDataPreparer;",
            "Ljava/lang/Object;",
            "Ljava/io/File;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;",
            "Lcom/android/server/pm/PersonaManagerService;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Landroid/os/IUserManager$Stub;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v3, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v3}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    iput v4, v0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iput v4, v0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/pm/UserJourneyLogger;

    invoke-direct {v3}, Lcom/android/server/pm/UserJourneyLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    new-instance v3, Lcom/android/server/pm/UserManagerService$1;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Lcom/android/server/pm/UserManagerService$1;

    iput-boolean v4, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    new-instance v3, Lcom/android/server/pm/UserManagerService$1;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v6}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Lcom/android/server/pm/UserManagerService$1;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    new-instance v3, Lcom/android/server/pm/UserManagerService$1;

    const/4 v6, 0x2

    invoke-direct {v3, v0, v6}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mConfigurationChangeReceiver:Lcom/android/server/pm/UserManagerService$1;

    new-instance v3, Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-direct {v3}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    const/16 v3, -0x2710

    iput v3, v0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    if-eqz p6, :cond_0

    move-object/from16 v3, p6

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/pm/UserManagerService$MainHandler;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v6, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v7, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v2, v7, v6}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v8, 0x1

    const-wide/16 v9, 0x18

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v6, v0, Lcom/android/server/pm/UserManagerService;->mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/server/pm/UserVisibilityMediator;

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v6

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v7

    invoke-direct {v2, v6, v7, v3}, Lcom/android/server/pm/UserVisibilityMediator;-><init>(ZZLandroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1170009

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/server/pm/UserTypeFactory;->customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v3, v6}, Landroid/util/ArrayMap;-><init>(I)V

    move v6, v4

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/16 v8, 0x800

    if-ge v6, v7, :cond_14

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserTypeDetails$Builder;

    iget-object v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    if-eqz v10, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v4

    :goto_2
    const-string v11, "Cannot create a UserTypeDetails with no name."

    invoke-static {v10, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v11, 0x400

    const/16 v12, 0x1000

    if-eq v10, v11, :cond_4

    if-eq v10, v12, :cond_4

    if-eq v10, v8, :cond_4

    const/16 v11, 0xc00

    if-ne v10, v11, :cond_3

    goto :goto_3

    :cond_3
    move v10, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v5

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "UserTypeDetails "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has invalid baseType: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 v10, v10, 0x1c90

    if-nez v10, :cond_5

    move v10, v5

    goto :goto_5

    :cond_5
    move v10, v4

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has invalid flags: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_6

    move v8, v5

    goto :goto_6

    :cond_6
    move v8, v4

    :goto_6
    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/2addr v10, v5

    if-eqz v10, :cond_7

    move v10, v5

    goto :goto_7

    :cond_7
    move v10, v4

    :goto_7
    if-ne v8, v10, :cond_8

    move v8, v5

    goto :goto_8

    :cond_8
    move v8, v4

    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " cannot be SYSTEM xor PRIMARY."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_a

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    if-ne v8, v5, :cond_9

    goto :goto_9

    :cond_9
    move v8, v4

    goto :goto_a

    :cond_a
    :goto_9
    move v8, v5

    :goto_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " must not sanction more than one MainUser."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    if-eqz v8, :cond_d

    iget-object v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v8, :cond_b

    array-length v8, v8

    if-eqz v8, :cond_b

    move v8, v5

    goto :goto_b

    :cond_b
    move v8, v4

    :goto_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has badge but no badgeLabels."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    if-eqz v8, :cond_c

    array-length v8, v8

    if-eqz v8, :cond_c

    move v8, v5

    goto :goto_c

    :cond_c
    move v8, v4

    :goto_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has badge but no badgeColors."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_d
    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_e

    goto :goto_f

    :cond_e
    iget-object v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v8, :cond_10

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_d

    :cond_f
    move v8, v4

    goto :goto_e

    :cond_10
    :goto_d
    move v8, v5

    :goto_e
    iget-object v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "UserTypeDetails %s has a non empty defaultCrossProfileIntentFilters"

    invoke-static {v8, v11, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    xor-int/2addr v8, v5

    iget-object v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "UserTypeDetails %s requires a parent but isn\'t a profile"

    invoke-static {v8, v11, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    new-instance v12, Lcom/android/server/pm/UserTypeDetails;

    iget-object v13, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    if-eqz v8, :cond_11

    move v14, v5

    goto :goto_10

    :cond_11
    move v14, v4

    :goto_10
    iget v15, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iget-object v11, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    move/from16 v33, v4

    iget v4, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iget-boolean v5, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    iget v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    move/from16 v21, v1

    iget v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    move/from16 v22, v1

    iget v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    move/from16 v23, v1

    iget v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    move/from16 v24, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    move-object/from16 v25, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    move-object/from16 v26, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    if-nez v1, :cond_12

    move-object/from16 v27, v26

    goto :goto_11

    :cond_12
    move-object/from16 v27, v1

    :goto_11
    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v28, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v29, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move-object/from16 v30, v1

    iget v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    move/from16 v31, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    if-nez v1, :cond_13

    new-instance v1, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v1}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    :cond_13
    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    move-object/from16 v32, v1

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v16, v8

    move/from16 v17, v10

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v32}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V

    invoke-virtual {v3, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v33

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_14
    move/from16 v33, v4

    iput-object v3, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V

    sput-object p1, Lcom/android/server/pm/UserManagerService;->sContext:Landroid/content/Context;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v5, p5

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/io/File;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/UserSystemPackageInstaller;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-direct {v1, v0}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    move/from16 v2, v33

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    new-instance v1, Lcom/android/server/pm/UserManagerService$SettingsObserver;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/UserManagerService$SettingsObserver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$MainHandler;)V

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockSettingsObserver:Lcom/android/server/pm/UserManagerService$SettingsObserver;

    const-string/jumbo v1, "Transferring Main to user 0 from "

    const-string v2, "Designating user "

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_14

    :cond_15
    const-string/jumbo v3, "persist.debug.user_mode_emulation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_14

    :cond_16
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v6, :cond_17

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "emulateSystemUserModeIfNeeded(): no system user data"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    goto/16 :goto_15

    :cond_17
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v7

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    if-eqz v3, :cond_18

    const-string/jumbo v11, "android.os.usertype.system.HEADLESS"

    and-int/lit16 v12, v10, -0x4401

    goto :goto_12

    :cond_18
    const-string/jumbo v11, "android.os.usertype.full.SYSTEM"

    or-int/lit16 v12, v10, 0x4400

    :goto_12
    iget-object v9, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "emulateSystemUserModeIfNeeded(): system user type is already %s, returning"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_14

    :cond_19
    :try_start_7
    const-string/jumbo v9, "UserManagerService"

    const-string/jumbo v13, "Persisting emulated system user data: type changed from %s to %s, flags changed from %s to %s"

    iget-object v14, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v14, v14, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v10}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v14, v11, v10, v15}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v13, v10}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object v11, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iput v12, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v6

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    iget-object v1, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v1, v8

    if-nez v1, :cond_1a

    goto :goto_13

    :cond_1a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11101d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string/jumbo v3, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to be Main"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_13

    :cond_1b
    if-eqz v6, :cond_1c

    iget-object v2, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v2, v8

    if-nez v2, :cond_1c

    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_13

    :cond_1c
    const-string/jumbo v1, "UserManagerService"

    const-string v2, "Designated user 0 to be Main"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_13
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    :goto_14
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    return-void

    :goto_15
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    :goto_16
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_1e

    :try_start_c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_17

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_17
    throw v1
.end method

.method public static addUserInfoFlags(Landroid/content/pm/UserInfo;)V
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    not-int v1, v0

    and-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_0
    return-void
.end method

.method public static final checkCreateUsersPermission(I)V
    .locals 2

    const v0, -0x972d

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkCreateUsersPermission(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only system may: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static checkUserTypeConsistency(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x120c

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    and-int/lit16 v0, p0, 0x1400

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0x1800

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const-string p1, "<unknown>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-long/2addr p2, p4

    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string p2, " ago"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static enforceCurrentUserIfVisibleBackgroundEnabled()V
    .locals 7

    const-string v0, "Invalid calling user on devices that enable visible background users. callingUserId="

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " currentUserId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final hasManageUsersPermission()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v0

    return v0
.end method

.method public static hasManageUsersPermission(I)Z
    .locals 1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot manage users : unauthorized"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hasPermissionGranted(ILjava/lang/String;)Z
    .locals 2

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot manage users : unauthorized"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasQueryOrCreateUsersPermission()Z
    .locals 2

    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.permission.QUERY_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isCreationOverrideEnabled()Z
    .locals 2

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "debug.user.creation_override"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isDefaultHeadlessSystemUserMode()Z
    .locals 3

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0

    :cond_0
    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "headless"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v2, "full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const-string/jumbo v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "isDefaultHeadlessSystemUserMode(): ignoring invalid valued of property %s: %s"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method public static isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "res_"

    const-string v1, ".xml"

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Unable to read restrictions file "

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    invoke-static {v2, v3, v5}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_2
    return-object v2

    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 6

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const-string/jumbo v2, "key"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "m"

    const/4 v5, -0x1

    invoke-interface {p2, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v1, :cond_0

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_4
    const-string v0, "BA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    :goto_3
    invoke-static {p2, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v3, p1, p2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_7
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "b"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_8
    const-string/jumbo p2, "i"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_9
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static setResetTokenForSecureFolder(Landroid/content/pm/UserInfo;)V
    .locals 4

    const-string/jumbo v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    iget-object v1, v0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    const/16 v2, 0x76

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static throwCheckedUserOperationException(ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {v0, p1, p0}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static truncateString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6

    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo p1, "UserManagerService"

    const-string v0, "Error writing application restrictions list"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "entry"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "key"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    instance-of v1, v2, Ljava/lang/Boolean;

    const-string/jumbo v5, "type"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "b"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    :cond_0
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "i"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    :cond_1
    const-string v1, ""

    if-eqz v2, :cond_7

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_2

    goto :goto_4

    :cond_2
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_3

    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_5

    :cond_3
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    const-string v1, "BA"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v2, [Landroid/os/Parcelable;

    array-length v1, v2

    :goto_1
    if-ge v8, v1, :cond_9

    aget-object v6, v2, v8

    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_4

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string/jumbo v6, "sa"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v2, [Ljava/lang/String;

    const-string/jumbo v5, "m"

    array-length v6, v2

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    array-length v5, v2

    :goto_2
    if-ge v8, v5, :cond_9

    aget-object v6, v2, v8

    const-string/jumbo v7, "value"

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v6, v1

    :goto_3
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    const-string/jumbo v6, "s"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_8

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_8
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    :goto_5
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public addRemovingUserId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addRemovingUserIdLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string/jumbo v5, "UserManagerService"

    if-ge v4, v1, :cond_2

    aget-object v6, v2, v4

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Failed to insert default system setting: "

    invoke-static {v7, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v2, v1, v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Failed to insert default secure setting: "

    invoke-static {v4, v2, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public autoLockPrivateSpace()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const-string v1, "Auto-locking private space with user-id "

    const-string/jumbo v2, "UserManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.PROFILE_AVAILABLE"

    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    goto :goto_0

    :cond_0
    move-object v3, v2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v3, "android.intent.action.PROFILE_UNAVAILABLE"

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    const-string/jumbo v3, "android.intent.extra.USER"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p3

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez p3, :cond_3

    const-class p3, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_3
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p3, v0, p2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    :cond_4
    const/high16 p3, 0x50000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    if-eqz p4, :cond_5

    move-object v1, v2

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final canAddMoreManagedProfiles(IZ)Z
    .locals 1

    const-string/jumbo v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final canAddMoreProfilesToUser(IILjava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3, p1, v1}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p3, v1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->canAddMoreManagedProfiles(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    :try_start_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .locals 0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(ILjava/lang/String;Z)I

    move-result p0

    if-gtz p0, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iget v1, p1, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final canAddMoreUsersOfType(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "check if more users can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final canAddPrivateProfile(I)Z
    .locals 4

    const-string/jumbo v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string/jumbo v1, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "no_add_private_profile"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v3
.end method

.method public final canHaveRestrictedProfile(I)Z
    .locals 4

    const-string/jumbo v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final cancelPendingAutoLockAlarms()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method

.method public final checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "android.permission.QUERY_USERS"

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object p0

    const-string p1, "Failed to enable"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public final clearSeedAccountData(I)V
    .locals 3

    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object v0, v0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object v1, v1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_2
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final convertPreCreatedUserIfPossible(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 8

    const-string v0, "Cannot reuse pre-created user "

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v6, :cond_1

    const-string/jumbo p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " because it didn\'t stop yet"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v3, p1

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Cannot reuse pre-created user "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, v0, Landroid/content/pm/UserInfo;->id:I

    const-string v2, " of type "

    const-string v3, " because flags are inconsistent. Flags ("

    invoke-static {p4, v2, p3, v3, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p3, "); preCreatedUserFlags ( "

    invoke-static {p1, p2, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget p1, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string/jumbo v1, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Reusing pre-created user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const-string v6, " of type "

    const-string v7, " and bestowing on it flags "

    invoke-static {v5, v6, p3, v7, v4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput v3, v0, Landroid/content/pm/UserInfo;->flags:I

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide v3, 0xdc46c32800L

    cmp-long p1, p3, v3

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 p3, 0x0

    :goto_0
    iput-wide p3, v0, Landroid/content/pm/UserInfo;->creationTime:J

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 8

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 7

    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "android.os.usertype.full.RESTRICTED"

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    :try_start_0
    const-string/jumbo v0, "no_modify_accounts"

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "location_mode"

    iget v4, p0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "no_share_location"

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 8

    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "no_add_clone_profile"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "no_add_private_profile"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "no_add_user"

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot add user"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "Cannot create ADMIN user"

    const-string/jumbo v2, "no_grant_admin"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v0, p3, 0x20

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "MultiUserManager policy blocked to create user"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Cannot create user due to Knox security policy."

    invoke-static {v1, p0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 24

    move-object/from16 v1, p0

    new-instance v8, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v8}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createUser-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v10, -0x1

    const/4 v11, 0x4

    invoke-virtual {v0, v10, v11}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isUserTypeMaintenanceMode(Ljava/lang/String;)Z

    move-result v15

    const/4 v12, 0x0

    if-eqz v15, :cond_1

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move v4, v13

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Maintenance mode user is already being created."

    invoke-static {v3, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_1
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v19

    iget-object v3, v2, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {v10, v11}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v4

    iget-object v5, v2, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v17, :cond_3

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, -0x1

    move-object/from16 p1, v2

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v9

    move-object/from16 p2, v17

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    move-object/from16 v16, p1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v21

    iget v5, v0, Landroid/content/pm/UserInfo;->flags:I

    const/16 v23, -0x1

    const/16 v18, 0x4

    move/from16 v20, v2

    move/from16 v22, v5

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    move-object/from16 v2, v16

    iget-object v2, v2, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    monitor-exit v3

    :goto_2
    move v2, v12

    goto :goto_4

    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v11

    move v2, v12

    const/4 v12, -0x1

    const/4 v10, 0x4

    move-object/from16 v14, p2

    move/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    :goto_4
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v15, :cond_5

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    return-object v0

    :catchall_1
    move-exception v0

    move v2, v12

    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v11

    const/4 v12, -0x1

    const/4 v10, 0x4

    move-object/from16 v14, p2

    move/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v15, :cond_6

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    throw v0
.end method

.method public final createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .locals 41

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    const-string v6, "Creating SecureFolder user - Separate challenge is enabled for user "

    const-string/jumbo v7, "could not start pre-created user "

    const-string/jumbo v8, "starting pre-created user "

    const-string/jumbo v9, "PM.onNewUserCreated-"

    const-string v10, "Apply policies and setup dualdar for user "

    const-string v11, "EM Token status : "

    const-string v12, "Creating user "

    const-string v13, "Cannot add profile of type "

    const-string v14, "Cannot add more profiles of type "

    const-string v15, "Cannot add more users of type "

    move-object/from16 v16, v6

    const-string v6, "Cannot find user data for parent user "

    move-object/from16 v17, v7

    const/16 v7, 0x64

    move-object/from16 v18, v8

    move-object/from16 v8, p1

    invoke-static {v7, v8}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    move-object/from16 v25, v9

    const/16 p1, 0x0

    if-eqz v8, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int v0, p3, v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v19

    if-eqz v19, :cond_58

    move-object/from16 v27, v10

    and-int/lit16 v10, v0, 0x800

    if-nez v10, :cond_57

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    move/from16 p2, v10

    if-eqz p2, :cond_56

    invoke-static {v9}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isUserTypeMaintenanceMode(Ljava/lang/String;)Z

    move-result v28

    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10

    if-eqz v28, :cond_5

    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v4

    move-object/from16 v29, v11

    iget-boolean v11, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v11, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/16 v3, 0x3e8

    invoke-static {v11, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    move-object/from16 v19, v12

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object/from16 v19, v12

    new-instance v12, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;

    invoke-direct {v12, v3, v11}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;-><init>(II)V

    iget-object v3, v4, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, v4, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->doesMaintenanceModeUserIdExist(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->hasSystemFeature()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "Cannot add Maintenance mode user."

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    goto/16 :goto_38

    :cond_5
    move-object/from16 v29, v11

    move-object/from16 v19, v12

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0x100

    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    const/high16 v4, 0x10000

    const/high16 v10, 0x8000000

    if-eqz v3, :cond_7

    and-int v11, v0, v10

    if-nez v11, :cond_8

    and-int v11, v0, v4

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v20, v4

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigMaxMultiUsers()I

    move-result v11

    const/16 v26, 0x1

    add-int/lit8 v11, v11, 0x1

    const-string/jumbo v12, "persist.sys.show_multiuserui"

    move/from16 v20, v4

    const-string/jumbo v4, "true"

    invoke-static {v12, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "persist.sys.max_users"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "BmodeMigrationUtils"

    const-string v11, "Enabling multi user due to BMODE"

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez p5, :cond_a

    if-gez v2, :cond_a

    iget v4, v8, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const-string/jumbo v4, "android.os.usertype.full.RESTRICTED"

    iget-object v11, v8, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    if-nez v28, :cond_a

    invoke-virtual {v1, v0, v5, v9, v7}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    return-object v4

    :cond_a
    :goto_5
    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-virtual {v4}, Lcom/android/server/storage/DeviceStorageMonitorService$2;->isMemoryLow()Z

    move-result v4

    if-nez v4, :cond_55

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    iget v11, v8, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v30

    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v21

    and-int/2addr v10, v0

    if-nez v10, :cond_e

    and-int v10, v0, v20

    if-eqz v10, :cond_d

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v10, 0x1

    :goto_9
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v31

    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_f

    move/from16 v20, v3

    const/4 v3, 0x1

    goto :goto_a

    :cond_f
    move/from16 v20, v3

    const/4 v3, 0x0

    :goto_a
    const/high16 v22, 0x20000000

    and-int v22, v0, v22

    if-eqz v22, :cond_10

    move/from16 v22, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v32, v4

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_11

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    move/from16 v22, v0

    move/from16 v32, v4

    :cond_11
    const/4 v0, 0x0

    :goto_b
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v4

    move/from16 p3, v4

    iget-boolean v4, v8, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    const/high16 v23, 0x4000000

    and-int v23, v22, v23

    if-eqz v23, :cond_12

    const/16 v33, 0x1

    goto :goto_c

    :cond_12
    const/16 v33, 0x0

    :goto_c
    const/high16 v23, 0x2000000

    and-int v23, v22, v23

    if-eqz v23, :cond_13

    const/16 v34, 0x1

    goto :goto_d

    :cond_13
    const/16 v34, 0x0

    :goto_d
    if-nez v33, :cond_15

    if-eqz v34, :cond_14

    goto :goto_e

    :cond_14
    const/16 v23, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/16 v23, 0x1

    :goto_f
    if-eqz v31, :cond_16

    if-eqz v10, :cond_17

    :cond_16
    if-eqz v23, :cond_18

    :cond_17
    const/16 v35, 0x1

    goto :goto_10

    :cond_18
    const/16 v35, 0x0

    :goto_10
    if-eqz v3, :cond_19

    const/high16 v23, 0x40000

    or-int v22, v22, v23

    :cond_19
    move/from16 v23, v4

    move/from16 v4, v22

    const/high16 v22, 0x1000000

    and-int v22, v4, v22

    if-eqz v22, :cond_1a

    const/16 v22, 0x1

    goto :goto_11

    :cond_1a
    const/16 v22, 0x0

    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    move-object/from16 v24, v7

    :try_start_2
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_15

    move/from16 v38, v10

    const/16 v10, -0x2710

    if-eq v2, v10, :cond_1c

    :try_start_3
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v39

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v39, :cond_1b

    move-object/from16 v6, v39

    goto :goto_14

    :cond_1b
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_12
    move-object/from16 v9, p1

    :goto_13
    const/4 v12, 0x0

    goto/16 :goto_35

    :catchall_1
    move-exception v0

    goto :goto_12

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    :cond_1c
    move-object/from16 v6, p1

    :goto_14
    if-eqz v32, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v10

    move/from16 v40, v11

    const/16 v11, -0x2710

    if-ne v10, v11, :cond_1d

    goto :goto_15

    :cond_1d
    const-string v0, "Cannot add user with FLAG_MAIN as main user already exists."

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_1e
    move/from16 v40, v11

    :goto_15
    if-nez p5, :cond_20

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    if-nez v10, :cond_20

    if-eqz v28, :cond_1f

    goto :goto_16

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Maximum number of that type already exists."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_20
    :goto_16
    if-nez v12, :cond_22

    if-nez v31, :cond_22

    if-nez v21, :cond_22

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v10

    if-eqz v10, :cond_22

    if-nez v28, :cond_22

    if-nez v38, :cond_22

    if-nez v22, :cond_22

    if-nez p3, :cond_22

    if-eqz v0, :cond_21

    goto :goto_17

    :cond_21
    const-string v0, "Cannot add user. Maximum user limit is reached."

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_22
    :goto_17
    if-eqz v23, :cond_24

    invoke-virtual {v1, v2, v4, v9}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    goto :goto_18

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_24
    :goto_18
    if-eqz p3, :cond_26

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddPrivateProfile(I)Z

    move-result v10

    if-eqz v10, :cond_25

    goto :goto_19

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_26
    :goto_19
    if-eqz v20, :cond_2a

    if-eqz v38, :cond_2a

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v10, v10}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v13, :cond_28

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/2addr v14, v10

    move-object v10, v15

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v15

    if-eqz v15, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v10, 0x1

    goto :goto_1a

    :cond_28
    move-object/from16 v10, p1

    :goto_1b
    if-nez v10, :cond_29

    goto :goto_1c

    :cond_29
    const-string v0, "Cannot add Bmode user. There already exists one."

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_2a
    :goto_1c
    if-eqz v30, :cond_2c

    if-eqz v2, :cond_2c

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result v10

    if-eqz v10, :cond_2b

    goto :goto_1d

    :cond_2b
    const-string v0, "Cannot add restricted profile - parent user must be system"

    const/4 v10, 0x1

    invoke-static {v10, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2c
    :goto_1d
    if-eqz v28, :cond_2d

    const/16 v0, 0x4d

    :goto_1e
    move v10, v0

    goto :goto_1f

    :cond_2d
    :try_start_8
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZ)I

    move-result v0

    goto :goto_1e

    :goto_1f
    const-string/jumbo v0, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v13, v19

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " of type "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v11, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_13

    if-eqz v6, :cond_2e

    :try_start_9
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_2e

    or-int/lit16 v4, v4, 0x100

    goto :goto_20

    :catchall_3
    move-exception v0

    move-object/from16 v9, p1

    const/4 v12, 0x0

    goto/16 :goto_34

    :cond_2e
    :goto_20
    if-eqz p5, :cond_2f

    and-int/lit16 v4, v4, -0x101

    :cond_2f
    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_30

    or-int/lit16 v4, v4, 0x2000

    :cond_30
    move/from16 v23, v4

    :try_start_a
    new-instance v19, Landroid/content/pm/UserInfo;

    const/16 v22, 0x0

    move/from16 v20, v10

    move-object/from16 v21, v24

    move-object/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    move-object/from16 v13, v19

    move/from16 v9, v20

    move/from16 v10, v23

    move-object/from16 v4, v24

    if-eqz v40, :cond_31

    :try_start_b
    iput v9, v13, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v26, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_21

    :cond_31
    :try_start_c
    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v26, 0x1

    add-int/lit8 v14, v0, 0x1

    iput v14, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v0, v13, Landroid/content/pm/UserInfo;->serialNumber:I

    :goto_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide v19, 0xdc46c32800L

    cmp-long v0, v14, v19

    if-lez v0, :cond_32

    goto :goto_22

    :cond_32
    const-wide/16 v14, 0x0

    :goto_22
    iput-wide v14, v13, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/content/pm/UserInfo;->partial:Z

    move/from16 v14, p5

    iput-boolean v14, v13, Landroid/content/pm/UserInfo;->preCreated:Z

    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    if-eqz v0, :cond_33

    const/16 v0, -0x2710

    if-eq v2, v0, :cond_33

    :try_start_d
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v0

    iput v0, v13, Landroid/content/pm/UserInfo;->profileBadge:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_33
    :try_start_e
    new-instance v15, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v15}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    :try_start_f
    iput-object v13, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    new-instance v0, Landroid/content/pm/UserProperties;

    move/from16 v19, v3

    iget-object v3, v8, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-direct {v0, v3}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v3, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    :try_start_10
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    if-eqz v6, :cond_37

    if-eqz v40, :cond_35

    :try_start_11
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v11, -0x2710

    if-ne v3, v11, :cond_34

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iput v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_23

    :catchall_4
    move-exception v0

    move-object v9, v15

    goto/16 :goto_13

    :cond_34
    :goto_23
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, v13, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_24

    :cond_35
    if-eqz v30, :cond_37

    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v11, -0x2710

    if-ne v3, v11, :cond_36

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iput v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_36
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, v13, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :cond_37
    :goto_24
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    if-eqz v35, :cond_45

    :try_start_13
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    const-string/jumbo v3, "UserManagerService"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v0, :cond_38

    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isKnoxKeyInstallable()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_26

    :catch_0
    move-exception v0

    :try_start_15
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "check Device Integrity - Remote Exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    const/4 v0, 0x0

    goto :goto_26

    :cond_38
    const-string/jumbo v0, "check Device Integrity - failed. cannot get DAR Service"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :goto_26
    if-nez v0, :cond_3a

    const-string/jumbo v0, "UserManagerService"

    const-string v2, "Failed in device integrity check"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    if-eqz v28, :cond_39

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_39
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_5
    move-exception v0

    move-object v9, v15

    const/4 v4, 0x0

    goto/16 :goto_36

    :cond_3a
    :try_start_16
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x23

    if-lt v0, v3, :cond_3b

    const-string/jumbo v0, "UserManagerService"

    const-string v3, "DRK is not supported from V OS"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_27

    :cond_3b
    const/4 v0, 0x1

    :goto_27
    if-eqz v0, :cond_3e

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    const-string/jumbo v3, "UserManagerService"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v0, :cond_3c

    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isDeviceRootKeyInstalled()Z

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_29

    :catch_1
    move-exception v0

    :try_start_18
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "check Device Root Key - Remote Exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    const/4 v0, 0x0

    goto :goto_29

    :cond_3c
    const-string/jumbo v0, "check Device Root Key - failed. cannot get DAR Service"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :goto_29
    if-nez v0, :cond_3e

    const-string/jumbo v0, "UserManagerService"

    const-string v2, "Failed in (DRK)Device Root Key check"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v28, :cond_3d

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_3d
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_3e
    :try_start_19
    const-string v0, "KnoxTestKeyUMS"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    new-instance v3, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v3}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    new-instance v6, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    sget-object v7, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    const-class v7, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    const-string/jumbo v11, "mVerifiableIntegrity"

    invoke-virtual {v7, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    iget-boolean v11, v6, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    move-object/from16 p2, v0

    iget-object v0, v6, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iget-object v6, v6, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move/from16 v20, v12

    const/4 v12, 0x0

    :try_start_1b
    invoke-direct {v7, v6, v11, v12, v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZLandroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    const-string/jumbo v3, "dar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_3f

    if-eqz v3, :cond_3f

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V

    goto :goto_2d

    :catch_2
    move-exception v0

    goto :goto_2a

    :cond_3f
    const-string/jumbo v0, "UserManagerService"

    const-string v3, "Failed in device integrity check"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-eqz v28, :cond_40

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_40
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catch_3
    move-exception v0

    move/from16 v20, v12

    :goto_2a
    :try_start_1c
    const-string/jumbo v3, "UserManagerService"

    const-string v6, "Device integrity status is abnormal."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-static {v13}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_41

    const/4 v0, 0x1

    goto :goto_2b

    :cond_41
    const/4 v0, 0x0

    :goto_2b
    const-string/jumbo v3, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v29

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_42
    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_43

    const-string/jumbo v0, "UserManagerService"

    const-string v3, "Device integrity status is abnormal. But, EM Token is allowed. Continue - "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    goto :goto_2d

    :cond_43
    if-eqz v28, :cond_44

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_44
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_45
    move/from16 v20, v12

    :goto_2d
    if-eqz v40, :cond_46

    if-nez v14, :cond_46

    :try_start_1d
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->clearStorageForUser(I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :cond_46
    :try_start_1e
    const-string/jumbo v0, "createUserStorageKeys"

    move-object/from16 v3, p7

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v6

    invoke-virtual {v0, v9, v6}, Landroid/os/storage/StorageManager;->createUserStorageKeys(IZ)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "prepareUserData"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v11, 0x1

    invoke-virtual {v0, v11, v13}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(ILandroid/content/pm/UserInfo;)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    if-eqz v31, :cond_4a

    if-nez v33, :cond_47

    if-eqz v34, :cond_4a

    :cond_47
    :try_start_1f
    const-string/jumbo v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v27

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->handleWorkspaceCreation(I)Z

    move-result v0

    if-nez v0, :cond_49

    const-string/jumbo v0, "UserManagerService"

    const-string v2, "DualDAR Setup failed during workspace creation"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    if-eqz v28, :cond_48

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_48
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_49
    :try_start_20
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v9, v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/pm/UserManagerService$LocalService;->setDualDarInfo(II)Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :cond_4a
    :try_start_21
    const-string v0, "LSS.createNewUser"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v13, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v0, v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->createNewUser(II)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v4, "PM.createNewUser"

    invoke-virtual {v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v6, p6

    invoke-virtual {v4, v9, v0, v6}, Lcom/android/server/pm/PackageManagerService;->createNewUser(ILjava/util/Set;[Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    if-eqz v20, :cond_4b

    :try_start_22
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :try_start_23
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v4

    goto :goto_2e

    :catchall_6
    move-exception v0

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :try_start_24
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :cond_4b
    :try_start_25
    iget-object v4, v8, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    if-eqz v32, :cond_4c

    :try_start_26
    const-string/jumbo v4, "no_outgoing_calls"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "no_sms"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :cond_4c
    :goto_2e
    :try_start_27
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    :try_start_28
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v6, v9, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    const/4 v12, 0x0

    :try_start_29
    iput-boolean v12, v13, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    :try_start_2a
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    :try_start_2b
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :try_start_2c
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v25

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    const/4 v12, 0x0

    :try_start_2d
    invoke-virtual {v4, v9, v12}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v1, v8, v9}, Lcom/android/server/pm/UserManagerService;->applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V

    invoke-virtual {v1, v9, v8, v0, v2}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_8

    if-eqz v14, :cond_4d

    :try_start_2e
    const-string/jumbo v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    :try_start_2f
    invoke-interface {v0, v9}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_4
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    goto :goto_2f

    :catchall_7
    move-exception v0

    move-object v9, v15

    move/from16 v4, v28

    goto/16 :goto_36

    :catch_4
    move-exception v0

    :try_start_30
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    :cond_4d
    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    :goto_2f
    if-nez v31, :cond_4e

    if-eqz p3, :cond_50

    :cond_4e
    if-nez v38, :cond_50

    if-eqz v19, :cond_4f

    invoke-static {v13}, Lcom/android/server/pm/UserManagerService;->setResetTokenForSecureFolder(Landroid/content/pm/UserInfo;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v2, p1

    const/4 v11, 0x1

    invoke-virtual {v0, v9, v11, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    const-string/jumbo v0, "UserManagerService.DAR"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->onNewUserCreated(Landroid/content/pm/UserInfo;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    :cond_50
    if-eqz v28, :cond_52

    if-eqz v28, :cond_51

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->finishUserCreation()V

    goto :goto_30

    :cond_51
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_52
    :goto_30
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    :catchall_8
    move-exception v0

    :goto_31
    move v4, v12

    move-object v9, v15

    goto :goto_36

    :catchall_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_31

    :catchall_a
    move-exception v0

    const/4 v12, 0x0

    :goto_32
    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    :try_start_32
    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    :catchall_b
    move-exception v0

    goto :goto_32

    :catchall_c
    move-exception v0

    const/4 v12, 0x0

    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    :try_start_34
    throw v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    :catchall_d
    move-exception v0

    goto :goto_33

    :catchall_e
    move-exception v0

    const/4 v12, 0x0

    move-object v9, v15

    goto :goto_35

    :catchall_f
    move-exception v0

    const/4 v12, 0x0

    move-object v9, v15

    goto :goto_34

    :catchall_10
    move-exception v0

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_34
    :try_start_35
    monitor-exit v11
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_12

    :try_start_36
    throw v0

    :catchall_11
    move-exception v0

    goto :goto_35

    :catchall_12
    move-exception v0

    goto :goto_34

    :catchall_13
    move-exception v0

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_11

    :try_start_37
    throw v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_14

    :catchall_14
    move-exception v0

    move v4, v12

    goto :goto_36

    :catchall_15
    move-exception v0

    const/4 v12, 0x0

    move v4, v12

    const/4 v9, 0x0

    :goto_36
    if-eqz v28, :cond_54

    if-eqz v4, :cond_53

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->finishUserCreation()V

    goto :goto_37

    :cond_53
    invoke-virtual {v1, v9}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_54
    :goto_37
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_55
    const-string v0, "Cannot add user. Not enough space on disk."

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :catchall_16
    move-exception v0

    :try_start_38
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_16

    throw v0

    :goto_38
    :try_start_39
    monitor-exit v10
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    throw v0

    :cond_56
    move-object v4, v9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot add a user of disabled type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x8

    invoke-static {v11, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_57
    move-object/from16 v2, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot add user. Flags ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") indicated SYSTEM user, which cannot be created."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v11, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw v2

    :cond_58
    move-object v4, v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add user. Flags ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") and userTypeDetails ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") are inconsistent."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v11, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_59
    move-object/from16 v2, p1

    const/4 v11, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create user of invalid user type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw v2
.end method

.method public final createUserWithAttributes(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/UserHandle;
    .locals 7

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    if-eqz p4, :cond_0

    iget-object p2, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget p3, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :cond_0
    iget p2, p0, Landroid/content/pm/UserInfo;->id:I

    move-object p4, p6

    const/4 p6, 0x1

    move-object p3, p5

    move-object p5, p7

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public final createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.USER"

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "users_guest_created"

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "users_demo_created"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "users_user_created"

    :goto_1
    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PROFILE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x50000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_switcher_enabled"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111019c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "UserManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "klm_eula_shown"

    const/4 v9, 0x0

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    aget-object v1, p3, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "--visibility-mediator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, p0

    move-object v2, p2

    goto :goto_0

    :cond_2
    aget-object p1, p3, p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V

    return-void

    :cond_3
    move-object v1, p0

    move-object v2, p2

    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    const-string p2, "Current user: "

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, -0x2710

    if-eq p0, p2, :cond_4

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    :cond_4
    const-string/jumbo p2, "N/A"

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v3, "Users:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v11, v9

    :goto_2
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v11, v3, :cond_6

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    :goto_3
    add-int/2addr v11, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_12

    :cond_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  agree Knox Privacy Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, p1, :cond_7

    const-string/jumbo v0, "true"

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_13

    :cond_7
    const-string/jumbo v0, "false"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Device properties:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Device policy global restrictions:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v2, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    :try_start_6
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device managed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Recently removed userIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11

    :cond_8
    :goto_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v0, "  Started users state: ["

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    move v4, v9

    :goto_6
    if-ge v4, v0, :cond_a

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {v6}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_9

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto/16 :goto_10

    :cond_9
    :goto_7
    add-int/2addr v4, p1

    goto :goto_6

    :cond_a
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(C)V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    const-string v0, "  Cached user IDs: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Cached user IDs (including pre-created): "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p2, v2, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "  Max users: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0109

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    if-eq p2, p3, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " (built-in value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " (limit reached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  Supports switchable users: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  All guests ephemeral: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x11101c4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  Force ephemeral users: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "  Is headless-system mode: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean p3, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    if-eq p2, p3, :cond_c

    const-string p3, "  (differs from the current default build value)"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const-string/jumbo p3, "persist.debug.user_mode_emulation"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "  (emulated by \'cmd user set-system-user-mode-emulation\')"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p3, v1, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    if-eqz p3, :cond_d

    const-string p3, "  (and being updated after boot)"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    if-eqz p2, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  Can switch to headless system user: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x1110072

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "  User version: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v1, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const-string v0, "  Owner name: "

    invoke-static {p2, p3, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Boot user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can add private profile: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserManagerService;->canAddPrivateProfile(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo p0, "Number of listeners for"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  restrictions: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  user lifecycle events: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "User types version: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    const-string/jumbo p3, "User types ("

    invoke-static {p0, p2, v2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " types):"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p0, v9

    :goto_8
    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge p0, p2, :cond_16

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v0, ": "

    invoke-static {v2, p3, v0, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserTypeDetails;

    const-string p3, "        "

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    const-string/jumbo v3, "mBaseType: "

    invoke-static {v2, v0, p3, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnabled: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    const-string/jumbo v3, "mMaxAllowed: "

    invoke-static {v2, p3, v3, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    const-string/jumbo v3, "mMaxAllowedPerParent: "

    invoke-static {v0, v2, p3, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    const-string/jumbo v3, "mDefaultUserInfoFlags: "

    invoke-static {v0, v2, p3, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, v2, p3}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "            "

    iget v3, p2, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_11

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "config_defaultFirstUserRestrictions: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_10
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_9
    if-ge v6, v5, :cond_10

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v3, v7, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    add-int/2addr v6, p1

    goto :goto_9

    :cond_10
    invoke-static {v2, v0, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_a

    :catch_0
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "none - resource not found"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDefaultRestrictions: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v2, v0, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_a
    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProfileParentRequired: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    const-string/jumbo v3, "mIconBadge: "

    invoke-static {v2, p3, v3, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    const-string/jumbo v3, "mBadgePlain: "

    invoke-static {v0, v2, p3, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    const-string/jumbo v3, "mBadgeNoBackground: "

    invoke-static {v0, v2, p3, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    const-string/jumbo v3, "mStatusBarIcon: "

    invoke-static {v0, v2, p3, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    const-string/jumbo v3, "mBadgeLabels.length: "

    invoke-static {v0, v2, p3, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0(null)"

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz v3, :cond_12

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_b

    :cond_12
    move-object v3, v0

    :goto_b
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mBadgeColors.length: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v3, :cond_13

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_c

    :cond_13
    move-object v3, v0

    :goto_c
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDarkThemeBadgeColors.length: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v3, :cond_14

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :cond_14
    move-object v3, v0

    :goto_d
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLabels.length: "

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p2, :cond_15

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_15
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/2addr p0, p1

    goto/16 :goto_8

    :cond_16
    new-instance p0, Landroid/util/IndentingPrintWriter;

    invoke-direct {p0, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_11
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p1, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V

    :goto_e
    return-void

    :catchall_4
    move-exception v0

    move-object p1, v0

    :try_start_12
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw p1

    :catchall_6
    move-exception v0

    move-object p0, v0

    :try_start_13
    monitor-exit p2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw p0

    :catchall_7
    move-exception v0

    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw p1

    :catchall_8
    move-exception v0

    move-object p0, v0

    :try_start_15
    monitor-exit p3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw p0

    :catchall_9
    move-exception v0

    move-object p0, v0

    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :try_start_17
    throw p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :goto_10
    :try_start_18
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :goto_11
    :try_start_1a
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    throw p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :catchall_a
    move-exception v0

    move-object p0, v0

    :try_start_1c
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :try_start_1d
    throw p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catchall_b
    move-exception v0

    move-object p0, v0

    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    :try_start_1f
    throw p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :goto_12
    :try_start_20
    monitor-exit v10
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :try_start_21
    throw p0

    :goto_13
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    throw p0
.end method

.method public final dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V
    .locals 9

    const-string/jumbo v2, "User "

    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v3

    const-string v4, "Current user: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_1

    const-string v0, "Cannot determine current user"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    move v3, p2

    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v6, p6

    move-object v2, v4

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    monitor-exit v8

    return-void

    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V
    .locals 9

    iget-object v7, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_0

    const-string v2, "  "

    const-string/jumbo v3, "UserInfo{"

    invoke-static {p1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":xxx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :goto_0
    const-string v2, " serialNo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " isPrimary="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    iget v2, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_1

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    const-string v2, " parentId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " <removing> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_3

    const-string v2, " <partial>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_4

    const-string v2, " <pre-created>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v2, :cond_5

    const-string v2, " <converted>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "    Type: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Flags: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v2}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    State: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v3}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Created: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v7, Landroid/content/pm/UserInfo;->creationTime:J

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v2, "    Last logged in: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v7, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v2, "    Last logged in fingerprint: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Start time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v2, p3

    move-wide v3, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v2, "    Unlock time: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v2, "    Last entered foreground: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p2, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    move-object v2, p3

    move-wide v3, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v2, "    Has profile owner: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "    Restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    const-string v2, "      "

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "    Device policy restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      "

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "    Effective restrictions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "      "

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    Account name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_6
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    Seed account name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "         account type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_8

    const-string v0, "         account options exist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_8
    const-string v0, "    Can have profile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_9

    const-string v2, "    "

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    Ignore errors preparing storage: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "    KNOX attributes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " <PREMIUM> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "    KNOX flags: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "    KNOX attributes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, " <PREMIUM> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, " <admin locked> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, " <license expired> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, " <device compromise detected> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_10
    iget v0, v7, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v2, 0x6000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_13

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    const-string v0, " <DUALDAR CUSTOM CRYPTO>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_11
    iget v0, v7, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    const-string v0, " <DUALDAR NATIVE CRYPTO>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is enabled."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UserManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/UserManager$CheckedUserOperationException;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final evictCredentialEncryptionKey(I)V
    .locals 3

    const-string/jumbo v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    :try_start_0
    invoke-interface {v0, p1, p0}, Landroid/app/IActivityManager;->restartUserInBackground(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final fallbackToSingleUserLP()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->onUserRemoved(I)V

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.os.usertype.system.HEADLESS"

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "android.os.usertype.full.SYSTEM"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int/lit8 v5, v0, 0x10

    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    new-instance v0, Landroid/content/pm/UserProperties;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    iget-object v2, v2, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-direct {v0, v2}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10700ca

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :goto_4
    const-string/jumbo v4, "UserManagerService"

    const-string v5, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final getAliveUsersExcludingGuestsCountLU()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDigitalLegacyMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x400000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, -0x1

    :goto_0
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get application restrictions for other user/app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v0, p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public final getBootUser()I
    .locals 1

    const-string v0, "Get boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    move-result p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final getBootUserUnchecked()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "Using provided boot user: %d"

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "Provided boot user cannot be switched to: %d"

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e00cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "Unknown HSUM boot strategy: %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    if-eq p0, v2, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "UserManagerService"

    const-string v2, "Boot user is first switchable full user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_4
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string/jumbo v0, "No switchable full user found"

    invoke-direct {p0, v0, v3}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    :cond_6
    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getCommunalProfileId()I
    .locals 1

    const-string/jumbo v0, "get communal profile user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getCommunalProfileIdUnchecked()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCommunalProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCredentialOwnerProfile(I)I
    .locals 3

    const-string/jumbo v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v2

    goto :goto_1

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getCurrentAndTargetUserIds()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v0, "getCurrentAndTargetUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/Pair;

    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v0, "getCurrentUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public final getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    return-object p0
.end method

.method public final getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v5, v4, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    cmp-long v7, v5, v1

    if-gez v7, :cond_0

    move-object v0, v4

    move-wide v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

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

.method public final getFirstSwitchableUser(Z)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object p0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFreeProfileBadgeLU(ILjava/lang/String;)I
    .locals 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    const p0, 0x7fffffff

    :cond_2
    move p1, v2

    :goto_1
    if-ge p1, p0, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public final getGuestUsers()Ljava/util/List;
    .locals 7

    const-string/jumbo v0, "getGuestUsers"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getMainDisplayIdAssignedToUser(I)I
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller from user "

    const-string v2, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the main display for ("

    const-string v3, ")"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getMainDisplayAssignedToUser(I)I

    move-result p0

    return p0
.end method

.method public final getMainUserId()I
    .locals 1

    const-string/jumbo v0, "get main user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getMainUserIdUnchecked()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "persist.sys.max_profiles"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getNextAvailableId()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZ)I

    move-result p0

    return p0
.end method

.method public final getNextAvailableId(ZZ)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZ)I

    move-result v1

    if-ltz v1, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v1, "UserManagerService"

    const-string v2, "All available IDs are used. Recycling LRU ids."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZ)I

    move-result v1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    if-ltz v1, :cond_3

    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "No user id available!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getNumberOfUsersOfType(Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_1

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "found pre-created user of type "

    const-string v4, ", but it\'s not initialized yet: "

    invoke-static {v3, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UserManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "getPreInstallableSystemPackages"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getPreviousFullUserToEnterForeground()I
    .locals 11

    const-string/jumbo v0, "get previous user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, -0x2710

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v9, v0, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v10, v8, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-wide v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    cmp-long v10, v7, v4

    if-lez v10, :cond_0

    move-wide v4, v7

    move v3, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return v3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPreviousOrFirstSwitchableUser()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousFullUserToEnterForeground()I

    move-result v0

    const-string/jumbo v1, "UserManagerService"

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Boot user is previous user %d"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    if-eq p0, v2, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Boot user is first switchable user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_1
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string/jumbo v0, "No switchable users found"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPrivateProfileUserId()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget p0, v4, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getProfileAccessibilityLabelResId(I)I
    .locals 1

    const-string/jumbo v0, "getProfileAccessibilityLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getProfileIds(IZ)[I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;IZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIds(Ljava/lang/String;IZZ)[I
    .locals 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getting profiles related to user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v6

    const/16 v7, 0x96

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    if-lt v6, v7, :cond_1

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->get(I)I

    move-result v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v4, v7, :cond_3

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getProfileIdsExcludingHidden(IZ)[I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;IZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_1

    iget v4, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_7

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_7

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public final getProfileLabelResId(I)I
    .locals 2

    const-string/jumbo v0, "getProfileLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p0, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 1

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProfileParentId(I)I
    .locals 1

    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final getProfileParentIdUnchecked(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, p1, :cond_2

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getProfileType(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "getProfileType"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_0
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getProfiles(IZ)Ljava/util/List;
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getting profiles related to user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getProfilesLU(IZZ)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p3, :cond_0

    new-instance v3, Landroid/content/pm/UserInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    iput-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v3

    :goto_1
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final getRemainingCreatableProfileCount(ILjava/lang/String;Z)I
    .locals 10

    const-string/jumbo v0, "get the remaining number of profiles that can be added to the given user."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p2}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.software.managed_users"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, p2, p1, v1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;IZZ)[I

    move-result-object v6

    array-length v6, v6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :cond_3
    :goto_0
    if-ge v8, v7, :cond_4

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    if-lez v6, :cond_5

    if-eqz p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int/2addr v7, p3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v8

    sub-int/2addr v8, v7

    if-gtz v8, :cond_7

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    if-ne v7, p1, :cond_7

    goto :goto_2

    :cond_7
    move p1, v8

    :goto_2
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iget v3, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "persist.sys.max_profiles"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_9
    :goto_3
    const/4 v2, -0x1

    if-eq v3, v2, :cond_a

    sub-int/2addr v6, p3

    sub-int/2addr v3, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_a
    if-gtz p1, :cond_b

    monitor-exit v5

    return v1

    :cond_b
    iget v0, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    if-eq v0, v2, :cond_c

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p0, p3

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_c
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v5

    return p0

    :cond_d
    :goto_4
    monitor-exit v5

    return v1

    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_e
    :goto_6
    return v1
.end method

.method public final getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final getRemainingCreatableUserCount(Ljava/lang/String;)I
    .locals 8

    const-string/jumbo v0, "get the remaining number of users that can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v3

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7fffffff

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_0
    move v4, v5

    :goto_1
    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.managed_users"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    monitor-exit v2

    return v1

    :cond_3
    const/4 v6, 0x1

    if-gtz v4, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-ne v3, v6, :cond_5

    move v3, v6

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    move v4, v6

    :cond_6
    if-gtz v4, :cond_7

    monitor-exit v2

    return v1

    :cond_7
    iget v0, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int v5, v0, p0

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v2

    return p0

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_6
    return v1
.end method

.method public final getSeedAccountName(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .locals 1

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSeedAccountType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserAccount(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserBadgeColorResId(I)I
    .locals 3

    const-string/jumbo v0, "getUserBadgeColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const-string/jumbo p0, "Requested badge dark color for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getUserBadgeDarkColorResId(I)I
    .locals 3

    const-string/jumbo v0, "getUserBadgeDarkColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_2

    array-length v2, v0

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, v0, p0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_4

    array-length v0, p0

    if-eqz v0, :cond_4

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    const-string/jumbo p0, "Requested badge color for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getUserBadgeLabelResId(I)I
    .locals 3

    const-string/jumbo v0, "getUserBadgeLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz p0, :cond_2

    array-length v0, p0

    if-eqz v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const-string/jumbo p0, "Requested badge label for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getUserBadgeNoBackgroundResId(I)I
    .locals 1

    const-string/jumbo v0, "getUserBadgeNoBackgroundResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "Requested badge (no background) for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserBadgeResId(I)I
    .locals 1

    const-string/jumbo v0, "getUserBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "Requested badge for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserCreationTime(I)J
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v0, p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    iget-wide p0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "userId can only be the calling user or a profile associated with this user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v2, ".xml"

    invoke-static {p1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v3, ".xml.backup"

    invoke-static {p1, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v4, ".xml.reservecopy"

    invoke-static {p1, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    new-instance v6, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/16 v4, 0x1f9

    const-string/jumbo v5, "user info"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getUserHandle(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_0

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 5

    const-string/jumbo v0, "getUserIcon: unknown user #"

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p1, p0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_2

    iget p1, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    const-string/jumbo p0, "get the icon of a user who is not related"

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p0, v2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez p0, :cond_4

    monitor-exit v1

    return-object v3

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "UserManagerService"

    const-string v0, "Couldn\'t find icon file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_5
    :goto_2
    :try_start_2
    const-string/jumbo p0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserIconBadgeResId(I)I
    .locals 1

    const-string/jumbo v0, "getUserIconBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "Requested icon badge for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserIdsIncludingPreCreated()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2

    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/content/pm/UserInfo;

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "getUserInfo: unknown user #"

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".backup"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".reservecopy"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    new-instance v6, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/16 v4, 0x1f9

    const-string/jumbo v5, "user list"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getUserLogoutability(I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "aconfig flag android.multiuser.logout_user_api not enabled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_2

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;
    .locals 3

    const-string/jumbo v0, "getUserProperties"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    const-string/jumbo v1, "android.permission.QUERY_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/content/pm/UserProperties;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;ZZZ)V

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot access properties for user "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    move p1, v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserRemovabilityLocked(ILjava/lang/String;)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "User %d can not be %s, "

    invoke-static {v0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "UserManagerService"

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "system user cannot be removed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "invalid user id provided."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    :cond_1
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "main user cannot be removed when it\'s a permanent admin user."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "it is already scheduled for removal."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method public final getUserRemovalRestrictionOptional(I)Ljava/util/Optional;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1

    move p1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo p0, "no_remove_managed_profile"

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "no_remove_user"

    :goto_1
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ltz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v0}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v0

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .locals 4

    const-string/jumbo v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v1, :cond_2

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    const-string/jumbo p2, "call getUserRestrictionSources."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserRestrictions(I)Landroid/os/Bundle;
    .locals 1

    const-string/jumbo v0, "getUserRestrictions"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserSerialNumber(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, -0x1

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserStartRealtime()J
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v2, p0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v1

    return-wide v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUserStatusBarIconResId(I)I
    .locals 1

    const-string/jumbo v0, "getUserStatusBarIconResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "Requested status bar icon for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserSwitchability(I)I
    .locals 7

    const-string/jumbo v0, "getUserSwitchability"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getUserSwitchability-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.software.telecom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v1, "TM.isInCall"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    move v1, v3

    :goto_2
    const-string/jumbo v4, "hasUserRestriction-DISALLOW_USER_SWITCH"

    invoke-virtual {v0, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-string/jumbo v5, "no_user_switch"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "getInt-ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v4, "allow_user_switching_when_system_user_locked"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo p1, "isUserUnlocked-USER_SYSTEM"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v2, :cond_4

    if-nez p0, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v1
.end method

.method public final getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_1
    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUserUnlockRealtime()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUsers(ZZZ)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUsersInternal(ZZZ)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getVisibleUsers()[I
    .locals 2

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get list of visible users"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasBadge(I)Z
    .locals 1

    const-string/jumbo v0, "hasBadge"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 2

    const-string/jumbo v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasRestrictedProfiles(I)Z
    .locals 6

    const-string/jumbo v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_0

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, p1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1

    const-string/jumbo v0, "hasUserRestriction"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    move v3, v1

    :goto_0
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final initDefaultGuestRestrictions()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    if-nez v1, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string v1, "Can\'t set default guest restrictions: type doesn\'t exist."

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    iget p2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    const/4 v0, 0x1

    const v1, 0x104099f

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final isAdminUser(I)Z
    .locals 2

    const-string/jumbo v0, "isAdminUser"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCrossProfileIntentFilterAccessible(IIZ)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0xa

    if-ne p1, p0, :cond_2

    sget-boolean p1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x14

    if-ne p1, p0, :cond_4

    if-eqz p3, :cond_3

    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_2
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isDemoUser(I)Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "You need MANAGE_USERS permission to query if u="

    const-string v1, " is a demo user"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo v0, "ro.boot.arc_demo_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isForegroundUserAdmin()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v1

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    :cond_1
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isHeadlessSystemUserMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPreCreated(I)Z
    .locals 1

    const-string/jumbo v0, "isPreCreated"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isProfileUnchecked(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isQuietModeEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final isRestricted(I)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query isRestricted for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSameProfileGroup(II)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    const-string/jumbo p2, "check if in the same profile group"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isSameProfileGroupNoChecks(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    if-eq p2, v2, :cond_2

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_3

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p1, p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_26

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v2, "1"

    const-string v4, "0"

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v6, "screen_brightness"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v6, "install_non_market_apps"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v6, "auto_time"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v6, "always_on_vpn_lockdown"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v6, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v6, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v6, "auto_time_zone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v6, "private_dns_specifier"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v6, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v6, "airplane_mode_on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v6, "private_dns_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v6, "screen_off_timeout"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v6, "safe_boot_disallowed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v6, "doze_pulse_on_long_press"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v6, "doze_always_on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_0

    :cond_f
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_10
    const-string/jumbo v6, "always_on_vpn_app"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_0

    :cond_10
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_11
    const-string/jumbo v6, "screen_brightness_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_0

    :cond_11
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_12
    const-string/jumbo v6, "adb_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_0

    :cond_12
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_13
    const-string/jumbo v6, "verifier_verify_adb_installs"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_0

    :cond_13
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_14
    const-string/jumbo v6, "doze_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_0

    :cond_14
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_15
    const-string/jumbo v6, "location_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_0

    :cond_15
    move v5, v0

    goto :goto_0

    :sswitch_16
    const-string/jumbo v6, "adb_wifi_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_0

    :cond_16
    move v5, v1

    :goto_0
    packed-switch v5, :pswitch_data_0

    const-string/jumbo p4, "data_roaming"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto/16 :goto_1

    :cond_17
    const-string/jumbo p1, "no_data_roaming"

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto/16 :goto_1

    :cond_18
    const-string/jumbo p1, "no_install_unknown_sources"

    goto/16 :goto_2

    :pswitch_1
    if-ne p4, v3, :cond_19

    goto/16 :goto_1

    :cond_19
    const-string/jumbo p1, "no_config_date_time"

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo p1, "no_airplane_mode"

    goto/16 :goto_2

    :pswitch_3
    if-ne p4, v3, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo p1, "disallow_config_private_dns"

    goto/16 :goto_2

    :pswitch_4
    if-ne p4, v3, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo p1, "no_config_screen_timeout"

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1

    :cond_1d
    const-string/jumbo p1, "no_safe_boot"

    goto :goto_2

    :pswitch_6
    const-string/jumbo p1, "no_config_mobile_networks"

    goto :goto_2

    :pswitch_7
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p1, v3, :cond_24

    if-nez p1, :cond_1e

    goto :goto_1

    :cond_1e
    const-string/jumbo p1, "no_config_vpn"

    goto :goto_2

    :pswitch_8
    if-ne p4, v3, :cond_1f

    goto :goto_1

    :cond_1f
    const-string/jumbo p1, "no_config_brightness"

    goto :goto_2

    :pswitch_9
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_1

    :cond_20
    const-string/jumbo p1, "ensure_verify_apps"

    goto :goto_2

    :pswitch_a
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_1

    :cond_21
    const-string/jumbo p1, "no_ambient_display"

    goto :goto_2

    :pswitch_b
    const-string/jumbo p1, "no_config_location"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_22

    if-eq p4, v3, :cond_22

    return v0

    :cond_22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_1

    :cond_23
    const-string/jumbo p1, "no_share_location"

    goto :goto_2

    :pswitch_c
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_24
    :goto_1
    return v1

    :cond_25
    const-string/jumbo p1, "no_debugging_features"

    :goto_2
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d29d849 -> :sswitch_16
        -0x6b192413 -> :sswitch_15
        -0x58d2ff08 -> :sswitch_14
        -0x4280630b -> :sswitch_13
        -0x39d6645f -> :sswitch_12
        -0x294f7102 -> :sswitch_11
        -0x252f8dda -> :sswitch_10
        -0x18d5c3ee -> :sswitch_f
        -0x611a9fa -> :sswitch_e
        -0x1efffcf -> :sswitch_d
        0x3756c15 -> :sswitch_c
        0xf689f3e -> :sswitch_b
        0x28c0ce35 -> :sswitch_a
        0x3733860e -> :sswitch_9
        0x3ff919a6 -> :sswitch_8
        0x48f0b46c -> :sswitch_7
        0x4c070b4e -> :sswitch_6
        0x4f84b830 -> :sswitch_5
        0x5f8b91a8 -> :sswitch_4
        0x62299f68 -> :sswitch_3
        0x6305635d -> :sswitch_2
        0x6565577f -> :sswitch_1
        0x67748604 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_a
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public final isUserForeground(I)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller from user "

    const-string v2, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    const-string v3, ") is running in the foreground"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserLimitReached()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isUserNameSet(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v1, p1, :cond_0

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUserOfType(ILjava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "check user type"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserRunning(I)Z
    .locals 1

    const-string/jumbo v0, "isUserRunning"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result p0

    return p0
.end method

.method public isUserSwitcherEnabled(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "no_user_switch"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final isUserSwitcherEnabled(ZI)Z
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_4

    const-string/jumbo p1, "no_add_user"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    move v2, p2

    :cond_1
    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final isUserTypeEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "check if user type is enabled."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserUnlocked(I)Z
    .locals 1

    const-string/jumbo v0, "isUserUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isUserUnlockingOrUnlocked(I)Z
    .locals 1

    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isUserVisible(I)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller from user "

    const-string v2, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    const-string v3, ") is visible"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public final makeInitialized(I)V
    .locals 4

    const-string/jumbo v0, "makeInitialized: unknown user #"

    const-string/jumbo v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v0, 0x10

    if-nez v3, :cond_1

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/content/pm/UserInfo;->flags:I

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    :try_start_1
    const-string/jumbo p0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final markGuestForDeletion(I)Z
    .locals 7

    const-string/jumbo v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_4
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :goto_2
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x4d

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public maybeScheduleAlarmToAutoLockPrivateSpace()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "UserManagerService"

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Not scheduling auto-lock on inactivity,preference is set to %d"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Not scheduling auto-lock alarm for %d, quiet mode already enabled"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->scheduleAlarmToAutoLockPrivateSpace(IJ)V

    :cond_2
    return-void
.end method

.method public final onBeforeStartUser(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBeforeStartUser-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    sget-object v2, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string/jumbo v4, "prepareUserData"

    invoke-virtual {v1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(ILandroid/content/pm/UserInfo;)V

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "reconcileAppsData"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "applyUserRestrictions"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onBeforeUnlockUser(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prepareUserData-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(ILandroid/content/pm/UserInfo;)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v4, 0x6000000

    and-int/2addr v0, v4

    if-lez v0, :cond_2

    const-string/jumbo v0, "UserManagerService"

    const-string v4, "Apply policies on CE storage for dualdar user "

    invoke-static {p1, v4, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->handleBeforeUnlockUser(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "To set DualDAR Policy on CE storage was failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Failed to remove invalid enterprise user - Couldn\'t get UserData"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v2, v3, Landroid/content/pm/UserInfo;->partial:Z

    iget v2, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v3, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManagerInternal;->markCeStoragePrepared(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reconcileAppsData-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_3

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, v5, v1}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerServiceShellCommand;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onUserLoggedIn(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "userForeground: unknown user #"

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "android.os.usertype.full.RESTRICTED"

    iget-object v0, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cannot pre-create user of type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Pre-creating user of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x2710

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    :try_start_0
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 3

    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 7

    const-string/jumbo v0, "UserManagerService"

    const-string v1, "Error reading user info, user id: "

    const-string/jumbo v2, "User info not found, returning null, user id: "

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v5

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :catch_1
    move-exception v2

    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Unable to read user "

    invoke-static {v2, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_1
    const/4 v8, -0x1

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, -0x2710

    if-ne v3, v4, :cond_25

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string/jumbo v3, "id"

    invoke-interface {v1, v5, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_2

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "User id does not match the file name"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    const-string/jumbo v3, "serialNumber"

    invoke-interface {v1, v5, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v12, "flags"

    invoke-interface {v1, v5, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "attributes"

    invoke-interface {v1, v5, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "type"

    invoke-interface {v1, v5, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_3
    move-object v14, v5

    :goto_1
    const-string/jumbo v15, "icon"

    invoke-interface {v1, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v8, "created"

    invoke-interface {v1, v5, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v8, "lastLoggedIn"

    invoke-interface {v1, v5, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v18

    const-string/jumbo v8, "lastLoggedInFingerprint"

    invoke-interface {v1, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "lastEnteredForeground"

    invoke-interface {v1, v5, v4, v9, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v21

    const-string/jumbo v4, "profileGroupId"

    invoke-interface {v1, v5, v4, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v9, "profileBadge"

    invoke-interface {v1, v5, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "restrictedProfileParentId"

    invoke-interface {v1, v5, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v10, "partial"

    invoke-interface {v1, v5, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v7, "preCreated"

    invoke-interface {v1, v5, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    move/from16 v25, v3

    const-string/jumbo v3, "convertedFromPreCreated"

    invoke-interface {v1, v5, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v26, v3

    const-string/jumbo v3, "guestToRemove"

    invoke-interface {v1, v5, v3, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, "seedAccountName"

    invoke-interface {v1, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v28, v3

    const-string/jumbo v3, "seedAccountType"

    invoke-interface {v1, v5, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v29, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v29, 0x1

    :goto_3
    sget-boolean v30, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    if-eqz v30, :cond_6

    const/high16 v30, 0x10000

    and-int v30, v12, v30

    if-eqz v30, :cond_6

    const-string/jumbo v5, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x8000000

    or-int/2addr v12, v5

    :cond_6
    const/16 v5, 0x4d

    if-ne v2, v5, :cond_7

    const/high16 v5, 0x80000

    and-int/2addr v5, v12

    if-eqz v5, :cond_7

    const-string/jumbo v5, "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    const v5, -0x80001

    and-int/2addr v12, v5

    :cond_7
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    const-wide/16 v23, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    :goto_4
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move-object/from16 v40, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v5, :cond_8

    const/4 v3, 0x3

    goto :goto_5

    :cond_8
    move/from16 v41, v4

    move-object/from16 v43, v6

    move/from16 v44, v7

    goto/16 :goto_f

    :cond_9
    :goto_5
    if-eq v2, v3, :cond_a

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    :cond_a
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    const/4 v7, 0x2

    goto :goto_8

    :cond_b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    :cond_c
    :goto_6
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    :cond_d
    :goto_7
    const/4 v7, 0x2

    :cond_e
    :goto_8
    const/16 v30, 0x0

    goto/16 :goto_e

    :cond_f
    const-string/jumbo v3, "restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v35, v2

    goto :goto_6

    :cond_10
    const-string/jumbo v3, "device_policy_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v36, v2

    goto :goto_6

    :cond_11
    const-string/jumbo v3, "device_policy_local_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v2, 0xa

    move/from16 v3, p3

    if-ge v3, v2, :cond_1a

    const-string/jumbo v2, "device_policy_local_restrictions"

    new-instance v3, Landroid/util/SparseArray;

    move/from16 v41, v4

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    move/from16 v42, v5

    :goto_9
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    move-object/from16 v43, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v44, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_13

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v2, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    move-object/from16 v37, v2

    goto :goto_7

    :cond_13
    const/4 v7, 0x2

    if-ne v5, v7, :cond_15

    const-string/jumbo v7, "restrictions_user"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v4, "user_id"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_d

    :cond_14
    const/4 v7, 0x2

    :cond_15
    if-ne v5, v7, :cond_18

    const-string/jumbo v5, "restrictions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_d

    :cond_16
    invoke-static {v5}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :cond_17
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    :goto_c
    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    :cond_18
    :goto_d
    move-object/from16 v6, v43

    move/from16 v7, v44

    goto :goto_9

    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "restrictions cannot be read as xml is malformed."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_b

    :cond_1b
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    const-string/jumbo v3, "device_policy_global_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v38, v2

    goto/16 :goto_7

    :cond_1c
    const-string/jumbo v3, "guestRestrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_1d
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1d

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    monitor-exit v2

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1e
    const/4 v7, 0x2

    const-string/jumbo v3, "account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v32, v2

    goto/16 :goto_8

    :cond_1f
    const-string/jumbo v3, "seedAccountOptions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v33, v2

    const/16 v29, 0x1

    goto/16 :goto_8

    :cond_20
    const-string/jumbo v3, "userProperties"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    if-nez v2, :cond_21

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "User has properties but no user type!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    return-object v30

    :cond_21
    const/16 v30, 0x0

    iget-object v2, v2, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    new-instance v3, Landroid/content/pm/UserProperties;

    invoke-direct {v3, v1, v2}, Landroid/content/pm/UserProperties;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V

    move-object/from16 v34, v3

    goto :goto_e

    :cond_22
    const/16 v30, 0x0

    const-string/jumbo v3, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_24

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v23, v2

    goto :goto_e

    :cond_23
    const/4 v3, 0x4

    const-string/jumbo v4, "ignorePrepareStorageErrors"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_24

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v39, v2

    :cond_24
    :goto_e
    move-object/from16 v3, v40

    move/from16 v4, v41

    move/from16 v5, v42

    move-object/from16 v6, v43

    move/from16 v7, v44

    goto/16 :goto_4

    :goto_f
    move v2, v9

    move v1, v10

    move/from16 v27, v12

    move-object v6, v14

    move-object v4, v15

    move-wide/from16 v47, v21

    move-wide/from16 v45, v23

    move/from16 v7, v25

    move/from16 v21, v29

    move-object/from16 v3, v31

    move-object/from16 v9, v32

    move-object/from16 p3, v36

    move-object/from16 v5, v37

    move-object/from16 v30, v38

    move-object/from16 v20, v40

    move/from16 v0, v41

    move v14, v11

    move v15, v13

    move-wide/from16 v12, v16

    move-wide/from16 v10, v18

    move-object/from16 v17, v33

    move-object/from16 v18, v34

    move-object/from16 v16, v35

    move-object/from16 v19, v43

    goto :goto_10

    :cond_25
    move-object/from16 v30, v5

    move/from16 v7, p1

    move v0, v11

    move v14, v0

    move-object/from16 p3, v30

    move-object/from16 v3, p3

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v9, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v39, 0x1

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    :goto_10
    new-instance v22, Landroid/content/pm/UserInfo;

    move/from16 v25, v0

    move/from16 v49, v2

    move-object/from16 v50, v5

    move-object/from16 v23, v9

    move/from16 v24, v14

    move/from16 v14, v26

    move/from16 v5, v27

    move/from16 v0, v28

    move-object/from16 v51, v30

    move/from16 v2, p1

    move v9, v1

    move-object/from16 v1, v22

    move/from16 v22, v15

    move/from16 v15, v44

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput v7, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput-wide v12, v1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v10, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-object v8, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-boolean v9, v1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v15, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean v14, v1, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v11, v25

    iput v11, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v9, v49

    iput v9, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    move/from16 v11, v24

    iput v11, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v13, v22

    invoke-virtual {v1, v13}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v1, v23

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    move-object/from16 v1, v20

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    move/from16 v1, v21

    iput-boolean v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    move-wide/from16 v3, v45

    iput-wide v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    move-wide/from16 v3, v47

    iput-wide v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    if-eqz v39, :cond_27

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v3, 0x21

    if-ge v1, v3, :cond_26

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    goto :goto_11

    :cond_26
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "Not setting mIgnorePrepareStorageErrors to true since this is a new device"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_11
    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v16, :cond_28

    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, v16

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_28
    move-object/from16 v4, v50

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_15

    :goto_12
    if-eqz v4, :cond_2a

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    if-eqz p3, :cond_29

    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v4, "Seeing both legacy and current local restrictions in xml"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_13
    move-object/from16 v2, v51

    goto :goto_14

    :cond_2a
    if-eqz p3, :cond_29

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_13

    :goto_14
    if-eqz v2, :cond_2b

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_2b
    monitor-exit v3

    return-object v0

    :goto_15
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final readUserListLP()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "userlist.xml not found, fallback to single user"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception v1

    goto/16 :goto_9

    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-eq v4, v6, :cond_2

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "Unable to read user list"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_2
    const/4 v4, -0x1

    :try_start_3
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "users"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "nextSerialNumber"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const-string/jumbo v4, "version"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const-string/jumbo v4, "userTypeConfigVersion"

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-interface {v3, v1, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    :cond_3
    const/4 v4, 0x0

    move v7, v4

    :cond_4
    :goto_1
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    if-eq v8, v5, :cond_e

    if-ne v8, v6, :cond_4

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v8, "id"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v11, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v10, :cond_5

    iget-object v11, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    if-gt v10, v11, :cond_6

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_4

    :cond_5
    :goto_2
    iget-object v10, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_6
    iget-object v8, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    iget-boolean v10, v8, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    iget-wide v10, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_9

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11101c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v10}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    iput-boolean v5, v8, Landroid/content/pm/UserInfo;->partial:Z

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;)V

    :goto_3
    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v10, 0x96

    if-lt v8, v10, :cond_a

    const/16 v10, 0xa0

    if-gt v8, v10, :cond_a

    const/16 v8, 0xa1

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_a
    monitor-exit v9

    goto/16 :goto_1

    :goto_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :cond_b
    const-string/jumbo v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v5, :cond_d

    const/4 v8, 0x3

    if-eq v7, v8, :cond_d

    if-ne v7, v6, :cond_c

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "restrictions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v3, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    monitor-exit v7

    goto :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1

    :cond_d
    :goto_5
    move v7, v5

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(II)V

    if-ne v7, v5, :cond_10

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v3, v1

    :goto_6
    if-ge v4, v3, :cond_f

    aget v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v2, "mUsers is empty, fallback to single user"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_8

    :cond_11
    :goto_7
    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :catch_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_9
    :try_start_9
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_a
    :try_start_a
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0
.end method

.method public final reconcileUsers(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getDataSystemCeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getDataMiscCeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final removeUser(I)Z
    .locals 6

    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeUser u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x4d

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {p1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x3e8

    invoke-static {v2, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    new-instance v5, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;

    invoke-direct {v5, v4, v2}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda10;-><init>(II)V

    iget-object v2, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "sys.maintenance_mode.boot_attempt_count"

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsRescueSessionDuringBoot:Z

    iget-object v2, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const-string/jumbo p0, "persist.sys.is_in_maintenance_mode"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->changeUsbDebuggingOption(Z)V

    new-instance p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsRescueSessionDuringBoot:Z

    goto :goto_2

    :cond_1
    const-string/jumbo p0, "com.samsung.android.intent.action.NOTIFY_POSTPROCESSING_MAINTENANCE_MODE"

    const-string/jumbo v0, "com.samsung.android.intent.action.RESPONSE_POSTPROCESSING_MAINTENANCE_MODE"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->notifyOtherPackages(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->waitForOtherPackages()V

    :try_start_1
    sget-object p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    const-string/jumbo p0, "appops"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    const-string/jumbo v0, "MaintenanceMode"

    const-string/jumbo v1, "Unable to notify AppOpsService of removing user."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    new-instance p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0xea60

    invoke-virtual {p0, v3, v4, v0}, Ljava/util/concurrent/CompletableFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mExitRunnable:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    const-wide/32 v0, 0xfde8

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    const/4 p0, 0x1

    return p0

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove user. "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " is enabled."

    invoke-static {p1, v1, v2, p0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mCurrentBootPhase:I

    const/16 v2, 0x226

    if-ge v1, v2, :cond_4

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Cannot remove user, removeUser is called too early during boot. ActivityManager is not ready yet."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final removeUserEvenWhenDisallowed(I)Z
    .locals 1

    const-string/jumbo v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public removeUserInfo(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeUserState(I)V
    .locals 5

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Removing user state of user "

    invoke-static {p1, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserStorageKeys(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destroying storage keys for user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget-object v1, v0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(IILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_2
    if-eqz v2, :cond_3

    iget v0, v2, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v1, 0x6000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onUserRemoved(I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMDAREncryption()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "UserManagerService"

    const-string v1, " UniversalCredentialManager: removeODESettingsForWPC failed with code "

    :try_start_3
    const-string/jumbo v3, "knox_ucsm_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removeODESettingsForWPC()I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " disableUcmWpc "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object v0, v0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    new-instance v0, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, v0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, v0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_6

    const/16 p1, 0x5f

    :goto_3
    if-gt p1, v1, :cond_6

    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_6
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :cond_7
    :goto_5
    return-void

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    :goto_6
    :try_start_e
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0
.end method

.method public final removeUserUnchecked(I)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string/jumbo v0, "Removing user "

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->onUserRemoved(I)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v7, "removed"

    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    invoke-static {v7}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :try_start_4
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isDigitalLegacyMode()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_3
    :try_start_6
    const-string/jumbo v8, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v10, v0, Landroid/content/pm/UserInfo;->partial:Z

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v5, 0x6

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    iget-object v5, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v5, v5, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v8

    const-wide/16 v11, 0x1

    const-wide v13, 0x7fffffffffffffffL

    invoke-virtual {v8, v11, v12, v13, v14}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v12

    iget-object v8, v0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/16 v14, 0x9

    :try_start_9
    invoke-static {v2, v14}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v11

    move v15, v11

    new-instance v11, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-wide/from16 v17, v5

    move v5, v15

    move-wide/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;-><init>(JIJ)V

    iget-object v0, v0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :try_start_b
    const-string/jumbo v5, "UserManagerService"

    const-string/jumbo v6, "Unable to notify AppOpsService of removing user."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(IILjava/lang/String;)V

    const-string/jumbo v0, "com.samsung.knox.securefolder"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "UserManagerService"

    invoke-static {v0, v5, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v5, "resetDefaultIconandName"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v0

    if-ne v0, v10, :cond_6

    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigMaxMultiUsers()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->getConfigStatusMultiUser()Z

    move-result v6

    const-string/jumbo v8, "persist.sys.show_multiuserui"

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "persist.sys.max_users"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BmodeMigrationUtils"

    const-string v6, "Disabling multi user due to BMODE"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v5

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_7
    :goto_2
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v5, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v5, v1, v7}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-interface {v0, v2, v5}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-nez v0, :cond_8

    move v9, v10

    :cond_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catch_2
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "UserManagerService"

    const-string v2, "Failed to stop user during removal."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_4
    move-exception v0

    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_3
    :try_start_14
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    throw v0

    :goto_4
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final removeUserWhenPossible(IZ)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeUserWhenPossible u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UserManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot remove user. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, " is enabled."

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to immediately remove user "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "Unable to immediately remove user %d. Now trying to set it ephemeral."

    invoke-static {v0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final removeUserWithProfilesUnchecked(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "removed"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Current user cannot be removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "Target user of an ongoing user switch cannot be removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removing profile:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " associated with user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Unable to immediately remove profile "

    const-string/jumbo v5, "associated with user "

    const-string v6, ". User is set as ephemeral and will be removed on user switch or reboot."

    invoke-static {v1, p1, v4, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "Allowing profile unlock even when device credentials are not set for user "

    const-string v5, "Invalid flags: "

    const-string v6, "Invalid user. Can\'t find user details for userId "

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMDAREncryption()Z

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit8 v7, p5, 0x2

    goto :goto_1

    :cond_2
    move/from16 v7, p5

    :goto_1
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v8, :cond_6

    if-nez v11, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid flags: "

    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    iget-object v14, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    move v15, v11

    const/16 p5, 0x0

    const-wide/16 v10, 0x0

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v14, v1, v10, v11, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    if-ne v9, v12, :cond_1e

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    if-nez v13, :cond_1d

    if-nez v8, :cond_1c

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string/jumbo v9, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v12, v9}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    const-class v9, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutServiceInternal;

    if-eqz v9, :cond_1a

    invoke-virtual {v9, v1, v12}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1a

    :goto_6
    if-eqz v15, :cond_c

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v9, :cond_a

    const-class v9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    iput-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_a
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v9}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    if-eqz v8, :cond_f

    :try_start_0
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_e

    :try_start_2
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Can\'t skip credential check for the user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_f
    :goto_8
    if-eqz p2, :cond_10

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_10
    :try_start_5
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_14

    if-eqz v15, :cond_11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p5

    :cond_11
    :try_start_6
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfileParentId(I)I

    move-result v6

    if-eqz v5, :cond_12

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p5

    :cond_12
    if-eqz v5, :cond_13

    :try_start_7
    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "user_setup_complete"

    move/from16 v11, p5

    invoke-static {v5, v7, v11, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_13

    invoke-static {v7}, Lcom/android/internal/app/SetScreenLockDialogActivity;->createBaseIntent(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "origin_user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v11, 0x0

    return v11

    :cond_13
    :try_start_8
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v15, :cond_16

    :cond_15
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    :cond_16
    if-nez v8, :cond_17

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v4, :cond_18

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    goto :goto_b

    :cond_18
    :goto_a
    if-eqz v15, :cond_19

    goto :goto_9

    :cond_19
    const/4 v11, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :goto_b
    :try_start_9
    invoke-virtual {v0, v2, v11, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v16, 0x1

    return v16

    :goto_c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Specified package "

    const-string v3, " does not match the calling uid "

    invoke-static {v12, v2, v1, v3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revokeUserAdmin(I)V
    .locals 10

    const-string/jumbo v0, "revoke admin privileges"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "no_grant_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v6

    const-string v9, ""

    const/4 v8, -0x1

    const/16 v5, 0x8

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x6

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void

    :goto_0
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :goto_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin status change is restricted. The DISALLOW_GRANT_ADMIN restriction is applied either on the current or the target user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scanNextAvailableIdLocked(ZZ)I
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x96

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    if-eqz p2, :cond_1

    const/16 v0, 0x5f

    :cond_1
    :goto_1
    const/16 v1, 0x53e1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/16 v1, 0xa0

    if-le v0, v1, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v2
.end method

.method public scheduleAlarmToAutoLockPrivateSpace(IJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "AlarmManager not available, cannot schedule auto-lock alarm"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p2

    sget-wide v5, Lcom/android/server/pm/UserManagerService;->PRIVATE_SPACE_AUTO_LOCK_INACTIVITY_ALARM_WINDOW_MS:J

    new-instance v8, Landroid/os/HandlerExecutor;

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v8, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    const/4 v2, 0x2

    const-string/jumbo v7, "PrivateSpaceAutoLockTimer"

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final scheduleWriteUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final sendProfileRemovedBroadcast(IILjava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "android.os.usertype.profile.MANAGED"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const/high16 v1, 0x50000000

    const-string/jumbo v2, "android.intent.extra.USER"

    if-eqz p3, :cond_1

    new-instance p3, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {p3, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v4, :cond_0

    const-class v4, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v3, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p3, v3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.PROFILE_REMOVED"

    invoke-direct {p3, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final sendUserInfoChangedBroadcast(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_INFO_CHANGED_BACKGROUND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.MANAGE_USERS"

    invoke-virtual {p0, v0, v3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7

    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {p2, v3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    :goto_0
    move p2, v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_2
    :goto_1
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 p2, 0x20

    :try_start_1
    const-string/jumbo v3, "com.samsung.android.knox.kpu"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    move v3, v1

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_6

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UserManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v0

    :goto_4
    if-eqz v3, :cond_8

    const-string/jumbo v3, "UserManagerService"

    const-string v4, "@setApplicationRestrictions called for KSP"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ro.product_ship"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_7

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UserManagerService"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Send intent to KSP"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.NOTIFY_KPU_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_6
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "com.samsung.android.appseparation"

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v2

    if-eq v2, p3, :cond_9

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_9
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.NOTIFY_APPSEPARATION_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq v2, p3, :cond_a

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    return-void

    :goto_8
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package name: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setBootUser(I)V
    .locals 4

    const-string/jumbo v0, "Set boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "setBootUser %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setContainerInfo()V
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo p0, "persist.sys.knox.userinfo"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .locals 12

    if-eqz p2, :cond_6

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v0, "no_sharing_into_profile"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_3
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    if-eqz v0, :cond_4

    iget-boolean v4, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    iget v4, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    iget-object v7, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    iget v11, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move v9, p1

    move/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    iget v11, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    move v10, p1

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    return-void
.end method

.method public final setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public setOrUpdateAutoLockPreferenceForPrivateProfile(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    const-string/jumbo v2, "UserManagerService"

    if-ne v0, v1, :cond_0

    const-string p0, "Auto-lock preference updated but private space user not found"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "Registering device inactivity broadcast receivers"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Lcom/android/server/pm/UserManagerService$1;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Lcom/android/server/pm/UserManagerService$1;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Removing device inactivity broadcast receivers"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Lcom/android/server/pm/UserManagerService$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const-string v0, "Adding keyguard locked state listener"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0, p0}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Error adding keyguard locked listener "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const-string/jumbo v0, "Removing keyguard locked state listener"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "Error adding keyguard locked state listener "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "User "

    const-string/jumbo v1, "Quiet mode requested for user Id : "

    const-string/jumbo v2, "Quiet mode is already "

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_0

    const-string/jumbo p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , calling package : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    iget v0, v4, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/content/pm/UserInfo;->flags:I

    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v3, "hide_secure_folder_flag"

    invoke-static {p3, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v0, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Landroid/app/IActivityManager;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    :goto_0
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p3, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    new-instance v2, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v2, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Landroid/app/IActivityManager;->startProfileWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_2
    const-string/jumbo p3, "UserManagerService"

    const-string/jumbo v2, "requestQuietModeEnabled called by package %s, with enableQuietMode %b."

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    const-wide/16 v8, 0x0

    cmp-long p3, v6, v8

    if-eqz p3, :cond_6

    :goto_3
    sub-long v6, v2, v6

    goto :goto_4

    :cond_6
    iget-object p3, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v6, p3, Landroid/content/pm/UserInfo;->creationTime:J

    goto :goto_3

    :goto_4
    const/16 p3, 0x37

    invoke-static {p3}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    iget-object v8, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v8, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    invoke-virtual {p3, v6, v7}, Landroid/app/admin/DevicePolicyEventLogger;->setTimePeriod(J)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    iput-wide v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    :goto_5
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_8
    :try_start_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Calling setQuietModeEnabled for user "

    const-string v1, " on a separate thread"

    const-string/jumbo v2, "UserManagerService"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInternalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 1

    const-string/jumbo v0, "set user seed account data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    return-void
.end method

.method public final setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 4

    const-string/jumbo v0, "No such user for settings seed data u="

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    :try_start_3
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz p4, :cond_1

    const/16 p1, 0x3e8

    invoke-virtual {p4, p1}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :cond_1
    iput-boolean p5, v3, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p5, :cond_2

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_0
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_1
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final setUserAccount(ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "User not found for setting user account: u"

    const-string/jumbo v1, "set user account"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_0

    const-string/jumbo p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object p1, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final setUserAdmin(I)V
    .locals 10

    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "no_grant_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v6

    const-string v9, ""

    const/4 v8, -0x1

    const/4 v5, 0x7

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x5

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void

    :goto_0
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :goto_1
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin status change is restricted. The DISALLOW_GRANT_ADMIN restriction is applied either on the current or the target user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUserEnabled(I)V
    .locals 4

    const-string/jumbo v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v2, 0x40

    if-lez v3, :cond_0

    xor-int/2addr v2, v3

    iput v2, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v3}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_0
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PROFILE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x50000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final setUserEphemeral(IZ)Z
    .locals 7

    const-string/jumbo v0, "update ephemeral user flag"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo p0, "UserManagerService"

    const-string v1, "Cannot set user %d non-ephemeral, invalid user id provided."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v4

    :cond_2
    :try_start_5
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v6, v5, 0x2000

    if-eqz v6, :cond_3

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v1, "User %d can not be changed to non-ephemeral because it was set ephemeral on create."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v2

    :cond_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    and-int/lit16 p1, v5, -0x101

    :try_start_8
    iput p1, v3, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return v4

    :goto_0
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0

    :goto_1
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public final setUserEphemeralUnchecked(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v2, "set as ephemeral"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v0, "User %d is set ephemeral and will be removed on user switch or reboot."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final setUserName(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v2, "setUserName: ignoring for user #%d as it didn\'t change (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "_chars"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: resetting name of user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: setting name of user #%d to %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "_chars"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_2
    :try_start_2
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "setUserName: unknown user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setUserRestriction(Ljava/lang/String;ZI)V
    .locals 8

    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "UserManagerService"

    const-string p2, "Cannot set user restriction %s. User with id %d does not exist"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->updateUserRestrictionsByKC(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "UserManagerService"

    const-string v3, "Failed talking with IRestrictionPolicy: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p3, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;

    move-object v3, p1

    move v5, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setUserRestrictionInner(ILjava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->isUsbDebuggingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "setUserRestrictionInner : DISALLOW_DEBUGGING_FEATURES && isUsbDebuggingAllowed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "Setting invalid restriction "

    invoke-static {p1, p2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object p1, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    new-instance p1, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "showConfirmCredentialToDisableQuietMode() called too early, managed user "

    const-string p3, " is still alive."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo p2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 v2, 0x54000000

    invoke-static {p2, p3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string/jumbo p3, "android.intent.extra.INTENT"

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10800000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string/jumbo p2, "custom_logo_res_id"

    const p3, 0x1080c1f

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "custom_logo_description"

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040cab

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public tryAutoLockingPrivateSpaceOnKeyguardChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    :cond_1
    return-void
.end method

.method public final updateUserIds()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v4, [I

    new-array v4, v5, [I

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v8, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    aput v8, v4, v5

    iget-boolean v5, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_2

    add-int/lit8 v5, v6, 0x1

    aput v8, v3, v6

    move v6, v5

    :cond_2
    move v5, v9

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v3}, Landroid/content/pm/UserPackage;->setValidUserIds([I)V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateUserInfo(ILandroid/os/Bundle;)Z
    .locals 10

    const-string/jumbo v0, "updateUserInfoFlags needUpdate - "

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "updateUserInfo is called for user "

    invoke-static {p1, v2, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "updateUserInfo"

    const-string/jumbo v2, "UserManagerService"

    sget-object v3, Lcom/android/server/pm/UserManagerService;->sContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo v1, "usertype"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateUserInfo secure folder app user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "UserInfo is null for user :"

    invoke-static {p1, p2, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string/jumbo v4, "usertype"

    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails;

    iget v5, v1, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v6, 0x10000000

    xor-int/2addr v5, v6

    iput v5, v1, Landroid/content/pm/UserInfo;->flags:I

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    new-instance v6, Landroid/content/pm/UserProperties;

    iget-object v7, v4, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-direct {v6, v7}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    if-eqz p2, :cond_a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v6, :cond_6

    const-string/jumbo v7, "flags"

    invoke-virtual {p2, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "update-flags"

    invoke-virtual {p2, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v7, :cond_2

    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v7, v9

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v9, "updateUserInfo flags is updated"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    move v7, v3

    :goto_0
    if-lez v8, :cond_3

    iput v8, v6, Landroid/content/pm/UserInfo;->flags:I

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "updateUserInfo flags is updated"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_3
    const-string/jumbo v8, "attributes"

    invoke-virtual {p2, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v7

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "updateUserInfo attributes is updated"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_4
    const-string/jumbo v8, "name"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    iput-object p2, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v6, "updateUserInfo attributes is updated"

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_5
    const-string/jumbo p2, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v0, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v0, "updateUserInfoFlags updated user cache"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v0, "updateUserInfoFlags user info is null"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v0, "updateUserInfoFlags user data is null"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v7, v3

    :cond_8
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "UserManagerService"

    const-string/jumbo p2, "secure folder userInfo is updated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_9
    if-eqz v7, :cond_c

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "updateUserInfoFlags updated user xml"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    move v3, v5

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags bundle data is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags userid is not knox workspace.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags status - "

    invoke-static {p1, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public final updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-eq v1, p2, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-static {p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public upgradeIfNecessaryLP(II)V
    .locals 12

    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Upgrading users from userVersion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    const-string/jumbo v5, "Primary"

    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104099f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    move p1, v4

    :cond_1
    const/4 v5, 0x2

    if-ge p1, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v7, v6, 0x10

    if-nez v7, :cond_2

    or-int/lit8 v6, v6, 0x10

    iput v6, p1, Landroid/content/pm/UserInfo;->flags:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    move p1, v5

    :cond_3
    const/4 v5, 0x4

    if-ge p1, v5, :cond_4

    move p1, v5

    :cond_4
    const/4 v5, 0x5

    if-ge p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    move p1, v5

    :cond_5
    const/4 v5, 0x6

    if-ge p1, v5, :cond_8

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v3

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v9, -0x2710

    if-ne v8, v9, :cond_6

    iput v3, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    add-int/2addr p1, v4

    goto :goto_0

    :cond_7
    monitor-exit v6

    move p1, v5

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    :goto_3
    const/4 v5, 0x7

    if-ge p1, v5, :cond_10

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const-string/jumbo v7, "ensure_verify_apps"

    move v8, v3

    move v9, v8

    :goto_4
    iget-object v10, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_a

    iget-object v10, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    sget-object v11, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz v10, :cond_9

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v9, v4

    :cond_9
    add-int/2addr v8, v4

    goto :goto_4

    :cond_a
    if-eqz v9, :cond_b

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    :cond_b
    if-eqz v9, :cond_d

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object p1, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object v7, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_5
    const-string/jumbo v7, "ensure_verify_apps"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_d
    :goto_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object p1

    move v6, v3

    :goto_7
    move-object v7, p1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_f

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    if-eqz v7, :cond_e

    const-string/jumbo v8, "no_config_wifi"

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_e

    const-string/jumbo v8, "no_config_wifi"

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8, v4, v7}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_e
    add-int/2addr v6, v4

    goto :goto_7

    :cond_f
    move p1, v5

    goto :goto_9

    :goto_8
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_10
    :goto_9
    const/16 v5, 0x8

    if-ge p1, v5, :cond_14

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v8, v8, 0x800

    iput v8, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v7, Landroid/content/pm/UserInfo;->flags:I

    goto :goto_a

    :catchall_2
    move-exception p0

    goto :goto_c

    :cond_11
    :goto_a
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move p1, v4

    :goto_b
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_13

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v9, v8, 0x20

    if-nez v9, :cond_12

    or-int/lit16 v8, v8, 0x400

    iput v8, v7, Landroid/content/pm/UserInfo;->flags:I

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/2addr p1, v4

    goto :goto_b

    :cond_13
    monitor-exit v6

    move p1, v5

    goto :goto_d

    :goto_c
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_14
    :goto_d
    const/16 v5, 0x9

    if-ge p1, v5, :cond_19

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v3

    :goto_e
    :try_start_4
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_18

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v10, v9, 0x800

    if-eqz v10, :cond_16

    and-int/lit16 v10, v9, 0x400

    if-eqz v10, :cond_15

    const-string/jumbo v10, "android.os.usertype.full.SYSTEM"

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_f

    :catchall_3
    move-exception p0

    goto/16 :goto_10

    :cond_15
    const-string/jumbo v10, "android.os.usertype.system.HEADLESS"

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_f

    :cond_16
    :try_start_5
    invoke-static {v9}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_f
    :try_start_6
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v8, :cond_17

    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v8

    or-int/2addr v8, v10

    iput v8, v9, Landroid/content/pm/UserInfo;->flags:I

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v4

    goto :goto_e

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot upgrade user with flags "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot upgrade user with flags "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it doesn\'t correspond to a valid user type."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    monitor-exit v6

    move p1, v5

    goto :goto_11

    :goto_10
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_19
    :goto_11
    const/16 v5, 0xa

    if-ge p1, v5, :cond_1c

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v3

    :goto_12
    :try_start_7
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_1b

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v9, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v8, :cond_1a

    new-instance v9, Landroid/content/pm/UserProperties;

    iget-object v8, v8, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-direct {v9, v8}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    iput-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v4

    goto :goto_12

    :catchall_4
    move-exception p0

    goto :goto_13

    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot upgrade user because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isn\'t defined on this device!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    monitor-exit v6

    move p1, v5

    goto :goto_14

    :goto_13
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :cond_1c
    :goto_14
    const/16 v4, 0xb

    if-ge p1, v4, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x11101d7

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p1, Landroid/content/pm/UserInfo;->flags:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1d
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p1, Landroid/content/pm/UserInfo;->flags:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    :cond_1e
    :goto_15
    move p1, v4

    goto :goto_16

    :catchall_5
    move-exception p0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0

    :cond_1f
    :goto_16
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v3

    if-le v3, p2, :cond_22

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1170009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/server/pm/UserTypeFactory;->parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v6, :cond_20

    :try_start_b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_20
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v7, v6, p2, v0}, Lcom/android/server/pm/UserManagerService;->upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_19

    :catchall_6
    move-exception p0

    goto :goto_18

    :catchall_7
    move-exception p0

    if-eqz v6, :cond_21

    :try_start_c
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_17

    :catchall_8
    move-exception p1

    :try_start_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_17
    throw p0

    :goto_18
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    :cond_22
    :goto_19
    if-ge p1, v4, :cond_23

    const-string/jumbo p1, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "User version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const-string v0, " didn\'t upgrade as expected to 11"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_23
    if-le p1, v4, :cond_24

    const-string/jumbo p2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Upgraded user version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is higher the SDK\'s one of 11. Someone forgot to update USER_VERSION?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    if-lt v1, p1, :cond_26

    if-ge v2, v3, :cond_25

    goto :goto_1a

    :cond_25
    return-void

    :cond_26
    :goto_1a
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_27

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_1b

    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V
    .locals 3

    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Upgrading user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exceeded maximum profiles of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Maximum allowed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    invoke-static {v1, v2, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1000

    :goto_0
    iget-object v1, p2, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v1

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object p2, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p2}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can only upgrade profile types. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string v0, " is not a profile type."

    invoke-static {p2, p1, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    iget v1, v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    if-gt p3, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v4, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p4

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Upgrade destination user type not defined: "

    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public userExists(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p0, v3

    if-ne v4, p1, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 1

    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_3

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x104064b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    iput-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_3
    return-object p1
.end method

.method public final writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 5

    const-string v0, "Error writing user info "

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v2, 0x0

    :goto_0
    :try_start_2
    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {p2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string/jumbo v3, "user"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "id"

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "serialNumber"

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "flags"

    iget v4, v0, Landroid/content/pm/UserInfo;->flags:I

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "attributes"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "type"

    iget-object v4, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "created"

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "lastLoggedIn"

    iget-wide v4, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "lastLoggedInFingerprint"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string/jumbo v3, "lastEnteredForeground"

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v4, "icon"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "partial"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "preCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "convertedFromPreCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "guestToRemove"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_6

    const-string/jumbo v4, "profileGroupId"

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const-string/jumbo v2, "profileBadge"

    iget v4, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v3, :cond_7

    const-string/jumbo v3, "restrictedProfileParentId"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/16 v3, 0x1f4

    if-eqz v2, :cond_8

    const-string/jumbo v4, "seedAccountName"

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string/jumbo v4, "seedAccountType"

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "restrictions"

    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "device_policy_global_restrictions"

    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    const-string/jumbo v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    invoke-static {p2, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "device_policy_local_restrictions"

    invoke-static {p2, p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz p0, :cond_c

    const-string/jumbo p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget-boolean p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz p0, :cond_d

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_d

    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz p0, :cond_e

    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p0, p2}, Landroid/content/pm/UserProperties;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    iget-wide v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_f

    const-string/jumbo p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    const-string/jumbo p0, "ignorePrepareStorageErrors"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "ignorePrepareStorageErrors"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "user"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final writeUserListLP()V
    .locals 11

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "users"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "nextSerialNumber"

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "userTypeConfigVersion"

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v10, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-ge v8, v6, :cond_1

    :try_start_3
    aget p0, v7, v8

    const-string/jumbo v4, "user"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "id"

    invoke-interface {v3, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "user"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :cond_1
    const-string/jumbo p0, "users"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception p0

    :goto_3
    :try_start_6
    const-string/jumbo v2, "UserManagerService"

    const-string v3, "Error writing user list"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
.end method
