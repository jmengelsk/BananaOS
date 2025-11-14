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
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/16 v4, 0x27a8

    const/4 v5, 0x0

    if-ne v1, v4, :cond_5c

    invoke-virtual {v0, v3, v3, v3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_8a

    move v6, v5

    :goto_19
    if-ge v6, v4, :cond_8a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_2d

    iget-object v8, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :goto_2b
    move-object v12, v8

    goto :goto_2f

    :cond_2d
    const/4 v8, 0x0

    goto :goto_2b

    :goto_2f
    iget-object v8, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v8

    :try_start_32
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_40

    move/from16 v18, v3

    goto :goto_42

    :cond_40
    move/from16 v18, v5

    :goto_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_59

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

    goto :goto_19

    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x27b0

    if-ne v1, v4, :cond_8b

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-le v1, v3, :cond_8a

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v7

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_82

    const-string/jumbo v8, "no_add_user"

    invoke-virtual {v0, v8, v6}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_83

    :cond_82
    move v3, v5

    :goto_83
    invoke-static {v4, v1, v7, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a
    return v5

    :cond_8b
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
    .registers 7

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

    if-nez v2, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_30
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_51} :catch_58

    :cond_51
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_61

    :catch_58
    move-exception p0

    const-string/jumbo p1, "UserManagerService"

    const-string p2, "Error setting photo for user "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_61
    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

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
    .registers 10

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
    .registers 42
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

    if-eqz p6, :cond_c9

    move-object/from16 v3, p6

    goto :goto_ce

    :cond_c9
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :goto_ce
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

    :try_start_11d
    invoke-static {v2, v3}, Lcom/android/server/pm/UserTypeFactory;->customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_492

    if-eqz v3, :cond_125

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_125
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v3, v6}, Landroid/util/ArrayMap;-><init>(I)V

    move v6, v4

    :goto_12f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/16 v8, 0x800

    if-ge v6, v7, :cond_2e1

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserTypeDetails$Builder;

    iget-object v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    if-eqz v10, :cond_149

    move v10, v5

    goto :goto_14a

    :cond_149
    move v10, v4

    :goto_14a
    const-string v11, "Cannot create a UserTypeDetails with no name."

    invoke-static {v10, v11}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v11, 0x400

    const/16 v12, 0x1000

    if-eq v10, v11, :cond_162

    if-eq v10, v12, :cond_162

    if-eq v10, v8, :cond_162

    const/16 v11, 0xc00

    if-ne v10, v11, :cond_160

    goto :goto_162

    :cond_160
    move v10, v4

    goto :goto_163

    :cond_162
    :goto_162
    move v10, v5

    :goto_163
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

    if-nez v10, :cond_189

    move v10, v5

    goto :goto_18a

    :cond_189
    move v10, v4

    :goto_18a
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

    if-eqz v8, :cond_1b0

    move v8, v5

    goto :goto_1b1

    :cond_1b0
    move v8, v4

    :goto_1b1
    iget v10, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/2addr v10, v5

    if-eqz v10, :cond_1b8

    move v10, v5

    goto :goto_1b9

    :cond_1b8
    move v10, v4

    :goto_1b9
    if-ne v8, v10, :cond_1bd

    move v8, v5

    goto :goto_1be

    :cond_1bd
    move v8, v4

    :goto_1be
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

    if-eqz v8, :cond_1e1

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    if-ne v8, v5, :cond_1df

    goto :goto_1e1

    :cond_1df
    move v8, v4

    goto :goto_1e2

    :cond_1e1
    :goto_1e1
    move v8, v5

    :goto_1e2
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

    if-eqz v8, :cond_23c

    iget-object v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v8, :cond_205

    array-length v8, v8

    if-eqz v8, :cond_205

    move v8, v5

    goto :goto_206

    :cond_205
    move v8, v4

    :goto_206
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

    if-eqz v8, :cond_225

    array-length v8, v8

    if-eqz v8, :cond_225

    move v8, v5

    goto :goto_226

    :cond_225
    move v8, v4

    :goto_226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has badge but no badgeColors."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_23c
    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_242

    goto :goto_26b

    :cond_242
    iget-object v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v8, :cond_24f

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_24d

    goto :goto_24f

    :cond_24d
    move v8, v4

    goto :goto_250

    :cond_24f
    :goto_24f
    move v8, v5

    :goto_250
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

    :goto_26b
    new-instance v12, Lcom/android/server/pm/UserTypeDetails;

    iget-object v13, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v8, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    if-eqz v8, :cond_275

    move v14, v5

    goto :goto_276

    :cond_275
    move v14, v4

    :goto_276
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

    if-nez v1, :cond_2a3

    move-object/from16 v27, v26

    goto :goto_2a5

    :cond_2a3
    move-object/from16 v27, v1

    :goto_2a5
    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v28, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v29, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move-object/from16 v30, v1

    iget v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    move/from16 v31, v1

    iget-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    if-nez v1, :cond_2c4

    new-instance v1, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v1}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    :cond_2c4
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

    goto/16 :goto_12f

    :cond_2e1
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

    :try_start_2f8
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
    :try_end_32f
    .catchall {:try_start_2f8 .. :try_end_32f} :catchall_48f

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

    if-nez v3, :cond_36d

    goto/16 :goto_478

    :cond_36d
    const-string/jumbo v3, "persist.debug.user_mode_emulation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37c

    goto/16 :goto_478

    :cond_37c
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_383
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_386
    .catchall {:try_start_383 .. :try_end_386} :catchall_39e

    :try_start_386
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v6, :cond_3a4

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "emulateSystemUserModeIfNeeded(): no system user data"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_39b
    .catchall {:try_start_386 .. :try_end_39b} :catchall_3a1

    :try_start_39b
    monitor-exit v4
    :try_end_39c
    .catchall {:try_start_39b .. :try_end_39c} :catchall_39e

    goto/16 :goto_478

    :catchall_39e
    move-exception v0

    goto/16 :goto_48d

    :catchall_3a1
    move-exception v0

    goto/16 :goto_48b

    :cond_3a4
    :try_start_3a4
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v7

    iget-object v9, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    if-eqz v3, :cond_3b4

    const-string/jumbo v11, "android.os.usertype.system.HEADLESS"

    and-int/lit16 v12, v10, -0x4401

    goto :goto_3b9

    :cond_3b4
    const-string/jumbo v11, "android.os.usertype.full.SYSTEM"

    or-int/lit16 v12, v10, 0x4400

    :goto_3b9
    iget-object v9, v9, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d2

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "emulateSystemUserModeIfNeeded(): system user type is already %s, returning"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v5
    :try_end_3cf
    .catchall {:try_start_3a4 .. :try_end_3cf} :catchall_3a1

    :try_start_3cf
    monitor-exit v4
    :try_end_3d0
    .catchall {:try_start_3cf .. :try_end_3d0} :catchall_39e

    goto/16 :goto_478

    :cond_3d2
    :try_start_3d2
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

    if-eqz v3, :cond_440

    if-eqz v6, :cond_404

    iget-object v1, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v1, v8

    if-nez v1, :cond_404

    goto :goto_473

    :cond_404
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11101d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_473

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_473

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

    goto :goto_473

    :cond_440
    if-eqz v6, :cond_46b

    iget-object v2, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v2, v8

    if-nez v2, :cond_46b

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

    goto :goto_473

    :cond_46b
    const-string/jumbo v1, "UserManagerService"

    const-string v2, "Designated user 0 to be Main"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_473
    :goto_473
    monitor-exit v5
    :try_end_474
    .catchall {:try_start_3d2 .. :try_end_474} :catchall_3a1

    :try_start_474
    monitor-exit v4
    :try_end_475
    .catchall {:try_start_474 .. :try_end_475} :catchall_39e

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    :goto_478
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    return-void

    :goto_48b
    :try_start_48b
    monitor-exit v5
    :try_end_48c
    .catchall {:try_start_48b .. :try_end_48c} :catchall_3a1

    :try_start_48c
    throw v0

    :goto_48d
    monitor-exit v4
    :try_end_48e
    .catchall {:try_start_48c .. :try_end_48e} :catchall_39e

    throw v0

    :catchall_48f
    move-exception v0

    :try_start_490
    monitor-exit v1
    :try_end_491
    .catchall {:try_start_490 .. :try_end_491} :catchall_48f

    throw v0

    :catchall_492
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_49e

    :try_start_496
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_499
    .catchall {:try_start_496 .. :try_end_499} :catchall_49a

    goto :goto_49e

    :catchall_49a
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49e
    :goto_49e
    throw v1
.end method

.method public static addUserInfoFlags(Landroid/content/pm/UserInfo;)V
    .registers 3

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    not-int v1, v0

    and-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_d

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v1}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_d
    return-void
.end method

