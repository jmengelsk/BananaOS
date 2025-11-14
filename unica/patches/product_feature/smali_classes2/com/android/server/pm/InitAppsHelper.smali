.class public final Lcom/android/server/pm/InitAppsHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mCachedSystemApps:I

.field public final mDirsToScanAsSystem:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mExpectingBetter:Landroid/util/ArrayMap;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mIsDeviceUpgrading:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

.field public final mScanFlags:I

.field public final mStubSystemApps:Ljava/util/List;

.field public mSystemPackagesCount:I

.field public final mSystemParseFlags:I

.field public final mSystemScanFlags:I

.field public mSystemScanTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object p3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p2

    const/4 p4, 0x0

    move v0, p4

    :goto_31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9c

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, p4

    :goto_44
    if-ge v3, v2, :cond_93

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ScanPartition;

    iget-object v5, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    iget-object v5, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    goto :goto_8b

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_8b
    :goto_8b
    new-instance v2, Lcom/android/server/pm/ScanPartition;

    iget-object v3, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/pm/ScanPartition;-><init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    goto :goto_94

    :cond_93
    const/4 v2, 0x0

    :goto_94
    if-eqz v2, :cond_99

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_9c
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Directories scanned as system partitions: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-nez p1, :cond_cb

    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean p1, p1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz p1, :cond_c6

    goto :goto_cb

    :cond_c6
    const/16 p1, 0x210

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    goto :goto_cf

    :cond_cb
    :goto_cb
    const/16 p1, 0x1210

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    :goto_cf
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget p1, p1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/high16 p2, 0x10000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    const/4 p1, -0x2

    const/4 p2, 0x4

    const-string/jumbo p3, "package-parsing-thread"

    invoke-static {p2, p3, p1}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public getSystemScanFlags()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    return p0
.end method

