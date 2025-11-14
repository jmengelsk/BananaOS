.class public final Lcom/android/server/pm/MovePackageHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sMoveIdMapForSd:Ljava/util/Map;

.field public static final sPendingMoves:Ljava/util/ArrayList;


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    .locals 13

    const/4 v9, 0x1

    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v12, "PackageManager"

    if-nez v10, :cond_0

    const-string p0, "Failed to find settings for "

    invoke-static {p0, p1, v12}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v0

    new-array v6, v9, [J

    aput-wide v0, v6, v11

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    const/4 v4, 0x0

    move v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result p0

    and-int/2addr p0, v9

    if-eqz p0, :cond_1

    move p0, v9

    goto :goto_0

    :cond_1
    move p0, v11

    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    move p0, v9

    goto :goto_1

    :cond_2
    move p0, v11

    :goto_1
    if-nez p0, :cond_3

    const-wide/16 p0, 0x0

    iput-wide p0, v8, Landroid/content/pm/PackageStats;->codeSize:J

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    :goto_2
    iget-wide p0, v8, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v0, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr p0, v0

    iput-wide p0, v8, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v12, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method public final movePackageInternal(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move-object/from16 v3, p4

    move-object/from16 v10, p5

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Landroid/os/storage/StorageManager;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/storage/StorageManager;

    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v4, v0, v5, v3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, -0x2

    if-eqz v5, :cond_20

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    if-eqz v7, :cond_20

    iget-object v7, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[I)[I

    move-result-object v13

    array-length v7, v13

    if-lez v7, :cond_1f

    aget v7, v13, v11

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    array-length v7, v13

    move v15, v11

    :goto_0
    if-ge v15, v7, :cond_1

    aget v11, v13, v15

    invoke-interface {v4, v5, v0, v11}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-nez v11, :cond_0

    add-int/2addr v15, v12

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Missing package"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v6

    if-nez v6, :cond_1e

    const-string/jumbo v6, "private"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x1110019

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    const-string v2, "3rd party apps are not allowed on internal storage"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v11

    const/4 v15, -0x6

    if-nez v11, :cond_5

    new-instance v6, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move/from16 v16, v12

    const-string/jumbo v12, "oat"

    invoke-direct {v7, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Move only supported for modern cluster style installs"

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    move/from16 v16, v12

    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v10, :cond_8

    const-string/jumbo v6, "primary_physical"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Package already moved to "

    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Package already moved to "

    invoke-static {v1, v10}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x8

    const-string v2, "Device admin cannot be moved"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    :goto_5
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v17

    new-instance v4, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v18

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v20

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v21

    move-object v5, v0

    check-cast v5, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v22

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "~~"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object/from16 v23, v0

    goto :goto_7

    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_7
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    move-object v0, v2

    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v6, v5

    :try_start_1
    const-string/jumbo v5, "movePackageInternal"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v7, 0x0

    move-object/from16 v24, v4

    const/4 v4, -0x1

    move-object/from16 v25, v6

    const/16 v6, 0xa

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v0, :cond_f

    sget-object v5, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v5

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v5

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "moveCaller"

    const-string/jumbo v6, "smartmanager"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_e
    :goto_8
    monitor-exit v5

    goto :goto_a

    :goto_9
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_f
    :goto_a
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x10

    if-eqz v0, :cond_10

    xor-int/lit8 v0, v11, 0x1

    invoke-static {v10}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move/from16 v25, v0

    move v11, v4

    move-object v7, v5

    goto :goto_c

    :cond_10
    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    :goto_b
    move v11, v4

    move-object v7, v5

    const/16 v25, 0x0

    goto :goto_c

    :cond_11
    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "measurePath: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    goto :goto_b

    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    move/from16 v6, v16

    if-ne v5, v6, :cond_1c

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v10}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move v11, v4

    move-object v7, v5

    const/16 v25, 0x1

    :goto_c
    if-eqz v25, :cond_15

    array-length v0, v13

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_15

    aget v5, v13, v4

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    const/16 v16, 0x1

    goto :goto_e

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "User "

    const-string v2, " must be unlocked"

    invoke-static {v5, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0xa

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    new-instance v0, Landroid/content/pm/PackageStats;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    iget-object v5, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    array-length v6, v13

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_17

    aget v15, v13, v4

    invoke-virtual {v1, v3, v15, v0}, Lcom/android/server/pm/MovePackageHelper;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v15

    if-eqz v15, :cond_16

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v15, -0x6

    goto :goto_f

    :cond_16
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to measure package size"

    const/4 v2, -0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    :cond_17
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v26

    if-eqz v25, :cond_18

    iget-wide v4, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-object v6, v2

    iget-wide v2, v0, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v2

    :goto_10
    move-wide/from16 v28, v4

    goto :goto_11

    :cond_18
    move-object v6, v2

    iget-wide v4, v0, Landroid/content/pm/PackageStats;->codeSize:J

    goto :goto_10

    :goto_11
    invoke-virtual {v9, v7}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v0, v28, v2

    if-gtz v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    const/16 v2, 0xa

    invoke-virtual {v0, v8, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Lcom/android/server/pm/MovePackageHelper$1;

    move-object/from16 v5, p4

    move-object v3, v2

    move-object v2, v6

    move v4, v8

    move/from16 v6, v17

    move-object/from16 v15, v24

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/MovePackageHelper$1;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V

    move-object/from16 v17, v0

    move-object v2, v3

    if-eqz v25, :cond_19

    new-instance v0, Ljava/lang/Thread;

    move-object v1, v0

    new-instance v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    move/from16 v8, p1

    move-object v13, v1

    move-object v5, v7

    move-wide/from16 v3, v26

    move-wide/from16 v6, v28

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JII)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/server/pm/MoveInfo;

    move-object/from16 v3, p4

    move-object v2, v10

    move-object v1, v12

    move/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/MoveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v0

    goto :goto_12

    :cond_19
    move-object v5, v7

    move-wide/from16 v3, v26

    move-wide/from16 v6, v28

    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JII)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x0

    :goto_12
    or-int/lit8 v4, v11, 0x2

    new-instance v0, Lcom/android/server/pm/OriginInfo;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    invoke-direct {v0, v15, v3, v6, v13}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    move-object v9, v3

    :goto_13
    move-object v3, v0

    goto :goto_14

    :cond_1a
    move-object v9, v13

    goto :goto_13

    :goto_14
    new-instance v0, Lcom/android/server/pm/InstallingSession;

    iget-object v10, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v6, p5

    move-object v1, v3

    move-object v7, v14

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/InstallingSession;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Lcom/android/server/pm/MovePackageHelper$1;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v1, "movePackage"

    iput-object v1, v0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v1, "queueInstall"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v1, v10, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1b
    move-object v2, v6

    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Not enough free space to move"

    const/4 v2, -0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_15
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_16

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v1

    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Move location not mounted private volume"

    const/4 v2, -0x6

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object/from16 v25, v5

    :goto_17
    :try_start_6
    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_1d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x7

    const-string v2, "Failed to move already frozen package"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x3

    const-string v2, "Cannot move system application"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Package is not installed for any user"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Missing package"

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