.method public static final checkCreateUsersPermission(I)V
    .registers 3

    const v0, -0x972d

    and-int/2addr v0, p0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_23

    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkCreateUsersPermission(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2b

    if-nez v0, :cond_b

    goto :goto_2b

    :cond_b
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2b

    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkQueryOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1c

    if-nez v0, :cond_f

    goto :goto_1c

    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only system may: "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static checkUserTypeConsistency(I)Z
    .registers 3

    and-int/lit16 v0, p0, 0x120c

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    and-int/lit16 v0, p0, 0x1400

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_17

    and-int/lit16 p0, p0, 0x1800

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    const-string p1, "<unknown>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
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
    .registers 7

    const-string v0, "Invalid calling user on devices that enable visible background users. callingUserId="

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v1, :cond_40

    if-eq v1, v4, :cond_40

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_40

    :cond_24
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
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    goto :goto_44

    :cond_40
    :goto_40
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static final hasManageUsersOrPermission(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static final hasManageUsersPermission()Z
    .registers 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission(I)Z

    move-result v0

    return v0
.end method

.method public static hasManageUsersPermission(I)Z
    .registers 2

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_13

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot manage users : unauthorized"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p0, :cond_29

    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    invoke-static {p0, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method public static hasPermissionGranted(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_13

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot manage users : unauthorized"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasQueryOrCreateUsersPermission()Z
    .registers 2

    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "android.permission.QUERY_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public static isCreationOverrideEnabled()Z
    .registers 2

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "debug.user.creation_override"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    return v1
.end method

.method public static isDefaultHeadlessSystemUserMode()Z
    .registers 3

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0

    :cond_9
    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string/jumbo v2, "headless"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const-string/jumbo v2, "full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v0, 0x0

    return v0

    :cond_2c
    const-string/jumbo v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "isDefaultHeadlessSystemUserMode(): ignoring invalid valued of property %s: %s"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method public static isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    if-nez p0, :cond_d

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "res_"

    const-string v1, ".xml"

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 9

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

    if-nez v4, :cond_1b

    goto :goto_73

    :cond_1b
    const/4 v4, 0x0

    :try_start_1c
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_41} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_41} :catch_47
    .catchall {:try_start_1c .. :try_end_41} :catchall_45

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_45
    move-exception p0

    goto :goto_74

    :catch_47
    move-exception v1

    goto :goto_58

    :cond_49
    :goto_49
    :try_start_49
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_54

    invoke-static {v2, v3, v5}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_53} :catch_47
    .catchall {:try_start_49 .. :try_end_53} :catchall_45

    goto :goto_49

    :cond_54
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :goto_58
    :try_start_58
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
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_45

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_73
    return-object v2

    :goto_74
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 9

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ed

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

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

    if-eq v0, v5, :cond_63

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_30
    :goto_30
    if-lez v0, :cond_56

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_56

    if-ne v3, v1, :cond_30

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_63
    const-string v0, "B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :goto_74
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_74

    :cond_7e
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_82
    const-string v0, "BA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_93
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    :goto_a2
    invoke-static {p2, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-static {v3, p1, p2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_a2

    :cond_ac
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_b0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_c0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "b"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d9

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_d9
    const-string/jumbo p2, "i"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ea

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_ea
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ed
    return-void
.end method

.method public static setResetTokenForSecureFolder(Landroid/content/pm/UserInfo;)V
    .registers 5

    const-string/jumbo v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_21

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

    :cond_21
    return-void
.end method

.method public static throwCheckedUserOperationException(ILjava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "UserManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/UserManager$CheckedUserOperationException;

    invoke-direct {v0, p1, p0}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static truncateString(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p0, :cond_9

    goto :goto_f

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_f
    return-object p1
.end method

.method public static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8

    const-string/jumbo v0, "restrictions"

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_2b

    :try_start_8
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
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception p0

    move-object v1, v2

    goto :goto_2c

    :catch_2b
    move-exception p0

    :goto_2c
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo p1, "UserManagerService"

    const-string v0, "Error writing application restrictions list"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 12

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

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

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "b"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ca

    :cond_3b
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_4e

    const-string/jumbo v1, "i"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ca

    :cond_4e
    const-string v1, ""

    if-eqz v2, :cond_bc

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_57

    goto :goto_bc

    :cond_57
    instance-of v6, v2, Landroid/os/Bundle;

    const-string v7, "B"

    if-eqz v6, :cond_66

    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_ca

    :cond_66
    instance-of v6, v2, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    if-eqz v6, :cond_95

    const-string v1, "BA"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v2, [Landroid/os/Parcelable;

    array-length v1, v2

    :goto_73
    if-ge v8, v1, :cond_ca

    aget-object v6, v2, v8

    instance-of v9, v6, Landroid/os/Bundle;

    if-eqz v9, :cond_8c

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v3, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_73

    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "bundle-array can only hold Bundles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    const-string/jumbo v6, "sa"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v2, [Ljava/lang/String;

    const-string/jumbo v5, "m"

    array-length v6, v2

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    array-length v5, v2

    :goto_a5
    if-ge v8, v5, :cond_ca

    aget-object v6, v2, v8

    const-string/jumbo v7, "value"

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v6, :cond_b2

    goto :goto_b3

    :cond_b2
    move-object v6, v1

    :goto_b3
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    :cond_bc
    :goto_bc
    const-string/jumbo v6, "s"

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_c7

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_c7
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ca
    :goto_ca
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8

    :cond_cf
    return-void
.end method


# virtual methods
.method public addRemovingUserId(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final addRemovingUserIdLocked(I)V
    .registers 4

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

    if-le p1, v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public final addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    new-instance v0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IUserRestrictionsListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    return-void

    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V
    .registers 12

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_75

    :cond_18
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

    :goto_2a
    const-string/jumbo v5, "UserManagerService"

    if-ge v4, v1, :cond_49

    aget-object v6, v2, v4

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_46

    const-string v7, "Failed to insert default system setting: "

    invoke-static {v7, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_49
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_59
    if-ge v3, v0, :cond_75

    aget-object v2, v1, v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_72

    const-string v4, "Failed to insert default secure setting: "

    invoke-static {v4, v2, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_75
    :goto_75
    return-void
.end method

.method public autoLockPrivateSpace()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1b

    const-string v1, "Auto-locking private space with user-id "

    const-string/jumbo v2, "UserManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.PROFILE_AVAILABLE"

    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    if-eqz p4, :cond_15

    if-eqz p3, :cond_13

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    goto :goto_1c

    :cond_13
    move-object v3, v2

    goto :goto_1c

    :cond_15
    if-eqz p3, :cond_1b

    const-string/jumbo v3, "android.intent.action.PROFILE_UNAVAILABLE"

    goto :goto_1c

    :cond_1b
    move-object v3, v1

    :goto_1c
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

    if-eqz p3, :cond_57

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez p3, :cond_52

    const-class p3, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_52
    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p3, v0, p2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    :cond_57
    const/high16 p3, 0x50000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    if-eqz p4, :cond_6d

    move-object v1, v2

    :cond_6d
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
    .registers 4

    const-string/jumbo v0, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final canAddMoreProfilesToUser(IILjava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    goto :goto_28

    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_28

    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    :goto_28
    return v1

    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_53

    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_51

    invoke-static {p3}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    invoke-virtual {p0, p3, p1, v1}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_48

    return v2

    :cond_48
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p3, v1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->canAddMoreManagedProfiles(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p0

    return p0

    :catchall_51
    move-exception p0

    goto :goto_55

    :cond_53
    :goto_53
    :try_start_53
    monitor-exit v0

    return v1

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_51

    throw p0
.end method

.method public final canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z
    .registers 4

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(ILjava/lang/String;Z)I

    move-result p0

    if-gtz p0, :cond_f

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z
    .registers 4

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    :cond_7
    const/4 v0, -0x1

    iget v1, p1, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    if-ne v1, v0, :cond_d

    goto :goto_1e

    :cond_d
    iget-object p1, p1, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_1e

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1e

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public final canAddMoreUsersOfType(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "check if more users can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final canAddPrivateProfile(I)Z
    .registers 6

    const-string/jumbo v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string/jumbo v1, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_59

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_59

    const-string/jumbo v0, "no_add_private_profile"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_59

    const/4 p0, 0x1

    return p0

    :cond_59
    return v3
.end method

.method public final canHaveRestrictedProfile(I)Z
    .registers 6

    const-string/jumbo v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_30

    :cond_17
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-nez v1, :cond_21

    monitor-exit v0

    return v2

    :catchall_1f
    move-exception p0

    goto :goto_32

    :cond_21
    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v1, :cond_2e

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    monitor-exit v0

    return v2

    :cond_30
    :goto_30
    monitor-exit v0

    return v2

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_1f

    throw p0
.end method

.method public final cancelPendingAutoLockAlarms()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz p0, :cond_13

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_13
    return-void
.end method

.method public final checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_2f

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_2f

    :cond_d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_2f

    :cond_14
    const-string/jumbo p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_2f

    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_32

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_32

    :cond_d
    const-string/jumbo p0, "android.permission.QUERY_USERS"

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_32

    :cond_17
    const-string/jumbo p0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_32

    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return-void
.end method

.method public final cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

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
    .registers 5

    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_14

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    if-nez p1, :cond_18

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception p0

    goto :goto_2a

    :catchall_16
    move-exception p0

    goto :goto_28

    :cond_18
    const/4 v2, 0x0

    :try_start_19
    iput-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_16

    :try_start_23
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_14

    return-void

    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_16

    :try_start_29
    throw p0

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_14

    throw p0
.end method

.method public final computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object v0, v0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz v0, :cond_f

    goto :goto_14

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_14
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object v1, v1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_22

    goto :goto_27

    :cond_22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_27
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_34

    goto :goto_39

    :cond_34
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_39
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    return-object v0

    :cond_46
    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final convertPreCreatedUserIfPossible(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 13

    const-string v0, "Cannot reuse pre-created user "

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_d4

    const/4 v1, 0x0

    if-nez v2, :cond_e

    return-object v1

    :cond_e
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3

    :try_start_11
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v6, :cond_41

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

    :catchall_3e
    move-exception p0

    goto/16 :goto_d2

    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_11 .. :try_end_42} :catchall_3e

    iget-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v3, p1

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v4

    if-nez v4, :cond_7b

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

    :cond_7b
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

    if-lez p1, :cond_b5

    goto :goto_b7

    :cond_b5
    const-wide/16 p3, 0x0

    :goto_b7
    iput-wide p3, v0, Landroid/content/pm/UserInfo;->creationTime:J

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_bc
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit p1
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_cf

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-object v0

    :catchall_cf
    move-exception p0

    :try_start_d0
    monitor-exit p1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p0

    :goto_d2
    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_3e

    throw p0

    :catchall_d4
    move-exception p0

    :try_start_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw p0
.end method

.method public final createProfileForUserEvenWhenDisallowedWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    :try_start_b
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_f
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 7

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    :try_start_3
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10

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

    :try_start_16
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
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_3a

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3a
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 14

    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "no_add_clone_profile"

    goto :goto_21

    :cond_a
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_21

    :cond_14
    invoke-static {p2}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "no_add_private_profile"

    goto :goto_21

    :cond_1e
    const-string/jumbo v0, "no_add_user"

    :goto_21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "Cannot add user"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_3a

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string v1, "Cannot create ADMIN user"

    const-string/jumbo v2, "no_grant_admin"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3a
    and-int/lit8 v0, p3, 0x20

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_75

    if-nez v0, :cond_75

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getMultiUserManager()Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_75

    :cond_65
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "MultiUserManager policy blocked to create user"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Cannot create user due to Knox security policy."

    invoke-static {v1, p0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_75
    :goto_75
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
    .registers 32

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

    if-eqz v15, :cond_44

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    move v0, v12

    goto :goto_42

    :cond_3c
    iget-object v0, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    :goto_42
    if-eqz v0, :cond_52

    :cond_44
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move v4, v13

    goto :goto_5a

    :cond_52
    const-string/jumbo v0, "Maintenance mode user is already being created."

    invoke-static {v3, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :goto_5a
    :try_start_5a
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/UserManagerService;->createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_d7

    if-eqz v0, :cond_b4

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v19

    iget-object v3, v2, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_69
    invoke-static {v10, v11}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v4

    iget-object v5, v2, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v17, :cond_af

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

    goto :goto_b0

    :catchall_ad
    move-exception v0

    goto :goto_b2

    :cond_af
    monitor-exit v3

    :goto_b0
    move v2, v12

    goto :goto_c4

    :goto_b2
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_69 .. :try_end_b3} :catchall_ad

    throw v0

    :cond_b4
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v11

    move v2, v12

    const/4 v12, -0x1

    const/4 v10, 0x4

    move-object/from16 v14, p2

    move/from16 v13, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    :goto_c4
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v15, :cond_d6

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_d6
    return-object v0

    :catchall_d7
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

    if-eqz v15, :cond_fa

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsBeingCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_fa
    throw v0
.end method

.method public final createUserInternalUncheckedNoTracing(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/Object;)Landroid/content/pm/UserInfo;
    .registers 50

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

    if-eqz v8, :cond_774

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    or-int v0, p3, v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkUserTypeConsistency(I)Z

    move-result v19

    if-eqz v19, :cond_74e

    move-object/from16 v27, v10

    and-int/lit16 v10, v0, 0x800

    if-nez v10, :cond_730

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    move/from16 p2, v10

    if-eqz p2, :cond_715

    invoke-static {v9}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isUserTypeMaintenanceMode(Ljava/lang/String;)Z

    move-result v28

    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10

    if-eqz v28, :cond_b3

    :try_start_64
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v4

    move-object/from16 v29, v11

    iget-boolean v11, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v11, :cond_81

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/16 v3, 0x3e8

    invoke-static {v11, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v19

    if-nez v19, :cond_84

    :cond_81
    move-object/from16 v19, v12

    goto :goto_a5

    :cond_84
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

    if-nez v3, :cond_a5

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->hasSystemFeature()Z

    move-result v3

    if-nez v3, :cond_a3

    goto :goto_a5

    :cond_a3
    const/4 v3, 0x1

    goto :goto_a6

    :cond_a5
    :goto_a5
    const/4 v3, 0x0

    :goto_a6
    if-eqz v3, :cond_a9

    goto :goto_b7

    :cond_a9
    const-string v0, "Cannot add Maintenance mode user."

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :catchall_b0
    move-exception v0

    goto/16 :goto_713

    :cond_b3
    move-object/from16 v29, v11

    move-object/from16 v19, v12

    :goto_b7
    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_64 .. :try_end_b8} :catchall_b0

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_bb
    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    if-eqz v4, :cond_c1

    or-int/lit16 v0, v0, 0x100

    :cond_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_710

    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    const/high16 v4, 0x10000

    const/high16 v10, 0x8000000

    if-eqz v3, :cond_d3

    and-int v11, v0, v10

    if-nez v11, :cond_d6

    and-int v11, v0, v4

    if-eqz v11, :cond_d3

    goto :goto_d6

    :cond_d3
    move/from16 v20, v4

    goto :goto_100

    :cond_d6
    :goto_d6
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    if-nez v11, :cond_d3

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

    :goto_100
    if-nez p5, :cond_11f

    if-gez v2, :cond_11f

    iget v4, v8, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_10b

    goto :goto_11f

    :cond_10b
    const-string/jumbo v4, "android.os.usertype.full.RESTRICTED"

    iget-object v11, v8, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11f

    if-nez v28, :cond_11f

    invoke-virtual {v1, v0, v5, v9, v7}, Lcom/android/server/pm/UserManagerService;->convertPreCreatedUserIfPossible(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_11f

    return-object v4

    :cond_11f
    :goto_11f
    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-virtual {v4}, Lcom/android/server/storage/DeviceStorageMonitorService$2;->isMemoryLow()Z

    move-result v4

    if-nez v4, :cond_708

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_133

    const/4 v4, 0x1

    goto :goto_134

    :cond_133
    const/4 v4, 0x0

    :goto_134
    iget v11, v8, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_13c

    const/4 v11, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v11, 0x0

    :goto_13d
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v30

    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v21

    and-int/2addr v10, v0

    if-nez v10, :cond_153

    and-int v10, v0, v20

    if-eqz v10, :cond_151

    goto :goto_153

    :cond_151
    const/4 v10, 0x0

    goto :goto_154

    :cond_153
    :goto_153
    const/4 v10, 0x1

    :goto_154
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v31

    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_162

    move/from16 v20, v3

    const/4 v3, 0x1

    goto :goto_165

    :cond_162
    move/from16 v20, v3

    const/4 v3, 0x0

    :goto_165
    const/high16 v22, 0x20000000

    and-int v22, v0, v22

    if-eqz v22, :cond_179

    move/from16 v22, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v32, v4

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_17d

    const/4 v0, 0x1

    goto :goto_17e

    :cond_179
    move/from16 v22, v0

    move/from16 v32, v4

    :cond_17d
    const/4 v0, 0x0

    :goto_17e
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v4

    move/from16 p3, v4

    iget-boolean v4, v8, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    const/high16 v23, 0x4000000

    and-int v23, v22, v23

    if-eqz v23, :cond_18f

    const/16 v33, 0x1

    goto :goto_191

    :cond_18f
    const/16 v33, 0x0

    :goto_191
    const/high16 v23, 0x2000000

    and-int v23, v22, v23

    if-eqz v23, :cond_19a

    const/16 v34, 0x1

    goto :goto_19c

    :cond_19a
    const/16 v34, 0x0

    :goto_19c
    if-nez v33, :cond_1a4

    if-eqz v34, :cond_1a1

    goto :goto_1a4

    :cond_1a1
    const/16 v23, 0x0

    goto :goto_1a6

    :cond_1a4
    :goto_1a4
    const/16 v23, 0x1

    :goto_1a6
    if-eqz v31, :cond_1aa

    if-eqz v10, :cond_1ac

    :cond_1aa
    if-eqz v23, :cond_1af

    :cond_1ac
    const/16 v35, 0x1

    goto :goto_1b1

    :cond_1af
    const/16 v35, 0x0

    :goto_1b1
    if-eqz v3, :cond_1b7

    const/high16 v23, 0x40000

    or-int v22, v22, v23

    :cond_1b7
    move/from16 v23, v4

    move/from16 v4, v22

    const/high16 v22, 0x1000000

    and-int v22, v4, v22

    if-eqz v22, :cond_1c4

    const/16 v22, 0x1

    goto :goto_1c6

    :cond_1c4
    const/16 v22, 0x0

    :goto_1c6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    move-object/from16 v24, v7

    :try_start_1cc
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_6ed

    move/from16 v38, v10

    const/16 v10, -0x2710

    if-eq v2, v10, :cond_1fd

    :try_start_1d5
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1f8

    :try_start_1d8
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v39

    monitor-exit v10
    :try_end_1dd
    .catchall {:try_start_1d8 .. :try_end_1dd} :catchall_1fa

    if-eqz v39, :cond_1e2

    move-object/from16 v6, v39

    goto :goto_1ff

    :cond_1e2
    :try_start_1e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1
    :try_end_1f3
    .catchall {:try_start_1e2 .. :try_end_1f3} :catchall_1f8

    :goto_1f3
    move-object/from16 v9, p1

    :goto_1f5
    const/4 v12, 0x0

    goto/16 :goto_6e8

    :catchall_1f8
    move-exception v0

    goto :goto_1f3

    :catchall_1fa
    move-exception v0

    :try_start_1fb
    monitor-exit v10
    :try_end_1fc
    .catchall {:try_start_1fb .. :try_end_1fc} :catchall_1fa

    :try_start_1fc
    throw v0

    :cond_1fd
    move-object/from16 v6, p1

    :goto_1ff
    if-eqz v32, :cond_213

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v10

    move/from16 v40, v11

    const/16 v11, -0x2710

    if-ne v10, v11, :cond_20c

    goto :goto_215

    :cond_20c
    const-string v0, "Cannot add user with FLAG_MAIN as main user already exists."

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_213
    move/from16 v40, v11

    :goto_215
    if-nez p5, :cond_236

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->canAddMoreUsersOfType(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v10

    if-nez v10, :cond_236

    if-eqz v28, :cond_220

    goto :goto_236

    :cond_220
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

    :cond_236
    :goto_236
    if-nez v12, :cond_254

    if-nez v31, :cond_254

    if-nez v21, :cond_254

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v10

    if-eqz v10, :cond_254

    if-nez v28, :cond_254

    if-nez v38, :cond_254

    if-nez v22, :cond_254

    if-nez p3, :cond_254

    if-eqz v0, :cond_24d

    goto :goto_254

    :cond_24d
    const-string v0, "Cannot add user. Maximum user limit is reached."

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_254
    :goto_254
    if-eqz v23, :cond_276

    invoke-virtual {v1, v2, v4, v9}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_25d

    goto :goto_276

    :cond_25d
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

    :cond_276
    :goto_276
    if-eqz p3, :cond_299

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddPrivateProfile(I)Z

    move-result v10

    if-eqz v10, :cond_27f

    goto :goto_299

    :cond_27f
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

    :cond_299
    :goto_299
    if-eqz v20, :cond_2c8

    if-eqz v38, :cond_2c8

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v10, v10}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_2a9
    if-ge v14, v13, :cond_2bc

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/2addr v14, v10

    move-object v10, v15

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v15

    if-eqz v15, :cond_2ba

    goto :goto_2be

    :cond_2ba
    const/4 v10, 0x1

    goto :goto_2a9

    :cond_2bc
    move-object/from16 v10, p1

    :goto_2be
    if-nez v10, :cond_2c1

    goto :goto_2c8

    :cond_2c1
    const-string v0, "Cannot add Bmode user. There already exists one."

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1

    :cond_2c8
    :goto_2c8
    if-eqz v30, :cond_2da

    if-eqz v2, :cond_2da

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result v10

    if-eqz v10, :cond_2d3

    goto :goto_2da

    :cond_2d3
    const-string v0, "Cannot add restricted profile - parent user must be system"

    const/4 v10, 0x1

    invoke-static {v10, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    throw p1
    :try_end_2da
    .catchall {:try_start_1fc .. :try_end_2da} :catchall_1f8

    :cond_2da
    :goto_2da
    if-eqz v28, :cond_2e0

    const/16 v0, 0x4d

    :goto_2de
    move v10, v0

    goto :goto_2e5

    :cond_2e0
    :try_start_2e0
    invoke-virtual {v1, v3, v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZ)I

    move-result v0

    goto :goto_2de

    :goto_2e5
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
    :try_end_30b
    .catchall {:try_start_2e0 .. :try_end_30b} :catchall_6e5

    if-eqz v6, :cond_31e

    :try_start_30d
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_313
    .catchall {:try_start_30d .. :try_end_313} :catchall_318

    if-eqz v0, :cond_31e

    or-int/lit16 v4, v4, 0x100

    goto :goto_31e

    :catchall_318
    move-exception v0

    move-object/from16 v9, p1

    const/4 v12, 0x0

    goto/16 :goto_6df

    :cond_31e
    :goto_31e
    if-eqz p5, :cond_322

    and-int/lit16 v4, v4, -0x101

    :cond_322
    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_328

    or-int/lit16 v4, v4, 0x2000

    :cond_328
    move/from16 v23, v4

    :try_start_32a
    new-instance v19, Landroid/content/pm/UserInfo;

    const/16 v22, 0x0

    move/from16 v20, v10

    move-object/from16 v21, v24

    move-object/from16 v24, v9

    invoke-direct/range {v19 .. v24}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_337
    .catchall {:try_start_32a .. :try_end_337} :catchall_6dc

    move-object/from16 v13, v19

    move/from16 v9, v20

    move/from16 v10, v23

    move-object/from16 v4, v24

    if-eqz v40, :cond_34c

    :try_start_341
    iput v9, v13, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v26, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_34b
    .catchall {:try_start_341 .. :try_end_34b} :catchall_318

    goto :goto_356

    :cond_34c
    :try_start_34c
    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v26, 0x1

    add-int/lit8 v14, v0, 0x1

    iput v14, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v0, v13, Landroid/content/pm/UserInfo;->serialNumber:I

    :goto_356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide v19, 0xdc46c32800L

    cmp-long v0, v14, v19

    if-lez v0, :cond_364

    goto :goto_366

    :cond_364
    const-wide/16 v14, 0x0

    :goto_366
    iput-wide v14, v13, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/content/pm/UserInfo;->partial:Z

    move/from16 v14, p5

    iput-boolean v14, v13, Landroid/content/pm/UserInfo;->preCreated:Z

    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0
    :try_end_377
    .catchall {:try_start_34c .. :try_end_377} :catchall_6dc

    if-eqz v0, :cond_383

    const/16 v0, -0x2710

    if-eq v2, v0, :cond_383

    :try_start_37d
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result v0

    iput v0, v13, Landroid/content/pm/UserInfo;->profileBadge:I
    :try_end_383
    .catchall {:try_start_37d .. :try_end_383} :catchall_318

    :cond_383
    :try_start_383
    new-instance v15, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v15}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V
    :try_end_388
    .catchall {:try_start_383 .. :try_end_388} :catchall_6dc

    :try_start_388
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
    :try_end_3a2
    .catchall {:try_start_388 .. :try_end_3a2} :catchall_6d8

    :try_start_3a2
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_3a8
    .catchall {:try_start_3a2 .. :try_end_3a8} :catchall_6d4

    if-eqz v6, :cond_3de

    if-eqz v40, :cond_3c7

    :try_start_3ac
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v11, -0x2710

    if-ne v3, v11, :cond_3c0

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iput v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_3c0

    :catchall_3bc
    move-exception v0

    move-object v9, v15

    goto/16 :goto_1f5

    :cond_3c0
    :goto_3c0
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, v13, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_3de

    :cond_3c7
    if-eqz v30, :cond_3de

    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v11, -0x2710

    if-ne v3, v11, :cond_3d8

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iput v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_3d8
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, v13, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_3de
    .catchall {:try_start_3ac .. :try_end_3de} :catchall_3bc

    :cond_3de
    :goto_3de
    :try_start_3de
    monitor-exit v7
    :try_end_3df
    .catchall {:try_start_3de .. :try_end_3df} :catchall_6d4

    if-eqz v35, :cond_53b

    :try_start_3e1
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    const-string/jumbo v3, "UserManagerService"
    :try_end_3e8
    .catchall {:try_start_3e1 .. :try_end_3e8} :catchall_422

    if-eqz v0, :cond_408

    :try_start_3ea
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isKnoxKeyInstallable()Z

    move-result v0
    :try_end_3f2
    .catch Landroid/os/RemoteException; {:try_start_3ea .. :try_end_3f2} :catch_3f3
    .catchall {:try_start_3ea .. :try_end_3f2} :catchall_422

    goto :goto_40f

    :catch_3f3
    move-exception v0

    :try_start_3f4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "check Device Integrity - Remote Exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_406
    const/4 v0, 0x0

    goto :goto_40f

    :cond_408
    const-string/jumbo v0, "check Device Integrity - failed. cannot get DAR Service"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_406

    :goto_40f
    if-nez v0, :cond_427

    const-string/jumbo v0, "UserManagerService"

    const-string v2, "Failed in device integrity check"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_419
    .catchall {:try_start_3f4 .. :try_end_419} :catchall_422

    if-eqz v28, :cond_41e

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_41e
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_422
    move-exception v0

    move-object v9, v15

    const/4 v4, 0x0

    goto/16 :goto_6f1

    :cond_427
    :try_start_427
    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x23

    if-lt v0, v3, :cond_43d

    const-string/jumbo v0, "UserManagerService"

    const-string v3, "DRK is not supported from V OS"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_43e

    :cond_43d
    const/4 v0, 0x1

    :goto_43e
    if-eqz v0, :cond_481

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    const-string/jumbo v3, "UserManagerService"
    :try_end_447
    .catchall {:try_start_427 .. :try_end_447} :catchall_422

    if-eqz v0, :cond_467

    :try_start_449
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isDeviceRootKeyInstalled()Z

    move-result v0
    :try_end_451
    .catch Landroid/os/RemoteException; {:try_start_449 .. :try_end_451} :catch_452
    .catchall {:try_start_449 .. :try_end_451} :catchall_422

    goto :goto_46e

    :catch_452
    move-exception v0

    :try_start_453
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "check Device Root Key - Remote Exception : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_465
    const/4 v0, 0x0

    goto :goto_46e

    :cond_467
    const-string/jumbo v0, "check Device Root Key - failed. cannot get DAR Service"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_465

    :goto_46e
    if-nez v0, :cond_481

    const-string/jumbo v0, "UserManagerService"

    const-string v2, "Failed in (DRK)Device Root Key check"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_478
    .catchall {:try_start_453 .. :try_end_478} :catchall_422

    if-eqz v28, :cond_47d

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_47d
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_481
    :try_start_481
    const-string v0, "KnoxTestKeyUMS"
    :try_end_483
    .catchall {:try_start_481 .. :try_end_483} :catchall_422

    :try_start_483
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
    :try_end_4b1
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_4b1} :catch_4e5
    .catchall {:try_start_483 .. :try_end_4b1} :catchall_422

    move/from16 v20, v12

    const/4 v12, 0x0

    :try_start_4b4
    invoke-direct {v7, v6, v11, v12, v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZLandroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    const-string/jumbo v3, "dar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_4d4

    if-eqz v3, :cond_4d4

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_4d4

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V

    goto :goto_53d

    :catch_4d2
    move-exception v0

    goto :goto_4e8

    :cond_4d4
    const-string/jumbo v0, "UserManagerService"

    const-string v3, "Failed in device integrity check"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4dc
    .catch Ljava/lang/Exception; {:try_start_4b4 .. :try_end_4dc} :catch_4d2
    .catchall {:try_start_4b4 .. :try_end_4dc} :catchall_422

    if-eqz v28, :cond_4e1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_4e1
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catch_4e5
    move-exception v0

    move/from16 v20, v12

    :goto_4e8
    :try_start_4e8
    const-string/jumbo v3, "UserManagerService"

    const-string v6, "Device integrity status is abnormal."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-static {v13}, Lcom/android/server/knox/dar/DarUtil;->isEnterpriseUser(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_526

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_526

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_510

    const/4 v0, 0x1

    goto :goto_511

    :cond_510
    const/4 v0, 0x0

    :goto_511
    const-string/jumbo v3, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v7, v29

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_527

    :cond_526
    const/4 v0, 0x0

    :goto_527
    if-eqz v0, :cond_532

    const-string/jumbo v0, "UserManagerService"

    const-string v3, "Device integrity status is abnormal. But, EM Token is allowed. Continue - "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_531
    .catchall {:try_start_4e8 .. :try_end_531} :catchall_422

    goto :goto_53d

    :cond_532
    if-eqz v28, :cond_537

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_537
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_53b
    move/from16 v20, v12

    :goto_53d
    if-eqz v40, :cond_549

    if-nez v14, :cond_549

    :try_start_541
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->clearStorageForUser(I)V
    :try_end_549
    .catchall {:try_start_541 .. :try_end_549} :catchall_422

    :cond_549
    :try_start_549
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
    :try_end_574
    .catchall {:try_start_549 .. :try_end_574} :catchall_6c5

    if-eqz v31, :cond_5b5

    if-nez v33, :cond_57a

    if-eqz v34, :cond_5b5

    :cond_57a
    :try_start_57a
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

    if-nez v0, :cond_5ab

    const-string/jumbo v0, "UserManagerService"

    const-string v2, "DualDAR Setup failed during workspace creation"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a2
    .catchall {:try_start_57a .. :try_end_5a2} :catchall_422

    if-eqz v28, :cond_5a7

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_5a7
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_5ab
    :try_start_5ab
    sget-object v0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v9, v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/pm/UserManagerService$LocalService;->setDualDarInfo(II)Z
    :try_end_5b5
    .catchall {:try_start_5ab .. :try_end_5b5} :catchall_422

    :cond_5b5
    :try_start_5b5
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
    :try_end_5df
    .catchall {:try_start_5b5 .. :try_end_5df} :catchall_6c5

    if-eqz v20, :cond_5ee

    :try_start_5e1
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_5e4
    .catchall {:try_start_5e1 .. :try_end_5e4} :catchall_422

    :try_start_5e4
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v4

    goto :goto_601

    :catchall_5eb
    move-exception v0

    monitor-exit v4
    :try_end_5ed
    .catchall {:try_start_5e4 .. :try_end_5ed} :catchall_5eb

    :try_start_5ed
    throw v0
    :try_end_5ee
    .catchall {:try_start_5ed .. :try_end_5ee} :catchall_422

    :cond_5ee
    :try_start_5ee
    iget-object v4, v8, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_5f3
    .catchall {:try_start_5ee .. :try_end_5f3} :catchall_6c5

    if-eqz v32, :cond_601

    :try_start_5f5
    const-string/jumbo v4, "no_outgoing_calls"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "no_sms"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_601
    .catchall {:try_start_5f5 .. :try_end_601} :catchall_422

    :cond_601
    :goto_601
    :try_start_601
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_604
    .catchall {:try_start_601 .. :try_end_604} :catchall_6c5

    :try_start_604
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v6, v9, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    monitor-exit v4
    :try_end_60a
    .catchall {:try_start_604 .. :try_end_60a} :catchall_6ce

    const/4 v12, 0x0

    :try_start_60b
    iput-boolean v12, v13, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_60d
    .catchall {:try_start_60b .. :try_end_60d} :catchall_6c1

    :try_start_60d
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_613
    .catchall {:try_start_60d .. :try_end_613} :catchall_6c5

    :try_start_613
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v4
    :try_end_617
    .catchall {:try_start_613 .. :try_end_617} :catchall_6c8

    :try_start_617
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, v25

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_62d
    .catchall {:try_start_617 .. :try_end_62d} :catchall_6c5

    const/4 v12, 0x0

    :try_start_62e
    invoke-virtual {v4, v9, v12}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v1, v8, v9}, Lcom/android/server/pm/UserManagerService;->applyDefaultUserSettings(Lcom/android/server/pm/UserTypeDetails;I)V

    invoke-virtual {v1, v9, v8, v0, v2}, Lcom/android/server/pm/UserManagerService;->setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    :try_end_63a
    .catchall {:try_start_62e .. :try_end_63a} :catchall_6c1

    if-eqz v14, :cond_678

    :try_start_63c
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
    :try_end_658
    .catchall {:try_start_63c .. :try_end_658} :catchall_65c

    :try_start_658
    invoke-interface {v0, v9}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_65b
    .catch Landroid/os/RemoteException; {:try_start_658 .. :try_end_65b} :catch_662
    .catchall {:try_start_658 .. :try_end_65b} :catchall_65c

    goto :goto_67b

    :catchall_65c
    move-exception v0

    move-object v9, v15

    move/from16 v4, v28

    goto/16 :goto_6f1

    :catch_662
    move-exception v0

    :try_start_663
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67b

    :cond_678
    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    :goto_67b
    if-nez v31, :cond_67f

    if-eqz p3, :cond_6aa

    :cond_67f
    if-nez v38, :cond_6aa

    if-eqz v19, :cond_6a2

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

    :cond_6a2
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/server/pm/PersonaManagerService;->onNewUserCreated(Landroid/content/pm/UserInfo;)V
    :try_end_6aa
    .catchall {:try_start_663 .. :try_end_6aa} :catchall_65c

    :cond_6aa
    if-eqz v28, :cond_6bd

    if-eqz v28, :cond_6ba

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->finishUserCreation()V

    goto :goto_6bd

    :cond_6ba
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_6bd
    :goto_6bd
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v13

    :catchall_6c1
    move-exception v0

    :goto_6c2
    move v4, v12

    move-object v9, v15

    goto :goto_6f1

    :catchall_6c5
    move-exception v0

    const/4 v12, 0x0

    goto :goto_6c2

    :catchall_6c8
    move-exception v0

    const/4 v12, 0x0

    :goto_6ca
    :try_start_6ca
    monitor-exit v4
    :try_end_6cb
    .catchall {:try_start_6ca .. :try_end_6cb} :catchall_6cc

    :try_start_6cb
    throw v0
    :try_end_6cc
    .catchall {:try_start_6cb .. :try_end_6cc} :catchall_6c1

    :catchall_6cc
    move-exception v0

    goto :goto_6ca

    :catchall_6ce
    move-exception v0

    const/4 v12, 0x0

    :goto_6d0
    :try_start_6d0
    monitor-exit v4
    :try_end_6d1
    .catchall {:try_start_6d0 .. :try_end_6d1} :catchall_6d2

    :try_start_6d1
    throw v0
    :try_end_6d2
    .catchall {:try_start_6d1 .. :try_end_6d2} :catchall_6c1

    :catchall_6d2
    move-exception v0

    goto :goto_6d0

    :catchall_6d4
    move-exception v0

    const/4 v12, 0x0

    move-object v9, v15

    goto :goto_6e8

    :catchall_6d8
    move-exception v0

    const/4 v12, 0x0

    move-object v9, v15

    goto :goto_6df

    :catchall_6dc
    move-exception v0

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_6df
    :try_start_6df
    monitor-exit v11
    :try_end_6e0
    .catchall {:try_start_6df .. :try_end_6e0} :catchall_6e3

    :try_start_6e0
    throw v0

    :catchall_6e1
    move-exception v0

    goto :goto_6e8

    :catchall_6e3
    move-exception v0

    goto :goto_6df

    :catchall_6e5
    move-exception v0

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_6e8
    monitor-exit v7
    :try_end_6e9
    .catchall {:try_start_6e0 .. :try_end_6e9} :catchall_6e1

    :try_start_6e9
    throw v0
    :try_end_6ea
    .catchall {:try_start_6e9 .. :try_end_6ea} :catchall_6ea

    :catchall_6ea
    move-exception v0

    move v4, v12

    goto :goto_6f1

    :catchall_6ed
    move-exception v0

    const/4 v12, 0x0

    move v4, v12

    const/4 v9, 0x0

    :goto_6f1
    if-eqz v28, :cond_704

    if-eqz v4, :cond_701

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->finishUserCreation()V

    goto :goto_704

    :cond_701
    invoke-virtual {v1, v9}, Lcom/android/server/pm/UserManagerService;->cleanUpMaintenanceModeUserDebris(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_704
    :goto_704
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_708
    const-string v0, "Cannot add user. Not enough space on disk."

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->throwCheckedUserOperationException(ILjava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :catchall_710
    move-exception v0

    :try_start_711
    monitor-exit v3
    :try_end_712
    .catchall {:try_start_711 .. :try_end_712} :catchall_710

    throw v0

    :goto_713
    :try_start_713
    monitor-exit v10
    :try_end_714
    .catchall {:try_start_713 .. :try_end_714} :catchall_b0

    throw v0

    :cond_715
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

    :cond_730
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

    :cond_74e
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

    :cond_774
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
    .registers 15

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const/16 v5, -0x2710

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_10 .. :try_end_14} :catch_2c

    move-object p1, v1

    if-eqz p4, :cond_1e

    iget-object p2, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget p3, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p3, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :cond_1e
    iget p2, p0, Landroid/content/pm/UserInfo;->id:I

    move-object p4, p6

    const/4 p6, 0x1

    move-object p3, p5

    move-object p5, p7

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :catch_2c
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0

    :cond_33
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public final createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10

    invoke-static {p3}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    :try_start_a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;->onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1a
    move-exception p0

    goto/16 :goto_c0

    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1a

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

    if-eqz v0, :cond_5a

    const-string/jumbo v0, "users_guest_created"

    goto :goto_67

    :cond_5a
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string/jumbo v0, "users_demo_created"

    goto :goto_67

    :cond_64
    const-string/jumbo v0, "users_user_created"

    :goto_67
    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p2

    if-eqz p2, :cond_97

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

    :cond_97
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_switcher_enabled"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_bf

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111019c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_bf

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "user_switcher_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_bf
    return-void

    :goto_c0
    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_1a

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "UserManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_4a5

    :cond_e
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

    if-eqz p3, :cond_43

    array-length v1, p3

    if-lez v1, :cond_43

    aget-object v1, p3, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "--visibility-mediator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_43
    move-object v1, p0

    move-object v2, p2

    goto :goto_5a

    :cond_46
    aget-object p1, p3, p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V

    return-void

    :cond_52
    move-object v1, p0

    move-object v2, p2

    iget-object p0, v1, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, v2, p3}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :goto_5a
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    const-string p2, "Current user: "

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, -0x2710

    if-eq p0, p2, :cond_6b

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_71

    :cond_6b
    const-string/jumbo p2, "N/A"

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_71
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_77
    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_b1

    :try_start_7a
    const-string/jumbo v3, "Users:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v11, v9

    :goto_81
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v11, v3, :cond_9d

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_94

    goto :goto_97

    :cond_94
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    :goto_97
    add-int/2addr v11, p1

    goto :goto_81

    :catchall_99
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4ce

    :cond_9d
    monitor-exit v10
    :try_end_9e
    .catchall {:try_start_7a .. :try_end_9e} :catchall_99

    :try_start_9e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  agree Knox Privacy Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, p1, :cond_b5

    const-string/jumbo v0, "true"

    goto :goto_b8

    :catchall_b1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4d0

    :cond_b5
    const-string/jumbo v0, "false"

    :goto_b8
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
    :try_end_d2
    .catchall {:try_start_9e .. :try_end_d2} :catchall_b1

    :try_start_d2
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v3
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_4ca

    :try_start_df
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_e7
    .catchall {:try_start_df .. :try_end_e7} :catchall_b1

    :try_start_e7
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v2, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v3
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_4c6

    :try_start_ef
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_b1

    :try_start_f2
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

    if-lez v0, :cond_131

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

    goto :goto_131

    :catchall_12d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4c4

    :cond_131
    :goto_131
    monitor-exit v3
    :try_end_132
    .catchall {:try_start_f2 .. :try_end_132} :catchall_12d

    :try_start_132
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v3
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_b1

    :try_start_135
    const-string v0, "  Started users state: ["

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    move v4, v9

    :goto_143
    if-ge v4, v0, :cond_174

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

    if-eq v4, v5, :cond_172

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_172

    :catchall_16e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4c2

    :cond_172
    :goto_172
    add-int/2addr v4, p1

    goto :goto_143

    :cond_174
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(C)V

    monitor-exit v3
    :try_end_17a
    .catchall {:try_start_135 .. :try_end_17a} :catchall_16e

    :try_start_17a
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_b1

    :try_start_17d
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
    :try_end_19a
    .catchall {:try_start_17d .. :try_end_19a} :catchall_4be

    :try_start_19a
    monitor-exit p2
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_b1

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

    if-eq p2, p3, :cond_1e1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " (built-in value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1e1
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

    if-eq p2, p3, :cond_25d

    const-string p3, "  (differs from the current default build value)"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_25d
    const-string/jumbo p3, "persist.debug.user_mode_emulation"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_278

    const-string p3, "  (emulated by \'cmd user set-system-user-mode-emulation\')"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p3, v1, Lcom/android/server/pm/UserManagerService;->mUpdatingSystemUserMode:Z

    if-eqz p3, :cond_278

    const-string p3, "  (and being updated after boot)"

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_278
    if-eqz p2, :cond_296

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

    :cond_296
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

    :try_start_2b3
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
    :try_end_2ca
    .catchall {:try_start_2b3 .. :try_end_2ca} :catchall_4ba

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

    :try_start_2eb
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
    :try_end_306
    .catchall {:try_start_2eb .. :try_end_306} :catchall_4b6

    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserLifecycleListeners:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_309
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
    :try_end_324
    .catchall {:try_start_309 .. :try_end_324} :catchall_4b2

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

    :goto_34e
    iget-object p2, v1, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge p0, p2, :cond_495

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

    if-eqz v3, :cond_400

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "config_defaultFirstUserRestrictions: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_3d1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10700ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_3e3
    if-ge v6, v5, :cond_3f2

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f0

    invoke-virtual {v3, v7, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3f0
    add-int/2addr v6, p1

    goto :goto_3e3

    :cond_3f2
    invoke-static {v2, v0, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3f5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d1 .. :try_end_3f5} :catch_3f6

    goto :goto_40e

    :catch_3f6
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "none - resource not found"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40e

    :cond_400
    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDefaultRestrictions: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v2, v0, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_40e
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

    if-eqz v3, :cond_44b

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_44c

    :cond_44b
    move-object v3, v0

    :goto_44c
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mBadgeColors.length: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v3, :cond_462

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_463

    :cond_462
    move-object v3, v0

    :goto_463
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDarkThemeBadgeColors.length: "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v3, :cond_479

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_47a

    :cond_479
    move-object v3, v0

    :goto_47a
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLabels.length: "

    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p2, :cond_48f

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_48f
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/2addr p0, p1

    goto/16 :goto_34e

    :cond_495
    new-instance p0, Landroid/util/IndentingPrintWriter;

    invoke-direct {p0, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_49a
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p1, v1, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_4a2
    .catchall {:try_start_49a .. :try_end_4a2} :catchall_4a6

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V

    :goto_4a5
    return-void

    :catchall_4a6
    move-exception v0

    move-object p1, v0

    :try_start_4a8
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_4ab
    .catchall {:try_start_4a8 .. :try_end_4ab} :catchall_4ac

    goto :goto_4b1

    :catchall_4ac
    move-exception v0

    move-object p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b1
    throw p1

    :catchall_4b2
    move-exception v0

    move-object p0, v0

    :try_start_4b4
    monitor-exit p2
    :try_end_4b5
    .catchall {:try_start_4b4 .. :try_end_4b5} :catchall_4b2

    throw p0

    :catchall_4b6
    move-exception v0

    move-object p1, v0

    :try_start_4b8
    monitor-exit p0
    :try_end_4b9
    .catchall {:try_start_4b8 .. :try_end_4b9} :catchall_4b6

    throw p1

    :catchall_4ba
    move-exception v0

    move-object p0, v0

    :try_start_4bc
    monitor-exit p3
    :try_end_4bd
    .catchall {:try_start_4bc .. :try_end_4bd} :catchall_4ba

    throw p0

    :catchall_4be
    move-exception v0

    move-object p0, v0

    :try_start_4c0
    monitor-exit v3
    :try_end_4c1
    .catchall {:try_start_4c0 .. :try_end_4c1} :catchall_4be

    :try_start_4c1
    throw p0
    :try_end_4c2
    .catchall {:try_start_4c1 .. :try_end_4c2} :catchall_b1

    :goto_4c2
    :try_start_4c2
    monitor-exit v3
    :try_end_4c3
    .catchall {:try_start_4c2 .. :try_end_4c3} :catchall_16e

    :try_start_4c3
    throw p0
    :try_end_4c4
    .catchall {:try_start_4c3 .. :try_end_4c4} :catchall_b1

    :goto_4c4
    :try_start_4c4
    monitor-exit v3
    :try_end_4c5
    .catchall {:try_start_4c4 .. :try_end_4c5} :catchall_12d

    :try_start_4c5
    throw p0
    :try_end_4c6
    .catchall {:try_start_4c5 .. :try_end_4c6} :catchall_b1

    :catchall_4c6
    move-exception v0

    move-object p0, v0

    :try_start_4c8
    monitor-exit v3
    :try_end_4c9
    .catchall {:try_start_4c8 .. :try_end_4c9} :catchall_4c6

    :try_start_4c9
    throw p0
    :try_end_4ca
    .catchall {:try_start_4c9 .. :try_end_4ca} :catchall_b1

    :catchall_4ca
    move-exception v0

    move-object p0, v0

    :try_start_4cc
    monitor-exit v3
    :try_end_4cd
    .catchall {:try_start_4cc .. :try_end_4cd} :catchall_4ca

    :try_start_4cd
    throw p0
    :try_end_4ce
    .catchall {:try_start_4cd .. :try_end_4ce} :catchall_b1

    :goto_4ce
    :try_start_4ce
    monitor-exit v10
    :try_end_4cf
    .catchall {:try_start_4ce .. :try_end_4cf} :catchall_99

    :try_start_4cf
    throw p0

    :goto_4d0
    monitor-exit p2
    :try_end_4d1
    .catchall {:try_start_4cf .. :try_end_4d1} :catchall_b1

    throw p0
.end method

.method public final dumpUser(Ljava/io/PrintWriter;ILjava/lang/StringBuilder;JJ)V
    .registers 17

    const-string/jumbo v2, "User "

    const/4 v3, -0x2

    if-ne p2, v3, :cond_19

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v3

    const-string v4, "Current user: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_1a

    const-string v0, "Cannot determine current user"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_19
    move v3, p2

    :cond_1a
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1d
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v4, :cond_3f

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

    :catchall_3d
    move-exception v0

    goto :goto_4a

    :cond_3f
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v6, p6

    move-object v2, v4

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V

    monitor-exit v8

    return-void

    :goto_4a
    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_1d .. :try_end_4b} :catchall_3d

    throw v0
.end method

.method public final dumpUserLocked(Ljava/io/PrintWriter;Lcom/android/server/pm/UserManagerService$UserData;Ljava/lang/StringBuilder;JJ)V
    .registers 17

    iget-object v7, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_32

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

    goto :goto_3a

    :cond_32
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :goto_3a
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

    if-eq v2, v3, :cond_64

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_64

    const-string v2, " parentId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_64
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, " <removing> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_71
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_7a

    const-string v2, " <partial>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7a
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_83

    const-string v2, " <pre-created>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_83
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v2, :cond_8c

    const-string v2, " <converted>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8c
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

    :try_start_be
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v3, v8}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v3

    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_290

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

    :try_start_127
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
    :try_end_159
    .catchall {:try_start_127 .. :try_end_159} :catchall_28d

    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_173

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    Account name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_173
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1b3

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

    if-eqz v0, :cond_1a7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "         account type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1a7
    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1b3

    const-string v0, "         account options exist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1b3
    const-string v0, "    Can have profile: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_1c8

    const-string v2, "    "

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1c8
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

    if-eqz v0, :cond_1ff

    const-string v0, "    KNOX attributes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_1fc

    const-string v0, " <PREMIUM> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1fc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1ff
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_252

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

    if-eqz v0, :cond_228

    const-string v0, " <PREMIUM> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_228
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_24f

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v0

    if-eqz v0, :cond_239

    const-string v0, " <admin locked> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_239
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v0

    if-eqz v0, :cond_244

    const-string v0, " <license expired> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_244
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v0

    if-eqz v0, :cond_24f

    const-string v0, " <device compromise detected> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_24f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_252
    iget v0, v7, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v2, 0x6000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_28c

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_263

    const-string v0, " <DUALDAR CUSTOM CRYPTO>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_263
    iget v0, v7, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_26f

    const-string v0, " <DUALDAR NATIVE CRYPTO>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_26f
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v0

    if-eqz v0, :cond_28c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_28c
    return-void

    :catchall_28d
    move-exception v0

    :try_start_28e
    monitor-exit v3
    :try_end_28f
    .catchall {:try_start_28e .. :try_end_28f} :catchall_28d

    throw v0

    :catchall_290
    move-exception v0

    :try_start_291
    monitor-exit v2
    :try_end_292
    .catchall {:try_start_291 .. :try_end_292} :catchall_290

    throw v0
.end method

.method public final enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
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
    .registers 5

    const-string/jumbo v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x3

    goto :goto_17

    :cond_16
    const/4 p0, 0x2

    :goto_17
    :try_start_17
    invoke-interface {v0, p1, p0}, Landroid/app/IActivityManager;->restartUserInBackground(II)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_20
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_26

    :catch_20
    move-exception p0

    :try_start_21
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    :goto_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final fallbackToSingleUserLP()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->onUserRemoved(I)V

    :cond_8
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isDefaultHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "android.os.usertype.system.HEADLESS"

    :goto_11
    move-object v6, v0

    goto :goto_17

    :cond_13
    const-string/jumbo v0, "android.os.usertype.full.SYSTEM"

    goto :goto_11

    :goto_17
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

    :try_start_5a
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10700ca

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v5, v3

    :goto_69
    if-ge v5, v4, :cond_85

    aget-object v6, v0, v5

    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_77
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5a .. :try_end_77} :catch_78

    goto :goto_7a

    :catch_78
    move-exception v0

    goto :goto_7d

    :cond_7a
    :goto_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :goto_7d
    const-string/jumbo v4, "UserManagerService"

    const-string v5, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_85
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    monitor-exit v4

    goto :goto_99

    :catchall_95
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_95

    throw p0

    :cond_99
    :goto_99
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final getAliveUsersExcludingGuestsCountLU()I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_4b

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_48

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_48

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDigitalLegacyMode()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_48

    add-int/lit8 v2, v2, 0x1

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_4b
    return v2
.end method

.method public final getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_2f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x400000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1c} :catch_25
    .catchall {:try_start_e .. :try_end_1c} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, -0x1

    :goto_29
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get application restrictions for other user/app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    :cond_41
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v0, p2, :cond_4a

    const/4 p2, 0x0

    :cond_4a
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4d
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

    :catchall_65
    move-exception p1

    monitor-exit p0
    :try_end_67
    .catchall {:try_start_4d .. :try_end_67} :catchall_65

    throw p1
.end method

.method public final getBootUser()I
    .registers 2

    const-string v0, "Get boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getBootUserUnchecked()I

    move-result p0
    :try_end_9
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_5 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final getBootUserUnchecked()I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_47

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_34

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_34

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

    :catchall_32
    move-exception p0

    goto :goto_ad

    :cond_34
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "Provided boot user cannot be switched to: %d"

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_32

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e00cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_a7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_77

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

    :cond_77
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_87

    return v1

    :cond_87
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    if-eq p0, v2, :cond_9e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "UserManagerService"

    const-string v2, "Boot user is first switchable full user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_9e
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string/jumbo v0, "No switchable full user found"

    invoke-direct {p0, v0, v3}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousOrFirstSwitchableUser()I

    move-result p0

    return p0

    :cond_ac
    return v1

    :goto_ad
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_32

    throw p0
.end method

.method public final getCommunalProfileId()I
    .registers 2

    const-string/jumbo v0, "get communal profile user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getCommunalProfileIdUnchecked()I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCommunalProfile()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_33

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2a

    throw p0
.end method

.method public final getCredentialOwnerProfile(I)I
    .registers 5

    const-string/jumbo v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_28

    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_22
    move-exception p0

    goto :goto_26

    :cond_24
    :try_start_24
    monitor-exit v2

    goto :goto_2a

    :goto_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_22

    :try_start_27
    throw p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    goto :goto_2e

    :cond_2a
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getCurrentAndTargetUserIds()Landroid/util/Pair;
    .registers 3
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

    if-nez p0, :cond_1f

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

    :cond_1f
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-nez p0, :cond_12

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v0, "getCurrentUserId() called too early, ActivityManagerInternal is not set yet"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x2710

    return p0

    :cond_12
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public final getDarManagerService()Lcom/samsung/android/knox/dar/IDarManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_11

    const-string/jumbo v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    return-object p0
.end method

.method public final getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 3

    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_9
    new-instance v1, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_c
    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_38

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_35

    iget-wide v5, v4, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_35

    cmp-long v7, v5, v1

    if-gez v7, :cond_35

    move-object v0, v4

    move-wide v1, v5

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_38
    return-object v0
.end method

.method public final getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    :cond_17
    :goto_17
    monitor-exit v0

    return-object v1

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method public final getFirstSwitchableUser(Z)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_32

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz p1, :cond_29

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_36

    :cond_29
    :goto_29
    iget-object p0, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_32
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_27

    throw p0
.end method

.method public getFreeProfileBadgeLU(ILjava/lang/String;)I
    .registers 10

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_3b

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_38

    iget v4, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3b
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getMaxUsersOfTypePerParent(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_45

    const p0, 0x7fffffff

    :cond_45
    move p1, v2

    :goto_46
    if-ge p1, p0, :cond_56

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_53

    return p1

    :cond_53
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    :cond_56
    return v2
.end method

.method public final getGuestUsers()Ljava/util/List;
    .registers 8

    const-string/jumbo v0, "getGuestUsers"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_42

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_3f

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_3f

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_44

    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_42
    monitor-exit v1

    return-object v0

    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_3d

    throw p0
.end method

.method public final getMainDisplayIdAssignedToUser(I)I
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_20

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_20

    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller from user "

    const-string v2, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the main display for ("

    const-string v3, ")"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->getMainDisplayAssignedToUser(I)I

    move-result p0

    return p0
.end method

.method public final getMainUserId()I
    .registers 2

    const-string/jumbo v0, "get main user id"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result p0

    return p0
.end method

.method public final getMainUserIdUnchecked()I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2f

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    iget p0, v3, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    goto :goto_33

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2f
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2a

    throw p0
.end method

.method public getMaxUsersOfTypePerParent(Ljava/lang/String;)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    if-nez p1, :cond_13

    goto :goto_23

    :cond_13
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    const-string/jumbo p0, "persist.sys.max_profiles"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_23
    :goto_23
    return v0
.end method

.method public getNextAvailableId()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZ)I

    move-result p0

    return p0
.end method

.method public final getNextAvailableId(ZZ)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZ)I

    move-result v1

    if-ltz v1, :cond_d

    monitor-exit v0

    return v1

    :catchall_b
    move-exception p0

    goto :goto_56

    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_43

    const-string/jumbo v1, "UserManagerService"

    const-string v2, "All available IDs are used. Recycling LRU ids."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_28

    :cond_3f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZ)I

    move-result v1

    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_b

    invoke-static {}, Landroid/os/UserManager;->invalidateStaticUserProperties()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserPropertiesCache()V

    if-ltz v1, :cond_4d

    return v1

    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "No user id available!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_b

    throw p0
.end method

.method public final getNumberOfUsersOfType(Ljava/lang/String;)I
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_39

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v4, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_36

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_36

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_36

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_3b

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_39
    monitor-exit v0

    return v3

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_34

    throw p0
.end method

.method public final getPreCreatedUserLU(Ljava/lang/String;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4c

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_49

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_49

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_48

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

    goto :goto_49

    :cond_48
    return-object v2

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreInstallableSystemPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "getPreInstallableSystemPackages"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
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
    .registers 12

    const-string/jumbo v0, "get previous user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, -0x2710

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v2, :cond_50

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v9, v0, :cond_4d

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v8

    if-eqz v8, :cond_4d

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v10, v8, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v10, :cond_4d

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4d

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_4d

    iget-wide v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    cmp-long v10, v7, v4

    if-lez v10, :cond_4d

    move-wide v4, v7

    move v3, v9

    goto :goto_4d

    :catchall_4b
    move-exception p0

    goto :goto_52

    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_50
    monitor-exit v1

    return v3

    :goto_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_4b

    throw p0
.end method

.method public final getPreviousOrFirstSwitchableUser()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPreviousFullUserToEnterForeground()I

    move-result v0

    const-string/jumbo v1, "UserManagerService"

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Boot user is previous user %d"

    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getFirstSwitchableUser(Z)I

    move-result p0

    if-eq p0, v2, :cond_2e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Boot user is first switchable user %d"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_2e
    new-instance p0, Landroid/os/UserManager$CheckedUserOperationException;

    const-string/jumbo v0, "No switchable users found"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/UserManager$CheckedUserOperationException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_33

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_30

    monitor-exit v0

    return-object v3

    :catchall_2e
    move-exception p0

    goto :goto_36

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_33
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_2e

    throw p0
.end method

.method public final getPrivateProfileUserId()I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_22

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget p0, v4, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_26

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_22
    monitor-exit v0

    const/16 p0, -0x2710

    return p0

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_1d

    throw p0
.end method

.method public final getProfileAccessibilityLabelResId(I)I
    .registers 3

    const-string/jumbo v0, "getProfileAccessibilityLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p1, :cond_16

    if-nez p0, :cond_13

    goto :goto_16

    :cond_13
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public final getProfileIds(IZ)[I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;IZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIds(Ljava/lang/String;IZZ)[I
    .registers 13

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getting profiles related to user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_31
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_6b

    :try_start_34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_3a
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v6

    const/16 v7, 0x96

    if-ge v5, v6, :cond_52

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    if-lt v6, v7, :cond_4f

    invoke-virtual {v3, v5}, Landroid/util/IntArray;->get(I)I

    move-result v4

    goto :goto_52

    :catchall_4d
    move-exception p0

    goto :goto_69

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_52
    :goto_52
    if-lt v4, v7, :cond_64

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/util/IntArray;->remove(I)V

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_34 .. :try_end_60} :catchall_4d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_64
    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_4d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_70

    :goto_69
    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_4d

    :try_start_6a
    throw p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_70
    :goto_70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_74
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_87

    :try_start_77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_84

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_84
    move-exception p0

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getProfileIdsExcludingHidden(IZ)[I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;IZZ)[I

    move-result-object p0

    return-object p0
.end method

.method public final getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;
    .registers 11

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    if-nez p2, :cond_12

    goto :goto_71

    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_71

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_35

    iget v4, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_6e

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_6e

    :cond_35
    if-eqz p3, :cond_3e

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_6e

    :cond_3e
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_6e

    :cond_49
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_4e

    goto :goto_6e

    :cond_4e
    if-eqz p1, :cond_59

    iget-object v4, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_6e

    :cond_59
    if-eqz p4, :cond_69

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_69

    goto :goto_6e

    :cond_69
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_71
    :goto_71
    return-object v0
.end method

.method public final getProfileLabelResId(I)I
    .registers 4

    const-string/jumbo v0, "getProfileLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    if-nez p0, :cond_14

    goto :goto_2a

    :cond_14
    iget p1, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p0, :cond_2a

    array-length v1, p0

    if-eqz v1, :cond_2a

    if-gez p1, :cond_20

    goto :goto_2a

    :cond_20
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 3

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getProfileParentId(I)I
    .registers 3

    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    return p0
.end method

.method public final getProfileParentIdUnchecked(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_d

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p0

    goto :goto_11

    :cond_d
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method public final getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, p1, :cond_16

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_11

    goto :goto_16

    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    return-object v1
.end method

.method public final getProfileType(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "getProfileType"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_1c

    :catchall_18
    move-exception p0

    goto :goto_21

    :cond_1a
    const-string p0, ""

    :goto_1c
    monitor-exit v0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_18

    throw p0
.end method

.method public final getProfiles(IZ)Ljava/util/List;
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getting profiles related to user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_21

    :cond_1a
    const-string/jumbo v0, "android.permission.CREATE_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_34

    :try_start_28
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object p0

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getProfilesLU(IZZ)Ljava/util/List;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_f
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p3, :cond_2f

    new-instance v3, Landroid/content/pm/UserInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    iput-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_33

    :cond_2f
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v3

    :goto_33
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_39
    return-object p2
.end method

.method public final getRemainingCreatableProfileCount(ILjava/lang/String;Z)I
    .registers 14

    const-string/jumbo v0, "get the remaining number of profiles that can be added to the given user."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_cb

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_cb

    :cond_19
    iget-object v2, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p2}, Landroid/os/UserManager;->isUserTypeCloneProfile(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p2}, Landroid/os/UserManager;->isUserTypePrivateProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_3a

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.software.managed_users"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto/16 :goto_cb

    :cond_3a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_c7

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v6

    if-nez v6, :cond_4b

    goto/16 :goto_c7

    :cond_4b
    invoke-virtual {p0, p2, p1, v1, v1}, Lcom/android/server/pm/UserManagerService;->getProfileIds(Ljava/lang/String;IZZ)[I

    move-result-object v6

    array-length v6, v6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v1

    :cond_5b
    :goto_5b
    if-ge v8, v7, :cond_72

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_5b

    add-int/lit8 v6, v6, -0x1

    goto :goto_5b

    :catchall_70
    move-exception p0

    goto :goto_c9

    :cond_72
    const/4 p1, 0x1

    if-lez v6, :cond_79

    if-eqz p3, :cond_79

    move p3, p1

    goto :goto_7a

    :cond_79
    move p3, v1

    :goto_7a
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int/2addr v7, p3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v8

    sub-int/2addr v8, v7

    if-gtz v8, :cond_8f

    if-nez v2, :cond_8c

    if-nez v3, :cond_8c

    if-eqz v4, :cond_8f

    :cond_8c
    if-ne v7, p1, :cond_8f

    goto :goto_90

    :cond_8f
    move p1, v8

    :goto_90
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iget v3, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    if-nez v2, :cond_97

    goto :goto_a6

    :cond_97
    iget-object v2, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    const-string/jumbo v2, "persist.sys.max_profiles"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    :cond_a6
    :goto_a6
    const/4 v2, -0x1

    if-eq v3, v2, :cond_af

    sub-int/2addr v6, p3

    sub-int/2addr v3, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_af
    if-gtz p1, :cond_b3

    monitor-exit v5

    return v1

    :cond_b3
    iget v0, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    if-eq v0, v2, :cond_c1

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr p0, p3

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_c1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v5

    return p0

    :cond_c7
    :goto_c7
    monitor-exit v5

    return v1

    :goto_c9
    monitor-exit v5
    :try_end_ca
    .catchall {:try_start_3d .. :try_end_ca} :catchall_70

    throw p0

    :cond_cb
    :goto_cb
    return v1
.end method

.method public final getRemainingCreatableProfileCount(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/UserManagerService;->getRemainingCreatableProfileCount(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final getRemainingCreatableUserCount(Ljava/lang/String;)I
    .registers 10

    const-string/jumbo v0, "get the remaining number of users that can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_7d

    :cond_19
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v3

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7fffffff

    if-nez v4, :cond_38

    invoke-static {p1}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_38

    :cond_30
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_39

    :catchall_36
    move-exception p0

    goto :goto_7b

    :cond_38
    :goto_38
    move v4, v5

    :goto_39
    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.managed_users"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_52

    monitor-exit v2

    return v1

    :cond_52
    const/4 v6, 0x1

    if-gtz v4, :cond_57

    move v7, v6

    goto :goto_58

    :cond_57
    move v7, v1

    :goto_58
    if-ne v3, v6, :cond_5c

    move v3, v6

    goto :goto_5d

    :cond_5c
    move v3, v1

    :goto_5d
    and-int/2addr v3, v7

    if-eqz v3, :cond_61

    move v4, v6

    :cond_61
    if-gtz v4, :cond_65

    monitor-exit v2

    return v1

    :cond_65
    iget v0, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6b

    goto :goto_71

    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getNumberOfUsersOfType(Ljava/lang/String;)I

    move-result p0

    sub-int v5, v0, p0

    :goto_71
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    monitor-exit v2

    return p0

    :goto_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_1c .. :try_end_7c} :catchall_36

    throw p0

    :cond_7d
    :goto_7d
    return v1
.end method

.method public final getSeedAccountName(I)Ljava/lang/String;
    .registers 3

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getSeedAccountOptions(I)Landroid/os/PersistableBundle;
    .registers 3

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getSeedAccountType(I)Ljava/lang/String;
    .registers 3

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_12

    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final getUserAccount(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final getUserBadgeColorResId(I)I
    .registers 5

    const-string/jumbo v0, "getUserBadgeColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_31

    :cond_1a
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    if-gez p1, :cond_26

    goto :goto_30

    :cond_26
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_30
    :goto_30
    return v1

    :cond_31
    :goto_31
    const-string/jumbo p0, "Requested badge dark color for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getUserBadgeDarkColorResId(I)I
    .registers 5

    const-string/jumbo v0, "getUserBadgeDarkColorResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_45

    :cond_1a
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_30

    array-length v2, v0

    if-eqz v2, :cond_30

    if-gez p1, :cond_26

    goto :goto_30

    :cond_26
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, v0, p0

    return p0

    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_44

    array-length v0, p0

    if-eqz v0, :cond_44

    if-gez p1, :cond_3a

    goto :goto_44

    :cond_3a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_44
    :goto_44
    return v1

    :cond_45
    :goto_45
    const-string/jumbo p0, "Requested badge color for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getUserBadgeLabelResId(I)I
    .registers 5

    const-string/jumbo v0, "getUserBadgeLabelResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_31

    :cond_1a
    iget p1, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz p0, :cond_30

    array-length v0, p0

    if-eqz v0, :cond_30

    if-gez p1, :cond_26

    goto :goto_30

    :cond_26
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_30
    :goto_30
    return v1

    :cond_31
    :goto_31
    const-string/jumbo p0, "Requested badge label for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final getUserBadgeNoBackgroundResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserBadgeNoBackgroundResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return p0

    :cond_16
    :goto_16
    const-string/jumbo p0, "Requested badge (no background) for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserBadgeResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return p0

    :cond_16
    :goto_16
    const-string/jumbo p0, "Requested badge for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserCreationTime(I)J
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v0, p1, :cond_10

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_20

    :catchall_e
    move-exception p0

    goto :goto_2f

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1f

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_e

    if-eqz p0, :cond_26

    iget-wide p0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide p0

    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "userId can only be the calling user or a profile associated with this user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_e

    throw p0
.end method

.method public final getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public final getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .registers 9

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
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1c

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_19

    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v5, p1, :cond_19

    monitor-exit v0

    return v4

    :catchall_17
    move-exception p0

    goto :goto_1f

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_17

    throw p0
.end method

.method public final getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 7

    const-string/jumbo v0, "getUserIcon: unknown user #"

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5f

    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_1b

    goto :goto_5f

    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p1, p0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2b

    goto :goto_37

    :cond_2b
    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p1, -0x2710

    if-eq p0, p1, :cond_36

    iget p1, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p0, p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    if-nez v4, :cond_42

    const-string/jumbo p0, "get the icon of a user who is not related"

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_73

    :cond_42
    :goto_42
    iget-object p0, v2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez p0, :cond_48

    monitor-exit v1

    return-object v3

    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_40

    :try_start_49
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_54} :catch_55

    return-object p0

    :catch_55
    move-exception p0

    const-string/jumbo p1, "UserManagerService"

    const-string v0, "Couldn\'t find icon file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_5f
    :goto_5f
    :try_start_5f
    const-string/jumbo p0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v3

    :goto_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_40

    throw p0

    :cond_75
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserIconBadgeResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserIconBadgeResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return p0

    :cond_16
    :goto_16
    const-string/jumbo p0, "Requested icon badge for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserIds()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getUserIdsIncludingPreCreated()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p0, Landroid/content/pm/UserInfo;

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_23

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_23

    const-string/jumbo p0, "getUserInfo: unknown user #"

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_23
    if-eqz v0, :cond_28

    iget-object p0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    return-object p0

    :cond_28
    return-object v1
.end method

.method public final getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p0, :cond_12

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method public final getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;
    .registers 8

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
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "aconfig flag android.multiuser.logout_user_api not enabled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserName()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1d

    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_24
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_36

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_36

    monitor-exit v1

    return-object p0

    :catchall_34
    move-exception p0

    goto :goto_3a

    :cond_36
    const-string p0, ""

    monitor-exit v1

    return-object p0

    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_34

    throw p0
.end method

.method public final getUserPropertiesCopy(I)Landroid/content/pm/UserProperties;
    .registers 5

    const-string/jumbo v0, "getUserProperties"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    const-string/jumbo v1, "android.permission.QUERY_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/content/pm/UserProperties;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;ZZZ)V

    return-object v2

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot access properties for user "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockPatternUtilForDualDarDo()Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilForDualDarDo;->isInnerAuthUserForDo(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-eqz v1, :cond_1c

    move p1, v2

    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_28

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    goto :goto_2b

    :cond_28
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_26

    throw p0
.end method

.method public final getUserRemovabilityLocked(ILjava/lang/String;)I
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "User %d can not be %s, "

    invoke-static {v0, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "UserManagerService"

    if-nez p1, :cond_2b

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

    :cond_2b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v1, :cond_4c

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

    :cond_4c
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_78

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

    :cond_78
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_97

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

    :cond_97
    const/4 p0, 0x3

    return p0
.end method

.method public final getUserRemovalRestrictionOptional(I)Ljava/util/Optional;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_33

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    move v1, p1

    :goto_15
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1e

    move p1, v0

    :cond_1e
    if-eqz v1, :cond_25

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_25
    if-eqz p1, :cond_2b

    const-string/jumbo p0, "no_remove_managed_profile"

    goto :goto_2e

    :cond_2b
    const-string/jumbo p0, "no_remove_user"

    :goto_2e
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_b
    if-ltz p1, :cond_1b

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v0}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v0

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_b

    :cond_1b
    return p2
.end method

.method public final getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 7

    const-string/jumbo v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v2, -0x2710

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v1, :cond_36

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_36
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_41

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_41
    return-object v0

    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    const-string/jumbo p2, "call getUserRestrictionSources."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3

    const-string/jumbo v0, "getUserRestrictions"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getUserSerialNumber(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    iget p0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    goto :goto_f

    :catchall_c
    move-exception p0

    goto :goto_11

    :cond_e
    const/4 p0, -0x1

    :goto_f
    monitor-exit v0

    return p0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c

    throw p0
.end method

.method public final getUserStartRealtime()J
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_17

    iget-wide v2, p0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v2

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    const-wide/16 v2, 0x0

    monitor-exit v1

    return-wide v2

    :goto_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public final getUserStatusBarIconResId(I)I
    .registers 3

    const-string/jumbo v0, "getUserStatusBarIconResId"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_16

    :cond_13
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    return p0

    :cond_16
    :goto_16
    const-string/jumbo p0, "Requested status bar icon for non-badged user "

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserSwitchability(I)I
    .registers 9

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

    if-eqz v1, :cond_5a

    const-string/jumbo v1, "TM.isInCall"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_38
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4c

    if-eqz v1, :cond_4e

    move v1, v2

    goto :goto_4f

    :catchall_4c
    move-exception p0

    goto :goto_56

    :cond_4e
    move v1, v3

    :goto_4f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_5b

    :goto_56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5a
    move v1, v3

    :goto_5b
    const-string/jumbo v4, "hasUserRestriction-DISALLOW_USER_SWITCH"

    invoke-virtual {v0, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-string/jumbo v5, "no_user_switch"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6e

    or-int/lit8 v1, v1, 0x2

    :cond_6e
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_a6

    const-string/jumbo p1, "getInt-ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v4, "allow_user_switching_when_system_user_locked"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v2, v3

    :goto_8e
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo p1, "isUserUnlocked-USER_SYSTEM"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v2, :cond_a6

    if-nez p0, :cond_a6

    or-int/lit8 v1, v1, 0x4

    :cond_a6
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return v1
.end method

.method public final getUserTypeDetails(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserTypeDetails;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object p1, v0

    :goto_7
    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_12
    return-object v0
.end method

.method public final getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_1d

    :cond_f
    move-object p1, v1

    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_d

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    return-object p0

    :cond_1c
    return-object v1

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_d

    throw p0
.end method

.method public final getUserUnlockRealtime()J
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0

    if-eqz p0, :cond_17

    iget-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v1

    :catchall_15
    move-exception p0

    goto :goto_1b

    :cond_17
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_15

    throw p0
.end method

.method public final getUsers(ZZZ)Ljava/util/List;
    .registers 5

    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUsersInternal(ZZZ)Ljava/util/List;
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_47

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz p1, :cond_2a

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_44

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_49

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_36

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_44

    :cond_36
    if-eqz p3, :cond_3d

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v5, :cond_3d

    goto :goto_44

    :cond_3d
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_47
    monitor-exit v0

    return-object v1

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_28

    throw p0
.end method

.method public final getVisibleUsers()[I
    .registers 3

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get list of visible users"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasBadge(I)Z
    .registers 3

    const-string/jumbo v0, "hasBadge"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserTypeDetailsNoChecks(I)Lcom/android/server/pm/UserTypeDetails;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->hasBadge()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 5

    const-string/jumbo v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v1, 0x1

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    :cond_23
    :goto_23
    monitor-exit v0

    return v1

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public final hasRestrictedProfiles(I)Z
    .registers 8

    const-string/jumbo v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_2d

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v5, :cond_2a

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, p1, :cond_2a

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2d
    monitor-exit v0

    return v2

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_28

    throw p0
.end method

.method public final hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    const-string/jumbo v0, "hasUserRestriction"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 8

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    move v3, v1

    :goto_e
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2d

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    return v1
.end method

.method public final initDefaultGuestRestrictions()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    const-string/jumbo v2, "android.os.usertype.full.GUEST"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserTypeDetails;

    if-nez v1, :cond_24

    const-string/jumbo p0, "UserManagerService"

    const-string v1, "Can\'t set default guest restrictions: type doesn\'t exist."

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    goto :goto_2d

    :cond_24
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_22

    throw p0
.end method

.method public final invalidateOwnerNameIfNecessary(Landroid/content/res/Resources;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    iget p2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    const/4 v0, 0x1

    const v1, 0x104099f

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mOwnerNameTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final isAdminUser(I)Z
    .registers 4

    const-string/jumbo v0, "isAdminUser"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v1, p1, :cond_13

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :catchall_24
    move-exception p0

    goto :goto_29

    :cond_26
    const/4 p0, 0x0

    :goto_27
    monitor-exit v0

    return p0

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_24

    throw p0
.end method

.method public final isCrossProfileIntentFilterAccessible(IIZ)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result p1

    goto :goto_d

    :cond_c
    move p1, v0

    :goto_d
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result p0

    goto :goto_19

    :cond_18
    move p0, v0

    :goto_19
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0xa

    if-ne p1, p0, :cond_2e

    sget-boolean p1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_40

    :cond_2e
    const/16 p1, 0x14

    if-ne p1, p0, :cond_41

    if-eqz p3, :cond_40

    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p0

    if-nez p0, :cond_41

    :cond_40
    :goto_40
    return v0

    :cond_41
    const/4 p0, 0x1

    return p0
.end method

.method public isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result v1

    if-ne v1, v0, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final isDemoUser(I)Z
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1c

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1c

    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "You need MANAGE_USERS permission to query if u="

    const-string v1, " is a demo user"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    const-string/jumbo v0, "ro.boot.arc_demo_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    return v2

    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p0

    if-eqz p0, :cond_3b

    move v1, v2

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_3d

    :cond_3b
    :goto_3b
    monitor-exit v0

    return v1

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_39

    throw p0
.end method

.method public final isForegroundUserAdmin()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v1

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v3, 0x1

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_20

    :cond_1c
    :goto_1c
    monitor-exit v0

    return v3

    :cond_1e
    monitor-exit v0

    return v3

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1a

    throw p0
.end method

.method public final isHeadlessSystemUserMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
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

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final isPreCreated(I)Z
    .registers 3

    const-string/jumbo v0, "isPreCreated"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_17

    iget-boolean p0, p0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public final isProfileUnchecked(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final isQuietModeEnabled(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1f

    if-eqz p0, :cond_1c

    :try_start_d
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_1c

    :cond_14
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    goto :goto_22

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1a

    return p0

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_1a

    throw p0
.end method

.method public final isRestricted(I)Z
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "query isRestricted for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_23

    const/4 p0, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    :goto_27
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final isSameProfileGroup(II)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string/jumbo v0, "android.permission.QUERY_USERS"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result p0

    return p0

    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You either need MANAGE_USERS or QUERY_USERS permission to: "

    const-string/jumbo p2, "check if in the same profile group"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isSameProfileGroupNoChecks(II)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_e

    monitor-exit v0

    return v1

    :catchall_c
    move-exception p0

    goto :goto_29

    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-nez p0, :cond_16

    monitor-exit v0

    return v1

    :cond_16
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    if-eq p2, v2, :cond_26

    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_27

    iget p0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne p1, p0, :cond_27

    :cond_26
    const/4 v1, 0x1

    :cond_27
    monitor-exit v0

    return v1

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_c

    throw p0
.end method

.method public final isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_220

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

    sparse-switch v6, :sswitch_data_22a

    goto/16 :goto_167

    :sswitch_27
    const-string/jumbo v6, "screen_brightness"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto/16 :goto_167

    :cond_32
    const/16 v5, 0x16

    goto/16 :goto_167

    :sswitch_36
    const-string/jumbo v6, "install_non_market_apps"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto/16 :goto_167

    :cond_41
    const/16 v5, 0x15

    goto/16 :goto_167

    :sswitch_45
    const-string/jumbo v6, "auto_time"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    goto/16 :goto_167

    :cond_50
    const/16 v5, 0x14

    goto/16 :goto_167

    :sswitch_54
    const-string/jumbo v6, "always_on_vpn_lockdown"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    goto/16 :goto_167

    :cond_5f
    const/16 v5, 0x13

    goto/16 :goto_167

    :sswitch_63
    const-string/jumbo v6, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    goto/16 :goto_167

    :cond_6e
    const/16 v5, 0x12

    goto/16 :goto_167

    :sswitch_72
    const-string/jumbo v6, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d

    goto/16 :goto_167

    :cond_7d
    const/16 v5, 0x11

    goto/16 :goto_167

    :sswitch_81
    const-string/jumbo v6, "auto_time_zone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    goto/16 :goto_167

    :cond_8c
    const/16 v5, 0x10

    goto/16 :goto_167

    :sswitch_90
    const-string/jumbo v6, "private_dns_specifier"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    goto/16 :goto_167

    :cond_9b
    const/16 v5, 0xf

    goto/16 :goto_167

    :sswitch_9f
    const-string/jumbo v6, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_aa

    goto/16 :goto_167

    :cond_aa
    const/16 v5, 0xe

    goto/16 :goto_167

    :sswitch_ae
    const-string/jumbo v6, "airplane_mode_on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b9

    goto/16 :goto_167

    :cond_b9
    const/16 v5, 0xd

    goto/16 :goto_167

    :sswitch_bd
    const-string/jumbo v6, "private_dns_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c8

    goto/16 :goto_167

    :cond_c8
    const/16 v5, 0xc

    goto/16 :goto_167

    :sswitch_cc
    const-string/jumbo v6, "screen_off_timeout"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d7

    goto/16 :goto_167

    :cond_d7
    const/16 v5, 0xb

    goto/16 :goto_167

    :sswitch_db
    const-string/jumbo v6, "safe_boot_disallowed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e6

    goto/16 :goto_167

    :cond_e6
    const/16 v5, 0xa

    goto/16 :goto_167

    :sswitch_ea
    const-string/jumbo v6, "doze_pulse_on_long_press"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    goto/16 :goto_167

    :cond_f5
    const/16 v5, 0x9

    goto/16 :goto_167

    :sswitch_f9
    const-string/jumbo v6, "doze_always_on"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_104

    goto/16 :goto_167

    :cond_104
    const/16 v5, 0x8

    goto/16 :goto_167

    :sswitch_108
    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_112

    goto :goto_167

    :cond_112
    const/4 v5, 0x7

    goto :goto_167

    :sswitch_114
    const-string/jumbo v6, "always_on_vpn_app"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11e

    goto :goto_167

    :cond_11e
    const/4 v5, 0x6

    goto :goto_167

    :sswitch_120
    const-string/jumbo v6, "screen_brightness_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12a

    goto :goto_167

    :cond_12a
    const/4 v5, 0x5

    goto :goto_167

    :sswitch_12c
    const-string/jumbo v6, "adb_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_136

    goto :goto_167

    :cond_136
    const/4 v5, 0x4

    goto :goto_167

    :sswitch_138
    const-string/jumbo v6, "verifier_verify_adb_installs"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_142

    goto :goto_167

    :cond_142
    const/4 v5, 0x3

    goto :goto_167

    :sswitch_144
    const-string/jumbo v6, "doze_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14e

    goto :goto_167

    :cond_14e
    const/4 v5, 0x2

    goto :goto_167

    :sswitch_150
    const-string/jumbo v6, "location_mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15a

    goto :goto_167

    :cond_15a
    move v5, v0

    goto :goto_167

    :sswitch_15c
    const-string/jumbo v6, "adb_wifi_enabled"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_166

    goto :goto_167

    :cond_166
    move v5, v1

    :goto_167
    packed-switch v5, :pswitch_data_288

    const-string/jumbo p4, "data_roaming"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_213

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17b

    goto/16 :goto_213

    :cond_17b
    const-string/jumbo p1, "no_data_roaming"

    goto/16 :goto_217

    :pswitch_180  #0x15
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_188

    goto/16 :goto_213

    :cond_188
    const-string/jumbo p1, "no_install_unknown_sources"

    goto/16 :goto_217

    :pswitch_18d  #0x10, 0x14
    if-ne p4, v3, :cond_191

    goto/16 :goto_213

    :cond_191
    const-string/jumbo p1, "no_config_date_time"

    goto/16 :goto_217

    :pswitch_196  #0xd
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19e

    goto/16 :goto_213

    :cond_19e
    const-string/jumbo p1, "no_airplane_mode"

    goto/16 :goto_217

    :pswitch_1a3  #0xc, 0xf
    if-ne p4, v3, :cond_1a7

    goto/16 :goto_213

    :cond_1a7
    const-string/jumbo p1, "disallow_config_private_dns"

    goto/16 :goto_217

    :pswitch_1ac  #0xb
    if-ne p4, v3, :cond_1b0

    goto/16 :goto_213

    :cond_1b0
    const-string/jumbo p1, "no_config_screen_timeout"

    goto/16 :goto_217

    :pswitch_1b5  #0xa
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1bc

    goto :goto_213

    :cond_1bc
    const-string/jumbo p1, "no_safe_boot"

    goto :goto_217

    :pswitch_1c0  #0x7
    const-string/jumbo p1, "no_config_mobile_networks"

    goto :goto_217

    :pswitch_1c4  #0x6, 0x11, 0x13
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-eq p1, v3, :cond_213

    if-nez p1, :cond_1cd

    goto :goto_213

    :cond_1cd
    const-string/jumbo p1, "no_config_vpn"

    goto :goto_217

    :pswitch_1d1  #0x5, 0x16
    if-ne p4, v3, :cond_1d4

    goto :goto_213

    :cond_1d4
    const-string/jumbo p1, "no_config_brightness"

    goto :goto_217

    :pswitch_1d8  #0x3
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1df

    goto :goto_213

    :cond_1df
    const-string/jumbo p1, "ensure_verify_apps"

    goto :goto_217

    :pswitch_1e3  #0x2, 0x8, 0x9, 0xe, 0x12
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ea

    goto :goto_213

    :cond_1ea
    const-string/jumbo p1, "no_ambient_display"

    goto :goto_217

    :pswitch_1ee  #0x1
    const-string/jumbo p1, "no_config_location"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_1fe

    if-eq p4, v3, :cond_1fe

    return v0

    :cond_1fe
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_209

    goto :goto_213

    :cond_209
    const-string/jumbo p1, "no_share_location"

    goto :goto_217

    :pswitch_20d  #0x0, 0x4
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_214

    :cond_213
    :goto_213
    return v1

    :cond_214
    const-string/jumbo p1, "no_debugging_features"

    :goto_217
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    :cond_220
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Non-system caller"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_22a
    .sparse-switch
        -0x7d29d849 -> :sswitch_15c
        -0x6b192413 -> :sswitch_150
        -0x58d2ff08 -> :sswitch_144
        -0x4280630b -> :sswitch_138
        -0x39d6645f -> :sswitch_12c
        -0x294f7102 -> :sswitch_120
        -0x252f8dda -> :sswitch_114
        -0x18d5c3ee -> :sswitch_108
        -0x611a9fa -> :sswitch_f9
        -0x1efffcf -> :sswitch_ea
        0x3756c15 -> :sswitch_db
        0xf689f3e -> :sswitch_cc
        0x28c0ce35 -> :sswitch_bd
        0x3733860e -> :sswitch_ae
        0x3ff919a6 -> :sswitch_9f
        0x48f0b46c -> :sswitch_90
        0x4c070b4e -> :sswitch_81
        0x4f84b830 -> :sswitch_72
        0x5f8b91a8 -> :sswitch_63
        0x62299f68 -> :sswitch_54
        0x6305635d -> :sswitch_45
        0x6565577f -> :sswitch_36
        0x67748604 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_20d  #00000000
        :pswitch_1ee  #00000001
        :pswitch_1e3  #00000002
        :pswitch_1d8  #00000003
        :pswitch_20d  #00000004
        :pswitch_1d1  #00000005
        :pswitch_1c4  #00000006
        :pswitch_1c0  #00000007
        :pswitch_1e3  #00000008
        :pswitch_1e3  #00000009
        :pswitch_1b5  #0000000a
        :pswitch_1ac  #0000000b
        :pswitch_1a3  #0000000c
        :pswitch_196  #0000000d
        :pswitch_1e3  #0000000e
        :pswitch_1a3  #0000000f
        :pswitch_18d  #00000010
        :pswitch_1c4  #00000011
        :pswitch_1e3  #00000012
        :pswitch_1c4  #00000013
        :pswitch_18d  #00000014
        :pswitch_180  #00000015
        :pswitch_1d1  #00000016
    .end packed-switch
.end method

.method public final isUserForeground(I)Z
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_20

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_20

    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller from user "

    const-string v2, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    const-string v3, ") is running in the foreground"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    if-ne p1, p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserLimitReached()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt p0, v0, :cond_16

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isCreationOverrideEnabled()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final isUserNameSet(I)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasQueryOrCreateUsersPermission()Z

    move-result v2

    if-nez v2, :cond_23

    if-ne v1, p1, :cond_1a

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_23

    :cond_1a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_34

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :catchall_32
    move-exception p0

    goto :goto_37

    :cond_34
    const/4 p0, 0x0

    :goto_35
    monitor-exit v0

    return p0

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_32

    throw p0
.end method

.method public final isUserOfType(ILjava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "check user type"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    iget-object p0, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_17

    :catchall_14
    move-exception p0

    goto :goto_20

    :cond_16
    const/4 p0, 0x0

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_14

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :goto_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_14

    throw p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserRunning(I)Z
    .registers 3

    const-string/jumbo v0, "isUserRunning"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result p0

    return p0
.end method

.method public isUserSwitcherEnabled(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/core/pm/multiuser/MultiUserSupportsHelper;->IS_TABLET:Z

    const-string/jumbo v2, "user_switcher_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_30

    const-string/jumbo v3, "no_user_switch"

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_30

    if-eqz v0, :cond_30

    return v2

    :cond_30
    return v1
.end method

.method public final isUserSwitcherEnabled(ZI)Z
    .registers 7

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->isUserSwitcherEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    if-nez p1, :cond_36

    const-string/jumbo p1, "no_add_user"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    move v2, p2

    :cond_20
    :goto_20
    if-ge v2, p1, :cond_35

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz p2, :cond_33

    goto :goto_36

    :cond_33
    move p2, v0

    goto :goto_20

    :cond_35
    return v1

    :cond_36
    :goto_36
    return v0
.end method

.method public final isUserTypeEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "check if user type is enabled."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz p0, :cond_18

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->isUserTypeEnabled(Lcom/android/server/pm/UserTypeDetails;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserUnlocked(I)Z
    .registers 3

    const-string/jumbo v0, "isUserUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isUserUnlockingOrUnlocked(I)Z
    .registers 3

    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isUserVisible(I)Z
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_20

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->hasManageUsersOrPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_20

    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller from user "

    const-string v2, " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user ("

    const-string v3, ") is visible"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result p0

    return p0
.end method

.method public final makeInitialized(I)V
    .registers 6

    const-string/jumbo v0, "makeInitialized: unknown user #"

    const-string/jumbo v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v2, :cond_33

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1d

    goto :goto_33

    :cond_1d
    iget v0, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v0, 0x10

    if-nez v3, :cond_2b

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/content/pm/UserInfo;->flags:I

    const/4 v0, 0x1

    goto :goto_2c

    :catchall_29
    move-exception p0

    goto :goto_47

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_29

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_32
    return-void

    :cond_33
    :goto_33
    :try_start_33
    const-string/jumbo p0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_29

    throw p0
.end method

.method public final markGuestForDeletion(I)Z
    .registers 9

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

    if-eqz v0, :cond_21

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_6c

    :try_start_28
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4e

    :try_start_2b
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_62

    :cond_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_60

    :try_start_41
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-nez p1, :cond_50

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_4e
    move-exception p0

    goto :goto_6a

    :cond_50
    :try_start_50
    iget-object p1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_60
    move-exception p0

    goto :goto_68

    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_60

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_4e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_68
    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_60

    :try_start_69
    throw p0

    :goto_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_4e

    :try_start_6b
    throw p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final markMaintenanceModeUserForDeletion(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 5

    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_22

    const/16 v2, 0x4d

    :try_start_e
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_24

    :try_start_12
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception p0

    goto :goto_27

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw p0

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_22

    throw p0

    :cond_29
    return-void
.end method

.method public maybeScheduleAlarmToAutoLockPrivateSpace()V
    .registers 5

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

    if-eq v0, v1, :cond_27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Not scheduling auto-lock on inactivity,preference is set to %d"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_27
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_4a

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->isQuietModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Not scheduling auto-lock alarm for %d, quiet mode already enabled"

    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_44
    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->scheduleAlarmToAutoLockPrivateSpace(IJ)V

    :cond_4a
    return-void
.end method

.method public final onBeforeStartUser(I)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
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

    if-nez v0, :cond_4a

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_4a
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz p1, :cond_6c

    const-string/jumbo v0, "applyUserRestrictions"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_5e
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_69

    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_6c

    :catchall_69
    move-exception p0

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    :goto_6c
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onBeforeUnlockUser(I)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
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

    if-eqz v4, :cond_84

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v4, 0x6000000

    and-int/2addr v0, v4

    if-lez v0, :cond_84

    const-string/jumbo v0, "UserManagerService"

    const-string v4, "Apply policies on CE storage for dualdar user "

    invoke-static {p1, v4, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->handleBeforeUnlockUser(I)Z

    move-result v0

    if-nez v0, :cond_84

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "To set DualDAR Policy on CE storage was failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-nez v1, :cond_70

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Failed to remove invalid enterprise user - Couldn\'t get UserData"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_6e
    move-exception p0

    goto :goto_82

    :cond_70
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v2, v3, Landroid/content/pm/UserInfo;->partial:Z

    iget v2, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v3, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    monitor-exit v0

    return-void

    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_5e .. :try_end_83} :catchall_6e

    throw p0

    :cond_84
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

    if-nez v0, :cond_af

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_af
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, v5, v1}, Landroid/content/pm/PackageManagerInternal;->reconcileAppsData(IIZ)V

    invoke-virtual {v3}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

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
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    :cond_1e
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    return-void

    :cond_28
    :goto_28
    const-string/jumbo p0, "userForeground: unknown user #"

    const-string/jumbo v0, "UserManagerService"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v2

    move v6, v2

    goto :goto_12

    :cond_11
    move v6, v1

    :goto_12
    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(I)V

    if-nez v0, :cond_18

    goto :goto_2b

    :cond_18
    iget v2, v0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_1f

    goto :goto_2b

    :cond_1f
    const-string/jumbo v2, "android.os.usertype.full.RESTRICTED"

    iget-object v0, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    :goto_2b
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

    :try_start_5a
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_5e
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_5a .. :try_end_5e} :catch_5f

    return-object p0

    :catch_5f
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 5

    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_a
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-object v0

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 10

    const-string/jumbo v0, "UserManagerService"

    const-string v1, "Error reading user info, user id: "

    const-string/jumbo v2, "User info not found, returning null, user id: "

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_33
    .catchall {:try_start_d .. :try_end_11} :catchall_26

    if-nez v5, :cond_2b

    :try_start_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_28
    .catchall {:try_start_13 .. :try_end_22} :catchall_26

    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v4

    :catchall_26
    move-exception p0

    goto :goto_4e

    :catch_28
    move-exception v2

    move-object v4, v5

    goto :goto_34

    :cond_2b
    :try_start_2b
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_28
    .catchall {:try_start_2b .. :try_end_2f} :catchall_26

    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_26

    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw p0
.end method

.method public readUserLP(ILjava/io/InputStream;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 56
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

    :goto_8
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_13

    if-eq v3, v7, :cond_13

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    if-eq v3, v4, :cond_20

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Unable to read user "

    invoke-static {v2, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_20
    const/4 v8, -0x1

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, -0x2710

    if-ne v3, v4, :cond_34d

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34d

    const-string/jumbo v3, "id"

    invoke-interface {v1, v5, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_48

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "User id does not match the file name"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_48
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

    if-eqz v14, :cond_6b

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    goto :goto_6c

    :cond_6b
    move-object v14, v5

    :goto_6c
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

    if-nez v6, :cond_dc

    if-eqz v3, :cond_d9

    goto :goto_dc

    :cond_d9
    const/16 v29, 0x0

    goto :goto_de

    :cond_dc
    :goto_dc
    const/16 v29, 0x1

    :goto_de
    sget-boolean v30, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    if-eqz v30, :cond_f4

    const/high16 v30, 0x10000

    and-int v30, v12, v30

    if-eqz v30, :cond_f4

    const-string/jumbo v5, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    const/high16 v5, 0x8000000

    or-int/2addr v12, v5

    :cond_f4
    const/16 v5, 0x4d

    if-ne v2, v5, :cond_108

    const/high16 v5, 0x80000

    and-int/2addr v5, v12

    if-eqz v5, :cond_108

    const-string/jumbo v5, "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    const v5, -0x80001

    and-int/2addr v12, v5

    :cond_108
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

    :goto_120
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move-object/from16 v40, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_134

    const/4 v3, 0x3

    if-ne v2, v3, :cond_13c

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v5, :cond_134

    const/4 v3, 0x3

    goto :goto_13c

    :cond_134
    move/from16 v41, v4

    move-object/from16 v43, v6

    move/from16 v44, v7

    goto/16 :goto_322

    :cond_13c
    :goto_13c
    if-eq v2, v3, :cond_141

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14b

    :cond_141
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    const/4 v7, 0x2

    goto :goto_16e

    :cond_14b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_165

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v31, v2

    :cond_165
    :goto_165
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    :cond_16d
    :goto_16d
    const/4 v7, 0x2

    :cond_16e
    :goto_16e
    const/16 v30, 0x0

    goto/16 :goto_316

    :cond_172
    const-string/jumbo v3, "restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_182

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v35, v2

    goto :goto_165

    :cond_182
    const-string/jumbo v3, "device_policy_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_192

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v36, v2

    goto :goto_165

    :cond_192
    const-string/jumbo v3, "device_policy_local_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23e

    const/16 v2, 0xa

    move/from16 v3, p3

    if-ge v3, v2, :cond_231

    const-string/jumbo v2, "device_policy_local_restrictions"

    new-instance v3, Landroid/util/SparseArray;

    move/from16 v41, v4

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    move/from16 v42, v5

    :goto_1ae
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    move-object/from16 v43, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_228

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v44, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1e1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :goto_1cc
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1de

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v2, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1cc

    :cond_1de
    :goto_1de
    move-object/from16 v37, v2

    goto :goto_16d

    :cond_1e1
    const/4 v7, 0x2

    if-ne v5, v7, :cond_1f7

    const-string/jumbo v7, "restrictions_user"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f6

    const-string/jumbo v4, "user_id"

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_223

    :cond_1f6
    const/4 v7, 0x2

    :cond_1f7
    if-ne v5, v7, :cond_223

    const-string/jumbo v5, "restrictions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_223

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_213

    goto :goto_223

    :cond_213
    invoke-static {v5}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_21d

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_220

    :cond_21d
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    :goto_220
    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    :cond_223
    :goto_223
    move-object/from16 v6, v43

    move/from16 v7, v44

    goto :goto_1ae

    :cond_228
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "restrictions cannot be read as xml is malformed."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_231
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1de

    :cond_23e
    move/from16 v41, v4

    move/from16 v42, v5

    move-object/from16 v43, v6

    move/from16 v44, v7

    const-string/jumbo v3, "device_policy_global_restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_257

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v38, v2

    goto/16 :goto_16d

    :cond_257
    const-string/jumbo v3, "guestRestrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_288

    :cond_260
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_16d

    const/4 v7, 0x2

    if-ne v2, v7, :cond_260

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2

    :try_start_27d
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    monitor-exit v2

    goto/16 :goto_16e

    :catchall_285
    move-exception v0

    monitor-exit v2
    :try_end_287
    .catchall {:try_start_27d .. :try_end_287} :catchall_285

    throw v0

    :cond_288
    const/4 v7, 0x2

    const-string/jumbo v3, "account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a1

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_16e

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v32, v2

    goto/16 :goto_16e

    :cond_2a1
    const-string/jumbo v3, "seedAccountOptions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b4

    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    move-object/from16 v33, v2

    const/16 v29, 0x1

    goto/16 :goto_16e

    :cond_2b4
    const-string/jumbo v3, "userProperties"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2df

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    if-nez v2, :cond_2d3

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "User has properties but no user type!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v30, 0x0

    return-object v30

    :cond_2d3
    const/16 v30, 0x0

    iget-object v2, v2, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    new-instance v3, Landroid/content/pm/UserProperties;

    invoke-direct {v3, v1, v2}, Landroid/content/pm/UserProperties;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V

    move-object/from16 v34, v3

    goto :goto_316

    :cond_2df
    const/16 v30, 0x0

    const-string/jumbo v3, "lastRequestQuietModeEnabledCall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2fc

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_316

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide/from16 v23, v2

    goto :goto_316

    :cond_2fc
    const/4 v3, 0x4

    const-string/jumbo v4, "ignorePrepareStorageErrors"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_316

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_316

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move/from16 v39, v2

    :cond_316
    :goto_316
    move-object/from16 v3, v40

    move/from16 v4, v41

    move/from16 v5, v42

    move-object/from16 v6, v43

    move/from16 v7, v44

    goto/16 :goto_120

    :goto_322
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

    goto :goto_37d

    :cond_34d
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

    :goto_37d
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

    if-eqz v39, :cond_3fa

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v3, 0x21

    if-ge v1, v3, :cond_3f1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    goto :goto_3fa

    :cond_3f1
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "Not setting mIgnorePrepareStorageErrors to true since this is a new device"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3fa
    :goto_3fa
    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v16, :cond_408

    :try_start_401
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, v16

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_408
    move-object/from16 v4, v50

    goto :goto_40d

    :catchall_40b
    move-exception v0

    goto :goto_436

    :goto_40d
    if-eqz v4, :cond_422

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    if-eqz p3, :cond_41f

    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v4, "Seeing both legacy and current local restrictions in xml"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41f
    :goto_41f
    move-object/from16 v2, v51

    goto :goto_42c

    :cond_422
    if-eqz p3, :cond_41f

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    move-object/from16 v5, p3

    invoke-virtual {v4, v2, v5}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_41f

    :goto_42c
    if-eqz v2, :cond_434

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    :cond_434
    monitor-exit v3

    return-object v0

    :goto_436
    monitor-exit v3
    :try_end_437
    .catchall {:try_start_401 .. :try_end_437} :catchall_40b

    throw v0
.end method

.method public final readUserListLP()V
    .registers 16

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_177
    .catchall {:try_start_5 .. :try_end_9} :catchall_1b

    if-nez v2, :cond_21

    :try_start_b
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "userlist.xml not found, fallback to single user"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1e
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_1b
    move-exception p0

    goto/16 :goto_185

    :catch_1e
    move-exception v1

    goto/16 :goto_17b

    :cond_21
    :try_start_21
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_30

    if-eq v4, v5, :cond_30

    goto :goto_25

    :cond_30
    if-eq v4, v6, :cond_42

    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v3, "Unable to read user list"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3e} :catch_1e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_1b

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_42
    const/4 v4, -0x1

    :try_start_43
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "users"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

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

    :cond_73
    const/4 v4, 0x0

    move v7, v4

    :cond_75
    :goto_75
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    if-eq v8, v5, :cond_134

    if-ne v8, v6, :cond_75

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_103

    const-string/jumbo v8, "id"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->readUserLP(II)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v8

    if-eqz v8, :cond_75

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_9c} :catch_1e
    .catchall {:try_start_43 .. :try_end_9c} :catchall_1b

    :try_start_9c
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v11, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v10, :cond_b5

    iget-object v11, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    if-gt v10, v11, :cond_bc

    goto :goto_b5

    :catchall_b3
    move-exception v1

    goto :goto_101

    :cond_b5
    :goto_b5
    iget-object v10, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_bc
    iget-object v8, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v10

    if-nez v10, :cond_c5

    goto :goto_f0

    :cond_c5
    iget-boolean v10, v8, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v10, :cond_ca

    goto :goto_f0

    :cond_ca
    iget-wide v10, v8, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_e6

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_e6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11101c3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_e6

    goto :goto_f0

    :cond_e6
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v10}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    iput-boolean v5, v8, Landroid/content/pm/UserInfo;->partial:Z

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;)V

    :goto_f0
    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v10, 0x96

    if-lt v8, v10, :cond_fe

    const/16 v10, 0xa0

    if-gt v8, v10, :cond_fe

    const/16 v8, 0xa1

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_fe
    monitor-exit v9

    goto/16 :goto_75

    :goto_101
    monitor-exit v9
    :try_end_102
    .catchall {:try_start_9c .. :try_end_102} :catchall_b3

    :try_start_102
    throw v1

    :cond_103
    const-string/jumbo v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    :cond_10c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v5, :cond_131

    const/4 v8, 0x3

    if-eq v7, v8, :cond_131

    if-ne v7, v6, :cond_10c

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "restrictions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_131

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v7
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_127} :catch_1e
    .catchall {:try_start_102 .. :try_end_127} :catchall_1b

    :try_start_127
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v3, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/Bundle;)V

    monitor-exit v7

    goto :goto_131

    :catchall_12e
    move-exception v1

    monitor-exit v7
    :try_end_130
    .catchall {:try_start_127 .. :try_end_130} :catchall_12e

    :try_start_130
    throw v1

    :cond_131
    :goto_131
    move v7, v5

    goto/16 :goto_75

    :cond_134
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(II)V

    if-ne v7, v5, :cond_156

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v3, v1

    :goto_145
    if-ge v4, v3, :cond_153

    aget v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    :cond_153
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_156} :catch_1e
    .catchall {:try_start_130 .. :try_end_156} :catchall_1b

    :cond_156
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_173

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v2, "mUsers is empty, fallback to single user"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    goto :goto_173

    :catchall_171
    move-exception p0

    goto :goto_175

    :cond_173
    :goto_173
    monitor-exit v1

    return-void

    :goto_175
    monitor-exit v1
    :try_end_176
    .catchall {:try_start_15c .. :try_end_176} :catchall_171

    throw p0

    :catch_177
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_17b
    :try_start_17b
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V
    :try_end_181
    .catchall {:try_start_17b .. :try_end_181} :catchall_1b

    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_185
    :try_start_185
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_188
    .catchall {:try_start_185 .. :try_end_188} :catchall_189

    goto :goto_18d

    :catchall_189
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18d
    throw p0
.end method

.method public final reconcileUsers(Ljava/lang/String;)V
    .registers 5

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
    .registers 8

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

    if-ne p1, v1, :cond_ea

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_e7

    if-eqz v3, :cond_ea

    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_ea

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

    if-nez v4, :cond_4e

    return v0

    :cond_4e
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

    if-eqz p0, :cond_8a

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

    goto :goto_e1

    :cond_8a
    const-string/jumbo p0, "com.samsung.android.intent.action.NOTIFY_POSTPROCESSING_MAINTENANCE_MODE"

    const-string/jumbo v0, "com.samsung.android.intent.action.RESPONSE_POSTPROCESSING_MAINTENANCE_MODE"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->notifyOtherPackages(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->waitForOtherPackages()V

    :try_start_96
    sget-object p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->LOG_DIR:Ljava/io/File;

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9b} :catch_9b

    :catch_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_9f
    const-string/jumbo p0, "appops"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ad} :catch_b3
    .catchall {:try_start_9f .. :try_end_ad} :catchall_b1

    :goto_ad
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_be

    :catchall_b1
    move-exception p0

    goto :goto_e3

    :catch_b3
    move-exception p0

    :try_start_b4
    const-string/jumbo v0, "MaintenanceMode"

    const-string/jumbo v1, "Unable to notify AppOpsService of removing user."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_b1

    goto :goto_ad

    :goto_be
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

    :goto_e1
    const/4 p0, 0x1

    return p0

    :goto_e3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_e7
    move-exception p0

    :try_start_e8
    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0

    :cond_ea
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11e

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11e

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

    :cond_11e
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mCurrentBootPhase:I

    const/16 v2, 0x226

    if-ge v1, v2, :cond_12d

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Cannot remove user, removeUser is called too early during boot. ActivityManager is not ready yet."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public final removeUserEvenWhenDisallowed(I)Z
    .registers 3

    const-string/jumbo v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p0

    return p0
.end method

.method public removeUserInfo(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final removeUserState(I)V
    .registers 7

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Removing user state of user "

    invoke-static {p1, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserStorageKeys(I)V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_36

    :catch_1c
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

    :goto_36
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget-object v1, v0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_44
    iget-object v2, v0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    const/4 v3, 0x3

    if-eqz v2, :cond_72

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_59

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(IILjava/lang/String;)V

    goto :goto_59

    :catchall_6f
    move-exception p0

    goto/16 :goto_177

    :cond_72
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(IILjava/lang/String;)V
    :try_end_76
    .catchall {:try_start_44 .. :try_end_76} :catchall_6f

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7c
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_174

    if-eqz v1, :cond_89

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_89
    if-eqz v2, :cond_9b

    iget v0, v2, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v1, 0x6000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onUserRemoved(I)V

    :cond_9b
    if-eqz v2, :cond_d4

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMDAREncryption()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string/jumbo v0, "UserManagerService"

    const-string v1, " UniversalCredentialManager: removeODESettingsForWPC failed with code "

    :try_start_a8
    const-string/jumbo v3, "knox_ucsm_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->removeODESettingsForWPC()I

    move-result v3

    if-eqz v3, :cond_d4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c8} :catch_c9

    goto :goto_d4

    :catch_c9
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " disableUcmWpc "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_d4
    :goto_d4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d7
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    monitor-exit v1
    :try_end_ec
    .catchall {:try_start_d7 .. :try_end_ec} :catchall_171

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v0

    :try_start_ef
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_ef .. :try_end_fa} :catchall_16e

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_fd
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object v0, v0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    new-instance v0, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_128
    monitor-exit v1
    :try_end_129
    .catchall {:try_start_fd .. :try_end_129} :catchall_16b

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12c
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit v0
    :try_end_130
    .catchall {:try_start_12c .. :try_end_130} :catchall_168

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, v0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, v0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    if-eqz v2, :cond_167

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-eqz v0, :cond_167

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_163

    const/16 p1, 0x5f

    :goto_157
    if-gt p1, v1, :cond_163

    :try_start_159
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_157

    :catchall_161
    move-exception p0

    goto :goto_165

    :cond_163
    monitor-exit v0

    goto :goto_167

    :goto_165
    monitor-exit v0
    :try_end_166
    .catchall {:try_start_159 .. :try_end_166} :catchall_161

    throw p0

    :cond_167
    :goto_167
    return-void

    :catchall_168
    move-exception p0

    :try_start_169
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw p0

    :catchall_16b
    move-exception p0

    :try_start_16c
    monitor-exit v1
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    throw p0

    :catchall_16e
    move-exception p0

    :try_start_16f
    monitor-exit v0
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_16e

    throw p0

    :catchall_171
    move-exception p0

    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw p0

    :catchall_174
    move-exception p0

    :try_start_175
    monitor-exit v0
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    throw p0

    :goto_177
    :try_start_177
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_17b

    goto :goto_17f

    :catchall_17b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17f
    throw p0
.end method

.method public final removeUserUnchecked(I)Z
    .registers 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string/jumbo v0, "Removing user "

    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->onUserRemoved(I)V

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_12
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_ec

    :try_start_15
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_2c

    :try_start_18
    const-string/jumbo v7, "removed"

    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_32

    invoke-static {v7}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result v0

    monitor-exit v6
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_2f

    :try_start_27
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2c

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_2c
    move-exception v0

    goto/16 :goto_1a7

    :catchall_2f
    move-exception v0

    goto/16 :goto_1a5

    :cond_32
    :try_start_32
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_88

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isDigitalLegacyMode()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v8

    if-nez v8, :cond_88

    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_82

    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_88

    :cond_82
    monitor-exit v6
    :try_end_83
    .catchall {:try_start_32 .. :try_end_83} :catchall_2f

    :try_start_83
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_2c

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_88
    :try_start_88
    const-string/jumbo v8, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v6
    :try_end_9e
    .catchall {:try_start_88 .. :try_end_9e} :catchall_2f

    :try_start_9e
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v10, v0, Landroid/content/pm/UserInfo;->partial:Z

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserListChange()V

    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->addUserInfoFlags(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v1, v7}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_9e .. :try_end_ae} :catchall_2c

    :try_start_ae
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
    :try_end_cf
    .catchall {:try_start_ae .. :try_end_cf} :catchall_ec

    const/16 v14, 0x9

    :try_start_d1
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
    :try_end_e6
    .catchall {:try_start_d1 .. :try_end_e6} :catchall_1a2

    :try_start_e6
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_eb} :catch_ef
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_ec

    goto :goto_f9

    :catchall_ec
    move-exception v0

    goto/16 :goto_1a9

    :catch_ef
    move-exception v0

    :try_start_f0
    const-string/jumbo v5, "UserManagerService"

    const-string/jumbo v6, "Unable to notify AppOpsService of removing user."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f9
    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_144

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_144

    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(IILjava/lang/String;)V

    const-string/jumbo v0, "com.samsung.knox.securefolder"
    :try_end_115
    .catchall {:try_start_f0 .. :try_end_115} :catchall_ec

    :try_start_115
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_13b

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_12c} :catch_12d
    .catchall {:try_start_115 .. :try_end_12c} :catchall_ec

    goto :goto_13b

    :catch_12d
    move-exception v0

    :try_start_12e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "UserManagerService"

    invoke-static {v0, v5, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_13b
    :goto_13b
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v5, "resetDefaultIconandName"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->UM_BMODE:Z

    if-eqz v0, :cond_181

    iget-object v0, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    if-eqz v0, :cond_181

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_153
    .catchall {:try_start_12e .. :try_end_153} :catchall_ec

    :try_start_153
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v0

    if-ne v0, v10, :cond_17c

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

    :cond_17c
    monitor-exit v5

    goto :goto_181

    :catchall_17e
    move-exception v0

    monitor-exit v5
    :try_end_180
    .catchall {:try_start_153 .. :try_end_180} :catchall_17e

    :try_start_180
    throw v0
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_ec

    :cond_181
    :goto_181
    :try_start_181
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v5, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v5, v1, v7}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-interface {v0, v2, v5}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result v0
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_18e} :catch_195
    .catchall {:try_start_181 .. :try_end_18e} :catchall_ec

    if-nez v0, :cond_191

    move v9, v10

    :cond_191
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catch_195
    move-exception v0

    :try_start_196
    const-string/jumbo v1, "UserManagerService"

    const-string v2, "Failed to stop user during removal."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19e
    .catchall {:try_start_196 .. :try_end_19e} :catchall_ec

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_1a2
    move-exception v0

    :try_start_1a3
    monitor-exit v8
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    :try_start_1a4
    throw v0
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_ec

    :goto_1a5
    :try_start_1a5
    monitor-exit v6
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_2f

    :try_start_1a6
    throw v0

    :goto_1a7
    monitor-exit v5
    :try_end_1a8
    .catchall {:try_start_1a6 .. :try_end_1a8} :catchall_2c

    :try_start_1a8
    throw v0
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_ec

    :goto_1a9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final removeUserWhenPossible(IZ)I
    .registers 7

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

    if-nez p2, :cond_50

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRemovalRestrictionOptional(I)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_50

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

    :cond_50
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to immediately remove user "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserWithProfilesUnchecked(I)Z

    move-result p2

    if-eqz p2, :cond_68

    return v0

    :cond_68
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
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "removed"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    invoke-static {v1}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto/16 :goto_be

    :cond_16
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(Ljava/lang/String;IZZ)Landroid/util/IntArray;

    move-result-object v2

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_13

    if-nez v1, :cond_b9

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentAndTargetUserIds()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_47

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "Current user cannot be removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_47
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_5b

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "Target user of an ongoing user switch cannot be removed."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5b
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_61
    if-ltz v0, :cond_b9

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_6a

    goto :goto_b6

    :cond_6a
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

    if-nez v3, :cond_b6

    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Unable to immediately remove profile "

    const-string/jumbo v5, "associated with user "

    const-string v6, ". User is set as ephemeral and will be removed on user switch or reboot."

    invoke-static {v1, p1, v4, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v1

    goto :goto_b6

    :catchall_b3
    move-exception p0

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_a2 .. :try_end_b5} :catchall_b3

    throw p0

    :cond_b6
    :goto_b6
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    :cond_b9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result p0

    return p0

    :goto_be
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_13

    throw p0
.end method

.method public final requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;I)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "Allowing profile unlock even when device credentials are not set for user "

    const-string v5, "Invalid flags: "

    const-string v6, "Invalid user. Can\'t find user details for userId "

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1f

    if-nez v3, :cond_16

    goto :goto_1f

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getUCMDAREncryption()Z

    move-result v7

    if-eqz v7, :cond_28

    or-int/lit8 v7, p5, 0x2

    goto :goto_2a

    :cond_28
    move/from16 v7, p5

    :goto_2a
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_30

    const/4 v8, 0x1

    goto :goto_31

    :cond_30
    const/4 v8, 0x0

    :goto_31
    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_37

    const/4 v11, 0x1

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    :goto_38
    if-eqz v8, :cond_4a

    if-nez v11, :cond_3d

    goto :goto_4a

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid flags: "

    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    :goto_4a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    if-eqz v3, :cond_52

    const/4 v13, 0x1

    goto :goto_53

    :cond_52
    const/4 v13, 0x0

    :goto_53
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

    if-ne v9, v12, :cond_1ff

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v9

    if-eqz v9, :cond_6f

    goto :goto_97

    :cond_6f
    if-nez v13, :cond_1f6

    if-nez v8, :cond_1ed

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v9

    if-eqz v9, :cond_1e4

    const-string/jumbo v9, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v12, v9}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    goto :goto_97

    :cond_87
    const-class v9, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutServiceInternal;

    if-eqz v9, :cond_1dc

    invoke-virtual {v9, v1, v12}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1dc

    :goto_97
    if-eqz v15, :cond_c1

    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v9, :cond_a7

    const-class v9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    iput-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_a7
    iget-object v9, v0, Lcom/android/server/pm/UserManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v9}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b8

    goto :goto_c1

    :cond_b8
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    :goto_c1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    if-eqz v8, :cond_107

    :try_start_c7
    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_ef

    :try_start_ca
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    monitor-exit v11
    :try_end_cf
    .catchall {:try_start_ca .. :try_end_cf} :catchall_104

    if-eqz v12, :cond_f2

    :try_start_d1
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_d8

    goto :goto_107

    :cond_d8
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

    :catchall_ef
    move-exception v0

    goto/16 :goto_1d8

    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_104
    .catchall {:try_start_d1 .. :try_end_104} :catchall_ef

    :catchall_104
    move-exception v0

    :try_start_105
    monitor-exit v11
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    :try_start_106
    throw v0

    :cond_107
    :goto_107
    if-eqz p2, :cond_111

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_106 .. :try_end_10d} :catchall_ef

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_111
    :try_start_111
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUserPropertiesInternal(I)Landroid/content/pm/UserProperties;

    move-result-object v5

    if-eqz v5, :cond_18a

    invoke-virtual {v5}, Landroid/content/pm/UserProperties;->isAuthAlwaysRequiredToDisableQuietMode()Z

    move-result v5
    :try_end_11b
    .catchall {:try_start_111 .. :try_end_11b} :catchall_ef

    if-eqz v5, :cond_18a

    if-eqz v15, :cond_123

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p5

    :cond_123
    :try_start_123
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfileParentId(I)I

    move-result v6

    if-eqz v5, :cond_140

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v7

    if-eqz v7, :cond_140

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_13c
    .catchall {:try_start_123 .. :try_end_13c} :catchall_ef

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p5

    :cond_140
    if-eqz v5, :cond_178

    :try_start_142
    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-nez v5, :cond_178

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_178

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "user_setup_complete"

    move/from16 v11, p5

    invoke-static {v5, v7, v11, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_178

    invoke-static {v7}, Lcom/android/internal/app/SetScreenLockDialogActivity;->createBaseIntent(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "origin_user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_173
    .catchall {:try_start_142 .. :try_end_173} :catchall_ef

    :goto_173
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v11, 0x0

    return v11

    :cond_178
    :try_start_178
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18a
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v4

    if-eqz v4, :cond_1af

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

    if-eqz v5, :cond_1aa

    if-eqz v15, :cond_1af

    :cond_1aa
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->tryUnlockWithCachedUnifiedChallenge(I)Z

    :cond_1af
    if-nez v8, :cond_1c2

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_1c2

    if-eqz v4, :cond_1c4

    invoke-static {v2}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto :goto_1c4

    :cond_1c2
    const/4 v11, 0x0

    goto :goto_1cf

    :cond_1c4
    :goto_1c4
    if-eqz v15, :cond_1c7

    goto :goto_173

    :cond_1c7
    const/4 v11, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_1cb
    .catchall {:try_start_178 .. :try_end_1cb} :catchall_ef

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :goto_1cf
    :try_start_1cf
    invoke-virtual {v0, v2, v11, v3, v1}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    :try_end_1d2
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_ef

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v16, 0x1

    return v16

    :goto_1d8
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1dc
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e4
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "MANAGE_USERS permission is required to modify quiet mode for a different profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ed
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "MANAGE_USERS permission is required to disable quiet mode without credentials."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f6
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ff
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Specified package "

    const-string v3, " does not match the calling uid "

    invoke-static {v12, v2, v1, v3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revokeUserAdmin(I)V
    .registers 12

    const-string/jumbo v0, "revoke admin privileges"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "no_grant_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e

    :try_start_26
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_44

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v6

    const-string v9, ""

    const/4 v8, -0x1

    const/16 v5, 0x8

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_41

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3e

    return-void

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto :goto_77

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_75

    :cond_44
    :try_start_44
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x6

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_41

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_3e

    return-void

    :cond_5b
    :try_start_5b
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_41

    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_3e

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void

    :goto_75
    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_41

    :try_start_76
    throw p0

    :goto_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_76 .. :try_end_78} :catchall_3e

    throw p0

    :cond_79
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin status change is restricted. The DISALLOW_GRANT_ADMIN restriction is applied either on the current or the target user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scanNextAvailableIdLocked(ZZ)I
    .registers 6

    if-eqz p1, :cond_5

    const/16 v0, 0x96

    goto :goto_7

    :cond_5
    const/16 v0, 0xa

    :goto_7
    if-eqz p2, :cond_b

    const/16 v0, 0x5f

    :cond_b
    :goto_b
    const/16 v1, 0x53e1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_40

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_15

    goto :goto_3d

    :cond_15
    if-eqz p1, :cond_1c

    const/16 v1, 0xa0

    if-le v0, v1, :cond_1c

    return v2

    :cond_1c
    if-eqz p2, :cond_25

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_25
    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_3d

    :cond_2c
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_3d

    return v0

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_40
    return v2
.end method

.method public scheduleAlarmToAutoLockPrivateSpace(IJ)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_16

    const-string/jumbo p0, "UserManagerService"

    const-string p1, "AlarmManager not available, cannot schedule auto-lock alarm"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    if-eqz v0, :cond_21

    iget v0, v0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;->mUserId:I

    if-eq v0, p1, :cond_28

    :cond_21
    new-instance v0, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPrivateSpaceAutoLockTimer:Lcom/android/server/pm/UserManagerService$PrivateSpaceAutoLockTimer;

    :cond_28
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
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1e
    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    return-void
.end method

.method public final sendProfileRemovedBroadcast(IILjava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "android.os.usertype.profile.MANAGED"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const/high16 v1, 0x50000000

    const-string/jumbo v2, "android.intent.extra.USER"

    if-eqz p3, :cond_44

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

    if-nez v4, :cond_36

    const-class v4, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_36
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v3, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p3, v3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_44
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
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40000000  # 2.0f

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
    .registers 11

    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_159

    const/4 v1, 0x1

    if-eqz p2, :cond_13

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_39

    :try_start_18
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_39

    :cond_1f
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {p2, v3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    :goto_34
    move p2, v1

    goto :goto_51

    :catchall_36
    move-exception p0

    goto/16 :goto_157

    :cond_39
    :goto_39
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_34

    :cond_50
    move p2, v0

    :goto_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_18 .. :try_end_52} :catchall_36

    if-nez p2, :cond_56

    goto/16 :goto_156

    :cond_56
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 p2, 0x20

    :try_start_71
    const-string/jumbo v3, "com.samsung.android.knox.kpu"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    :goto_7a
    move v3, v1

    goto :goto_a6

    :cond_7c
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v3, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_89} :catch_8c

    if-nez v3, :cond_a5

    goto :goto_7a

    :catch_8c
    move-exception v3

    :try_start_8d
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

    :cond_a5
    move v3, v0

    :goto_a6
    if-eqz v3, :cond_104

    const-string/jumbo v3, "UserManagerService"

    const-string v4, "@setApplicationRestrictions called for KSP"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ro.product_ship"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b7} :catch_100

    if-eqz v1, :cond_df

    :try_start_b9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isKPUPlatformSigned(Ljava/lang/String;I)Z

    move-result v0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c3} :catch_c4

    goto :goto_dd

    :catch_c4
    move-exception v1

    :try_start_c5
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

    :goto_dd
    if-eqz v0, :cond_104

    :cond_df
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
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_ff} :catch_100

    goto :goto_104

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_104
    :goto_104
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

    if-eq v2, p3, :cond_129

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_129
    :try_start_129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_156

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.NOTIFY_APPSEPARATION_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eq v2, p3, :cond_156

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_151} :catch_152

    goto :goto_156

    :catch_152
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_156
    :goto_156
    return-void

    :goto_157
    :try_start_157
    monitor-exit v2
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_36

    throw p0

    :cond_159
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package name: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setBootUser(I)V
    .registers 6

    const-string/jumbo v0, "Set boot user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    const-string/jumbo v1, "UserManagerService"

    const-string/jumbo v2, "setBootUser %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mBootUser:I

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_23

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mBootUserLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final setContainerInfo()V
    .registers 7

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_53

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_50

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_70

    :cond_28
    :goto_28
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

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_7 .. :try_end_64} :catchall_26

    :try_start_64
    const-string/jumbo p0, "persist.sys.knox.userinfo"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6a} :catch_6b

    return-void

    :catch_6b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :goto_70
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_26

    throw p0
.end method

.method public final setDefaultCrossProfileIntentFilters(ILcom/android/server/pm/UserTypeDetails;Landroid/os/Bundle;I)V
    .registers 17

    if-eqz p2, :cond_87

    iget v0, p2, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_87

    iget-object v0, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_16

    :cond_14
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_87

    :cond_1e
    const-string/jumbo v0, "no_sharing_into_profile"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v2, :cond_32

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_34

    :cond_32
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_38
    if-ge v1, v2, :cond_87

    iget-object v3, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v3, :cond_46

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_48

    :cond_46
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_48
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    if-eqz v0, :cond_55

    iget-boolean v4, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    if-eqz v4, :cond_55

    goto :goto_84

    :cond_55
    iget v4, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    iget-object v7, v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    if-nez v4, :cond_70

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

    goto :goto_84

    :cond_70
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

    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_87
    :goto_87
    return-void
.end method

.method public final setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_e
    :try_start_e
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_27

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_25
    move-exception p0

    goto :goto_44

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_25

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_41

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit p1

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_3e

    throw p0

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0

    :goto_44
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_25

    throw p0
.end method

.method public setOrUpdateAutoLockPreferenceForPrivateProfile(I)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getPrivateProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    const-string/jumbo v2, "UserManagerService"

    if-ne v0, v1, :cond_11

    const-string p0, "Auto-lock preference updated but private space user not found"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v0, 0x1

    if-ne p1, v0, :cond_44

    iget-boolean v1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-nez v1, :cond_5b

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

    goto :goto_5b

    :cond_44
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "Removing device inactivity broadcast receivers"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->cancelPendingAutoLockAlarms()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceInactivityBroadcastReceiver:Lcom/android/server/pm/UserManagerService$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceInactivityBroadcastReceiverRegistered:Z

    :cond_5b
    :goto_5b
    if-nez p1, :cond_87

    new-instance p1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    :try_start_64
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
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_80

    goto :goto_a3

    :catch_80
    move-exception p0

    const-string p1, "Error adding keyguard locked listener "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :cond_87
    :try_start_87
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const-string/jumbo v0, "Removing keyguard locked state listener"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mKeyguardLockedStateListener:Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p0}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9c} :catch_9d

    return-void

    :catch_9d
    move-exception p0

    const-string p1, "Error adding keyguard locked state listener "

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a3
    return-void
.end method

.method public final setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 15

    const-string/jumbo v0, "User "

    const-string/jumbo v1, "Quiet mode requested for user Id : "

    const-string/jumbo v2, "Quiet mode is already "

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v4, :cond_133

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v6

    if-eqz v6, :cond_133

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v0

    if-ne v0, p2, :cond_39

    const-string/jumbo p0, "UserManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_36
    move-exception p0

    goto/16 :goto_14a

    :cond_39
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-eqz p2, :cond_5d

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

    :cond_5d
    invoke-static {}, Landroid/os/UserManager;->invalidateQuietModeEnabledCache()V

    iget v0, v4, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v0, v0, 0x80

    iput v0, v4, Landroid/content/pm/UserInfo;->flags:I

    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_c .. :try_end_6d} :catchall_36

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_70
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_130

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_af

    :try_start_79
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p3

    if-eqz p3, :cond_9a

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v3, "hide_secure_folder_flag"

    invoke-static {p3, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v0, :cond_9a

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Landroid/app/IActivityManager;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    goto :goto_a1

    :cond_9a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Landroid/app/IActivityManager;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    :goto_a1
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p3, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_c1

    :catch_ad
    move-exception p3

    goto :goto_be

    :cond_af
    if-eqz p3, :cond_b6

    new-instance v2, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v2, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    :cond_b6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    invoke-interface {p3, p1, v2}, Landroid/app/IActivityManager;->startProfileWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_bd} :catch_ad

    goto :goto_c1

    :goto_be
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_c1
    const-string/jumbo p3, "UserManagerService"

    const-string/jumbo v2, "requestQuietModeEnabled called by package %s, with enableQuietMode %b."

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_d5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    monitor-exit p3
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_12d

    if-nez p1, :cond_dd

    goto :goto_118

    :cond_dd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    const-wide/16 v8, 0x0

    cmp-long p3, v6, v8

    if-eqz p3, :cond_ec

    :goto_e9
    sub-long v6, v2, v6

    goto :goto_f1

    :cond_ec
    iget-object p3, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-wide v6, p3, Landroid/content/pm/UserInfo;->creationTime:J

    goto :goto_e9

    :goto_f1
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

    :goto_118
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2, v1}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_12c

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v4, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;ZZ)V

    :cond_12c
    return-void

    :catchall_12d
    move-exception p0

    :try_start_12e
    monitor-exit p3
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    throw p0

    :catchall_130
    move-exception p0

    :try_start_131
    monitor-exit v1
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_130

    throw p0

    :cond_133
    :try_start_133
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

    :goto_14a
    monitor-exit v3
    :try_end_14b
    .catchall {:try_start_133 .. :try_end_14b} :catchall_36

    throw p0
.end method

.method public setQuietModeEnabledAsync(IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 12

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
    .registers 7

    const-string/jumbo v0, "set user seed account data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/UserManagerService;->setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V

    return-void
.end method

.method public final setSeedAccountDataNoChecks(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 10

    const-string/jumbo v0, "No such user for settings seed data u="

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_24

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-nez v3, :cond_28

    const-string/jumbo p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_26

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p0

    goto :goto_4e

    :catchall_26
    move-exception p0

    goto :goto_4c

    :cond_28
    const/16 p1, 0x1f4

    :try_start_2a
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz p4, :cond_42

    const/16 p1, 0x3e8

    invoke-virtual {p4, p1}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result p1

    if-eqz p1, :cond_42

    iput-object p4, v3, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    :cond_42
    iput-boolean p5, v3, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_26

    if-eqz p5, :cond_4a

    :try_start_47
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_24

    return-void

    :goto_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_26

    :try_start_4d
    throw p0

    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_24

    throw p0
.end method

.method public final setUserAccount(ILjava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "User not found for setting user account: u"

    const-string/jumbo v1, "set user account"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2e

    :try_start_f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_32

    const-string/jumbo p0, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_30

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_48

    :catchall_30
    move-exception p0

    goto :goto_46

    :cond_32
    :try_start_32
    iget-object p1, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_30

    if-eqz v3, :cond_44

    :try_start_41
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_2e

    return-void

    :goto_46
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_30

    :try_start_47
    throw p0

    :goto_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_2e

    throw p0
.end method

.method public final setUserAdmin(I)V
    .registers 12

    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const-string/jumbo v1, "no_grant_admin"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_22
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3c

    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_42

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v6

    const-string v9, ""

    const/4 v8, -0x1

    const/4 v5, 0x7

    move v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logNullUserJourneyError(IIIILjava/lang/String;)V

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_3f

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    move-object p0, v0

    goto :goto_75

    :catchall_3f
    move-exception v0

    move-object p0, v0

    goto :goto_73

    :cond_42
    :try_start_42
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x5

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_3f

    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_3c

    return-void

    :cond_59
    :try_start_59
    iget-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, p1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v4, v4, 0x2

    iput v4, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_3f

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_3c

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mUserJourneyLogger:Lcom/android/server/pm/UserJourneyLogger;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    return-void

    :goto_73
    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_3f

    :try_start_74
    throw p0

    :goto_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_3c

    throw p0

    :cond_77
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin status change is restricted. The DISALLOW_GRANT_ADMIN restriction is applied either on the current or the target user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUserEnabled(I)V
    .registers 6

    const-string/jumbo v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_64

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_31

    iget v2, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v2, 0x40

    if-lez v3, :cond_24

    xor-int/2addr v2, v3

    iput v2, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v3}, Landroid/os/UserManager;->invalidateOnUserInfoFlagChange(I)V

    :cond_24
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v2, 0x1

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto :goto_66

    :cond_31
    const/4 v2, 0x0

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_2f

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_64

    if-eqz v2, :cond_63

    if-eqz p1, :cond_63

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_63

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

    :cond_63
    return-void

    :catchall_64
    move-exception p0

    goto :goto_68

    :goto_66
    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_2f

    :try_start_67
    throw p0

    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_64

    throw p0
.end method

.method public final setUserEphemeral(IZ)Z
    .registers 10

    const-string/jumbo v0, "update ephemeral user flag"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setUserEphemeralUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserManager;->isRemoveResultSuccessful(I)Z

    move-result p0

    return p0

    :cond_11
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_14
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_39

    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v2, 0x0

    if-nez v1, :cond_3d

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
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_3b

    :try_start_37
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_39

    return v2

    :catchall_39
    move-exception p0

    goto :goto_75

    :catchall_3b
    move-exception p0

    goto :goto_73

    :cond_3d
    :try_start_3d
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_49

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_3b

    :try_start_47
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_39

    return v4

    :cond_49
    :try_start_49
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v6, v5, 0x2000

    if-eqz v6, :cond_69

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
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_3b

    :try_start_67
    monitor-exit p2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_39

    return v2

    :cond_69
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_3b

    and-int/lit16 p1, v5, -0x101

    :try_start_6c
    iput p1, v3, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit p2
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_39

    return v4

    :goto_73
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_3b

    :try_start_74
    throw p0

    :goto_75
    monitor-exit p2
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_39

    throw p0
.end method

.method public final setUserEphemeralUnchecked(I)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    :try_start_6
    const-string/jumbo v2, "set as ephemeral"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->getUserRemovabilityLocked(ILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_15

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_13

    return v2

    :catchall_13
    move-exception p0

    goto :goto_45

    :catchall_15
    move-exception p0

    goto :goto_43

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_15

    :try_start_20
    iget-object v1, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_13

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

    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_15

    :try_start_44
    throw p0

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_13

    throw p0
.end method

.method public final setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5

    :try_start_0
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const-string/jumbo v0, "no_set_user_icon"

    const-string v1, "Cannot set user icon"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService;->enforceUserRestriction(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_13
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->toServiceSpecificException()Landroid/os/ServiceSpecificException;

    move-result-object p0

    throw p0
.end method

.method public final setUserName(ILjava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_a5

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto/16 :goto_a5

    :cond_17
    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v2, "setUserName: ignoring for user #%d as it didn\'t change (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_2d

    const/4 p2, 0x0

    goto :goto_43

    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "_chars"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_43
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    goto :goto_b8

    :cond_52
    if-nez p2, :cond_66

    const-string/jumbo v2, "UserManagerService"

    const-string/jumbo v3, "setUserName: resetting name of user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8d

    :cond_66
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

    :goto_8d
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_9 .. :try_end_95} :catchall_50

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_99
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_a0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_a5
    :goto_a5
    :try_start_a5
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "setUserName: unknown user #%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_50

    throw p0
.end method

.method public final setUserRestriction(Ljava/lang/String;ZI)V
    .registers 12

    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_79

    :cond_d
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->userExists(I)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo p0, "UserManagerService"

    const-string p2, "Cannot set user restriction %s. User with id %d does not exist"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_27
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

    if-nez v0, :cond_5e

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_52

    if-eqz v0, :cond_5e

    :try_start_4e
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->updateUserRestrictionsByKC(Ljava/lang/String;Z)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_55
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_5e

    :catchall_52
    move-exception v0

    move-object p0, v0

    goto :goto_7a

    :catch_55
    move-exception v0

    :try_start_56
    const-string/jumbo v2, "UserManagerService"

    const-string v3, "Failed talking with IRestrictionPolicy: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5e
    :goto_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_52

    if-nez p3, :cond_79

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

    :cond_79
    :goto_79
    return-void

    :goto_7a
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_52

    throw p0
.end method

.method public setUserRestrictionInner(ILjava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->isUsbDebuggingAllowed()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "setUserRestrictionInner : DISALLOW_DEBUGGING_FEATURES && isUsbDebuggingAllowed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "Setting invalid restriction "

    invoke-static {p1, p2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_31
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_65

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5e

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object p1, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    new-instance p1, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_65

    :cond_5e
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_65
    :goto_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_31 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public final showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    move-result v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_23

    const/4 v0, -0x1

    if-eq v1, v0, :cond_26

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "showConfirmCredentialToDisableQuietMode() called too early, managed user "

    const-string p3, " is still alive."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_39

    return-void

    :cond_39
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_49

    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_49
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

    if-eqz p2, :cond_82

    goto :goto_a4

    :cond_82
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p2

    if-eqz p2, :cond_a4

    const-string/jumbo p2, "custom_logo_res_id"

    const p3, 0x1080c1f

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "custom_logo_description"

    iget-object p3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040cab

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a4
    :goto_a4
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final someUserHasAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCreateUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_22

    :cond_d
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

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public final someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final someUserHasSeedAccountNoChecks(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_49

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_46

    :cond_1e
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_46

    :cond_2b
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_46

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_46

    :cond_36
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_46

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_46

    :cond_41
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_44
    move-exception p0

    goto :goto_4b

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_49
    monitor-exit v0

    return v2

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_44

    throw p0
.end method

.method public tryAutoLockingPrivateSpaceOnKeyguardChanged(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    move-result v2

    const-string/jumbo v3, "private_space_auto_lock"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz p1, :cond_1e

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->autoLockPrivateSpace()V

    :cond_1e
    return-void
.end method

.method public final updateUserIds()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v3, v1, :cond_2b

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v7, :cond_28

    add-int/lit8 v5, v5, 0x1

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v6, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_61

    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2b
    new-array v3, v4, [I

    new-array v4, v5, [I

    move v5, v2

    move v6, v5

    :goto_31
    if-ge v2, v1, :cond_58

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v8, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v8, :cond_55

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    aput v8, v4, v5

    iget-boolean v5, v7, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v5, :cond_54

    add-int/lit8 v5, v6, 0x1

    aput v8, v3, v6

    move v6, v5

    :cond_54
    move v5, v9

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_58
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIdsIncludingPreCreated:[I

    invoke-static {v3}, Landroid/content/pm/UserPackage;->setValidUserIds([I)V

    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_26

    throw p0
.end method

.method public final updateUserInfo(ILandroid/os/Bundle;)Z
    .registers 13

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

    if-eqz v1, :cond_79

    if-eqz p2, :cond_79

    const-string/jumbo v1, "usertype"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

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

    if-nez v1, :cond_4f

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "UserInfo is null for user :"

    invoke-static {p1, p2, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4f
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

    :cond_79
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_176

    if-eqz p2, :cond_16c

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_84
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v5, 0x1

    if-eqz v4, :cond_12c

    iget-object v6, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v6, :cond_122

    const-string/jumbo v7, "flags"

    invoke-virtual {p2, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "update-flags"

    invoke-virtual {p2, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v7, :cond_b6

    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v7, v9

    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v9, "updateUserInfo flags is updated"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    goto :goto_b7

    :catchall_b3
    move-exception p0

    goto/16 :goto_16a

    :cond_b6
    move v7, v3

    :goto_b7
    if-lez v8, :cond_c5

    iput v8, v6, Landroid/content/pm/UserInfo;->flags:I

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "updateUserInfo flags is updated"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_c5
    const-string/jumbo v8, "attributes"

    invoke-virtual {p2, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_e0

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getAttributes()I

    move-result v7

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/content/pm/UserInfo;->setAttributes(I)V

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "updateUserInfo attributes is updated"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_e0
    const-string/jumbo v8, "name"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_fb

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_fb

    iput-object p2, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v6, "updateUserInfo attributes is updated"

    invoke-static {p2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_fb
    const-string/jumbo p2, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_136

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v0, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v0, "updateUserInfoFlags updated user cache"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :cond_122
    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v0, "updateUserInfoFlags user info is null"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    :cond_12c
    const-string/jumbo p2, "UserManagerService"

    const-string/jumbo v0, "updateUserInfoFlags user data is null"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_135
    move v7, v3

    :cond_136
    :goto_136
    monitor-exit v1
    :try_end_137
    .catchall {:try_start_84 .. :try_end_137} :catchall_b3

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_150

    const-string/jumbo p1, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_150

    const-string/jumbo p1, "UserManagerService"

    const-string/jumbo p2, "secure folder userInfo is updated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :cond_150
    if-eqz v7, :cond_17f

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_155
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p2, "updateUserInfoFlags updated user xml"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    move v3, v5

    goto :goto_17f

    :catchall_167
    move-exception p0

    monitor-exit p1
    :try_end_169
    .catchall {:try_start_155 .. :try_end_169} :catchall_167

    throw p0

    :goto_16a
    :try_start_16a
    monitor-exit v1
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_b3

    throw p0

    :cond_16c
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags bundle data is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    :cond_176
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags userid is not knox workspace.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17f
    :goto_17f
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo p1, "updateUserInfoFlags status - "

    invoke-static {p1, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public final updateUserRestrictionsInternalLR(ILandroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_10
    if-eqz p2, :cond_3e

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p2, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    if-eq v1, p2, :cond_2b

    move v2, v3

    :cond_2b
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5a
    invoke-static {p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_75

    :cond_61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_75
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public upgradeIfNecessaryLP(II)V
    .registers 15

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

    if-ge p1, v4, :cond_55

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    const-string/jumbo v5, "Primary"

    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

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

    :cond_54
    move p1, v4

    :cond_55
    const/4 v5, 0x2

    if-ge p1, v5, :cond_72

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v7, v6, 0x10

    if-nez v7, :cond_71

    or-int/lit8 v6, v6, 0x10

    iput v6, p1, Landroid/content/pm/UserInfo;->flags:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_71
    move p1, v5

    :cond_72
    const/4 v5, 0x4

    if-ge p1, v5, :cond_76

    move p1, v5

    :cond_76
    const/4 v5, 0x5

    if-ge p1, v5, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    move p1, v5

    :cond_7d
    const/4 v5, 0x6

    if-ge p1, v5, :cond_b9

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v3

    :goto_84
    :try_start_84
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_b4

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_b2

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v9, -0x2710

    if-ne v8, v9, :cond_b2

    iput v3, v7, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    :catchall_b0
    move-exception p0

    goto :goto_b7

    :cond_b2
    :goto_b2
    add-int/2addr p1, v4

    goto :goto_84

    :cond_b4
    monitor-exit v6

    move p1, v5

    goto :goto_b9

    :goto_b7
    monitor-exit v6
    :try_end_b8
    .catchall {:try_start_84 .. :try_end_b8} :catchall_b0

    throw p0

    :cond_b9
    :goto_b9
    const/4 v5, 0x7

    if-ge p1, v5, :cond_13b

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_bf
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    const-string/jumbo v7, "ensure_verify_apps"

    move v8, v3

    move v9, v8

    :goto_c6
    iget-object v10, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_e6

    iget-object v10, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    sget-object v11, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz v10, :cond_e4

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e4

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v9, v4

    :cond_e4
    add-int/2addr v8, v4

    goto :goto_c6

    :cond_e6
    if-eqz v9, :cond_eb

    invoke-static {}, Landroid/os/UserManager;->invalidateUserRestriction()V

    :cond_eb
    if-eqz v9, :cond_10b

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget-object p1, p1, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    sget-object v7, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    if-eqz p1, :cond_fd

    goto :goto_102

    :cond_fd
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_102
    const-string/jumbo v7, "ensure_verify_apps"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10b

    :catchall_109
    move-exception p0

    goto :goto_139

    :cond_10b
    :goto_10b
    monitor-exit v6
    :try_end_10c
    .catchall {:try_start_bf .. :try_end_10c} :catchall_109

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getGuestUsers()Ljava/util/List;

    move-result-object p1

    move v6, v3

    :goto_111
    move-object v7, p1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_137

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    if-eqz v7, :cond_135

    const-string/jumbo v8, "no_config_wifi"

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_135

    const-string/jumbo v8, "no_config_wifi"

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8, v4, v7}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_135
    add-int/2addr v6, v4

    goto :goto_111

    :cond_137
    move p1, v5

    goto :goto_13b

    :goto_139
    :try_start_139
    monitor-exit v6
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_109

    throw p0

    :cond_13b
    :goto_13b
    const/16 v5, 0x8

    if-ge p1, v5, :cond_19b

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_142
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

    if-nez v7, :cond_163

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v7, Landroid/content/pm/UserInfo;->flags:I

    goto :goto_163

    :catchall_161
    move-exception p0

    goto :goto_199

    :cond_163
    :goto_163
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move p1, v4

    :goto_16f
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_196

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v7, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v9, v8, 0x20

    if-nez v9, :cond_194

    or-int/lit16 v8, v8, 0x400

    iput v8, v7, Landroid/content/pm/UserInfo;->flags:I

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_194
    add-int/2addr p1, v4

    goto :goto_16f

    :cond_196
    monitor-exit v6

    move p1, v5

    goto :goto_19b

    :goto_199
    monitor-exit v6
    :try_end_19a
    .catchall {:try_start_142 .. :try_end_19a} :catchall_161

    throw p0

    :cond_19b
    :goto_19b
    const/16 v5, 0x9

    if-ge p1, v5, :cond_24c

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v3

    :goto_1a3
    :try_start_1a3
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_247

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v10, v9, 0x800

    if-eqz v10, :cond_1ce

    and-int/lit16 v10, v9, 0x400

    if-eqz v10, :cond_1c8

    const-string/jumbo v10, "android.os.usertype.full.SYSTEM"

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    goto :goto_1d4

    :catchall_1c5
    move-exception p0

    goto/16 :goto_24a

    :cond_1c8
    const-string/jumbo v10, "android.os.usertype.system.HEADLESS"

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_1cd
    .catchall {:try_start_1a3 .. :try_end_1cd} :catchall_1c5

    goto :goto_1d4

    :cond_1ce
    :try_start_1ce
    invoke-static {v9}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;
    :try_end_1d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ce .. :try_end_1d4} :catch_226
    .catchall {:try_start_1ce .. :try_end_1d4} :catchall_1c5

    :goto_1d4
    :try_start_1d4
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v10, v10, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v8, :cond_1fa

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

    goto :goto_1a3

    :cond_1fa
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

    :catch_226
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

    :cond_247
    monitor-exit v6

    move p1, v5

    goto :goto_24c

    :goto_24a
    monitor-exit v6
    :try_end_24b
    .catchall {:try_start_1d4 .. :try_end_24b} :catchall_1c5

    throw p0

    :cond_24c
    :goto_24c
    const/16 v5, 0xa

    if-ge p1, v5, :cond_2af

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    move p1, v3

    :goto_254
    :try_start_254
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge p1, v7, :cond_2aa

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

    if-eqz v8, :cond_28a

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

    goto :goto_254

    :catchall_288
    move-exception p0

    goto :goto_2ad

    :cond_28a
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

    :cond_2aa
    monitor-exit v6

    move p1, v5

    goto :goto_2af

    :goto_2ad
    monitor-exit v6
    :try_end_2ae
    .catchall {:try_start_254 .. :try_end_2ae} :catchall_288

    throw p0

    :cond_2af
    :goto_2af
    const/16 v4, 0xb

    if-ge p1, v4, :cond_2fe

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result p1

    if-eqz p1, :cond_2dc

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x11101d7

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2f9

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getEarliestCreatedFullUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_2f9

    iget v3, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p1, Landroid/content/pm/UserInfo;->flags:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2f9

    :cond_2dc
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2df
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

    :cond_2f9
    :goto_2f9
    move p1, v4

    goto :goto_2fe

    :catchall_2fb
    move-exception p0

    monitor-exit v5
    :try_end_2fd
    .catchall {:try_start_2df .. :try_end_2fd} :catchall_2fb

    throw p0

    :cond_2fe
    :goto_2fe
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion()I

    move-result v3

    if-le v3, p2, :cond_336

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_307
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1170009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_312
    .catchall {:try_start_307 .. :try_end_312} :catchall_326

    :try_start_312
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/server/pm/UserTypeFactory;->parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v7
    :try_end_31a
    .catchall {:try_start_312 .. :try_end_31a} :catchall_328

    if-eqz v6, :cond_31f

    :try_start_31c
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_31f
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v7, v6, p2, v0}, Lcom/android/server/pm/UserManagerService;->upgradeUserTypesLU(Ljava/util/List;Landroid/util/ArrayMap;ILjava/util/Set;)V

    monitor-exit v5
    :try_end_325
    .catchall {:try_start_31c .. :try_end_325} :catchall_326

    goto :goto_336

    :catchall_326
    move-exception p0

    goto :goto_334

    :catchall_328
    move-exception p0

    if-eqz v6, :cond_333

    :try_start_32b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_32e
    .catchall {:try_start_32b .. :try_end_32e} :catchall_32f

    goto :goto_333

    :catchall_32f
    move-exception p1

    :try_start_330
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_333
    :goto_333
    throw p0

    :goto_334
    monitor-exit v5
    :try_end_335
    .catchall {:try_start_330 .. :try_end_335} :catchall_326

    throw p0

    :cond_336
    :goto_336
    if-ge p1, v4, :cond_34b

    const-string/jumbo p1, "UserManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "User version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const-string v0, " didn\'t upgrade as expected to 11"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_34b
    if-le p1, v4, :cond_369

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

    :cond_369
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mUserTypeVersion:I

    if-lt v1, p1, :cond_373

    if-ge v2, v3, :cond_372

    goto :goto_373

    :cond_372
    return-void

    :cond_373
    :goto_373
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_377
    :goto_377
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_391

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    if-eqz p2, :cond_377

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_377

    :cond_391
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void
.end method

.method public upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V
    .registers 6

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

    if-eqz v0, :cond_ba

    iget-object v0, p2, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreProfilesToUser(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_5f

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

    :cond_5f
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails;->getDefaultUserInfoFlags()I

    move-result v0

    goto :goto_72

    :cond_70
    const/16 v0, 0x1000

    :goto_72
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

    :try_start_83
    iget-object v1, p2, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_ac

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

    goto :goto_ac

    :catchall_aa
    move-exception p0

    goto :goto_b8

    :cond_ac
    :goto_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_83 .. :try_end_ad} :catchall_aa

    iget p2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v0, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    return-void

    :goto_b8
    :try_start_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_aa

    throw p0

    :cond_ba
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
    .registers 10

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    iget v1, v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mUpToVersion:I

    if-gt p3, v1, :cond_4

    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mFromType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v0, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;->mToType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails;

    if-eqz v4, :cond_4f

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/UserManagerService;->upgradeProfileToTypeLU(Landroid/content/pm/UserInfo;Lcom/android/server/pm/UserTypeDetails;)V

    iget-object v2, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p4

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Upgrade destination user type not defined: "

    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_5f
    return-void
.end method

.method public userExists(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_16

    aget v4, p0, v3

    if-ne v4, p1, :cond_13

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    goto :goto_18

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    monitor-exit v0

    return v2

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_11

    throw p0
.end method

.method public final userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 3

    if-eqz p1, :cond_3d

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_3d

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_33

    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mOwnerName:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_33

    :cond_22
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const v0, 0x104064b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    if-eqz p0, :cond_3d

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    iput-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_3d
    return-object p1
.end method

.method public final writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 7

    const-string v0, "Error writing user info "

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    :try_start_d
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_1d
    .catchall {:try_start_d .. :try_end_11} :catchall_19

    :try_start_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1b
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    goto :goto_38

    :catchall_19
    move-exception p0

    goto :goto_3c

    :catch_1b
    move-exception p0

    goto :goto_1f

    :catch_1d
    move-exception p0

    const/4 v2, 0x0

    :goto_1f
    :try_start_1f
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
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_19

    :goto_38
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_3c
    :try_start_3c
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw p0
.end method

.method public writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 9
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

    if-eqz v3, :cond_61

    const-string/jumbo v4, "lastLoggedInFingerprint"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_61
    const-string/jumbo v3, "lastEnteredForeground"

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    invoke-interface {p2, v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_73

    const-string/jumbo v4, "icon"

    invoke-interface {p2, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_73
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_7d

    const-string/jumbo v3, "partial"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7d
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_87

    const-string/jumbo v3, "preCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_87
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v3, :cond_91

    const-string/jumbo v3, "convertedFromPreCreated"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_91
    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_9b

    const-string/jumbo v3, "guestToRemove"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9b
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_a7

    const-string/jumbo v4, "profileGroupId"

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a7
    const-string/jumbo v2, "profileBadge"

    iget v4, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-interface {p2, v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v3, :cond_b9

    const-string/jumbo v3, "restrictedProfileParentId"

    invoke-interface {p2, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b9
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_db

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    const/16 v3, 0x1f4

    if-eqz v2, :cond_cd

    const-string/jumbo v4, "seedAccountName"

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_cd
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_db

    const-string/jumbo v4, "seedAccountType"

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_db
    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_f6

    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lcom/android/server/pm/UserManagerService;->truncateString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f6
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "restrictions"

    invoke-static {p2, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_137

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
    :try_end_121
    .catchall {:try_start_f9 .. :try_end_121} :catchall_131

    :try_start_121
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    invoke-static {p2, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_12a
    .catchall {:try_start_121 .. :try_end_12a} :catchall_134

    :try_start_12a
    const-string/jumbo v3, "guestRestrictions"

    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_130
    .catchall {:try_start_12a .. :try_end_130} :catchall_131

    goto :goto_137

    :catchall_131
    move-exception p0

    goto/16 :goto_1c5

    :catchall_134
    move-exception p0

    :try_start_135
    monitor-exit v3
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    :try_start_136
    throw p0

    :cond_137
    :goto_137
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyUserRestrictions:Lcom/android/server/pm/RestrictionsSet;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "device_policy_local_restrictions"

    invoke-static {p2, p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_146
    .catchall {:try_start_136 .. :try_end_146} :catchall_131

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz p0, :cond_15b

    const-string/jumbo p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "account"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15b
    iget-boolean p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz p0, :cond_174

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_174

    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo p0, "seedAccountOptions"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_174
    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    if-eqz p0, :cond_189

    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p1, Lcom/android/server/pm/UserManagerService$UserData;->userProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {p0, p2}, Landroid/content/pm/UserProperties;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo p0, "userProperties"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_189
    iget-wide v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_1a6

    const-string/jumbo p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "lastRequestQuietModeEnabledCall"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a6
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

    :goto_1c5
    :try_start_1c5
    monitor-exit v2
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_131

    throw p0
.end method

.method public final writeUserListLP()V
    .registers 12

    invoke-static {}, Landroid/os/UserManager;->invalidateCacheOnUserDataChanged()V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserListFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_8d
    .catchall {:try_start_b .. :try_end_f} :catchall_79

    :try_start_f
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
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_7b
    .catchall {:try_start_f .. :try_end_40} :catchall_79

    :try_start_40
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_4a
    if-ge v9, v6, :cond_5f

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v10, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    :catchall_5d
    move-exception p0

    goto :goto_8b

    :cond_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_40 .. :try_end_60} :catchall_5d

    :goto_60
    if-ge v8, v6, :cond_7e

    :try_start_62
    aget p0, v7, v8

    const-string/jumbo v4, "user"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "id"

    invoke-interface {v3, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "user"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    :catchall_79
    move-exception p0

    goto :goto_9d

    :catch_7b
    move-exception p0

    move-object v1, v2

    goto :goto_8e

    :cond_7e
    const-string/jumbo p0, "users"

    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;Z)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_8a} :catch_7b
    .catchall {:try_start_62 .. :try_end_8a} :catchall_79

    goto :goto_99

    :goto_8b
    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_5d

    :try_start_8c
    throw p0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_7b
    .catchall {:try_start_8c .. :try_end_8d} :catchall_79

    :catch_8d
    move-exception p0

    :goto_8e
    :try_start_8e
    const-string/jumbo v2, "UserManagerService"

    const-string v3, "Error writing user list"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_99
    .catchall {:try_start_8e .. :try_end_99} :catchall_79

    :goto_99
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_a5

    :catchall_a1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a5
    throw p0
.end method