.method public final initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V
    .registers 21

    move-object/from16 v1, p0

    const-string/jumbo v0, "PackageManager"

    const-string v2, "!@Boot_EBS_F: boot_progress_pms_data_scan_start"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc08

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    iget v0, v1, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    const/16 v2, 0x1000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_49

    :try_start_1a
    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_32

    :try_start_26
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v0}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_34

    :try_start_2e
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_49

    :catch_32
    move-exception v0

    goto :goto_41

    :catchall_34
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_40

    :try_start_38
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_32

    :goto_41
    const-string/jumbo v2, "PackageManager"

    const-string v3, "Failed to walk the app install directory to fix the modes"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    iget v0, v1, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 v4, v0, 0x80

    iget-object v6, v1, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3fe

    iget-object v2, v1, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget v3, v1, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_79
    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ltz v5, :cond_13b

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v10, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v11, v8}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    if-eqz v11, :cond_aa

    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v12

    if-eqz v12, :cond_aa

    iget-object v13, v12, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v13, v11}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v10, v12, v6}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    :cond_aa
    iget-object v10, v2, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const-string/jumbo v11, "Updated system package "

    if-nez v0, :cond_b8

    const-string v0, " no longer exists; removing its data"

    invoke-static {v11, v8, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11a

    :cond_b8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " no longer exists; rescanning package on data"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    if-eqz v12, :cond_dd

    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput-boolean v6, v12, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object v12, v12, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v12}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_dd
    new-instance v12, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_e6
    iget-object v13, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v13, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_ed
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e6 .. :try_end_ed} :catch_f4

    :try_start_ed
    invoke-virtual {v2, v12, v6, v3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f6

    :try_start_f0
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_f3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_119

    :catch_f4
    move-exception v0

    goto :goto_101

    :catchall_f6
    move-exception v0

    move-object v6, v0

    :try_start_f8
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fc

    goto :goto_100

    :catchall_fc
    move-exception v0

    :try_start_fd
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_100
    throw v6
    :try_end_101
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_fd .. :try_end_101} :catch_f4

    :goto_101
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Failed to parse updated, ex-system package: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "PackageManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_119
    move-object v0, v11

    :goto_11a
    iget-object v6, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_132

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_132

    move-object/from16 v8, p2

    invoke-virtual {v10, v6, v8}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    goto :goto_134

    :cond_132
    move-object/from16 v8, p2

    :goto_134
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_79

    :cond_13b
    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_199

    iget v0, v1, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    or-int/lit16 v0, v0, 0x1080

    iget-object v2, v1, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v3, v1, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    iget-object v5, v4, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_14e
    iget-object v4, v4, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    new-instance v8, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v5
    :try_end_15b
    .catchall {:try_start_14e .. :try_end_15b} :catchall_196

    const-string/jumbo v3, "package-parsing-thread"

    const/4 v4, -0x2

    const/4 v5, 0x4

    invoke-static {v5, v3, v4}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    new-instance v5, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;

    move-object/from16 v8, p1

    invoke-direct {v5, v2, v0, v8, v3}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallPackageHelper;ILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    iget-object v8, v4, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_170
    iget-object v0, v4, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v8
    :try_end_178
    .catchall {:try_start_170 .. :try_end_178} :catchall_193

    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    iget-object v2, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17d
    iget-object v4, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v2
    :try_end_18c
    .catchall {:try_start_17d .. :try_end_18c} :catchall_190

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_199

    :catchall_190
    move-exception v0

    :try_start_191
    monitor-exit v2
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw v0

    :catchall_193
    move-exception v0

    :try_start_194
    monitor-exit v8
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_193

    throw v0

    :catchall_196
    move-exception v0

    :try_start_197
    monitor-exit v5
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v0

    :cond_199
    :goto_199
    iget-object v2, v1, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v3, v1, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v5, v1, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget v8, v1, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v9, v6

    :goto_1a7
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v9, v0, :cond_28b

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v11, v11, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c1

    goto/16 :goto_287

    :cond_1c1
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Expected better "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " but never showed up; reverting to system"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v12, v10, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    iget-object v12, v12, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_1e9
    if-ltz v13, :cond_20c

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/ScanPartition;

    invoke-virtual {v14, v11}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_1ff

    const/high16 v12, 0x20000

    or-int/2addr v12, v5

    iget v13, v14, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v12, v13

    :goto_1fd
    move v13, v8

    goto :goto_20e

    :cond_1ff
    invoke-virtual {v14, v11}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsApp(Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_209

    iget v12, v14, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v12, v5

    goto :goto_1fd

    :cond_209
    add-int/lit8 v13, v13, -0x1

    goto :goto_1e9

    :cond_20c
    move v12, v6

    move v13, v12

    :goto_20e
    new-instance v14, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v14, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string/jumbo v14, "PackageManager"

    if-nez v12, :cond_242

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring unexpected fallback path "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_287

    :cond_242
    iget-object v15, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v0}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    :try_start_247
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v15, v10, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_24e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_247 .. :try_end_24e} :catch_265

    :try_start_24e
    invoke-virtual {v2, v11, v13, v12}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v11

    if-eqz v11, :cond_261

    move-object v11, v4

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25e
    .catchall {:try_start_24e .. :try_end_25e} :catchall_267

    goto :goto_261

    :goto_25f
    move-object v11, v0

    goto :goto_269

    :cond_261
    :goto_261
    :try_start_261
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_264
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_261 .. :try_end_264} :catch_265

    goto :goto_287

    :catch_265
    move-exception v0

    goto :goto_272

    :catchall_267
    move-exception v0

    goto :goto_25f

    :goto_269
    :try_start_269
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_26c
    .catchall {:try_start_269 .. :try_end_26c} :catchall_26d

    goto :goto_271

    :catchall_26d
    move-exception v0

    :try_start_26e
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_271
    throw v11
    :try_end_272
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_26e .. :try_end_272} :catch_265

    :goto_272
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to parse original system package: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_287
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a7

    :cond_28b
    iget-object v2, v1, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget v3, v1, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_29e
    const-string/jumbo v0, "android"

    iget-object v7, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-ltz v5, :cond_308

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2bb

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_305

    :cond_2bb
    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v9, :cond_2cb

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_305

    :cond_2cb
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_2de

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_2de

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_305

    :cond_2de
    :try_start_2de
    invoke-virtual {v2, v9, v6, v3}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz v7, :cond_2e9

    invoke-virtual {v7, v6, v6, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_2e9

    :catch_2e7
    move-exception v0

    goto :goto_2ed

    :cond_2e9
    :goto_2e9
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2ec
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2de .. :try_end_2ec} :catch_2e7

    goto :goto_305

    :goto_2ed
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to parse uncompressed system package: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "PackageManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_305
    add-int/lit8 v5, v5, -0x1

    goto :goto_29e

    :cond_308
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_30e
    if-ltz v2, :cond_336

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8, v6, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Stub disabled; pkg: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_30e

    :cond_336
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, v1, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    sub-long/2addr v2, v4

    sub-long v2, v2, p3

    iget-object v4, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    iget v5, v1, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    sub-int/2addr v4, v5

    const-string v5, "!@Boot_EBS_F: Finished scanning non-system apps ("

    const-string v6, " ms), packageCount: "

    invoke-static {v4, v5, v2, v3, v6}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , cached: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "PackageManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Finished scanning non-system apps. Time: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms, packageCount: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , timePerPackage: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_38b

    const-wide/16 v8, 0x0

    goto :goto_38e

    :cond_38b
    int-to-long v8, v4

    div-long v8, v2, v8

    :goto_38e
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "non-system"

    invoke-static {v4, v0, v2, v3, v5}, Lcom/samsung/android/server/pm/PmLog;->logFinishedScanningInfo(IIJLjava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz v0, :cond_3b3

    if-lez v4, :cond_3b3

    int-to-long v4, v4

    div-long/2addr v2, v4

    const/16 v0, 0xef

    const/16 v4, 0xe

    invoke-static {v0, v4, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_3b3
    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3c6
    if-ltz v2, :cond_3fd

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-nez v3, :cond_3fa

    iget-object v3, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v4, :cond_3f7

    instance-of v4, v3, Lcom/android/server/utils/Watchable;

    if-eqz v4, :cond_3f7

    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f7

    check-cast v3, Lcom/android/server/utils/Watchable;

    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/WatchedArrayMap$1;

    invoke-interface {v3, v4}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_3f7
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    :cond_3fa
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c6

    :cond_3fd
    return-void

    :cond_3fe
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not all tasks finished before calling close: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const-string/jumbo v1, "scanApexPackages"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_d
    iget-object v8, v0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    check-cast v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_3f7

    :try_start_16
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v9
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_3f9
    .catchall {:try_start_16 .. :try_end_1e} :catchall_3f7

    :try_start_1e
    iget v10, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    iget v11, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    iget-object v13, v0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v12, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/InstallPackageHelper;->scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_3f7

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    check-cast v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_34
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->notifyScanResultLocked(Ljava/util/List;)V

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3f4

    iget-object v5, v0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "framework"

    invoke-direct {v8, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    move v10, v1

    :goto_51
    iget v11, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    if-ltz v10, :cond_7a

    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanPartition;

    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_66

    goto :goto_77

    :cond_66
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    iget v3, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v3, v11

    iget-object v6, v1, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    move-object v1, v2

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    :goto_77
    add-int/lit8 v10, v10, -0x1

    goto :goto_51

    :cond_7a
    const v1, 0x20001

    or-int v3, v11, v1

    const/4 v6, 0x0

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    move-object/from16 v4, p1

    move-object v1, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ec

    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    move v12, v10

    :goto_a1
    if-ge v12, v8, :cond_db

    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/ScanPartition;

    invoke-virtual {v13}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c7

    invoke-virtual {v13}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0x20000

    or-int/2addr v2, v11

    iget v3, v13, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr v3, v2

    iget-object v6, v13, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    :cond_c7
    invoke-virtual {v13}, Landroid/content/pm/PackagePartitions$SystemPartition;->getAppFolder()Ljava/io/File;

    move-result-object v1

    iget v2, v13, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int v3, v11, v2

    iget-object v6, v13, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a1

    :cond_db
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v4, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v5, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_108
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    :cond_11a
    new-instance v2, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V

    invoke-static {v2}, Lcom/android/internal/content/om/OverlayConfig;->initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v10

    :goto_130
    if-ge v5, v4, :cond_14f

    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v8

    if-eqz v8, :cond_14c

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14c
    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    :cond_14f
    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v3, v0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v6

    if-eqz v6, :cond_164

    const-string v6, "/system/etc/system_to_data_app_list.xml"

    invoke-static {v6}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_165

    :cond_164
    const/4 v6, 0x0

    :goto_165
    iget-object v8, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v9

    :goto_16c
    if-ltz v8, :cond_262

    iget-object v11, v7, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    iget-object v12, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v13

    if-nez v13, :cond_186

    :cond_17e
    :goto_17e
    move/from16 p1, v8

    move/from16 v16, v9

    :goto_182
    move-object/from16 v9, p3

    goto/16 :goto_25a

    :cond_186
    iget-object v13, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v13, v13, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v14, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14, v12}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    const/4 v15, 0x5

    if-eqz v13, :cond_1dd

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v16

    if-eqz v16, :cond_1a0

    goto :goto_17e

    :cond_1a0
    if-eqz v14, :cond_17e

    const-string v14, "Expecting better updated system app for "

    move/from16 v16, v9

    const-string v9, "; removing system app.  Last known codePath="

    invoke-static {v14, v12, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v11, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", versionCode="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p1, v8

    iget-wide v7, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; scanned versionCode="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v7, v13}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object v7, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v8, v11, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_182

    :cond_1dd
    move/from16 p1, v8

    move/from16 v16, v9

    if-nez v14, :cond_23b

    if-eqz v6, :cond_213

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_213

    iget-object v7, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_213

    const/4 v7, -0x2

    iput v7, v11, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    invoke-virtual {v11}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Don\'t remove this system package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; It will be re-installed in data partition."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto/16 :goto_182

    :cond_213
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "System package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " no longer exists; its data will be wiped"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;

    move-object/from16 v9, p3

    invoke-direct {v8, v2, v11, v9}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/InstallPackageHelper;Lcom/android/server/pm/PackageSetting;[I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25a

    :cond_23b
    move-object/from16 v9, p3

    iget-object v7, v14, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    if-eqz v7, :cond_254

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_254

    iget-object v7, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v7, :cond_24c

    goto :goto_254

    :cond_24c
    iget-object v7, v14, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25a

    :cond_254
    :goto_254
    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_25a
    add-int/lit8 v8, p1, -0x1

    move-object/from16 v7, p2

    move/from16 v9, v16

    goto/16 :goto_16c

    :cond_262
    move/from16 v16, v9

    sget-object v2, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_287
    :goto_287
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    if-nez v9, :cond_2a5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_287

    :cond_2a5
    iget-object v8, v9, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v11, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move v12, v10

    :goto_2b0
    if-ltz v11, :cond_2eb

    iget-object v13, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget-object v14, v3, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v13, v13, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v14, v14, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2e8

    iget-object v12, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-boolean v13, v8, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v13, :cond_2e3

    instance-of v13, v12, Lcom/android/server/utils/Watchable;

    if-eqz v13, :cond_2e3

    iget-object v13, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2e3

    check-cast v12, Lcom/android/server/utils/Watchable;

    iget-object v13, v8, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    invoke-interface {v12, v13}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_2e3
    invoke-virtual {v8, v8}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    move/from16 v12, v16

    :cond_2e8
    add-int/lit8 v11, v11, -0x1

    goto :goto_2b0

    :cond_2eb
    iget-object v11, v9, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v13, v11, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_2f5
    if-ltz v13, :cond_330

    iget-object v14, v11, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    iget-object v15, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v14, v14, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v15, v15, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_32d

    iget-object v12, v11, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-boolean v14, v11, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v14, :cond_328

    instance-of v14, v12, Lcom/android/server/utils/Watchable;

    if-eqz v14, :cond_328

    iget-object v14, v11, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_328

    check-cast v12, Lcom/android/server/utils/Watchable;

    iget-object v14, v11, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    invoke-interface {v12, v14}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_328
    invoke-virtual {v11, v11}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    move/from16 v12, v16

    :cond_32d
    add-int/lit8 v13, v13, -0x1

    goto :goto_2f5

    :cond_330
    if-eqz v12, :cond_335

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_335
    iget-object v8, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_287

    iget-object v8, v11, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_287

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_287

    :cond_34a
    new-instance v7, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v6}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v4, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v3}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p4

    iput-wide v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!@Boot_EBS_F: Finished scanning system apps ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms), packageCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Finished scanning system apps. Time: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, packageCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , timePerPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-nez v4, :cond_3ba

    const-wide/16 v4, 0x0

    goto :goto_3bf

    :cond_3ba
    iget-wide v5, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v7, v4

    div-long v4, v5, v7

    :goto_3bf
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , cached: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    invoke-static {v2, v4, v3}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-wide v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    iget v5, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    const-string/jumbo v6, "system"

    invoke-static {v4, v5, v2, v3, v6}, Lcom/samsung/android/server/pm/PmLog;->logFinishedScanningInfo(IIJLjava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    if-eqz v2, :cond_3eb

    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    if-lez v2, :cond_3eb

    iget-wide v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    int-to-long v5, v2

    div-long/2addr v3, v5

    const/16 v0, 0xef

    const/16 v2, 0xf

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_3eb
    return-object v1

    :cond_3ec
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load frameworks package; check log for warnings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3f4
    move-exception v0

    :try_start_3f5
    monitor-exit v4
    :try_end_3f6
    .catchall {:try_start_3f5 .. :try_end_3f6} :catchall_3f4

    throw v0

    :catchall_3f7
    move-exception v0

    goto :goto_418

    :catch_3f9
    move-exception v0

    :try_start_3fa
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to retrieve packages from apexservice: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ApexManager"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_418
    .catchall {:try_start_3fa .. :try_end_418} :catchall_3f7

    :goto_418
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .registers 17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scanDir ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/high16 v0, 0x800000

    and-int/2addr v0, p3

    if-eqz v0, :cond_26

    or-int/lit16 p2, p2, 0x200

    :cond_26
    move v5, p2

    :try_start_27
    iget-object v3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    move-object v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_36

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_36
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
