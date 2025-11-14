.class public final Lcom/android/server/pm/InstallPackageHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mDexManager:Lcom/android/server/pm/dex/DexManager;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mInternalLock:Ljava/lang/Object;

.field public final mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field public final mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iget-object p2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/incremental/IncrementalManager;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ApexManager;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p3, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/dex/DexManager;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object p3, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object p4, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3, p4, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UpdateOwnershipHelper;

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz p1, :cond_69

    invoke-static {p2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    :cond_69
    return-void
.end method

.method public static isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 6

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_36

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    if-eqz v3, :cond_33

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_36
    return v1
.end method

.method public static onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V
    .registers 11

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p0

    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_f
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/content/IntentSender$OnFinished;)V
    :try_end_24
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_f .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method public static tryToRecover(Landroid/apex/ApexInfo;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ Unexpected exception occurred while parsing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    const-string/jumbo v2, "PackageManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    const-string v0, "/|@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const-string/jumbo v1, "sys.apexd.restore.module"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string/jumbo v5, "data"

    const/4 v6, 0x4

    if-le v0, v6, :cond_3c

    aget-object v0, p0, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "decompressed"

    aget-object v7, p0, v3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    aget-object p0, p0, v6

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_3c
    array-length v0, p0

    if-le v0, v6, :cond_55

    aget-object v0, p0, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    aget-object p0, p0, v3

    const-string/jumbo v0, "active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    const-string p0, "!@ reboot by ApexManager"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "sys.powerctl"

    const-string/jumbo v0, "reboot,recoveryDecompressedApex"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V
    .registers 4

    new-instance v0, Ljava/security/DigestInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->read()I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_16

    const/4 p1, -0x1

    if-eq p0, p1, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method


# virtual methods
.method public final addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    if-nez v0, :cond_1a

    :try_start_d
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_1a

    :catchall_17
    move-exception v0

    goto/16 :goto_162

    :cond_1a
    :goto_1a
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v0, :cond_35

    if-eqz v8, :cond_35

    iget-object v3, v0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iput-object v3, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_17

    invoke-virtual/range {p0 .. p4}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/ScanResult;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    new-instance v2, Lcom/android/server/pm/InstallRequest;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    :try_start_59
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6d

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v5, v5, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    goto :goto_6e

    :cond_6d
    move-object v5, v6

    :goto_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_15d

    if-eqz v0, :cond_76

    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    goto :goto_83

    :cond_76
    if-eqz v8, :cond_7f

    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v0, v0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    goto :goto_83

    :cond_7f
    if-eqz v5, :cond_83

    iput-object v5, v2, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    :cond_83
    :goto_83
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_89
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v15, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v16

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object v0

    const/high16 v8, 0x4000000

    and-int v8, p3, v8

    if-nez v8, :cond_c0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v8

    goto :goto_cc

    :catchall_ba
    move-exception v0

    goto/16 :goto_159

    :catch_bd
    move-exception v0

    goto/16 :goto_153

    :cond_c0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v8, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V
    :try_end_cb
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_89 .. :try_end_cb} :catch_bd
    .catchall {:try_start_89 .. :try_end_cb} :catchall_ba

    move v8, v4

    :goto_cc
    :try_start_cc
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ReconciledPackage;

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_df
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_cc .. :try_end_df} :catch_151
    .catchall {:try_start_cc .. :try_end_df} :catchall_ba

    :try_start_df
    monitor-exit v5
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_ba

    if-eqz v9, :cond_f9

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_e7
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    monitor-exit v2

    goto :goto_f9

    :catchall_f4
    move-exception v0

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_e7 .. :try_end_f6} :catchall_f4

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_f9
    :goto_f9
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v0, :cond_123

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_123

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/server/pm/IncrementalProgressListener;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v5, v9, v8}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    :cond_123
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_14c

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    invoke-static {v3, v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14c

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    :try_start_13b
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    monitor-exit v1

    goto :goto_14c

    :catchall_147
    move-exception v0

    monitor-exit v1
    :try_end_149
    .catchall {:try_start_13b .. :try_end_149} :catchall_147

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_14c
    :goto_14c
    iget-object v0, v7, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    return-object v0

    :catch_151
    move-exception v0

    move v4, v8

    :goto_153
    if-eqz v4, :cond_158

    :try_start_155
    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    :cond_158
    throw v0

    :goto_159
    monitor-exit v5
    :try_end_15a
    .catchall {:try_start_155 .. :try_end_15a} :catchall_ba

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_15d
    move-exception v0

    :try_start_15e
    monitor-exit v4
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_162
    :try_start_162
    monitor-exit v2
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_17

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 5

    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_9a

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_39

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto/16 :goto_18c

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is static and cannot be upgraded."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0xf

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_39
    const/high16 p0, 0x480000

    and-int/2addr p0, p3

    if-eqz p0, :cond_73

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p2

    if-ge p0, p2, :cond_18c

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "System overlay "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of vendor overlays ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This will become an install error in a future release"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_73
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 p2, 0x24

    if-ge p0, p2, :cond_18c

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "System overlay "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " targets an SDK below the required SDK level of system overlays (36). This will become an install error in a future release"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p2

    const/16 p3, 0x1d

    if-ge p2, p3, :cond_e5

    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p2

    :try_start_a9
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v0, "android"

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    monitor-exit p2
    :try_end_b5
    .catchall {:try_start_a9 .. :try_end_b5} :catchall_e0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-eqz p2, :cond_c0

    goto :goto_e5

    :cond_c0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must target Q or later, or be signed with the platform certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x10

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_e0
    move-exception p0

    :try_start_e1
    monitor-exit p2
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_e5
    :goto_e5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_18c

    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p2

    :try_start_f2
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    monitor-exit p2
    :try_end_ff
    .catchall {:try_start_f2 .. :try_end_ff} :catchall_187

    if-eqz p3, :cond_18c

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p2

    if-nez p2, :cond_18c

    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p2, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    if-eqz p3, :cond_15b

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p2

    :try_start_114
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    monitor-exit p2
    :try_end_11f
    .catchall {:try_start_114 .. :try_end_11f} :catchall_156

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_12a

    goto :goto_18c

    :cond_12a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " signed with a different certificate than both the reference package and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x12

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_156
    move-exception p0

    :try_start_157
    monitor-exit p2
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_156

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_15b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Overlay "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and target "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signed with different certificates, and the overlay lacks <overlay android:targetName>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x11

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_187
    move-exception p0

    :try_start_188
    monitor-exit p2
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_18c
    :goto_18c
    return-void
.end method

.method public final assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 13

    const/4 v0, 0x1

    and-int/lit8 v1, p2, 0x40

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_76

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v1

    const-string v4, " code is missing"

    const-string/jumbo v5, "Package "

    if-eqz v1, :cond_36

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_36

    :cond_1d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_36
    :goto_36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    move v1, v3

    :goto_41
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_76

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v6

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_74

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/android/server/pm/ScanPackageUtils;->apkHasCode(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5f

    goto :goto_74

    :cond_5f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p2, p1, v4}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_74
    :goto_74
    add-int/2addr v1, v0

    goto :goto_41

    :cond_76
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_387

    and-int/lit8 v1, p3, 0x10

    if-nez v1, :cond_82

    move v1, v0

    goto :goto_83

    :cond_82
    move v1, v3

    :goto_83
    and-int/lit16 v4, p3, 0x1000

    if-eqz v4, :cond_89

    move v4, v0

    goto :goto_8a

    :cond_89
    move v4, v3

    :goto_8a
    const/high16 v5, 0x4000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_91

    move v5, v0

    goto :goto_92

    :cond_91
    move v5, v3

    :goto_92
    const/4 v6, -0x5

    if-nez v1, :cond_97

    if-eqz v4, :cond_c5

    :cond_97
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5

    if-eqz v5, :cond_aa

    goto :goto_c5

    :cond_aa
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an APEX package and can\'t be installed as an APK."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_c5
    :goto_c5
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37e

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_375

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_375

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_375

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_130

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_127

    invoke-interface {v1, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_127

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_105
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_130

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_11e

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11e

    goto :goto_105

    :cond_11e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has null/no public keys for defined key-sets."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_127
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has null defined key set."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_130
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_14c

    if-eqz v1, :cond_143

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_143

    goto :goto_14c

    :cond_143
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_14c
    :goto_14c
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_153
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_167

    goto :goto_1a5

    :cond_167
    const-string/jumbo p0, "PackageManager"

    const-string p2, "*************************************************"

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "PackageManager"

    const-string p2, "Core android package being redefined.  Skipping."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " codePath="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "PackageManager"

    const-string p1, "*************************************************"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Core android package being redefined.  Skipping."

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_1a2
    move-exception p0

    goto/16 :goto_371

    :cond_1a5
    :goto_1a5
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_231

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_231

    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p3

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    move v0, v3

    :goto_1d5
    if-eqz p3, :cond_211

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p2, 0x10

    if-nez p2, :cond_211

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_211

    if-nez v0, :cond_211

    iget-object p2, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result p2

    if-eqz p2, :cond_1fb

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    iget-wide v4, p3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long p2, v2, v4

    if-ltz p2, :cond_211

    goto :goto_205

    :cond_1fb
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v2

    iget-wide v4, p3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long p2, v2, v4

    if-lez p2, :cond_211

    :goto_205
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addDuplicatePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    iget-object p2, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->addSystemPackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_211
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already installed.  Skipping duplicate."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_231
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_25a

    if-nez v2, :cond_254

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24a

    goto :goto_254

    :cond_24a
    const-string p0, "Duplicate static shared lib provider package"

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0xd

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_254
    :goto_254
    invoke-static {p1, p3}, Lcom/android/server/pm/ScanPackageUtils;->assertStaticSharedLibraryIsValid(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_25a
    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_329

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    iget-object v0, v0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28c

    const-string/jumbo v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Relax SCAN_REQUIRE_KNOWN requirement for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_329

    :cond_28c
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_2e0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a8

    goto/16 :goto_329

    :cond_2a8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " found at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but expected at "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x17

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2e0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_307

    const-string/jumbo v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found at first boot, but allow data preload apps to be installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_329

    :cond_307
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Application package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x13

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_329
    :goto_329
    if-eqz v2, :cond_332

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->assertProvidersNotDefined(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_332
    invoke-static {p1}, Lcom/android/server/pm/ScanPackageUtils;->assertProcessesAreValid(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_341

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->assertOverlayIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    :cond_341
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p2

    if-lt p2, p0, :cond_355

    monitor-exit v1

    return-void

    :cond_355
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p3, "No signature found in package of version "

    const-string v0, " or newer for package "

    invoke-static {p0, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, -0x67

    invoke-direct {p2, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    :goto_371
    monitor-exit v1
    :try_end_372
    .catchall {:try_start_153 .. :try_end_372} :catchall_1a2

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_375
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Package has invalid signing-key-set."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_37e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Passed invalid package to keyset validation."

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_387
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Code and resource paths haven\'t been set correctly"

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertPackageWithSharedUserIdIsPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_84

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v0

    if-nez v0, :cond_84

    const/4 v0, 0x0

    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1
    :try_end_1a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_13 .. :try_end_1a} :catch_2e

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    monitor-exit v1

    goto :goto_2e

    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_29

    :try_start_2b
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v2
    :try_end_2e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    :goto_2e
    if-eqz v0, :cond_84

    iget v0, v0, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_3d
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_7f

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_54

    goto :goto_84

    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Apps that share a user with a privileged app must themselves be marked as privileged. "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shares privileged user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x13

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_7f
    move-exception p0

    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_84
    :goto_84
    return-void
.end method

.method public final assertStaticSharedLibraryVersionCodeIsValid(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v0, :cond_58

    iget-object v5, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_58

    iget-object v7, v0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v12

    cmp-long v10, v10, v12

    const-wide/16 v11, 0x1

    if-gez v10, :cond_42

    add-long/2addr v8, v11

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_53

    :cond_42
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v13

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-lez v7, :cond_56

    sub-long/2addr v8, v11

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_56
    move-wide v1, v8

    move-wide v3, v1

    :cond_58
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-ltz v0, :cond_69

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_69

    return-void

    :cond_69
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Static shared lib version codes must be ordered as lib versions"

    const/16 v2, -0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    iget p1, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :cond_29
    return-void
.end method

.method public final commitInstallPackages(Ljava/util/List;)V
    .registers 15

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_47

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v5, v0

    check-cast v6, Lcom/android/server/pm/ReconciledPackage;

    iget-object v12, v6, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v6, v12, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_34

    new-instance v6, Lcom/android/server/pm/PackageFreezer;

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v7, v12}, Lcom/android/server/pm/PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/InstallRequest;)V

    goto :goto_40

    :cond_34
    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v10, "installPackageLI"

    const/16 v11, 0x10

    const/4 v9, -0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v6

    :goto_40
    iput-object v6, v12, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    goto :goto_13

    :catchall_43
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d9

    :cond_47
    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_43

    const-wide/32 v5, 0x40000

    :try_start_51
    const-string/jumbo v7, "commitPackages"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/InstallPackageHelper;->commitPackagesLocked(Ljava/util/List;[I)V
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_cf

    :try_start_62
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_cc

    :try_start_66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_6a
    :goto_6a
    if-ge v4, v3, :cond_be

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v4, v0

    check-cast v5, Lcom/android/server/pm/ReconciledPackage;

    iget-object v5, v5, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v7

    if-eqz v7, :cond_8d

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz v8, :cond_89

    move-object v6, v8

    goto :goto_8d

    :cond_89
    if-nez v6, :cond_8d

    iget-object v6, v7, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    :cond_8d
    :goto_8d
    iget v7, v5, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v7, v0, :cond_6a

    iget-object v7, v5, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-nez v7, :cond_6a

    iget-object v7, v5, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-nez v6, :cond_b4

    const-string/jumbo v6, "null"

    :cond_b4
    filled-new-array {v8, v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x48

    invoke-static {v5, v7, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    goto :goto_6a

    :cond_be
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_c5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->performSpegIfNeeded(Ljava/util/List;)V

    :cond_c5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallPackageHelper;->executePostCommitStepsLIF(Ljava/util/List;)V
    :try_end_c8
    .catchall {:try_start_66 .. :try_end_c8} :catchall_43

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    return-void

    :catchall_cc
    move-exception v0

    move-object p0, v0

    goto :goto_d5

    :catchall_cf
    move-exception v0

    move-object p0, v0

    :try_start_d1
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_d5
    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_cc

    :try_start_d6
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_43

    :goto_d9
    :try_start_d9
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e2

    :catchall_dd
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e2
    throw p0
.end method

.method public final commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v1, v11, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v12, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iget v13, v11, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iget v1, v11, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v14, 0x0

    if-eqz v1, :cond_22

    move v15, v9

    goto :goto_23

    :cond_22
    move v15, v14

    :goto_23
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "Replacing default ResolverActivity with custom activity: "

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3

    :try_start_3f
    iput-boolean v9, v1, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_ab

    const/4 v5, 0x0

    move-object v6, v2

    move-object/from16 v16, v3

    const-wide/16 v2, 0x0

    move-object v9, v1

    move-object/from16 v18, v6

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    :try_start_50
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput v14, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const v3, 0x10320

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    iput v14, v2, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput v14, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iput v14, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iput v14, v3, Landroid/content/pm/ResolveInfo;->match:I

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mCustomResolverComponentName:Landroid/content/ComponentName;

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v16

    goto :goto_b4

    :catchall_a9
    move-exception v0

    goto :goto_ae

    :catchall_ab
    move-exception v0

    move-object/from16 v16, v3

    :goto_ae
    monitor-exit v16
    :try_end_af
    .catchall {:try_start_50 .. :try_end_af} :catchall_a9

    throw v0

    :cond_b0
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    :goto_b4
    const/4 v9, 0x0

    if-eqz v7, :cond_c5

    iget-wide v2, v7, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    iget-wide v4, v6, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_c5

    invoke-virtual {v6, v9}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    :cond_c5
    iget-object v2, v6, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    const/4 v3, 0x2

    if-nez v2, :cond_115

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_f0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/app-metadata/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f0
    const-string v4, "/app.metadata"

    invoke-static {v2, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v11, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    if-eqz v4, :cond_101

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    goto :goto_115

    :cond_101
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)V

    :cond_115
    :goto_115
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4

    :try_start_127
    iput-object v1, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_129
    .catchall {:try_start_127 .. :try_end_129} :catchall_19d

    move-object v5, v4

    :try_start_12a
    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;
    :try_end_12c
    .catchall {:try_start_12a .. :try_end_12c} :catchall_199

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v19, v2

    move/from16 v18, v3

    const-wide/16 v2, 0x0

    move-object/from16 v9, v19

    :try_start_137
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v9, Lcom/android/server/pm/PackageManagerService;->mResolverReplaced:Z

    if-nez v1, :cond_191

    iget-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "system:ui"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput v14, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const v2, 0x11220

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const v2, 0x1030226

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    iput-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/4 v2, 0x2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v2, 0xdb0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput v14, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iput v14, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iput v14, v2, Landroid/content/pm/ResolveInfo;->match:I

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v9, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    goto :goto_191

    :catchall_18f
    move-exception v0

    goto :goto_1a0

    :cond_191
    :goto_191
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->onChange()V

    monitor-exit v16
    :try_end_195
    .catchall {:try_start_137 .. :try_end_195} :catchall_18f

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->applyUpdatedSystemOverlayPaths()V

    goto :goto_1a2

    :catchall_199
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_1a0

    :catchall_19d
    move-exception v0

    move-object/from16 v16, v4

    :goto_1a0
    :try_start_1a0
    monitor-exit v16
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_18f

    throw v0

    :cond_1a2
    :goto_1a2
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v4, v8, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    new-instance v5, Landroid/util/ArrayMap;

    iget-object v2, v8, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, v8, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v5, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v2, v8, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    iget-object v2, v8, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1c3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1db

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v5, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c3

    :cond_1db
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/SharedLibrariesImpl;->commitSharedLibraryChanges(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/List;Ljava/util/Map;I)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v20, v6

    move-object v6, v3

    move/from16 v3, v20

    iput-object v1, v11, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_1f0

    goto :goto_203

    :cond_1f0
    and-int/lit16 v4, v3, 0x400

    if-eqz v4, :cond_1f5

    goto :goto_203

    :cond_1f5
    and-int/lit16 v4, v3, 0x800

    if-eqz v4, :cond_1fa

    goto :goto_203

    :cond_1fa
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-interface {v4, v10}, Lcom/android/server/pm/Computer;->checkPackageFrozen(Ljava/lang/String;)V

    :goto_203
    iget-boolean v4, v11, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v1, :cond_238

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20f

    if-eqz v4, :cond_238

    :cond_20f
    move v5, v14

    :goto_210
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_238

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v8

    const-string/jumbo v13, "update lib"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, -0x1

    const/16 v14, 0xc

    invoke-static {v9, v8, v10, v13, v14}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x0

    goto :goto_210

    :cond_238
    const-string/jumbo v1, "updateSettings"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_248
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, v10, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v10}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v10

    if-nez v10, :cond_264

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    iget-object v13, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v10, v13, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_264
    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    if-eqz v10, :cond_27a

    iget-object v13, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v14, v13, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v14}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v14

    if-nez v14, :cond_27a

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v14

    iput-object v14, v13, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :cond_27a
    invoke-virtual {v5, v6, v10}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_296

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/ApexManager;->registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_296

    :catchall_293
    move-exception v0

    goto/16 :goto_396

    :cond_296
    :goto_296
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v5

    if-eqz v5, :cond_2a4

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_2a6

    :cond_2a4
    if-eqz v4, :cond_2bc

    :cond_2a6
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v10, v5

    const/4 v13, 0x0

    :goto_2b0
    if-ge v13, v10, :cond_2bc

    aget v14, v5, v13

    invoke-virtual {v6, v14}, Lcom/android/server/pm/PackageSetting;->restoreComponentSettings(I)V

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2b0

    :cond_2bc
    const/high16 v5, 0x4000000

    and-int/2addr v5, v3

    if-nez v5, :cond_2ca

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/KeySetManagerService;->addScannedPackageLPw(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_2ca
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v10, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    invoke-virtual {v13, v2, v10, v5}, Lcom/android/server/pm/resolution/ComponentResolver;->addAllComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/Computer;)V

    iget-object v10, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    and-int/lit16 v13, v3, 0x400

    if-eqz v13, :cond_2e3

    const/4 v13, 0x1

    goto :goto_2e4

    :cond_2e3
    const/4 v13, 0x0

    :goto_2e4
    invoke-virtual {v10, v5, v6, v4, v13}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PackageManagerService;->addAllPackageProperties(Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {v11}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2f9

    const/4 v4, 0x1

    goto :goto_2fa

    :cond_2f9
    const/4 v4, 0x0

    :goto_2fa
    if-nez v4, :cond_31a

    if-eqz v7, :cond_30f

    iget-object v4, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v4, :cond_303

    goto :goto_30f

    :cond_303
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v5, v11, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    check-cast v4, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v4, v7, v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->migrateState(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/verify/domain/DomainSet;)V

    goto :goto_31a

    :cond_30f
    :goto_30f
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v5, v11, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    check-cast v4, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addPackage(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/verify/domain/DomainSet;)V

    :cond_31a
    :goto_31a
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_324
    if-ge v7, v4, :cond_35f

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/internal/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v11, v13, v10}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_35a

    if-nez v5, :cond_34e

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_353

    :cond_34e
    const/16 v11, 0x20

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_353
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35a
    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_324

    :cond_35f
    const/16 v17, 0x1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37c

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_370
    .catchall {:try_start_248 .. :try_end_370} :catchall_293

    :try_start_370
    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4

    goto :goto_37c

    :catchall_379
    move-exception v0

    monitor-exit v4
    :try_end_37b
    .catchall {:try_start_370 .. :try_end_37b} :catchall_379

    :try_start_37b
    throw v0

    :cond_37c
    :goto_37c
    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    and-int/lit16 v2, v3, 0x2000

    if-eqz v2, :cond_387

    move/from16 v2, v17

    goto :goto_388

    :cond_387
    const/4 v2, 0x0

    :goto_388
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v0, v6, v2, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageAdded(Lcom/android/server/pm/PackageSetting;ZLcom/android/server/pm/pkg/AndroidPackage;)V

    monitor-exit v1
    :try_end_390
    .catchall {:try_start_37b .. :try_end_390} :catchall_293

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_396
    :try_start_396
    monitor-exit v1
    :try_end_397
    .catchall {:try_start_396 .. :try_end_397} :catchall_293

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final commitPackagesLocked(Ljava/util/List;[I)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object/from16 v11, p1

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v12, :cond_7fb

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v14, v0, 0x1

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/ReconciledPackage;

    iget-object v2, v15, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    if-nez v0, :cond_57

    if-eqz v5, :cond_57

    sget-object v0, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    iget v0, v5, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_57

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v7, v1, v0, v9}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_57
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 v5, 0x4

    if-eqz v0, :cond_5f

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_5f
    iget-boolean v0, v2, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    const/4 v7, 0x0

    move/from16 v16, v14

    if-eqz v0, :cond_194

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    if-nez v8, :cond_86

    move/from16 v21, v10

    const-wide/16 v18, 0x0

    goto :goto_b2

    :cond_86
    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    :goto_8d
    array-length v14, v6

    if-ge v13, v14, :cond_ad

    invoke-interface {v8, v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v14

    move/from16 v21, v10

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v9

    cmp-long v14, v9, v18

    if-eqz v14, :cond_a7

    invoke-virtual {v5, v13}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v14

    iput-wide v9, v14, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    invoke-virtual {v14}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_a7
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v21

    const/4 v9, 0x2

    goto :goto_8d

    :cond_ad
    move/from16 v21, v10

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :goto_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5, v9, v10}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)V

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->mUserStates:Landroid/util/SparseArray;

    iget v13, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-eqz v5, :cond_e2

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v22

    cmp-long v5, v22, v18

    if-nez v5, :cond_e2

    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5, v13, v9, v10}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    :cond_e2
    iget-object v5, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, v9, v13, v6, v14}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v5, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    iget-boolean v5, v2, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    if-eqz v5, :cond_135

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_130

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    new-instance v5, Lcom/android/server/pm/CleanUpArgs;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v4, v0}, Lcom/android/server/pm/CleanUpArgs;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    :goto_12c
    move-object v10, v2

    move-object v13, v7

    goto/16 :goto_198

    :cond_130
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iput-object v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    goto :goto_12c

    :cond_135
    :try_start_135
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;
    :try_end_137
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_135 .. :try_end_137} :catch_162

    move-object v5, v3

    :try_start_138
    iget-object v3, v15, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    iget-boolean v8, v2, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    iget-object v9, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v10, v9, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_145
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_138 .. :try_end_145} :catch_15e

    move-object v10, v5

    const/4 v5, 0x1

    move-object v13, v7

    const/4 v7, 0x0

    move-object v14, v10

    move-object v10, v2

    move-object v2, v0

    :try_start_14c
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_153

    :try_start_14f
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_152
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_14f .. :try_end_152} :catch_165

    goto :goto_16a

    :catchall_153
    move-exception v0

    move-object v2, v0

    :try_start_155
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_159

    goto :goto_15d

    :catchall_159
    move-exception v0

    :try_start_15a
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15d
    throw v2
    :try_end_15e
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_15a .. :try_end_15e} :catch_165

    :catch_15e
    move-object v10, v2

    move-object v14, v5

    :goto_160
    move-object v13, v7

    goto :goto_165

    :catch_162
    move-object v10, v2

    move-object v14, v3

    goto :goto_160

    :catch_165
    :goto_165
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_16a
    iget v0, v10, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    move/from16 v2, v21

    if-ne v0, v2, :cond_198

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v14}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_198

    iget-object v2, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_190

    const/4 v0, 0x1

    goto :goto_191

    :cond_190
    const/4 v0, 0x0

    :goto_191
    iput-boolean v0, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    goto :goto_198

    :cond_194
    move-object v10, v2

    move-object v13, v7

    const-wide/16 v18, 0x0

    :cond_198
    :goto_198
    invoke-virtual {v1, v15, v6}, Lcom/android/server/pm/InstallPackageHelper;->commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    const-string/jumbo v0, "updateSettingsInternal"

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v10, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    iget-object v5, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v5, :cond_1b1

    const/4 v5, 0x0

    goto :goto_1b3

    :cond_1b1
    iget v5, v5, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_1b3
    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "application_policy"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v14

    iget v15, v10, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 v7, -0x1

    if-eq v15, v7, :cond_1f1

    const/4 v8, -0x2

    if-eq v15, v8, :cond_1f1

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v8, v8, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v8, v15}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_1f1

    const-string/jumbo v0, "User "

    const-string v3, " doesn\'t exist or has been removed"

    invoke-static {v15, v0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/16 v5, -0x26

    invoke-direct {v3, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v13, v3}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    move-object/from16 v30, v4

    move-object/from16 v25, v11

    move/from16 v27, v12

    goto/16 :goto_594

    :cond_1f1
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v17, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8

    :try_start_1f8
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    if-eqz v13, :cond_569

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v24

    if-eqz v24, :cond_271

    if-eqz v0, :cond_236

    iget-object v7, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v7, :cond_210

    const/4 v7, 0x0

    goto :goto_212

    :cond_210
    iget-boolean v7, v7, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_212
    if-nez v7, :cond_236

    array-length v7, v0

    move-object/from16 v25, v11

    const/4 v11, 0x0

    :goto_218
    if-ge v11, v7, :cond_238

    move/from16 v26, v7

    aget v7, v0, v11

    move/from16 v27, v11

    const/4 v11, -0x1

    if-eq v15, v11, :cond_225

    if-ne v15, v7, :cond_227

    :cond_225
    const/4 v11, 0x0

    goto :goto_22a

    :cond_227
    :goto_227
    const/16 v21, 0x1

    goto :goto_22e

    :goto_22a
    invoke-virtual {v13, v11, v7, v9}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_227

    :goto_22e
    add-int/lit8 v11, v27, 0x1

    move/from16 v7, v26

    goto :goto_218

    :catchall_233
    move-exception v0

    goto/16 :goto_7f7

    :cond_236
    move-object/from16 v25, v11

    :cond_238
    if-eqz v6, :cond_254

    if-eqz v0, :cond_254

    array-length v7, v6

    const/4 v11, 0x0

    :goto_23e
    if-ge v11, v7, :cond_254

    move/from16 v26, v7

    aget v7, v6, v11

    move/from16 v27, v11

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v11

    invoke-virtual {v13, v7, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    const/16 v21, 0x1

    add-int/lit8 v11, v27, 0x1

    move/from16 v7, v26

    goto :goto_23e

    :cond_254
    if-eqz v6, :cond_273

    array-length v7, v6

    const/4 v11, 0x0

    :goto_258
    if-ge v11, v7, :cond_273

    move/from16 v26, v7

    aget v7, v6, v11

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v7

    move/from16 v27, v11

    const/4 v11, 0x0

    iput-object v11, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v21, 0x1

    add-int/lit8 v11, v27, 0x1

    move/from16 v7, v26

    goto :goto_258

    :cond_271
    move-object/from16 v25, v11

    :cond_273
    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v7, v7, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2e5

    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v7, v7, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_285
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2e5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    move-object/from16 v26, v7

    array-length v7, v6

    move/from16 v27, v12

    const/4 v12, 0x0

    :goto_297
    if-ge v12, v7, :cond_2e0

    move/from16 v28, v7

    aget v7, v6, v12

    move/from16 v29, v12

    iget-object v12, v11, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v12

    move-object/from16 v30, v4

    const/4 v4, 0x1

    if-eq v12, v4, :cond_2ad

    move/from16 v21, v4

    goto :goto_2d9

    :cond_2ad
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v11, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-nez v4, :cond_2c0

    :goto_2bd
    const/16 v21, 0x1

    goto :goto_2d9

    :cond_2c0
    iget-object v12, v11, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v12}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    invoke-virtual {v13, v7}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v7

    invoke-virtual {v7, v12, v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_2bd

    :goto_2d9
    add-int/lit8 v12, v29, 0x1

    move/from16 v7, v28

    move-object/from16 v4, v30

    goto :goto_297

    :cond_2e0
    move-object/from16 v7, v26

    move/from16 v12, v27

    goto :goto_285

    :cond_2e5
    move-object/from16 v30, v4

    move/from16 v27, v12

    const/4 v11, -0x1

    if-eq v15, v11, :cond_360

    const/4 v4, 0x1

    invoke-virtual {v13, v15, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V
    :try_end_2f0
    .catchall {:try_start_1f8 .. :try_end_2f0} :catchall_233

    if-eqz v14, :cond_32b

    const/4 v11, 0x0

    :try_start_2f3
    invoke-interface {v14, v3, v11, v15}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_32b

    const-string/jumbo v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "This app can not be enabled due to EDM policy. packageName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_311
    .catch Landroid/os/RemoteException; {:try_start_2f3 .. :try_end_311} :catch_312
    .catchall {:try_start_2f3 .. :try_end_311} :catchall_233

    goto :goto_355

    :catch_312
    move-exception v0

    :try_start_313
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "RemoteException - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32b
    iget-object v0, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_331

    const/4 v0, 0x0

    goto :goto_333

    :cond_331
    iget-boolean v0, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_333
    if-nez v0, :cond_355

    invoke-virtual {v13, v15}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-eqz v0, :cond_351

    const-string/jumbo v0, "auto_disabler"

    invoke-virtual {v13, v15}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_351

    goto :goto_355

    :cond_351
    const/4 v11, 0x0

    invoke-virtual {v13, v11, v15, v9}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_355
    :goto_355
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    goto/16 :goto_3f0

    :cond_360
    if-eqz v6, :cond_3f0

    array-length v4, v6

    const/4 v7, 0x0

    :goto_364
    if-ge v7, v4, :cond_3f0

    aget v11, v6, v7

    sget-object v12, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v12

    if-eqz v12, :cond_3a4

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v14, "no_debugging_features"

    invoke-virtual {v12, v14, v11}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3a4

    const-string/jumbo v12, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v4

    const-string/jumbo v4, "isAdbInstallDisallowed : false , currentUserId : "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a1
    const/16 v21, 0x1

    goto :goto_3ea

    :cond_3a4
    move/from16 v26, v4

    invoke-static {v0, v11}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v14, "no_install_apps"

    invoke-virtual {v12, v11, v14}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3c3

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v14, "no_debugging_features"

    invoke-virtual {v12, v11, v14}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3c1

    goto :goto_3c3

    :cond_3c1
    const/4 v12, 0x0

    goto :goto_3c4

    :cond_3c3
    :goto_3c3
    const/4 v12, 0x1

    :goto_3c4
    if-nez v4, :cond_3c8

    if-nez v12, :cond_3ca

    :cond_3c8
    const/4 v4, 0x1

    goto :goto_3cf

    :cond_3ca
    const/4 v4, 0x0

    invoke-virtual {v13, v11, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    goto :goto_3a1

    :goto_3cf
    invoke-virtual {v13, v11, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_3d8

    const/4 v4, 0x0

    goto :goto_3da

    :cond_3d8
    iget-boolean v4, v4, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_3da
    if-nez v4, :cond_3e0

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v11, v9}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_3e0
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v4, v13, v11}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    goto :goto_3a1

    :goto_3ea
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v26

    goto/16 :goto_364

    :cond_3f0
    :goto_3f0
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v4, :cond_43f

    iget-object v4, v4, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_43f

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_40b
    if-ge v7, v4, :cond_43f

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    iget-object v11, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v12

    iput v11, v12, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v14, Landroid/content/pm/PackageManager$InstallReason;

    move/from16 v26, v4

    const/4 v4, 0x0

    invoke-static {v14, v4, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v26

    goto :goto_40b

    :cond_43f
    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v4, :cond_46a

    iget-object v4, v4, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_46a

    const/4 v4, 0x0

    :goto_448
    iget-object v7, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_46a

    iget-object v7, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v13, v9, v7}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    const/16 v21, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_448

    :cond_46a
    const/4 v11, -0x1

    if-ne v15, v11, :cond_49a

    array-length v4, v6

    const/4 v7, 0x0

    :goto_46f
    if-ge v7, v4, :cond_4b6

    aget v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_495

    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v11

    if-eqz v11, :cond_495

    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v9

    iput v5, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v11, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v12, 0x0

    invoke-static {v11, v12, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_495
    const/16 v21, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_46f

    :cond_49a
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b6

    invoke-virtual {v13, v15}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    iput v5, v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v4, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v11, 0x0

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_4b6
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4ce

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v4, :cond_4ce

    new-instance v5, Lcom/android/server/pm/IncrementalProgressListener;

    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v5, v9, v7}, Lcom/android/server/pm/IncrementalProgressListener;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/os/incremental/IncrementalManager;->registerLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/IPackageLoadingProgressCallback;)Z

    :cond_4ce
    array-length v0, v6

    const/4 v4, 0x0

    :goto_4d0
    if-ge v4, v0, :cond_4e3

    aget v5, v6, v4

    invoke-virtual {v13, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_4de

    const/4 v11, 0x0

    invoke-virtual {v13, v11, v5}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    :cond_4de
    const/16 v21, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d0

    :cond_4e3
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_517

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_501
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_523

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_501

    :cond_517
    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_51d

    const/4 v7, 0x0

    goto :goto_51f

    :cond_51d
    iget-object v7, v4, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    :goto_51f
    if-eqz v7, :cond_522

    goto :goto_523

    :cond_522
    const/4 v7, 0x0

    :cond_523
    :goto_523
    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x400000

    and-int/2addr v4, v5

    if-eqz v4, :cond_536

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_53e

    :cond_536
    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_53c

    const/4 v4, 0x0

    goto :goto_53e

    :cond_53c
    iget-object v4, v4, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    :goto_53e
    if-eqz v4, :cond_545

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_545
    iget-object v4, v10, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v4, :cond_54b

    const/4 v4, 0x3

    goto :goto_54d

    :cond_54b
    iget v4, v4, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    :goto_54d
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    if-nez v7, :cond_562

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    :cond_562
    invoke-direct {v9, v7, v0, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    invoke-virtual {v5, v2, v9, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    goto :goto_56f

    :cond_569
    move-object/from16 v30, v4

    move-object/from16 v25, v11

    move/from16 v27, v12

    :goto_56f
    iput-object v3, v10, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    iput v0, v10, Lcom/android/server/pm/InstallRequest;->mAppId:I

    iput-object v2, v10, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    const/4 v4, 0x1

    iput v4, v10, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    const-string/jumbo v0, "writeSettings"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v8
    :try_end_58f
    .catchall {:try_start_313 .. :try_end_58f} :catchall_233

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :goto_594
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v4, v30

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_63e

    const/4 v5, 0x1

    invoke-virtual {v3, v6, v5}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    iput-object v0, v10, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    iget-object v0, v10, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    if-eqz v0, :cond_609

    array-length v0, v0

    if-nez v0, :cond_5bc

    goto :goto_609

    :cond_5bc
    iget-object v0, v10, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v5, v0

    const/4 v7, 0x0

    :goto_5c0
    if-ge v7, v5, :cond_605

    aget v8, v0, v7

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    iget-object v11, v10, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v11, v11, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-interface {v11, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v11

    if-nez v9, :cond_5ee

    if-eqz v11, :cond_5e5

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    :goto_5e2
    const/16 v21, 0x1

    goto :goto_602

    :cond_5e5
    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    goto :goto_5e2

    :cond_5ee
    if-eqz v11, :cond_5f9

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v10, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    goto :goto_5e2

    :cond_5f9
    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v10, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    goto :goto_5e2

    :goto_602
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c0

    :cond_605
    const/4 v5, 0x2

    const/4 v8, 0x1

    :goto_607
    const/4 v11, 0x0

    goto :goto_637

    :cond_609
    :goto_609
    iget-object v0, v10, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v5, v0

    const/4 v7, 0x0

    :goto_60d
    if-ge v7, v5, :cond_634

    aget v8, v0, v7

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-interface {v9, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_629

    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    :goto_627
    const/4 v8, 0x1

    goto :goto_632

    :cond_629
    iget-object v9, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    invoke-static {v9, v8}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, v10, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    goto :goto_627

    :goto_632
    add-int/2addr v7, v8

    goto :goto_60d

    :cond_634
    const/4 v8, 0x1

    const/4 v5, 0x2

    goto :goto_607

    :goto_637
    invoke-virtual {v3, v5, v11}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_63f

    :cond_63e
    const/4 v8, 0x1

    :goto_63f
    iget v0, v10, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v0, v8, :cond_7dd

    :try_start_643
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v10, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    invoke-interface {v0, v4, v2, v5}, Landroid/content/pm/IASKSManager;->postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_659
    .catch Ljava/lang/Exception; {:try_start_643 .. :try_end_659} :catch_65a

    goto :goto_668

    :catch_65a
    move-exception v0

    const-string/jumbo v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Exception during postASKSsetup() : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_668
    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v10, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    iget-object v7, v10, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    iget-object v8, v10, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_6be

    if-eqz v5, :cond_6be

    iget-object v0, v5, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    if-eqz v0, :cond_6be

    if-eqz v7, :cond_6be

    if-eqz v8, :cond_6be

    array-length v0, v8

    if-nez v0, :cond_683

    goto :goto_6be

    :cond_683
    const/4 v13, 0x0

    iput-object v13, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/16 v0, 0x10

    const/4 v9, 0x1

    invoke-virtual {v3, v0, v9}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    array-length v0, v8

    const/4 v11, 0x0

    :goto_694
    if-ge v11, v0, :cond_6a5

    aget v12, v8, v11

    invoke-virtual {v3, v12}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v12}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    add-int/2addr v11, v9

    goto :goto_694

    :cond_6a5
    const/4 v13, 0x0

    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c4

    const-string/jumbo v0, "PackageManager"

    const-string v2, "Can\'t create archive state: responsible installer is empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6be
    :goto_6be
    const/16 v20, 0x2

    const/16 v21, 0x1

    goto/16 :goto_7c5

    :cond_6c4
    array-length v11, v8

    move v12, v13

    :goto_6c6
    if-ge v12, v11, :cond_6be

    aget v14, v8, v12

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    move-object/from16 v22, v7

    move-wide/from16 v6, v18

    invoke-interface {v13, v9, v6, v7, v14}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    const-string/jumbo v6, "PackageArchiverService"

    if-nez v13, :cond_6f9

    const-string v0, "Couldn\'t find installer "

    invoke-static {v0, v9, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6ec
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v26, v8

    move-object/from16 v31, v9

    const/4 v7, 0x0

    const/16 v20, 0x2

    goto/16 :goto_7a5

    :cond_6f9
    if-nez v15, :cond_701

    const-string v0, "Couldn\'t get the title of the installer"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6ec

    :cond_701
    iget-object v0, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/ActivityManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    new-instance v7, Landroid/content/pm/ArchivedPackageInfo;

    invoke-direct {v7, v5}, Landroid/content/pm/ArchivedPackageInfo;-><init>(Landroid/content/pm/ArchivedPackageParcel;)V

    :try_start_714
    invoke-virtual {v7}, Landroid/content/pm/ArchivedPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/content/pm/ArchivedPackageInfo;->getLauncherActivities()Ljava/util/List;

    move-result-object v7
    :try_end_71c
    .catch Ljava/io/IOException; {:try_start_714 .. :try_end_71c} :catch_79b

    move-object/from16 v23, v2

    :try_start_71e
    new-instance v2, Ljava/util/ArrayList;
    :try_end_720
    .catch Ljava/io/IOException; {:try_start_71e .. :try_end_720} :catch_797

    move-object/from16 v24, v5

    :try_start_722
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5
    :try_end_72d
    .catch Ljava/io/IOException; {:try_start_722 .. :try_end_72d} :catch_793

    move-object/from16 v26, v8

    const/4 v8, 0x0

    :goto_730
    if-ge v8, v5, :cond_789

    :try_start_732
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ArchivedActivityInfo;

    move/from16 v29, v5

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/ArchivedActivityInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_73e
    .catch Ljava/io/IOException; {:try_start_732 .. :try_end_73e} :catch_783

    move-object/from16 v30, v7

    const/16 v20, 0x2

    mul-int/lit8 v7, v8, 0x2

    :try_start_744
    invoke-static {v13, v5, v14, v7, v0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object v5

    move/from16 v31, v7

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/ArchivedActivityInfo;->getMonochromeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move/from16 v32, v8

    const/16 v21, 0x1

    add-int/lit8 v8, v31, 0x1

    invoke-static {v13, v7, v14, v8, v0}, Lcom/android/server/pm/PackageArchiver;->storeAdaptiveDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;III)Ljava/nio/file/Path;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/ArchivedActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v31

    move/from16 v33, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_764
    .catch Ljava/io/IOException; {:try_start_744 .. :try_end_764} :catch_77f

    move-object/from16 v31, v9

    :try_start_766
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/ArchivedActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct {v8, v0, v9, v5, v7}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    add-int/lit8 v8, v32, 0x1

    move/from16 v5, v29

    move-object/from16 v7, v30

    move-object/from16 v9, v31

    move/from16 v0, v33

    goto :goto_730

    :catch_77d
    move-exception v0

    goto :goto_79f

    :catch_77f
    move-exception v0

    move-object/from16 v31, v9

    goto :goto_79f

    :catch_783
    move-exception v0

    :goto_784
    move-object/from16 v31, v9

    const/16 v20, 0x2

    goto :goto_79f

    :cond_789
    move-object/from16 v31, v9

    const/16 v20, 0x2

    new-instance v7, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {v7, v15, v2}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_792
    .catch Ljava/io/IOException; {:try_start_766 .. :try_end_792} :catch_77d

    goto :goto_7a5

    :catch_793
    move-exception v0

    :goto_794
    move-object/from16 v26, v8

    goto :goto_784

    :catch_797
    move-exception v0

    :goto_798
    move-object/from16 v24, v5

    goto :goto_794

    :catch_79b
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_798

    :goto_79f
    const-string v2, "Failed to create archive state"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    :goto_7a5
    if-eqz v7, :cond_7b0

    invoke-virtual {v3, v14}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v0

    iput-object v7, v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    :cond_7b0
    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    move-object/from16 v5, v24

    move-object/from16 v8, v26

    move-object/from16 v9, v31

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_6c6

    :goto_7c5
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v10, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    const/4 v13, 0x0

    iput-object v13, v3, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iput-object v13, v3, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_7e1

    :cond_7dd
    move/from16 v21, v8

    const/16 v20, 0x2

    :goto_7e1
    iget-object v0, v10, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_7e9

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_7e9
    move-object/from16 v6, p2

    move/from16 v0, v16

    move/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v11, v25

    move/from16 v12, v27

    goto/16 :goto_f

    :goto_7f7
    :try_start_7f7
    monitor-exit v8
    :try_end_7f8
    .catchall {:try_start_7f7 .. :try_end_7f8} :catchall_233

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_7fb
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    return-void
.end method

.method public final commitReconciledScanResultLocked(Lcom/android/server/pm/ReconciledPackage;[I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v6, v5, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v6, :cond_24

    const-string/jumbo v7, "android"

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService;->mSdkVersion:I

    invoke-interface {v6, v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_24
    iget v7, v5, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v8, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v8, v8, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v9, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v9, v9, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v10, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v10, v10, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v10, v10, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v11, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v11, v11, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v11, v11, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v11, :cond_8d

    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v12, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v12, v12, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v12, v12, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v11, v12}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v12

    if-eqz v11, :cond_8d

    if-eq v11, v12, :cond_8d

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v12, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v12, v12, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v12, v12, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v11, v12}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v12, v11, v4}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result v12

    if-eqz v12, :cond_8d

    iget v11, v11, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    iget-object v12, v5, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz v12, :cond_8d

    iput v11, v12, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    iput-boolean v3, v12, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    :cond_8d
    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v11, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean v11, v11, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v11, :cond_b7

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v9, v5, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v9, v9, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v9, v9, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    invoke-virtual {v9, v11, v4}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    iget-object v11, v11, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v11, :cond_af

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    goto :goto_b0

    :cond_af
    const/4 v11, 0x0

    :goto_b0
    invoke-virtual {v9, v11}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_eb

    :cond_b7
    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    if-eqz v9, :cond_dd

    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v14

    invoke-static {v6, v14}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v13, v13, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    :cond_dd
    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9, v13}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ea
    move-object v9, v11

    :goto_eb
    iget-object v11, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v11, v9}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v11

    if-eqz v11, :cond_fb

    invoke-virtual {v11, v9}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    :cond_fb
    iget-object v13, v5, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v13, :cond_10a

    iget-boolean v13, v13, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz v13, :cond_10a

    const/4 v13, 0x4

    invoke-virtual {v9, v13, v3}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_10a
    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v13

    const/high16 v14, 0x4000000

    and-int/2addr v14, v7

    if-eqz v14, :cond_115

    move v14, v3

    goto :goto_116

    :cond_115
    move v14, v4

    :goto_116
    if-eqz v8, :cond_11a

    move v15, v3

    goto :goto_11b

    :cond_11a
    move v15, v4

    :goto_11b
    move/from16 v16, v3

    if-eqz v15, :cond_124

    iget-object v3, v8, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    goto :goto_125

    :cond_124
    const/4 v3, 0x0

    :goto_125
    if-nez v14, :cond_143

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v17

    if-nez v17, :cond_12e

    goto :goto_143

    :cond_12e
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v4

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v4, v4, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_144

    :cond_143
    :goto_143
    const/4 v4, 0x0

    :goto_144
    iget-object v12, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v12, v12, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_155

    move/from16 v12, v16

    goto :goto_156

    :cond_155
    const/4 v12, 0x0

    :goto_156
    const/high16 v19, 0x2000000

    if-eqz v13, :cond_25d

    iget-object v4, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a2

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v20, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_1a4

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne v2, v4, :cond_177

    goto :goto_1a4

    :cond_177
    iget-boolean v4, v13, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    move-object/from16 v23, v2

    iget-boolean v2, v13, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    move/from16 v30, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    move-object/from16 v26, v2

    iget v2, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    move/from16 v21, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iget v13, v13, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    move-object/from16 v28, v2

    move/from16 v29, v4

    move/from16 v22, v13

    invoke-static/range {v21 .. v30}, Lcom/android/server/pm/InstallSource;->createInternal(IILcom/android/server/pm/PackageSignatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v13

    goto :goto_1a4

    :cond_1a2
    move/from16 v20, v2

    :cond_1a4
    :goto_1a4
    if-nez v14, :cond_24f

    iget v2, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    goto :goto_1b2

    :cond_1b0
    iget v2, v5, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_1b2
    if-eqz v15, :cond_1cb

    if-ltz v2, :cond_1bd

    invoke-virtual {v8, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1cb

    goto :goto_1c8

    :cond_1bd
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v4

    if-gt v2, v4, :cond_1cb

    :goto_1c8
    move/from16 v2, v16

    goto :goto_1cc

    :cond_1cb
    const/4 v2, 0x0

    :goto_1cc
    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    and-int v4, v4, v19

    if-eqz v4, :cond_1d7

    move/from16 v4, v16

    goto :goto_1d8

    :cond_1d7
    const/4 v4, 0x0

    :goto_1d8
    iget-object v14, v13, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v3, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    move/from16 v21, v2

    iget-object v2, v13, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-nez v2, :cond_1f1

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v7

    :goto_1ef
    const/4 v2, 0x0

    goto :goto_223

    :cond_1f1
    move/from16 v22, v3

    iget-object v3, v14, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    move/from16 v23, v4

    :try_start_1f8
    iget-object v4, v14, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_200
    if-ltz v4, :cond_21f

    move/from16 v24, v7

    iget-object v7, v14, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_218

    monitor-exit v3

    move/from16 v2, v16

    goto :goto_223

    :catchall_216
    move-exception v0

    goto :goto_24d

    :cond_218
    const/16 v18, -0x1

    add-int/lit8 v4, v4, -0x1

    move/from16 v7, v24

    goto :goto_200

    :cond_21f
    move/from16 v24, v7

    monitor-exit v3
    :try_end_222
    .catchall {:try_start_1f8 .. :try_end_222} :catchall_216

    goto :goto_1ef

    :goto_223
    if-nez v21, :cond_243

    if-eqz v23, :cond_22b

    if-nez v20, :cond_22b

    if-eqz v2, :cond_22d

    :cond_22b
    const/4 v2, 0x0

    goto :goto_23e

    :cond_22d
    if-nez v12, :cond_234

    if-nez v15, :cond_232

    goto :goto_234

    :cond_232
    :goto_232
    const/4 v2, 0x0

    goto :goto_239

    :cond_234
    :goto_234
    if-eqz v12, :cond_251

    if-nez v22, :cond_251

    goto :goto_232

    :goto_239
    invoke-virtual {v13, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v13

    goto :goto_251

    :goto_23e
    invoke-virtual {v13, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v13

    goto :goto_251

    :cond_243
    const/4 v2, 0x0

    if-eqz v22, :cond_248

    if-nez v12, :cond_251

    :cond_248
    invoke-virtual {v13, v2}, Lcom/android/server/pm/InstallSource;->setUpdateOwnerPackageName(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;

    move-result-object v13

    goto :goto_251

    :goto_24d
    :try_start_24d
    monitor-exit v3
    :try_end_24e
    .catchall {:try_start_24d .. :try_end_24e} :catchall_216

    throw v0

    :cond_24f
    move/from16 v24, v7

    :cond_251
    :goto_251
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v13, v9, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_27e

    :cond_25d
    move/from16 v24, v7

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_27e

    if-eqz v12, :cond_270

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_270

    move/from16 v2, v16

    goto :goto_271

    :cond_270
    const/4 v2, 0x0

    :goto_271
    if-eqz v15, :cond_27b

    if-eqz v2, :cond_276

    goto :goto_27b

    :cond_276
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    goto :goto_27e

    :cond_27b
    :goto_27b
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    :cond_27e
    :goto_27e
    const/high16 v2, 0x800000

    and-int v2, v24, v2

    if-eqz v2, :cond_297

    and-int v2, v24, v19

    if-eqz v2, :cond_28b

    move/from16 v2, v16

    goto :goto_28c

    :cond_28b
    const/4 v2, 0x0

    :goto_28c
    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->apkInUpdatedApex:Z

    iget-object v2, v3, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_297
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-object v3, v5, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mApexModuleName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-interface {v6, v2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-nez v3, :cond_2bb

    goto :goto_2f6

    :cond_2bb
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2c7

    goto :goto_2f6

    :cond_2c7
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_2ce
    :goto_2ce
    if-ge v6, v4, :cond_2f6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/pm/UserInfo;

    if-nez v8, :cond_2dd

    sget-object v12, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    goto :goto_2e3

    :cond_2dd
    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v12}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    :goto_2e3
    iget v13, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v13}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2ce

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v12}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    goto :goto_2ce

    :cond_2f6
    :goto_2f6
    if-eqz v10, :cond_303

    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_303
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v2, :cond_313

    if-eqz v8, :cond_32c

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32c

    :cond_313
    iget-object v14, v0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    iget-object v3, v14, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, p2

    move-object/from16 v19, v2

    move-object/from16 v16, v9

    :try_start_328
    invoke-virtual/range {v14 .. v20}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    monitor-exit v3
    :try_end_32c
    .catchall {:try_start_328 .. :try_end_32c} :catchall_393

    :cond_32c
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-boolean v3, v1, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    if-eqz v3, :cond_33d

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    :cond_33d
    iget-boolean v2, v1, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    if-eqz v2, :cond_34d

    if-eqz v11, :cond_34d

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    iget-object v2, v11, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v3, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :cond_34d
    iget-object v2, v1, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v2, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    iget v2, v5, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v15, v9, v8, v1}, Lcom/android/server/pm/InstallPackageHelper;->commitPackageSettings(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/ReconciledPackage;)V

    invoke-virtual {v9, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v1

    if-eqz v1, :cond_36a

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget v3, v9, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    :cond_36a
    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37f

    iget v1, v9, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_37f

    iput v2, v9, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_37f
    invoke-static {v9}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_392

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v9, v4}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_392
    return-object v15

    :catchall_393
    move-exception v0

    :try_start_394
    monitor-exit v3
    :try_end_395
    .catchall {:try_start_394 .. :try_end_395} :catchall_393

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final completeInstallProcess(Ljava/util/List;Ljava/util/Map;ZLjava/util/Map;)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz p3, :cond_7d

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallRequest;

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManagerInternal;

    iget-object v7, v5, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    iget v8, v5, Lcom/android/server/pm/InstallRequest;->mAppId:I

    invoke-virtual {v6, v7, v8}, Landroid/app/AppOpsManagerInternal;->onPackageAdded(Ljava/lang/String;I)V

    iget-object v6, v5, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v6, :cond_31

    move v7, v1

    goto :goto_33

    :cond_31
    iget v7, v6, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    :goto_33
    const/4 v8, 0x2

    if-eq v7, v8, :cond_37

    goto :goto_c

    :cond_37
    if-nez v6, :cond_3b

    move v7, v1

    goto :goto_41

    :cond_3b
    iget-object v7, v6, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v7

    :goto_41
    const/4 v8, 0x4

    if-eq v7, v8, :cond_45

    goto :goto_c

    :cond_45
    iget-object v7, v5, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_56

    const/4 v9, 0x0

    :goto_54
    move-object v11, v9

    goto :goto_5f

    :cond_56
    iget-object v9, v6, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_54

    :goto_5f
    iget v10, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v9, v10, 0x1

    iput v9, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v6, :cond_6d

    move v14, v1

    goto :goto_70

    :cond_6d
    iget v6, v6, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    move v14, v6

    :goto_70
    invoke-virtual {v5}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v15

    iget-object v5, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    move-object/from16 v16, v5

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    goto :goto_c

    :cond_7d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_81
    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/InstallRequest;

    iget-object v6, v5, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v6, :cond_a9

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v8, p2

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-virtual {v0, v5}, Lcom/android/server/pm/InstallPackageHelper;->cleanUpAppIdCreation(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_81

    :cond_a9
    move-object/from16 v8, p2

    goto :goto_81

    :cond_ac
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b0
    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstallRequest;

    iget-object v5, v4, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_c3
    iget v5, v4, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v5, v2, :cond_b0

    iput v1, v4, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    goto :goto_b0

    :cond_ca
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    if-eqz p3, :cond_109

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_109

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_109

    move-object/from16 v0, p4

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e7
    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_109

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-ne v1, v2, :cond_e7

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    goto :goto_e7

    :cond_109
    return-void
.end method

.method public final disableStubPackage(Lcom/android/server/pm/DeletePackageAction;Lcom/android/server/pm/PackageSetting;[I)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_2e

    iget-object p1, p1, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    const/4 p2, -0x1

    if-nez p1, :cond_13

    move p1, p2

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :goto_17
    const-string/jumbo v0, "android"

    const/4 v1, 0x2

    if-ne p1, p2, :cond_29

    array-length p1, p3

    const/4 p2, 0x0

    :goto_1f
    if-ge p2, p1, :cond_2e

    aget v2, p3, p2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    :cond_29
    if-ltz p1, :cond_2e

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public final doPostInstall(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V
    .registers 9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v3, 0x1

    if-eqz p2, :cond_29

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iget-object v4, p2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    if-ne v1, v3, :cond_23

    iget-object v1, p2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    invoke-virtual {v2, v1, v5, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_23
    iget-object v1, p2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {v2, v1, v5, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_29
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v4

    if-eqz v4, :cond_60

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v1, v3, :cond_4e

    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_4

    :cond_4e
    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_4

    :cond_60
    iget v4, v1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    if-eq v4, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    goto :goto_4

    :cond_6c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_70

    :cond_80
    return-void
.end method

.method public final doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .registers 10

    const-string/jumbo v0, "PackageManager"

    iget v1, p1, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iget-object v2, p1, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    const/4 v6, 0x1

    if-eqz v3, :cond_3b

    if-ne v1, v6, :cond_14

    return-void

    :cond_14
    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_1f

    iget-object p1, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p1, :cond_1f

    iget-object p1, p1, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    goto :goto_20

    :cond_1f
    move-object p1, v4

    :goto_20
    if-eqz p0, :cond_29

    iget-object p2, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p2, :cond_29

    iget-object p2, p2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    goto :goto_2a

    :cond_29
    move-object p2, v4

    :goto_2a
    if-eqz p0, :cond_32

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_32

    iget-object v4, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    :cond_32
    invoke-virtual {v5, p1, p2, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3b
    if-ne v1, v6, :cond_11f

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-eqz v1, :cond_4f

    invoke-static {v4}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_53

    :cond_4f
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :goto_53
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v3, :cond_70

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    :goto_71
    :try_start_71
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    if-eqz v6, :cond_85

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {p0, v2, v1}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_90

    :catch_82
    move-exception p0

    goto/16 :goto_113

    :cond_85
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_90} :catch_82
    .catch Landroid/system/ErrnoException; {:try_start_71 .. :try_end_90} :catch_82

    :goto_90
    const/16 p0, -0x14

    if-nez v6, :cond_a6

    invoke-static {v1}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_9b

    goto :goto_a6

    :cond_9b
    const-string p1, "Failed to restorecon"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_a6
    :goto_a6
    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    :try_start_a9
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_da

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_d7} :catch_d8

    goto :goto_da

    :catch_d8
    move-exception p1

    goto :goto_f8

    :cond_da
    :goto_da
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->updateAllCodePaths(Ljava/util/List;)V

    return-void

    :goto_f8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get path: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/android/server/pm/PrepareFailure;

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :goto_113
    const-string p1, "Failed to rename"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_11f
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    new-instance p0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v2, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_68

    if-nez v1, :cond_1f

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_23

    :cond_1f
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_23
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {v3, v1, v2, p3}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {v3, v1, p2}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    return p0

    :cond_38
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {v0, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_45

    return v2

    :cond_45
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter p0

    :try_start_54
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    iget-object p2, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object p1, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit p0

    return v2

    :catchall_61
    move-exception p1

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_61

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p1

    :cond_66
    const/4 p0, 0x0

    return p0

    :catchall_68
    move-exception p0

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final executePostCommitStepsLIF(Ljava/util/List;)V
    .registers 11

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_d
    :goto_d
    if-ge v3, v1, :cond_59

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/pm/ReconciledPackage;

    iget-object v4, v4, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v8, :cond_45

    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-virtual {v8, v7}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object v7

    if-eqz v7, :cond_39

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Install: null storage for incremental package "

    invoke-static {p1, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    iget-boolean v4, v4, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-virtual {v7, v5, v6, v4}, Lcom/android/server/pm/dex/DexManager;->notifyPackageUpdated([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_59
    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string/jumbo p0, "native_lib_extract"

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_65

    return-void

    :cond_65
    :try_start_65
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    :goto_6c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ge v2, p1, :cond_80

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/incremental/IncrementalStorage;

    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->waitForNativeBinariesExtraction()Z
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_7e

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :catchall_7e
    move-exception p1

    goto :goto_88

    :cond_80
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    return-void

    :goto_88
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    throw p1
.end method

.method public final getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I
    .registers 15

    iget v0, p1, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const-string v1, " doesn\'t exist or has been removed"

    const-string/jumbo v2, "User "

    const/16 v3, -0x26

    const/4 v4, -0x1

    if-eq v0, v4, :cond_20

    const/4 v5, -0x2

    if-eq v0, v5, :cond_20

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_20

    :cond_16
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    if-eq v0, v4, :cond_2b

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_5c

    :cond_2b
    if-eqz p2, :cond_5c

    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    array-length v4, p2

    const/4 v6, 0x0

    move v7, v6

    :goto_32
    if-ge v7, v4, :cond_5c

    aget v8, p2, v7

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "no_install_apps"

    invoke-virtual {v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_51

    const-string/jumbo v11, "no_debugging_features"

    invoke-virtual {v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4f

    goto :goto_51

    :cond_4f
    move v10, v6

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v10, 0x1

    :goto_52
    if-nez v9, :cond_56

    if-nez v10, :cond_59

    :cond_56
    invoke-virtual {v5, v8}, Landroid/util/IntArray;->add(I)V

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_5c
    :goto_5c
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eqz p0, :cond_67

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    :cond_67
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 10

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto/16 :goto_d9

    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_16
    if-ltz p2, :cond_d9

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    if-eqz v1, :cond_d5

    iget v2, v1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    and-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, "PackageManager"

    const-string v4, " to "

    const-string/jumbo v5, "Unable to update from "

    if-nez v2, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": old package not in system partition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d5

    :cond_5c
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": old package still exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_89
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_d4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to migrate data from "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": old shared user settings name "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " differs from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_d4
    return-object v1

    :cond_d5
    :goto_d5
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_16

    :cond_d9
    :goto_d9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 14

    const-wide/32 v1, 0x40000

    const-string/jumbo v0, "parsePackage"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_18
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_9 .. :try_end_18} :catch_34
    .catchall {:try_start_9 .. :try_end_18} :catchall_31

    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {v3, p1, p2, v0}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v5
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_37

    :try_start_1d
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_20
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_1d .. :try_end_20} :catch_34
    .catchall {:try_start_1d .. :try_end_20} :catchall_31

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    return-object p0

    :catchall_31
    move-exception v0

    move-object p0, v0

    goto :goto_4f

    :catch_34
    move-exception v0

    move-object p0, v0

    goto :goto_43

    :catchall_37
    move-exception v0

    move-object p0, v0

    :try_start_39
    invoke-virtual {v3}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_42

    :catchall_3d
    move-exception v0

    move-object p1, v0

    :try_start_3f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
    :try_end_43
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_3f .. :try_end_43} :catch_34
    .catchall {:try_start_3f .. :try_end_43} :catchall_31

    :goto_43
    :try_start_43
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    iget p2, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    invoke-virtual {p0}, Lcom/android/internal/pm/parsing/PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_31

    :goto_4f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scanPackage ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/InstallPackageHelper;->initPackageLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_27

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_27
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.permission.INSTALL_EXISTING_PACKAGES"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_37

    :cond_28
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Neither user "

    const-string v2, " nor current process has android.permission.INSTALL_PACKAGES."

    invoke-static {v5, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_37
    const/16 v0, 0x7d0

    const/16 v13, -0x6f

    if-ne v5, v0, :cond_65

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v0

    if-eqz v0, :cond_65

    const/16 v0, 0x4d

    if-eq v4, v0, :cond_65

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not allowed to install-existing on user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_65
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-string/jumbo v0, "installExistingPackage for user "

    invoke-static {v4, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move v6, v4

    move-object v4, v0

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    move v7, v5

    move v4, v6

    move-object v6, v3

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "no_install_apps"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_90
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-static {v7, v4}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(II)Z

    move-result v0

    const/4 v8, -0x1

    if-nez v0, :cond_bc

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "installExistingPackageAsUser the app with uid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not installed via approved installer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_bc
    const-string/jumbo v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "verifying app can be installed or not for user - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_145

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_e5
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    monitor-exit v3
    :try_end_f4
    .catchall {:try_start_e5 .. :try_end_f4} :catchall_140

    if-eqz v5, :cond_145

    :try_start_f6
    iget-object v3, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v3, :cond_145

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v15}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v15
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_109} :catch_145

    const/16 v16, -0x6e

    :try_start_10b
    new-instance v14, Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v15, :cond_128

    array-length v5, v15

    const/4 v13, 0x0

    :goto_11a
    if-ge v13, v5, :cond_128

    aget-object v17, v15, v13

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v12

    const/4 v8, -0x1

    goto :goto_11a

    :cond_128
    invoke-interface {v0, v2, v3, v14, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_147

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v3, "This app installation is not allowed"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_13f} :catch_147

    return-object v0

    :catchall_140
    move-exception v0

    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catch_145
    :cond_145
    const/16 v16, -0x6e

    :catch_147
    :cond_147
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    const/4 v8, -0x3

    if-eqz v0, :cond_1bc

    :try_start_155
    invoke-interface {v0, v4, v12}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result v3

    if-nez v3, :cond_1bc

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3
    :try_end_162
    .catch Landroid/os/RemoteException; {:try_start_155 .. :try_end_162} :catch_1bc

    :try_start_162
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-nez v5, :cond_17e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_17c
    move-exception v0

    goto :goto_1b8

    :cond_17e
    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v5, v5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-static {v5}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_1b6

    invoke-interface {v0, v4, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ad

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v5, "This admin app installation is not allowed"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_1ad
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v5, "This admin app installation is allowed"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    monitor-exit v3

    goto :goto_1bc

    :goto_1b8
    monitor-exit v3
    :try_end_1b9
    .catchall {:try_start_162 .. :try_end_1b9} :catchall_17c

    :try_start_1b9
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_1bc
    .catch Landroid/os/RemoteException; {:try_start_1b9 .. :try_end_1bc} :catch_1bc

    :catch_1bc
    :cond_1bc
    :goto_1bc
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v13, v0

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;

    move-object v3, v2

    move v2, v4

    move-wide v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallPackageHelper;ILjava/lang/String;J)V

    move-object v13, v1

    move v4, v2

    move-object v2, v3

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_1dd

    move v0, v12

    goto :goto_1de

    :cond_1dd
    const/4 v0, 0x0

    :goto_1de
    and-int/lit16 v1, v9, 0x4000

    if-eqz v1, :cond_1e4

    move v1, v12

    goto :goto_1e5

    :cond_1e4
    const/4 v1, 0x0

    :goto_1e5
    :try_start_1e5
    iget-object v3, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    move-result v3

    iget-object v5, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    if-eqz v5, :cond_1fe

    invoke-virtual {v5, v4, v2}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1fe

    move v5, v12

    :goto_1f8
    move/from16 v17, v8

    goto :goto_200

    :catchall_1fb
    move-exception v0

    goto/16 :goto_4dc

    :cond_1fe
    const/4 v5, 0x0

    goto :goto_1f8

    :goto_200
    iget-object v8, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v18, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v8
    :try_end_207
    .catchall {:try_start_1e5 .. :try_end_207} :catchall_1fb

    :try_start_207
    iget-object v12, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    move/from16 v19, v3

    iget-object v3, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_4cb

    move/from16 v20, v5

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v5, :cond_221

    goto/16 :goto_4cb

    :cond_221
    if-eqz v0, :cond_243

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_233

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean v5, v5, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    if-nez v5, :cond_233

    if-nez v19, :cond_233

    if-eqz v20, :cond_243

    :cond_233
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v8
    :try_end_23c
    .catchall {:try_start_207 .. :try_end_23c} :catchall_240

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_240
    move-exception v0

    goto/16 :goto_4d8

    :cond_243
    :try_start_243
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v5, :cond_24a

    move-object v5, v3

    :goto_248
    const/4 v3, 0x0

    goto :goto_262

    :cond_24a
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v23

    const-wide/16 v21, 0x80

    const/16 v24, -0x1

    move-object/from16 v25, v3

    move-object/from16 v20, v5

    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object/from16 v5, v25

    if-nez v3, :cond_260

    goto :goto_248

    :cond_260
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_262
    if-eqz v4, :cond_272

    if-nez v3, :cond_267

    goto :goto_272

    :cond_267
    const-string/jumbo v9, "com.samsung.android.multiuser.install_only_owner"

    invoke-static {v3, v9}, Lcom/samsung/android/server/pm/MetaDataHelper;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_272

    const/4 v3, 0x1

    goto :goto_273

    :cond_272
    :goto_272
    const/4 v3, 0x0

    :goto_273
    if-eqz v3, :cond_2be

    if-eqz v3, :cond_288

    const/4 v1, 0x1

    if-eq v3, v1, :cond_285

    const/4 v0, 0x2

    if-eq v3, v0, :cond_282

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28a

    :cond_282
    const-string v0, "INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST"

    goto :goto_28a

    :cond_285
    const-string v0, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    goto :goto_28a

    :cond_288
    const-string v0, "INSTALL_ALLOWD"

    :goto_28a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install failed. Not allowed to install due to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of Package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for User "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v8
    :try_end_2ba
    .catchall {:try_start_243 .. :try_end_2ba} :catchall_240

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_2be
    :try_start_2be
    invoke-static {v5}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2c6

    const/4 v3, 0x0

    goto :goto_2cc

    :cond_2c6
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {v4, v9, v3}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    :goto_2cc
    if-eqz v3, :cond_2e4

    const-string/jumbo v0, "This app installation is not allowed"

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v8
    :try_end_2e0
    .catchall {:try_start_2be .. :try_end_2e0} :catchall_240

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_2e4
    :try_start_2e4
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v12, v7, v3}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v3

    if-nez v3, :cond_31f

    iget-object v3, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v9, v3

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_2fa
    if-ge v12, v9, :cond_30e

    aget v2, v3, v12

    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    const/16 v18, 0x1

    xor-int/lit8 v16, v2, 0x1

    if-nez v2, :cond_309

    goto :goto_30e

    :cond_309
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    goto :goto_2fa

    :cond_30e
    :goto_30e
    if-nez v16, :cond_31f

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v8
    :try_end_319
    .catchall {:try_start_2e4 .. :try_end_319} :catchall_240

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_31f
    :try_start_31f
    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_370

    const/4 v2, 0x1

    invoke-virtual {v5, v4, v2}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object v2

    iput v10, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    const-class v3, Landroid/content/pm/PackageManager$InstallReason;

    const/4 v9, 0x0

    invoke-static {v3, v9, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v4}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v4, v2, v3}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(IJ)V

    iget-object v2, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/pm/PackageArchiver;->clearArchiveState(Lcom/android/server/pm/PackageSetting;I)V

    iget-object v2, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    iget-object v2, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_36e
    const/4 v2, 0x1

    goto :goto_37b

    :cond_370
    const/4 v9, 0x0

    if-eqz v1, :cond_37a

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_37a

    goto :goto_36e

    :cond_37a
    move v2, v9

    :goto_37b
    iget-object v3, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v3, v5, v4, v0, v1}, Lcom/android/server/pm/ScanPackageUtils;->setInstantAppForUser(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageSetting;IZZ)V

    monitor-exit v8
    :try_end_383
    .catchall {:try_start_31f .. :try_end_383} :catchall_240

    :try_start_383
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v2, :cond_47a

    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    iget-object v1, v13, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v1, :cond_3a4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v1

    if-eqz v1, :cond_3a4

    const/4 v1, 0x1

    goto :goto_3a5

    :cond_3a4
    move v1, v9

    :goto_3a5
    invoke-interface {v6, v7, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3b3

    if-nez v1, :cond_3b5

    :cond_3b3
    const/4 v8, 0x0

    goto :goto_3b7

    :cond_3b5
    const/4 v8, 0x0

    goto :goto_3ba

    :goto_3b7
    invoke-virtual {v5, v8}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    :goto_3ba
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v0, :cond_40c

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/high16 v1, 0x400000

    and-int v1, p3, v1

    if-eqz v1, :cond_3d7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :cond_3d7
    iget-object v1, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v2, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    const/4 v10, 0x3

    invoke-direct {v3, v6, v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_3f4
    .catchall {:try_start_383 .. :try_end_3f4} :catchall_1fb

    :try_start_3f4
    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    filled-new-array {v4}, [I

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V
    :try_end_3fd
    .catchall {:try_start_3f4 .. :try_end_3fd} :catchall_401

    :try_start_3fd
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_400
    .catchall {:try_start_3fd .. :try_end_400} :catchall_1fb

    goto :goto_40c

    :catchall_401
    move-exception v0

    move-object v2, v0

    :try_start_403
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_406
    .catchall {:try_start_403 .. :try_end_406} :catchall_407

    goto :goto_40b

    :catchall_407
    move-exception v0

    :try_start_408
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40b
    throw v2

    :cond_40c
    :goto_40c
    iget-object v0, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v0, :cond_411

    const/4 v9, 0x1

    :cond_411
    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object v3, v5

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V

    move-object v9, v2

    move-object v10, v3

    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1
    :try_end_42b
    .catchall {:try_start_408 .. :try_end_42b} :catchall_1fb

    :try_start_42b
    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    filled-new-array {v4}, [I

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    monitor-exit v1
    :try_end_435
    .catchall {:try_start_42b .. :try_end_435} :catchall_475

    :try_start_435
    new-instance v0, Lcom/android/server/pm/InstallRequest;

    iget-object v2, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    filled-new-array {v4}, [I

    move-result-object v3

    new-instance v1, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v13, v9, v4, v11}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V

    iget v5, v10, Lcom/android/server/pm/PackageSetting;->mAppId:I

    move v6, v7

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    move/from16 v26, v4

    move-object v4, v1

    move/from16 v1, v26

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/InstallRequest;-><init>(ILcom/android/server/pm/pkg/AndroidPackage;[ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;IIZ)V

    move v4, v1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    iget-wide v0, v10, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget-object v2, v13, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v2, :cond_46a

    const-string/jumbo v2, "null"

    :cond_46a
    filled-new-array {v9, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x48

    invoke-static {v4, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_473
    .catchall {:try_start_435 .. :try_end_473} :catchall_1fb

    move-object v11, v8

    goto :goto_47c

    :catchall_475
    move-exception v0

    :try_start_476
    monitor-exit v1
    :try_end_477
    .catchall {:try_start_476 .. :try_end_477} :catchall_475

    :try_start_477
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_47a
    .catchall {:try_start_477 .. :try_end_47a} :catchall_1fb

    :cond_47a
    move-object/from16 v9, p1

    :goto_47c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_4a7

    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4a7

    if-eqz v4, :cond_4aa

    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-ne v4, v0, :cond_4a7

    goto :goto_4aa

    :cond_4a7
    :goto_4a7
    const/16 v18, 0x1

    goto :goto_4c2

    :cond_4aa
    :goto_4aa
    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a7

    iget-object v0, v13, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallation(Ljava/lang/String;)V

    goto :goto_4a7

    :goto_4c2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_4cb
    :goto_4cb
    :try_start_4cb
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v8
    :try_end_4d4
    .catchall {:try_start_4cb .. :try_end_4d4} :catchall_240

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_4d8
    :try_start_4d8
    monitor-exit v8
    :try_end_4d9
    .catchall {:try_start_4d8 .. :try_end_4d9} :catchall_240

    :try_start_4d9
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_4dc
    .catchall {:try_start_4d9 .. :try_end_4dc} :catchall_1fb

    :goto_4dc
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final installPackageFromSystemLIF(Ljava/lang/String;[I[IZ)V
    .registers 16

    const/4 v1, 0x1

    const-string/jumbo v2, "updateAllSharedLibrariesLPw failed: "

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v3, p1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    or-int/lit8 v3, v3, 0x11

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result p1

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p1

    :try_start_1e
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_3a

    :try_start_2a
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/SharedLibrariesImpl;->updateSharedLibraries(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    :try_end_39
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2a .. :try_end_39} :catch_3e
    .catchall {:try_start_2a .. :try_end_39} :catchall_3a

    goto :goto_55

    :catchall_3a
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d2

    :catch_3e
    move-exception v0

    :try_start_3f
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_3a

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_5d
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p3, :cond_6e

    move v3, v1

    goto :goto_6f

    :cond_6e
    move v3, v0

    :goto_6f
    if-eqz v3, :cond_a1

    array-length v4, p2

    move v6, v0

    move v7, v6

    :goto_74
    if-ge v6, v4, :cond_91

    aget v8, p2, v6

    invoke-static {p3, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    invoke-virtual {p1, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v10

    if-eq v9, v10, :cond_83

    move v7, v1

    :cond_83
    invoke-virtual {p1, v8, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    if-eqz v9, :cond_8f

    invoke-virtual {p1, v0, v8}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_8f

    :catchall_8c
    move-exception v0

    move-object p0, v0

    goto :goto_ce

    :cond_8f
    :goto_8f
    add-int/2addr v6, v1

    goto :goto_74

    :cond_91
    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3, v0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    if-eqz v7, :cond_a1

    iget-object p3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :cond_a1
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    sget-object p3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    const/4 v4, -0x1

    invoke-virtual {p1, v5, p3, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    array-length p1, p2

    move p3, v0

    :goto_ad
    if-ge p3, p1, :cond_be

    aget v4, p2, p3

    if-eqz v3, :cond_bc

    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v6, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    :cond_bc
    add-int/2addr p3, v1

    goto :goto_ad

    :cond_be
    if-eqz p4, :cond_c5

    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    :cond_c5
    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_5d .. :try_end_c6} :catchall_8c

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    return-void

    :goto_ce
    :try_start_ce
    monitor-exit v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_8c

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    :goto_d2
    :try_start_d2
    monitor-exit p1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_3a

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .registers 25

    move-object/from16 v1, p0

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No files in app dir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    move-object/from16 v8, p1

    new-instance v9, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v9, v2, v3}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    array-length v2, v0

    const/4 v10, 0x0

    move v3, v10

    move v4, v3

    :goto_34
    const/high16 v11, 0x10000

    if-ge v3, v2, :cond_e1

    aget-object v5, v0, v3

    invoke-static {v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_47

    goto :goto_4b

    :cond_47
    :goto_47
    move/from16 v12, p2

    goto/16 :goto_de

    :cond_4b
    :goto_4b
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    const/high16 v6, 0x1000000

    and-int v6, p3, v6

    if-eqz v6, :cond_81

    new-instance v6, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v12, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v12, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v6, v13, v12}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$3;)V

    const-string/jumbo v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Dropping cache of "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v5}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V

    :cond_81
    and-int v6, p3, v11

    if-eqz v6, :cond_d1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_d1

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v11, v6, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v12, v6, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v6, v12, v11}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/pm/install/SkippingApks;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d1

    iget-object v6, v6, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v10

    :cond_c0
    if-ge v13, v12, :cond_d1

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/2addr v13, v7

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c0

    goto/16 :goto_47

    :cond_d1
    iget-object v6, v9, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    move/from16 v12, p2

    invoke-direct {v11, v9, v5, v12}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v6, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/2addr v4, v7

    :goto_de
    add-int/2addr v3, v7

    goto/16 :goto_34

    :cond_e1
    move v13, v4

    :goto_e2
    move/from16 v12, p2

    if-lez v13, :cond_2be

    invoke-virtual {v9}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v14

    iget-object v0, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    const/4 v15, 0x5

    if-nez v0, :cond_1d7

    const-wide/32 v2, 0x40000

    :try_start_f2
    iget-object v0, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v0, :cond_180

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5
    :try_end_101
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_f2 .. :try_end_101} :catch_17c
    .catchall {:try_start_f2 .. :try_end_101} :catchall_176

    :try_start_101
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_109

    move v0, v10

    goto :goto_110

    :cond_109
    const-string/jumbo v6, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_110
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6
    :try_end_114
    .catchall {:try_start_101 .. :try_end_114} :catchall_16f

    move/from16 p4, v11

    :try_start_116
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    sget v11, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v7, 0x23

    if-lt v11, v7, :cond_14b

    if-eqz v0, :cond_14b

    const-string/jumbo v0, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package installation skipped "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_143
    .catchall {:try_start_116 .. :try_end_143} :catchall_149

    :goto_143
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v3, 0x1

    goto/16 :goto_2a0

    :catchall_149
    move-exception v0

    goto :goto_172

    :cond_14b
    const/16 v7, 0x22

    if-gt v11, v7, :cond_16d

    if-eqz v0, :cond_16d

    if-nez v6, :cond_16d

    :try_start_153
    const-string/jumbo v0, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package installation skipped "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_143

    :cond_16d
    monitor-exit v5

    goto :goto_182

    :catchall_16f
    move-exception v0

    move/from16 p4, v11

    :goto_172
    monitor-exit v5
    :try_end_173
    .catchall {:try_start_153 .. :try_end_173} :catchall_149

    :try_start_173
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_176
    move-exception v0

    move-wide v11, v2

    goto :goto_1d3

    :catch_179
    move-exception v0

    :goto_17a
    move-wide v11, v2

    goto :goto_1ab

    :catch_17c
    move-exception v0

    move/from16 p4, v11

    goto :goto_17a

    :cond_180
    move/from16 p4, v11

    :goto_182
    const-string/jumbo v0, "addForInitLI"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_188
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_173 .. :try_end_188} :catch_179
    .catchall {:try_start_173 .. :try_end_188} :catchall_176

    move-wide v3, v2

    :try_start_189
    iget-object v2, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_190
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_189 .. :try_end_190} :catch_1a9
    .catchall {:try_start_189 .. :try_end_190} :catchall_1a6

    move-wide/from16 v16, v3

    move v3, v12

    move-wide/from16 v11, v16

    move/from16 v4, p3

    move-object/from16 v6, p6

    :try_start_199
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_19c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_199 .. :try_end_19c} :catch_1a4
    .catchall {:try_start_199 .. :try_end_19c} :catchall_1a2

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_200

    :catchall_1a2
    move-exception v0

    goto :goto_1d3

    :catch_1a4
    move-exception v0

    goto :goto_1ab

    :catchall_1a6
    move-exception v0

    move-wide v11, v3

    goto :goto_1d3

    :catch_1a9
    move-exception v0

    move-wide v11, v3

    :goto_1ab
    :try_start_1ab
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to scan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1cf
    .catchall {:try_start_1ab .. :try_end_1cf} :catchall_1a2

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_200

    :goto_1d3
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_1d7
    move/from16 p4, v11

    instance-of v2, v0, Lcom/android/server/pm/PackageManagerException;

    if-eqz v2, :cond_2a7

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_200
    const/high16 v3, 0x800000

    and-int v3, p3, v3

    if-eqz v3, :cond_244

    const/4 v3, 0x1

    if-eq v2, v3, :cond_244

    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    iget-object v5, v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_214
    iget-object v6, v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21c
    :goto_21c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_240

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v11, v7, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21c

    iget-object v11, v3, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    iget-object v7, v7, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21c

    :catchall_23e
    move-exception v0

    goto :goto_242

    :cond_240
    monitor-exit v5

    goto :goto_244

    :goto_242
    monitor-exit v5
    :try_end_243
    .catchall {:try_start_214 .. :try_end_243} :catchall_23e

    throw v0

    :cond_244
    :goto_244
    and-int v0, p3, p4

    const/4 v3, 0x1

    if-nez v0, :cond_2a0

    if-eq v2, v3, :cond_2a0

    iget-object v0, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-eqz v0, :cond_286

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_258
    iget-object v2, v2, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v4
    :try_end_261
    .catchall {:try_start_258 .. :try_end_261} :catchall_283

    if-eqz v0, :cond_286

    const-string/jumbo v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Duplicate package "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but, It will be installed later"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a0

    :catchall_283
    move-exception v0

    :try_start_284
    monitor-exit v4
    :try_end_285
    .catchall {:try_start_284 .. :try_end_285} :catchall_283

    throw v0

    :cond_286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Deleting invalid package at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v2, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_2a0
    :goto_2a0
    add-int/lit8 v13, v13, -0x1

    move/from16 v11, p4

    move v7, v3

    goto/16 :goto_e2

    :cond_2a7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected exception occurred while parsing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2be
    return-void
.end method

.method public final installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 20

    move-object/from16 v1, p0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_20

    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Uncompressing system stub; pkg: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_34

    array-length v5, v5

    if-lez v5, :cond_34

    move v5, v2

    goto :goto_35

    :cond_34
    move v5, v6

    :goto_35
    const/4 v7, 0x0

    if-nez v5, :cond_45

    if-eqz v0, :cond_145

    const-string/jumbo v0, "No files to decompress at: "

    const-string/jumbo v2, "PackageManager"

    invoke-static {v0, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_145

    :cond_45
    invoke-static {v7}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v8, "Failed to decompress; pkg: "

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/16 v4, 0x1ed

    const/4 v9, 0x6

    :try_start_56
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    array-length v4, v0
    :try_end_5a
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5a} :catch_b4

    move v11, v2

    move v10, v6

    :goto_5c
    if-ge v10, v4, :cond_c8

    :try_start_5e
    aget-object v12, v0, v10

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v13, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12, v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->decompressFile(Ljava/io/File;Ljava/io/File;)I

    move-result v11
    :try_end_77
    .catch Landroid/system/ErrnoException; {:try_start_5e .. :try_end_77} :catch_94

    const-string v12, ", file: "

    if-eq v11, v2, :cond_96

    :try_start_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_c8

    :catch_94
    move-exception v0

    goto :goto_b6

    :cond_96
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Success to decompress; pkg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_b2
    .catch Landroid/system/ErrnoException; {:try_start_7b .. :try_end_b2} :catch_94

    add-int/2addr v10, v2

    goto :goto_5c

    :catch_b4
    move-exception v0

    move v11, v2

    :goto_b6
    const-string v4, ", err: "

    invoke-static {v8, v3, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_c8
    :goto_c8
    if-ne v11, v2, :cond_10f

    const-string v4, "Failed to extract native libraries; pkg: "

    new-instance v0, Ljava/io/File;

    const-string/jumbo v8, "lib"

    invoke-direct {v0, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_d4
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v8
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d8} :catch_e8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_e6

    :try_start_d8
    invoke-static {v8, v0, v7, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v0
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_dc} :catch_e4
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_e1

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_df
    move v11, v0

    goto :goto_10f

    :catchall_e1
    move-exception v0

    move-object v7, v8

    goto :goto_10b

    :catch_e4
    move-exception v0

    goto :goto_ea

    :catchall_e6
    move-exception v0

    goto :goto_10b

    :catch_e8
    move-exception v0

    move-object v8, v7

    :goto_ea
    :try_start_ea
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; err: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_105
    .catchall {:try_start_ea .. :try_end_105} :catchall_e1

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/16 v0, -0x6e

    goto :goto_df

    :goto_10b
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_10f
    :goto_10f
    if-ne v11, v2, :cond_139

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    if-nez v0, :cond_12e

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    if-nez v2, :cond_124

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    :cond_124
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mReleaseOnSystemReady:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_137

    :cond_12e
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :goto_137
    move-object v7, v5

    goto :goto_145

    :cond_139
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_140

    goto :goto_145

    :cond_140
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_145
    :goto_145
    if-eqz v7, :cond_18e

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_14e
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_14e .. :try_end_15a} :catchall_189

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    move/from16 v2, p2

    move/from16 v4, p3

    :try_start_165
    invoke-virtual {v1, v7, v2, v4}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0
    :try_end_169
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_165 .. :try_end_169} :catch_16a

    return-object v0

    :catch_16a
    move-exception v0

    const-string/jumbo v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to install compressed system package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v1, v7}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    throw v0

    :catchall_189
    move-exception v0

    :try_start_18a
    monitor-exit v2
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_189

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_18e
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to decompress stub at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0xb

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean v0, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    :try_start_1a
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p1, p1, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->registerAppIdLPw(Lcom/android/server/pm/PackageSetting;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final performSpegIfNeeded(Ljava/util/List;)V
    .registers 35

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    if-nez v3, :cond_b

    goto/16 :goto_80b

    :cond_b
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v0, v6

    :goto_15
    if-ge v0, v5, :cond_80b

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    check-cast v7, Lcom/android/server/pm/ReconciledPackage;

    iget-object v9, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    sget-object v0, Lcom/android/server/pm/DexOptHelper;->sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v10, :cond_3c

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v10

    if-nez v10, :cond_3c

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    move v0, v6

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v0, v2

    :goto_3d
    if-nez v0, :cond_47

    invoke-static {v9}, Lcom/android/server/pm/DexOptHelper;->shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v2

    goto :goto_48

    :cond_47
    move v0, v6

    :goto_48
    iget-object v10, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v11, "SPEG"

    if-nez v10, :cond_5e

    const-string v0, "Feature is disabled due to service is not inited"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    move-object/from16 v28, v4

    move/from16 v29, v5

    move v10, v6

    move/from16 v30, v8

    move v5, v2

    goto/16 :goto_7fb

    :cond_5e
    invoke-virtual {v3}, Lcom/android/server/pm/SpegService;->updateModeIfNeeded()V

    iget-object v10, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-boolean v12, v10, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v12, :cond_6d

    const-string v0, "Feature is disabled for existing app"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_6d
    if-nez v0, :cond_75

    const-string v0, "Feature is disabled due to dexopt skipped"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_75
    const-string/jumbo v0, "sys.dexopt.ctrl"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "Feature is disabled by high temperature"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_84
    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_9f

    const-string/jumbo v13, "com.samsung.android.speg.disabled"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9f

    const-string v0, "Feature is disabled in app manifest"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_9f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_b4

    const-string v0, "Feature is disabled for reinstalled apps"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v14, v3, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    goto :goto_54

    :cond_b4
    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v15

    if-nez v15, :cond_e2

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    move-result v15

    if-nez v15, :cond_e2

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    move-result v15

    if-nez v15, :cond_e2

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v15

    if-nez v15, :cond_e2

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    move-result v15

    if-nez v15, :cond_e2

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v13

    if-nez v13, :cond_e2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v13

    if-eqz v13, :cond_ec

    :cond_e2
    move-object/from16 v28, v4

    move/from16 v29, v5

    move v10, v6

    move/from16 v30, v8

    move v5, v2

    goto/16 :goto_805

    :cond_ec
    invoke-virtual {v3, v12}, Lcom/android/server/ProfileService;->isPackageBlockListed(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_fd

    const-string v0, "Feature is disabled for package "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    :cond_fd
    const-class v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v15

    move-object/from16 p1, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v14, v6

    :goto_123
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_16d

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-nez v6, :cond_134

    move-object/from16 v17, v0

    goto :goto_168

    :cond_134
    move-object/from16 v17, v0

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    goto :goto_168

    :cond_141
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v13, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v6, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v0

    if-nez v0, :cond_150

    goto :goto_168

    :cond_150
    iget-object v0, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_168

    const-string v0, "Feature is disabled for privileged apps"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15d
    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v8

    move/from16 v5, v16

    const/4 v10, 0x0

    goto/16 :goto_7fb

    :cond_168
    :goto_168
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    goto :goto_123

    :cond_16d
    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissions()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_196

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "com.samsung.android.knox.permission"

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_193

    const-string v0, "Feature is disabled for apps with specific uses-permission"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    :cond_193
    add-int/lit8 v2, v2, 0x1

    goto :goto_174

    :cond_196
    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const-string/jumbo v6, "android.permission.SET_WALLPAPER"

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v6, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(ILjava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1b0

    const-string v0, "Feature is disabled due to SET_WALLPAPER permission"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    :cond_1b0
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v3, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    const-string v6, "Feature is disabled for "

    const/4 v13, 0x5

    if-nez v2, :cond_1c7

    invoke-virtual {v3, v13, v0}, Lcom/android/server/ProfileService;->apkHasNumOfDexFiles(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    const-string v0, " as it has more than 4 dex files"

    invoke-static {v6, v12, v0, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15d

    :cond_1c7
    const-string/jumbo v2, "com.sec.android.easyMover"

    invoke-virtual {v10}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    const-string v0, "Feature is disabled for smart switch installer"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    :cond_1da
    iget-boolean v2, v3, Lcom/android/server/pm/SpegService;->mBlockSpegInstallation:Z

    if-eqz v2, :cond_1e5

    const-string v0, "Feature is disabled until SmartSwitch is finished"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    :cond_1e5
    iget-boolean v2, v3, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    if-nez v2, :cond_1f0

    const-string v0, "Feature is disabled until setup wizard is finished"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    :cond_1f0
    iget-object v2, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20b

    const-string/jumbo v10, "com.sec.android.app.kidshome"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20b

    const-string v0, " due to KidsHome"

    invoke-static {v6, v12, v0, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15d

    :cond_20b
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_218

    const-string v0, "Feature is disabled for shared package"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    :cond_218
    invoke-static {v11, v0}, Lcom/android/server/ProfileService;->checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_220

    goto/16 :goto_15d

    :cond_220
    iget-boolean v0, v3, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    const/16 v2, 0xa

    if-nez v0, :cond_2ab

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-boolean v0, v3, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    if-eqz v0, :cond_257

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v17, v14

    iget-wide v13, v3, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    sub-long v14, v17, v13

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    long-to-int v0, v12

    const/16 v10, 0x28

    if-ge v0, v10, :cond_24d

    const-string v2, "Disable SPEG due to continuous installation, blockedDuration: "

    const-string v6, " minutes"

    invoke-static {v0, v2, v6, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Feature is disabled because of continual launches limit"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15d

    :cond_24d
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    iput v10, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    const-wide/16 v12, -0x1

    iput-wide v12, v3, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    goto :goto_259

    :cond_257
    move-wide/from16 v17, v14

    :goto_259
    iget v0, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x5

    if-lt v0, v6, :cond_27f

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v12, v3, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    sub-long v14, v17, v12

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    long-to-int v0, v12

    if-ge v0, v2, :cond_277

    move/from16 v6, v16

    iput-boolean v6, v3, Lcom/android/server/pm/SpegService;->mBlockContinualSpeg:Z

    move-wide/from16 v12, v17

    iput-wide v12, v3, Lcom/android/server/pm/SpegService;->mSpegBlockStartTime:J

    const/4 v10, 0x0

    goto :goto_296

    :cond_277
    move/from16 v6, v16

    move-wide/from16 v12, v17

    const/4 v10, 0x0

    iput v10, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    goto :goto_296

    :cond_27f
    move/from16 v6, v16

    move-wide/from16 v12, v17

    const/4 v10, 0x0

    if-le v0, v6, :cond_296

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v14, v3, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    sub-long v14, v12, v14

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v14

    long-to-int v0, v14

    const/4 v6, 0x3

    if-le v0, v6, :cond_296

    iput v10, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    :cond_296
    :goto_296
    iget v0, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    if-nez v0, :cond_2a1

    iput-wide v12, v3, Lcom/android/server/pm/SpegService;->mSpegFirstLaunchTime:J

    const-string v0, "Continual launches limit is reset"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a1
    iput-wide v12, v3, Lcom/android/server/pm/SpegService;->mSpegPrevLaunchTime:J

    iget v0, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/android/server/pm/SpegService;->mSpegLaunchesCount:I

    :cond_2ab
    const-string v6, "Failed to disable network connection for uid "

    const-string v0, "Failed to start "

    const-string/jumbo v10, "Package manager doesn\'t know the package: "

    const-string/jumbo v11, "SPEG"

    const-string/jumbo v12, "Started, SPEG v2.4.1"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v17

    if-nez v17, :cond_2d2

    iget-object v0, v3, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string v2, "Activity manager doesn\'t exist"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c8
    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto/16 :goto_7b6

    :cond_2d2
    const-string/jumbo v11, "network_management"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    if-nez v11, :cond_2e9

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v2, "Network manager is not found"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c8

    :cond_2e9
    iget-object v7, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_317

    const-string/jumbo v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_317

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_321

    :cond_317
    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v8

    move-object v8, v13

    const/4 v10, 0x0

    goto/16 :goto_79b

    :cond_321
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x40000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_33b
    iget-object v15, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v15, v15, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v15, v15, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    if-nez v15, :cond_363

    const-string/jumbo v0, "SPEG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto/16 :goto_2c8

    :catchall_360
    move-exception v0

    goto/16 :goto_797

    :cond_363
    iget v10, v15, Lcom/android/server/pm/PackageSetting;->mAppId:I

    monitor-exit v2
    :try_end_366
    .catchall {:try_start_33b .. :try_end_366} :catchall_360

    invoke-virtual {v3, v10}, Lcom/android/server/pm/SpegService;->checkAppId(I)Z

    move-result v2

    if-nez v2, :cond_377

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v2, "Skip feature because of non-regular application id: "

    invoke-static {v10, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c8

    :cond_377
    iput-object v13, v3, Lcom/android/server/pm/SpegService;->mPrevInstalledPkg:Ljava/lang/String;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {v10, v13, v2}, Landroid/hardware/display/DisplayManagerGlobal;->createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v10

    if-nez v10, :cond_392

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v2, "VirtualDisplay is not created"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c8

    :cond_392
    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getDisplayId()I

    move-result v15

    move-object/from16 v28, v4

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move/from16 v29, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    move/from16 v30, v8

    const/4 v4, 0x0

    invoke-static {v4, v13}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/base.speg"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    :try_start_3ed
    iget-object v8, v7, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v8, :cond_3f4

    invoke-virtual {v8}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_3f4
    .catch Ljava/lang/Exception; {:try_start_3ed .. :try_end_3f4} :catch_5d2
    .catchall {:try_start_3ed .. :try_end_3f4} :catchall_5d0

    :cond_3f4
    move-object/from16 v8, p1

    :try_start_3f6
    iput-object v8, v7, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-virtual {v3, v2, v15, v13}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v3, v2, v5, v8}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v16
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_3f6 .. :try_end_400} :catch_582
    .catchall {:try_start_3f6 .. :try_end_400} :catchall_57f

    if-eqz v16, :cond_5c6

    :try_start_402
    invoke-interface {v11, v2, v8}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_405
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_405} :catch_5a6
    .catchall {:try_start_402 .. :try_end_405} :catchall_57f

    :try_start_405
    const-string/jumbo v19, "com.samsung.speg"

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v27

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v14

    invoke-interface/range {v17 .. v27}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v8

    if-eqz v8, :cond_586

    const-string/jumbo v0, "com.samsung.speg.collect_time_ms"

    const/16 v6, 0x7d0

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_42d
    .catch Ljava/lang/Exception; {:try_start_405 .. :try_end_42d} :catch_582
    .catchall {:try_start_405 .. :try_end_42d} :catchall_57f

    move-object/from16 v22, v7

    :catch_42f
    :goto_42f
    int-to-long v6, v0

    add-long v6, v31, v6

    :try_start_432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_436
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_436} :catch_44a
    .catchall {:try_start_432 .. :try_end_436} :catchall_578

    sub-long v6, v6, v17

    const-wide/16 v17, 0x0

    cmp-long v8, v6, v17

    if-lez v8, :cond_451

    :try_start_43e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_441
    .catch Ljava/lang/InterruptedException; {:try_start_43e .. :try_end_441} :catch_42f
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_441} :catch_44a
    .catchall {:try_start_43e .. :try_end_441} :catchall_442

    goto :goto_42f

    :catchall_442
    move-exception v0

    move-object v1, v0

    move-object v8, v13

    move-object/from16 v7, v22

    :goto_447
    const/4 v6, -0x1

    goto/16 :goto_70d

    :catch_44a
    move-exception v0

    move-object v8, v13

    move-object/from16 v7, v22

    :goto_44e
    const/4 v6, -0x1

    goto/16 :goto_5d4

    :cond_451
    :try_start_451
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/android/server/pm/SpegService;->getPidOf(ILjava/lang/String;)I

    move-result v6
    :try_end_459
    .catch Ljava/lang/Exception; {:try_start_451 .. :try_end_459} :catch_44a
    .catchall {:try_start_451 .. :try_end_459} :catchall_578

    const/4 v7, -0x1

    if-eq v6, v7, :cond_568

    :try_start_45c
    iget-boolean v7, v3, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z
    :try_end_45e
    .catch Ljava/lang/Exception; {:try_start_45c .. :try_end_45e} :catch_48e
    .catchall {:try_start_45c .. :try_end_45e} :catchall_561

    if-eqz v7, :cond_4ae

    :try_start_460
    const-string/jumbo v4, "SPEG"

    const-string/jumbo v7, "Wait for app to write cache"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    :catch_46c
    :goto_46c
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/android/server/pm/SpegService;->getPidOf(ILjava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_49c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_47b
    .catch Ljava/lang/Exception; {:try_start_460 .. :try_end_47b} :catch_48e
    .catchall {:try_start_460 .. :try_end_47b} :catchall_487

    add-long v19, v31, v7

    cmp-long v0, v17, v19

    if-gtz v0, :cond_494

    const-wide/16 v17, 0xa

    :try_start_483
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_486
    .catch Ljava/lang/InterruptedException; {:try_start_483 .. :try_end_486} :catch_46c
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_486} :catch_48e
    .catchall {:try_start_483 .. :try_end_486} :catchall_487

    goto :goto_46c

    :catchall_487
    move-exception v0

    move-object v1, v0

    move-object v8, v13

    move-object/from16 v7, v22

    goto/16 :goto_70d

    :catch_48e
    move-exception v0

    move-object v8, v13

    move-object/from16 v7, v22

    goto/16 :goto_5d4

    :cond_494
    :try_start_494
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string v4, "Failed to wait for cache dump"

    invoke-direct {v0, v4}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49c
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v4

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v13, v0, v4, v7}, Lcom/android/server/pm/SpegService;->installSpegCacheToDalvikCache(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0
    :try_end_4ac
    .catch Ljava/lang/Exception; {:try_start_494 .. :try_end_4ac} :catch_48e
    .catchall {:try_start_494 .. :try_end_4ac} :catchall_487

    :goto_4ac
    move v4, v0

    goto :goto_4d4

    :cond_4ae
    :try_start_4ae
    const-string/jumbo v0, "SPEG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Send signal to dump profiles in app, pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-static {v6, v0}, Landroid/os/Process;->sendSignal(II)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/server/pm/SpegService;->storePrimaryProf(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_4d3
    .catch Ljava/lang/Exception; {:try_start_4ae .. :try_end_4d3} :catch_48e
    .catchall {:try_start_4ae .. :try_end_4d3} :catchall_561

    goto :goto_4ac

    :goto_4d4
    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v20, "SPEG"

    const/16 v21, 0xd

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    move-object/from16 v8, v18

    move-object/from16 v7, v22

    iput-object v0, v7, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-static {v6}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v15}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_515

    const-string/jumbo v0, "SPEG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t release "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_515
    const/4 v10, 0x0

    invoke-virtual {v3, v2, v5, v10}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_525

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v6, "SPEG can\'t delete "

    invoke-static {v6, v5, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_525
    invoke-virtual {v3, v2, v8}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    :try_start_528
    invoke-interface {v11, v2, v10}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_52b
    .catch Ljava/lang/Exception; {:try_start_528 .. :try_end_52b} :catch_52c

    goto :goto_541

    :catch_52c
    move-exception v0

    const-string/jumbo v5, "SPEG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to restore network connection for uid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_541
    :try_start_541
    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2, v8, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_54c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_541 .. :try_end_54c} :catch_54f

    :goto_54c
    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_559

    :catch_54f
    move-exception v0

    const-string/jumbo v2, "SPEG"

    const-string v5, "Failed to set stopped state"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54c

    :goto_559
    invoke-virtual {v3, v7, v7, v2}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    goto/16 :goto_681

    :catchall_561
    move-exception v0

    move-object v8, v13

    move-object/from16 v7, v22

    :goto_565
    move-object v1, v0

    goto/16 :goto_70d

    :cond_568
    move-object v8, v13

    move-object/from16 v7, v22

    :try_start_56b
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v4, "getPidOf failed"

    invoke-direct {v0, v4}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_574
    .catch Ljava/lang/Exception; {:try_start_56b .. :try_end_574} :catch_576
    .catchall {:try_start_56b .. :try_end_574} :catchall_574

    :catchall_574
    move-exception v0

    goto :goto_565

    :catch_576
    move-exception v0

    goto :goto_5d4

    :catchall_578
    move-exception v0

    move-object v8, v13

    move-object/from16 v7, v22

    :goto_57c
    move-object v1, v0

    goto/16 :goto_447

    :catchall_57f
    move-exception v0

    :goto_580
    move-object v8, v13

    goto :goto_57c

    :catch_582
    move-exception v0

    :goto_583
    move-object v8, v13

    goto/16 :goto_44e

    :cond_586
    move-object v8, v13

    :try_start_587
    new-instance v4, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", res="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_5a1
    move-exception v0

    goto :goto_57c

    :catch_5a3
    move-exception v0

    goto/16 :goto_44e

    :catch_5a6
    move-exception v0

    move-object v8, v13

    new-instance v4, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5c6
    move-object v8, v13

    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    const-string/jumbo v4, "createSpegMarkerFile failed"

    invoke-direct {v0, v4}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5d0
    .catch Ljava/lang/Exception; {:try_start_587 .. :try_end_5d0} :catch_5a3
    .catchall {:try_start_587 .. :try_end_5d0} :catchall_5a1

    :catchall_5d0
    move-exception v0

    goto :goto_580

    :catch_5d2
    move-exception v0

    goto :goto_583

    :goto_5d4
    :try_start_5d4
    const-string/jumbo v4, "SPEG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cancel SPEG for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f7
    .catchall {:try_start_5d4 .. :try_end_5f7} :catchall_574

    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v20, "SPEG"

    const/16 v21, 0xd

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-static {v6}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v15}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_636

    const-string/jumbo v0, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t release "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_636
    const/4 v10, 0x0

    invoke-virtual {v3, v2, v5, v10}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_646

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v4, "SPEG can\'t delete "

    invoke-static {v4, v5, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_646
    invoke-virtual {v3, v2, v8}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    :try_start_649
    invoke-interface {v11, v2, v10}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_64c
    .catch Ljava/lang/Exception; {:try_start_649 .. :try_end_64c} :catch_64d

    goto :goto_662

    :catch_64d
    move-exception v0

    const-string/jumbo v4, "SPEG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to restore network connection for uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_662
    :try_start_662
    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2, v8, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_66d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_662 .. :try_end_66d} :catch_670

    :goto_66d
    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_67a

    :catch_670
    move-exception v0

    const-string/jumbo v2, "SPEG"

    const-string v4, "Failed to set stopped state"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66d

    :goto_67a
    invoke-virtual {v3, v7, v7, v2}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    const/4 v4, 0x0

    :goto_681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_68c

    const-string/jumbo v2, "Success"

    goto :goto_68e

    :cond_68c
    const-string v2, "Failure"

    :goto_68e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v31

    const-string v2, " ms"

    invoke-static {v0, v5, v6, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "dd-MM-yyyy HH:mm:ss.SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lcom/android/server/pm/SpegService;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "last_id"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "key_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v8, v5, 0x32

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/pm/SpegService;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v0, "SPEG"

    const-string v2, "Finished"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v4

    const/4 v10, 0x0

    goto/16 :goto_7b6

    :goto_70d
    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v20, "SPEG"

    const/16 v21, 0xd

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    invoke-static {v6}, Lcom/android/server/pm/SpegService;->waitForProcessDeath(I)V

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v15}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_74c

    const-string/jumbo v0, "SPEG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t release "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74c
    const/4 v10, 0x0

    invoke-virtual {v3, v2, v5, v10}, Lcom/android/server/pm/SpegService;->createOrDeleteMarkerFiles(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_75c

    const-string/jumbo v0, "SPEG"

    const-string/jumbo v4, "SPEG can\'t delete "

    invoke-static {v4, v5, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_75c
    invoke-virtual {v3, v2, v8}, Lcom/android/server/pm/SpegService;->spegClearPackage(ILjava/lang/String;)V

    :try_start_75f
    invoke-interface {v11, v2, v10}, Landroid/os/INetworkManagementService;->spegRestrictNetworkConnection(IZ)V
    :try_end_762
    .catch Ljava/lang/Exception; {:try_start_75f .. :try_end_762} :catch_763

    goto :goto_778

    :catch_763
    move-exception v0

    const-string/jumbo v4, "SPEG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to restore network connection for uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_778
    :try_start_778
    iget-object v0, v3, Lcom/android/server/pm/SpegService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2, v8, v5}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V
    :try_end_783
    .catch Ljava/lang/IllegalArgumentException; {:try_start_778 .. :try_end_783} :catch_786

    :goto_783
    const/4 v2, 0x0

    const/4 v7, -0x1

    goto :goto_790

    :catch_786
    move-exception v0

    const-string/jumbo v2, "SPEG"

    const-string v4, "Failed to set stopped state"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_783

    :goto_790
    invoke-virtual {v3, v7, v7, v2}, Lcom/android/server/pm/SpegService;->setSpegInOpeartion(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v1

    :goto_797
    :try_start_797
    monitor-exit v2
    :try_end_798
    .catchall {:try_start_797 .. :try_end_798} :catchall_360

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_79b
    const-string/jumbo v0, "SPEG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Package "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t have launchable intent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v10

    :goto_7b6
    if-eqz v13, :cond_7fa

    iget-boolean v0, v3, Lcom/android/server/pm/SpegService;->mIsCacheMode:Z

    if-nez v0, :cond_7fa

    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/android/server/pm/InstallRequest;->mSpegProfileGenerated:Z

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-static {v9}, Lcom/android/server/pm/DexOptHelper;->shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z

    move-result v4

    if-nez v4, :cond_7ce

    goto :goto_7fb

    :cond_7ce
    if-eqz v2, :cond_7d3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7d3
    const-wide/32 v6, 0x40000

    :try_start_7d6
    const-string/jumbo v4, "dexopt"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v0}, Lcom/android/server/pm/DexOptHelper;->getDexoptOptionsByInstallRequest(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)Lcom/android/server/pm/dex/DexoptOptions;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/pm/DexOptHelper;->dexoptPackageUsingArtService(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/art/model/DexoptResult;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/InstallRequest;->onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    :try_end_7e7
    .catchall {:try_start_7d6 .. :try_end_7e7} :catchall_7f0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v2, :cond_7fb

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_7fb

    :catchall_7f0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v2, :cond_7f9

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_7f9
    throw v0

    :cond_7fa
    const/4 v5, 0x1

    :cond_7fb
    :goto_7fb
    move v2, v5

    move v6, v10

    move-object/from16 v4, v28

    move/from16 v5, v29

    move/from16 v0, v30

    goto/16 :goto_15

    :goto_805
    const-string v0, "Feature is disabled for system apps"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7fb

    :cond_80b
    :goto_80b
    return-void
.end method

.method public final prepPerformDexoptIfNeeded(Ljava/util/List;Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;)V
    .registers 31

    move-object/from16 v1, p0

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v5, :cond_245

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    check-cast v7, Lcom/android/server/pm/ReconciledPackage;

    iget-object v9, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    invoke-virtual {v9}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v0, v9, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v0, v0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    iget-object v10, v7, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    if-nez v10, :cond_46

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSharedLibraryDependencies()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_43

    goto :goto_46

    :cond_43
    move-object/from16 v10, v16

    goto :goto_5e

    :cond_46
    :goto_46
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object v11, v9, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v15, v7, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

    iget-object v13, v10, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v13

    move-object v14, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    :try_start_58
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/pm/SharedLibrariesImpl;->executeSharedLibrariesUpdateLPw(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/util/ArrayList;[I)V

    move-object/from16 v10, v16

    monitor-exit v17
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_240

    :goto_5e
    iget-boolean v11, v9, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    if-eqz v11, :cond_1ca

    if-eqz v0, :cond_67

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    goto :goto_68

    :cond_67
    const/4 v0, 0x0

    :goto_68
    if-eqz v0, :cond_1ca

    iget-object v7, v7, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    const-class v14, Lcom/android/server/SpqrService;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/SpqrService;

    if-nez v11, :cond_7f

    goto/16 :goto_1ca

    :cond_7f
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget v15, v7, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 v15, v15, 0x2000

    if-eqz v15, :cond_8f

    move v15, v2

    :goto_8c
    const/16 p1, 0x0

    goto :goto_91

    :cond_8f
    const/4 v15, 0x0

    goto :goto_8c

    :goto_91
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    if-eqz v13, :cond_97

    move v13, v2

    goto :goto_98

    :cond_97
    const/4 v13, 0x0

    :goto_98
    iget-object v2, v11, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    if-nez v14, :cond_a6

    const-string/jumbo v0, "New package is missing"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    move-object/from16 v18, v4

    goto/16 :goto_1ce

    :cond_a6
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v15, :cond_b3

    const-string/jumbo v0, "Package is instant "

    invoke-static {v0, v6, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :cond_b3
    const-string/jumbo v15, "sys.dexopt.ctrl"

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-static {v15, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_c6

    const-string v0, "Dexopt is limited"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ce

    :cond_c6
    invoke-virtual {v11, v6}, Lcom/android/server/ProfileService;->isPackageBlockListed(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d3

    const-string v0, "Blocklisted "

    :goto_ce
    invoke-static {v0, v6, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1ce

    :cond_d3
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v15

    if-eqz v15, :cond_dd

    const-string/jumbo v0, "Package is debuggable "

    goto :goto_ce

    :cond_dd
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v15

    const/16 v4, 0xb

    invoke-virtual {v11, v4, v15}, Lcom/android/server/ProfileService;->apkHasNumOfDexFiles(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string/jumbo v0, "Package has too many dexes "

    goto :goto_ce

    :cond_ed
    invoke-static {v2, v15}, Lcom/android/server/ProfileService;->checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fb

    const-string/jumbo v0, "Unsafe to create profile"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ce

    :cond_fb
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v15, 0x1388

    if-lt v4, v15, :cond_10f

    const/16 v15, 0x176f

    if-gt v4, v15, :cond_10f

    const-string/jumbo v0, "Reserved app id "

    goto :goto_ce

    :cond_10f
    if-eqz v13, :cond_122

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    const-string v0, "Incremental installation"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ce

    :cond_122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v4, v19, v21

    if-nez v4, :cond_155

    const-string/jumbo v0, "Profile is missing"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ce

    :cond_155
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v26

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v27

    const-string v0, "Failed to prepare new profile for "

    invoke-virtual {v11, v2, v4}, Lcom/android/server/ProfileService;->checkUserAndService(II)Z

    move-result v6

    if-nez v6, :cond_195

    :goto_193
    const/4 v0, 0x0

    goto :goto_1c7

    :cond_195
    :try_start_195
    iget-object v6, v11, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    move/from16 v22, v2

    move/from16 v23, v4

    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v27}, Landroid/os/ISpqrService;->createInvariantProfile(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v4, v24

    if-eqz v2, :cond_1a7

    const/4 v0, 0x1

    goto :goto_1c7

    :cond_1a7
    iget-object v2, v11, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catch Landroid/os/RemoteException; {:try_start_195 .. :try_end_1b8} :catch_1b9
    .catch Ljava/lang/NullPointerException; {:try_start_195 .. :try_end_1b8} :catch_1b9

    goto :goto_193

    :catch_1b9
    move-exception v0

    iget-object v2, v11, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create invariant profile: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_193

    :goto_1c7
    iput-boolean v0, v7, Lcom/android/server/pm/InstallRequest;->mSpqrProfileGenerated:Z

    goto :goto_1ce

    :cond_1ca
    :goto_1ca
    move-object/from16 v18, v4

    const/16 p1, 0x0

    :goto_1ce
    :try_start_1ce
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1d7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1ce .. :try_end_1d7} :catch_22b

    :try_start_1d7
    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/InstallPackageHelper;->getNewUsers(Lcom/android/server/pm/InstallRequest;[I)[I

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v4, v12, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V

    iget-boolean v0, v9, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    if-eqz v0, :cond_1f2

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    iget-object v4, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    const/4 v6, -0x1

    const/16 v7, 0x27

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    :try_end_1ee
    .catchall {:try_start_1d7 .. :try_end_1ee} :catchall_1ef

    goto :goto_1f2

    :catchall_1ef
    move-exception v0

    move-object v4, v0

    goto :goto_22d

    :cond_1f2
    :goto_1f2
    :try_start_1f2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1f5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1f2 .. :try_end_1f5} :catch_22b

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    invoke-static {v9}, Lcom/android/server/pm/DexOptHelper;->shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z

    move-result v2

    if-nez v2, :cond_205

    invoke-static/range {p1 .. p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_219

    :cond_205
    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;

    invoke-direct {v2, v9, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)V

    sget-object v0, Lcom/android/server/pm/DexOptHelper;->sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v2, v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :goto_219
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_225

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_225
    move v0, v8

    move-object/from16 v4, v18

    const/4 v2, 0x1

    goto/16 :goto_11

    :catch_22b
    move-exception v0

    goto :goto_236

    :goto_22d
    :try_start_22d
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_230
    .catchall {:try_start_22d .. :try_end_230} :catchall_231

    goto :goto_235

    :catchall_231
    move-exception v0

    :try_start_232
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_235
    throw v4
    :try_end_236
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_232 .. :try_end_236} :catch_22b

    :goto_236
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    goto :goto_245

    :catchall_240
    move-exception v0

    :try_start_241
    monitor-exit v17
    :try_end_242
    .catchall {:try_start_241 .. :try_end_242} :catchall_240

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_245
    :goto_245
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_266

    new-instance v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;

    move-object/from16 v3, p2

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_26b

    :cond_266
    move-object/from16 v3, p2

    invoke-virtual {v3}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->run()V

    :goto_26b
    return-void
.end method

.method public final prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;
    .registers 20

    const-string/jumbo v2, "Package "

    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-static {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {p1, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2e

    invoke-static {p1, v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRealPackageOrNull(Lcom/android/server/pm/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    :cond_2e
    move-object v5, v8

    :goto_2f
    if-eqz v5, :cond_49

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    goto :goto_49

    :cond_46
    invoke-interface {p1, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_49
    :goto_49
    invoke-virtual {p0, p1, v6}, Lcom/android/server/pm/InstallPackageHelper;->getOriginalPackageLocked(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mTransferredPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    const-string/jumbo v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was transferred to another, but its .apk remains"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :catchall_83
    move-exception v0

    goto/16 :goto_f5

    :cond_86
    :goto_86
    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v6, :cond_9e

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v10

    if-nez v10, :cond_9c

    goto :goto_9e

    :cond_9c
    move v10, v9

    goto :goto_a2

    :cond_9e
    :goto_9e
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v10

    :goto_a2
    const/4 v11, 0x1

    if-nez v10, :cond_b8

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b8

    iget-object v10, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    goto :goto_b9

    :cond_b8
    move-object v10, v8

    :goto_b9
    if-eqz v6, :cond_c4

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    goto :goto_c5

    :cond_c4
    move-object v0, v8

    :goto_c5
    monitor-exit v3
    :try_end_c6
    .catchall {:try_start_a .. :try_end_c6} :catchall_83

    if-eqz v4, :cond_d9

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    :goto_d6
    move-object v3, v2

    move-object v2, v0

    goto :goto_db

    :cond_d9
    move v11, v9

    goto :goto_d6

    :goto_db
    new-instance v0, Lcom/android/server/pm/ScanRequest;

    if-nez v6, :cond_ee

    :goto_df
    move-object v1, p1

    move/from16 v9, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v4, v6

    move-object v6, v3

    move-object v3, v8

    move-object v8, v5

    move-object v5, v10

    move/from16 v10, p3

    goto :goto_f1

    :cond_ee
    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    goto :goto_df

    :goto_f1
    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0

    :goto_f5
    :try_start_f5
    monitor-exit v3
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_83

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final prepareInstallPackages(Ljava/util/List;)Z
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    const-wide/32 v2, 0x40000

    :try_start_14
    const-string/jumbo v4, "preparePackage"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v4, :cond_21

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallPackageHelper;->preparePackage(Lcom/android/server/pm/InstallRequest;)V
    :try_end_24
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_14 .. :try_end_24} :catch_31
    .catchall {:try_start_14 .. :try_end_24} :catchall_2f

    iget-object v0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_2b
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_4

    :catchall_2f
    move-exception p0

    goto :goto_4f

    :catch_31
    move-exception p0

    :try_start_32
    iget p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_2f

    iget-object p0, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_4a

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_4a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0

    :goto_4f
    iget-object p1, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p1, :cond_56

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_56
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_5a
    return v1
.end method

.method public final preparePackage(Lcom/android/server/pm/InstallRequest;)V
    .registers 46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    const/16 v7, 0x8

    and-int/lit8 v0, v6, 0x8

    const/4 v9, 0x0

    if-nez v0, :cond_20

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    move v10, v9

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v10, 0x1

    :goto_21
    and-int/lit16 v0, v6, 0x800

    if-eqz v0, :cond_27

    const/4 v11, 0x1

    goto :goto_28

    :cond_27
    move v11, v9

    :goto_28
    and-int/lit16 v0, v6, 0x4000

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    move v0, v9

    :goto_2f
    const/high16 v12, 0x10000

    and-int v13, v6, v12

    if-eqz v13, :cond_37

    const/4 v13, 0x1

    goto :goto_38

    :cond_37
    move v13, v9

    :goto_38
    const/high16 v14, 0x20000

    and-int v15, v6, v14

    if-eqz v15, :cond_42

    const/4 v15, 0x1

    :goto_3f
    move/from16 v16, v12

    goto :goto_44

    :cond_42
    move v15, v9

    goto :goto_3f

    :goto_44
    iget-object v12, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v12, :cond_4a

    move v12, v9

    goto :goto_4c

    :cond_4a
    iget v12, v12, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_4c
    const/4 v14, 0x5

    if-ne v12, v14, :cond_52

    const/16 v24, 0x1

    goto :goto_54

    :cond_52
    move/from16 v24, v9

    :goto_54
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v12

    if-eqz v12, :cond_5d

    const/16 v12, 0x206

    goto :goto_5e

    :cond_5d
    const/4 v12, 0x6

    :goto_5e
    and-int/lit16 v14, v6, 0x1000

    if-eqz v14, :cond_64

    or-int/lit16 v12, v12, 0x400

    :cond_64
    if-eqz v11, :cond_68

    or-int/lit16 v12, v12, 0x2000

    :cond_68
    if-eqz v0, :cond_6c

    or-int/lit16 v12, v12, 0x4000

    :cond_6c
    if-eqz v13, :cond_72

    const v0, 0x8000

    or-int/2addr v12, v0

    :cond_72
    if-eqz v15, :cond_77

    const/high16 v0, 0x4000000

    or-int/2addr v12, v0

    :cond_77
    new-instance v0, Ljava/io/File;

    if-eqz v15, :cond_80

    iget-object v13, v2, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v13, v13, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    goto :goto_84

    :cond_80
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v13

    :goto_84
    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_a6

    if-nez v10, :cond_8c

    goto :goto_a6

    :cond_8c
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible ephemeral install; external="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    throw v0

    :cond_a6
    :goto_a6
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->getDefParseFlags()I

    move-result v13

    const v14, -0x7fffffc0

    or-int/2addr v13, v14

    if-eqz v10, :cond_b4

    move v14, v7

    goto :goto_b5

    :cond_b4
    move v14, v9

    :goto_b5
    or-int/2addr v13, v14

    const-string/jumbo v14, "parsePackage"

    const/16 v25, 0x1

    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_c1
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v14
    :try_end_c9
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_c1 .. :try_end_c9} :catch_fbb
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_fb7

    move-wide/from16 v18, v7

    :try_start_cb
    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v7, :cond_f6

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v7

    sget-object v20, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v20, 0x8000000

    and-int v7, v7, v20

    if-eqz v7, :cond_de

    move/from16 v7, v25

    goto :goto_df

    :cond_de
    move v7, v9

    :goto_df
    if-nez v7, :cond_e2

    goto :goto_f6

    :cond_e2
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v14, v0, v13}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v7}, Landroid/content/pm/parsing/PackageLite;->getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v7

    move-object/from16 v32, v7

    :goto_f0
    move-object v7, v0

    goto :goto_100

    :catchall_f2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_fae

    :cond_f6
    :goto_f6
    invoke-virtual {v14, v0, v13, v9}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->validatePackageDexMetadata(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_fd
    .catchall {:try_start_cb .. :try_end_fd} :catchall_f2

    const/16 v32, 0x0

    goto :goto_f0

    :goto_100
    :try_start_100
    invoke-virtual {v14}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_103
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_100 .. :try_end_103} :catch_fac
    .catchall {:try_start_100 .. :try_end_103} :catchall_faa

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    iget v14, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    new-instance v8, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda11;

    invoke-direct {v8, v1}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/InstallPackageHelper;)V

    invoke-static {v0, v14, v8}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->checkIfInstallAllowed(Landroid/os/Bundle;ILcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda11;)I

    move-result v0

    if-nez v0, :cond_f75

    const/high16 v0, 0x1000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_11f

    move/from16 v0, v25

    goto :goto_120

    :cond_11f
    move v0, v9

    :goto_120
    if-nez v0, :cond_12a

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v14

    if-eqz v14, :cond_12a

    move/from16 v0, v25

    :cond_12a
    if-nez v0, :cond_16d

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v0

    sget v14, Lcom/android/server/pm/PackageManagerService;->MIN_INSTALLABLE_TARGET_SDK:I

    if-lt v0, v14, :cond_135

    goto :goto_16d

    :cond_135
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targets deprecated sdk version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "App package must target at least SDK version "

    const-string v2, ", but found "

    invoke-static {v14, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1d

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_16d
    :goto_16d
    const/16 v14, -0x74

    if-eqz v11, :cond_1ca

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1a5

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_180

    goto :goto_1ca

    :cond_180
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not declare sharedUserId."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package may not declare a sharedUserId"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1a5
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not target at least O"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must target at least O"

    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1ca
    :goto_1ca
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v3, -0x13

    if-eqz v0, :cond_1ea

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->renameStaticSharedLibraryPackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    if-nez v10, :cond_1d8

    goto :goto_1ea

    :cond_1d8
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Static shared libs can only be installed on internal storage."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "Static shared libs can only be installed on internal storage."

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1ea
    :goto_1ea
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setName(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_209

    const-string/jumbo v0, "com.samsung.speg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ff

    goto :goto_209

    :cond_1ff
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v1, -0x6a

    const-string v2, "Forbidden package name"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_209
    :goto_209
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-static {v14, v3, v0}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_f64

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isTestOnly()Z

    move-result v0

    if-eqz v0, :cond_232

    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_228

    goto :goto_232

    :cond_228
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/16 v1, -0xf

    const-string v2, "Failed to install test-only apk. Did you forget to add -t?"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_232
    :goto_232
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v0, :cond_239

    sget-object v14, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_23b

    :cond_239
    iget-object v14, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_23b
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v14, v4, :cond_248

    if-nez v0, :cond_242

    goto :goto_244

    :cond_242
    iget-object v4, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_244
    invoke-interface {v7, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_25f

    :cond_248
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    invoke-static {v0, v7, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-nez v4, :cond_f58

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    invoke-interface {v7, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :goto_25f
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "verifying app can be installed or not"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    :try_start_273
    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v14, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_2e7

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v9, :cond_2af

    array-length v4, v9

    move-object/from16 v18, v9

    const/4 v9, 0x0

    :goto_29d
    if-ge v9, v4, :cond_2af

    aget-object v19, v18, v9

    move/from16 v21, v4

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v21

    goto :goto_29d

    :cond_2af
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v0, v3, v14, v8, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_2be

    goto :goto_2e7

    :cond_2be
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This app installation is not allowed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v8, 0xcf

    invoke-static {v4, v8, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v4, "This app installation is not allowed"

    const/16 v8, -0x6e

    invoke-direct {v0, v8, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2e7
    .catch Landroid/os/RemoteException; {:try_start_273 .. :try_end_2e7} :catch_2e7

    :catch_2e7
    :cond_2e7
    :goto_2e7
    if-eqz v11, :cond_31c

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_2f5

    goto :goto_31c

    :cond_2f5
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instant app package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not signed with at least APK Signature Scheme v2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Instant app package must be signed with APK Signature Scheme v2 or greater"

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_31c
    :goto_31c
    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_323

    move/from16 v43, v25

    goto :goto_325

    :cond_323
    const/16 v43, 0x0

    :goto_325
    :try_start_325
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    if-eqz v0, :cond_332

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    move-object/from16 v42, v0

    goto :goto_334

    :catch_330
    move-exception v0

    goto :goto_367

    :cond_332
    const/16 v42, 0x0

    :goto_334
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v35

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v37

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v38

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v40

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v41
    :try_end_34c
    .catch Landroid/os/RemoteException; {:try_start_325 .. :try_end_34c} :catch_330

    move-object/from16 v36, v3

    :try_start_34e
    invoke-interface/range {v35 .. v43}, Landroid/content/pm/IASKSManager;->verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_352
    .catch Landroid/os/RemoteException; {:try_start_34e .. :try_end_352} :catch_364

    move-object/from16 v3, v36

    const/4 v4, -0x1

    if-ne v0, v4, :cond_358

    goto :goto_375

    :cond_358
    :try_start_358
    iput v0, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    new-instance v4, Lcom/android/server/pm/PrepareFailure;

    invoke-static {v0}, Landroid/content/pm/ASKSManager;->getASKSerrorDetail(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v0, v8}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_364
    .catch Landroid/os/RemoteException; {:try_start_358 .. :try_end_364} :catch_330

    :catch_364
    move-exception v0

    move-object/from16 v3, v36

    :goto_367
    const-string/jumbo v4, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "RemoteException: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_375
    :try_start_375
    const-string/jumbo v0, "com.sec.android.easyMover"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v4, "com.android.vending"

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39b

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_397

    goto :goto_39b

    :cond_397
    const/4 v4, 0x0

    goto :goto_39d

    :catch_399
    move-exception v0

    goto :goto_3d1

    :cond_39b
    :goto_39b
    move/from16 v4, v25

    :goto_39d
    if-eqz v0, :cond_3d4

    if-eqz v4, :cond_3d4

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "content://com.sec.android.easyMover.statusProvider/isOOBERunning"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c7

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v25

    goto :goto_3d5

    :cond_3c7
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This SmartSwitch installation is allowed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_3d0} :catch_399

    goto :goto_3d4

    :goto_3d1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d4
    :goto_3d4
    const/4 v0, 0x0

    :goto_3d5
    if-nez v0, :cond_f36

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_3de
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const/16 v20, 0x2

    and-int/lit8 v8, v6, 0x2

    const/high16 v35, 0x200000

    if-eqz v8, :cond_576

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v3}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getOriginalPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_41a

    iget-object v14, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v14, v8}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_41a

    invoke-interface {v7, v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object v3, v8

    goto :goto_41a

    :catchall_417
    move-exception v0

    goto/16 :goto_f32

    :cond_41a
    :goto_41a
    if-eqz v0, :cond_41f

    move/from16 v8, v25

    goto :goto_420

    :cond_41f
    const/4 v8, 0x0

    :goto_420
    if-eqz v8, :cond_570

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v14

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v9

    move/from16 v38, v6

    const/16 v6, 0x16

    if-le v14, v6, :cond_466

    if-le v9, v6, :cond_433

    goto :goto_466

    :cond_433
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support runtime permissions but the old target SDK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1a

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_466
    :goto_466
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v6, :cond_48a

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48a

    move/from16 v6, v25

    goto :goto_48b

    :cond_48a
    const/4 v6, 0x0

    :goto_48b
    if-eqz v3, :cond_4b0

    move/from16 v18, v6

    const-string/jumbo v6, "com.salab.issuetracker"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b2

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b2

    move/from16 v6, v25

    goto :goto_4b3

    :cond_4b0
    move/from16 v18, v6

    :cond_4b2
    const/4 v6, 0x0

    :goto_4b3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isPersistent()Z

    move-result v19

    if-eqz v19, :cond_4e0

    if-nez v18, :cond_4e0

    and-int v18, v38, v35

    if-nez v18, :cond_4e0

    if-eqz v6, :cond_4c2

    goto :goto_4e0

    :cond_4c2
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a persistent app. Persistent apps are not updateable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4e0
    :goto_4e0
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v6

    if-eqz v6, :cond_56d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-eqz v6, :cond_56d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v6

    if-eqz v6, :cond_56d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getMinSdkVersion()I

    move-result v6

    move/from16 v18, v8

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMinSdkVersion()I

    move-result v8

    if-ne v14, v9, :cond_50e

    if-eq v6, v8, :cond_509

    goto :goto_50e

    :cond_509
    :goto_509
    move/from16 v29, v10

    move/from16 v30, v11

    goto :goto_573

    :cond_50e
    :goto_50e
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v19

    move/from16 v29, v10

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v10

    move/from16 v30, v11

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibVersionMajor()I

    move-result v11

    if-eq v10, v11, :cond_521

    goto :goto_573

    :cond_521
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as it updates an sdk library <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> without changing the versionMajor, but the targetSdkVersion or minSdkVersion has changed: Old targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new targetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Old minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new minSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versionMajor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_56d
    :goto_56d
    move/from16 v18, v8

    goto :goto_509

    :cond_570
    move/from16 v38, v6

    goto :goto_56d

    :goto_573
    move/from16 v8, v18

    goto :goto_57d

    :cond_576
    move/from16 v38, v6

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v8, 0x0

    :goto_57d
    if-nez v0, :cond_5ab

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    move-result v6

    if-eqz v6, :cond_5ab

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/SharedLibrariesImpl;->getSharedLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v6

    if-eqz v6, :cond_5ab

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v9

    if-lez v9, :cond_5ab

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/SharedLibraryInfo;

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    goto :goto_5ac

    :cond_5ab
    move-object v6, v0

    :goto_5ac
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v9

    if-eqz v9, :cond_5c6

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v9, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersion(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v9

    if-eqz v9, :cond_5c6

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    :cond_5c6
    if-eqz v6, :cond_64d

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v9, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v9, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v9

    invoke-virtual {v10, v6, v9, v12}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v11

    if-eqz v11, :cond_601

    invoke-virtual {v10, v6, v7}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_5df

    goto :goto_64d

    :cond_5df
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upgrade keys do not match the previously installed version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_601
    .catchall {:try_start_3de .. :try_end_601} :catchall_417

    :cond_601
    :try_start_601
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    sget-boolean v14, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    iget v11, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v14, 0x2

    if-ge v11, v14, :cond_611

    move/from16 v22, v25

    goto :goto_613

    :cond_611
    const/16 v22, 0x0

    :goto_613
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v23

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v21

    const/16 v20, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    invoke-static/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v6

    if-eqz v6, :cond_64d

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v6
    :try_end_632
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_601 .. :try_end_632} :catch_640
    .catchall {:try_start_601 .. :try_end_632} :catchall_417

    :try_start_632
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_64d

    :catchall_63b
    move-exception v0

    monitor-exit v6
    :try_end_63d
    .catchall {:try_start_632 .. :try_end_63d} :catchall_63b

    :try_start_63d
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_640
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_63d .. :try_end_640} :catch_640
    .catchall {:try_start_63d .. :try_end_640} :catchall_417

    :catch_640
    move-exception v0

    :try_start_641
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_64d
    :goto_64d
    if-eqz v0, :cond_65c

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v6

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setOriginUsers([I)V

    move v9, v6

    goto :goto_65d

    :cond_65c
    const/4 v9, 0x0

    :goto_65d
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_665

    const/4 v0, 0x0

    goto :goto_66c

    :cond_665
    const-string/jumbo v6, "com.samsung.android.hasZippedOverlays"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_66c
    if-nez v0, :cond_f14

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v6, 0x0

    :goto_677
    if-ge v6, v0, :cond_70b

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move/from16 v20, v6

    const-class v6, Landroid/permission/PermissionManager;

    invoke-virtual {v11, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6

    if-eqz v6, :cond_707

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v10

    const/16 v11, 0x1f

    if-lt v10, v11, :cond_6a7

    move/from16 v10, v25

    goto :goto_6a8

    :cond_6a7
    const/4 v10, 0x0

    :goto_6a8
    if-eqz v10, :cond_707

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_6b8

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_707

    :cond_6b8
    invoke-virtual {v1, v6, v7, v12}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v10

    if-eqz v10, :cond_6bf

    goto :goto_707

    :cond_6bf
    const-string v0, "146211400"

    const/16 v34, -0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x7e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_707
    :goto_707
    add-int/lit8 v6, v20, 0x1

    goto/16 :goto_677

    :cond_70b
    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_715
    if-ltz v6, :cond_966

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v11, v11, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v11, v11, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    invoke-interface {v11, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object v11

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v14

    and-int/lit16 v14, v14, 0x1000

    if-eqz v14, :cond_776

    if-nez v9, :cond_776

    const-string/jumbo v14, "PackageManager"

    move/from16 v20, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v9

    const-string/jumbo v9, "Non-System package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " attempting to delcare ephemeral permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; Removing ephemeral."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v8

    and-int/lit16 v8, v8, -0x1001

    invoke-static {v10, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    goto :goto_77a

    :cond_776
    move/from16 v20, v8

    move/from16 v21, v9

    :goto_77a
    if-eqz v11, :cond_84b

    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7, v12}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v9

    if-nez v9, :cond_7fa

    const-string/jumbo v9, "android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c1

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " attempting to redeclare system permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; ignoring new declaration"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto/16 :goto_84b

    :cond_7c1
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to redeclare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x70

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/PrepareFailure;->conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7fa
    const-string/jumbo v8, "android"

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_84b

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    move/from16 v9, v25

    if-ne v8, v9, :cond_84b

    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v8

    if-nez v8, :cond_84b

    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " trying to change a non-runtime permission "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to runtime; keeping old protection level"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/server/pm/permission/Permission;->getProtectionLevel()I

    move-result v8

    invoke-static {v10, v8}, Lcom/android/internal/pm/pkg/component/ComponentMutateUtils;->setProtectionLevel(Lcom/android/internal/pm/pkg/component/ParsedPermission;I)V

    :cond_84b
    :goto_84b
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_955

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v8

    const/16 v11, 0x1f

    if-lt v8, v11, :cond_85b

    const/4 v8, 0x1

    goto :goto_85c

    :cond_85b
    const/4 v8, 0x0

    :goto_85c
    if-eqz v8, :cond_8ad

    const/4 v8, 0x0

    :goto_85f
    if-ge v8, v0, :cond_880

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87b

    const/4 v8, 0x1

    goto :goto_881

    :cond_87b
    const/16 v25, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_85f

    :cond_880
    const/4 v8, 0x0

    :goto_881
    if-nez v8, :cond_8ad

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/permission/PermissionManager;

    invoke-virtual {v8, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionManager;

    const/4 v14, 0x0

    invoke-virtual {v8, v9, v14}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v8

    const/16 v9, -0x7f

    if-eqz v8, :cond_90b

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v14, "android"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8ad

    invoke-virtual {v1, v8, v7, v12}, Lcom/android/server/pm/InstallPackageHelper;->doesSignatureMatchForPermissions(Ljava/lang/String;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;I)Z

    move-result v14

    if-eqz v14, :cond_8b4

    :cond_8ad
    const v8, 0x534e4554

    :goto_8b0
    const/16 v34, -0x1

    goto/16 :goto_95c

    :cond_8b4
    const-string v0, "146211400"

    const/16 v34, -0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " owned by package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with incompatible certificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_90b
    const-string v0, "146211400"

    const/16 v34, -0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v8, 0x534e4554

    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to declare permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in non-existing group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_955
    const v8, 0x534e4554

    const/16 v11, 0x1f

    goto/16 :goto_8b0

    :goto_95c
    add-int/lit8 v6, v6, -0x1

    move/from16 v8, v20

    move/from16 v9, v21

    const/16 v25, 0x1

    goto/16 :goto_715

    :cond_966
    move/from16 v20, v8

    move/from16 v21, v9

    monitor-exit v4
    :try_end_96b
    .catchall {:try_start_641 .. :try_end_96b} :catchall_417

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v20, :cond_99b

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_99b

    const/4 v9, 0x1

    :try_start_97d
    invoke-interface {v0, v3, v9}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_99b

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "This app replacing is not allowed by MDM policy"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x6e

    iput v8, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I
    :try_end_990
    .catch Ljava/lang/Exception; {:try_start_97d .. :try_end_990} :catch_992

    goto/16 :goto_ea4

    :catch_992
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v4, "MDM hidden api called from non system uid"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99b
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_9ef

    :try_start_9a8
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v14, 0x0

    invoke-interface {v0, v4, v14}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabledAsUser(IZ)Z

    move-result v4

    if-nez v4, :cond_9ef

    invoke-static {v7}, Lcom/android/server/pm/InstallPackageHelper;->isAdminApplication(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v4

    if-eqz v4, :cond_9ef

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d0

    goto :goto_9ef

    :cond_9d0
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v6, "This admin app installation is not allowed"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    const v6, 0x1040d2a

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->showRestrictionToast(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v4, "Install fail, This admin app installation is not allowed"

    const/16 v8, -0x6e

    invoke-direct {v0, v8, v4}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_9ef
    .catch Landroid/os/RemoteException; {:try_start_9a8 .. :try_end_9ef} :catch_9ef

    :catch_9ef
    :cond_9ef
    :goto_9ef
    if-eqz v21, :cond_a1f

    if-nez v29, :cond_a00

    if-nez v30, :cond_9f6

    goto :goto_a1f

    :cond_9f6
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot update a system app with an instant app"

    const/16 v2, -0x74

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a00
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string v1, "Cannot install updates to system apps on sdcard"

    const/16 v2, -0x13

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a1f
    :goto_a1f
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v0

    if-eqz v0, :cond_a6c

    or-int/lit16 v0, v12, 0x101

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_a2e
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-nez v6, :cond_a55

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Missing settings for moved package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x3

    invoke-static {v6, v3}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    goto :goto_a64

    :catchall_a53
    move-exception v0

    goto :goto_a68

    :cond_a55
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :goto_a64
    monitor-exit v4

    :cond_a65
    move-object v6, v7

    goto/16 :goto_b11

    :goto_a68
    monitor-exit v4
    :try_end_a69
    .catchall {:try_start_a2e .. :try_end_a69} :catchall_a53

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_a6c
    const/16 v25, 0x1

    or-int/lit8 v0, v12, 0x1

    if-nez v15, :cond_a65

    :try_start_a72
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4
    :try_end_a79
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a72 .. :try_end_a79} :catch_af1

    :try_start_a79
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    monitor-exit v4
    :try_end_a82
    .catchall {:try_start_a79 .. :try_end_a82} :catchall_aec

    if-eqz v3, :cond_a8c

    :try_start_a84
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_a8c

    const/4 v4, 0x1

    goto :goto_a8d

    :cond_a8c
    const/4 v4, 0x0

    :goto_a8d
    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v6, :cond_a93

    const/4 v6, 0x0

    goto :goto_a95

    :cond_a93
    iget-object v6, v6, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_a95
    sget-boolean v8, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    const-string v8, "-"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_aa2

    const/16 v30, 0x0

    goto :goto_aa4

    :cond_aa2
    move-object/from16 v30, v6

    :goto_aa4
    if-eqz v3, :cond_aae

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_aae

    const/4 v3, 0x1

    goto :goto_aaf

    :cond_aae
    const/4 v3, 0x0

    :goto_aaf
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPackageAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    if-nez v4, :cond_ab9

    if-eqz v3, :cond_ab6

    goto :goto_ab9

    :cond_ab6
    const/16 v29, 0x0

    goto :goto_abb

    :cond_ab9
    :goto_ab9
    const/16 v29, 0x1

    :goto_abb
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v8, "app-lib"

    invoke-direct {v3, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v31, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move/from16 v28, v21

    invoke-virtual/range {v26 .. v31}, Lcom/android/server/pm/PackageAbiHelperImpl;->derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;

    move-result-object v3

    move-object/from16 v6, v27

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    iget-object v7, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v7

    iget-object v4, v4, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-interface {v7, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_aeb
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a84 .. :try_end_aeb} :catch_af1

    goto :goto_b11

    :catchall_aec
    move-exception v0

    :try_start_aed
    monitor-exit v4
    :try_end_aee
    .catchall {:try_start_aed .. :try_end_aee} :catchall_aec

    :try_start_aee
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
    :try_end_af1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_aee .. :try_end_af1} :catch_af1

    :catch_af1
    move-exception v0

    const-string/jumbo v1, "PackageManager"

    const-string v2, "Error deriving application ABI"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error deriving application ABI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PrepareFailure;->ofInternalError(Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;

    move-result-object v0

    throw v0

    :goto_b11
    if-eqz v15, :cond_b21

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v3, v3, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v6, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    iget-object v3, v3, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-interface {v6, v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_b21
    if-eqz v20, :cond_e73

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v4

    :try_start_b2e
    iget-object v7, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v7, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    monitor-exit v4
    :try_end_b37
    .catchall {:try_start_b2e .. :try_end_b37} :catchall_e6e

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isStaticSharedLibrary()Z

    move-result v8

    if-eqz v8, :cond_b52

    if-eqz v4, :cond_b52

    and-int/lit8 v4, v38, 0x20

    if-eqz v4, :cond_b48

    goto :goto_b52

    :cond_b48
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "Packages declaring static-shared libs cannot be updated"

    const/4 v2, -0x5

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b52
    :goto_b52
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_b58

    const/4 v4, 0x1

    goto :goto_b59

    :cond_b58
    const/4 v4, 0x0

    :goto_b59
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8

    :try_start_b5e
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_b72

    const/16 v33, 0x0

    goto :goto_b7a

    :cond_b72
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    move-object/from16 v33, v10

    :goto_b7a
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v11, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v11, v9, v10, v0}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v10

    if-eqz v10, :cond_bb1

    invoke-virtual {v11, v9, v6}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v10

    if-eqz v10, :cond_b95

    goto :goto_bea

    :cond_b95
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New package not signed by keys specified by upgrade-keysets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_bae
    move-exception v0

    goto/16 :goto_e6a

    :cond_bb1
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v14

    if-nez v14, :cond_bea

    const/16 v12, 0x8

    invoke-virtual {v11, v10, v12}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v12

    if-nez v12, :cond_bea

    if-eqz v24, :cond_bd1

    invoke-virtual {v11, v10}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v10

    if-eqz v10, :cond_bd1

    goto :goto_bea

    :cond_bd1
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New package has a different signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_bea
    :goto_bea
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    if-eqz v10, :cond_c77

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v10
    :try_end_bf4
    .catchall {:try_start_b5e .. :try_end_bf4} :catchall_bae

    if-eqz v10, :cond_c77

    :try_start_bf6
    const-string/jumbo v10, "SHA-512"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c2e

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v14, 0x0

    :goto_c19
    if-ge v14, v12, :cond_c2e

    aget-object v15, v11, v14

    move/from16 v18, v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v4}, Lcom/android/server/pm/InstallPackageHelper;->updateDigest(Ljava/security/MessageDigest;Ljava/io/File;)V

    const/16 v25, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v18

    goto :goto_c19

    :cond_c2e
    move/from16 v18, v4

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4
    :try_end_c34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bf6 .. :try_end_c34} :catch_c5f
    .catch Ljava/io/IOException; {:try_start_bf6 .. :try_end_c34} :catch_c5f
    .catchall {:try_start_bf6 .. :try_end_c34} :catchall_bae

    :try_start_c34
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v10

    invoke-static {v10, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_c46

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_c79

    :cond_c46
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New package fails restrict-update check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_c5f
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compute hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c77
    move/from16 v18, v4

    :goto_c79
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    if-eqz v4, :cond_c8e

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_c90

    :cond_c8e
    const-string v1, "<nothing>"

    :goto_c90
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c9b

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_c9d

    :cond_c9b
    const-string v4, "<nothing>"

    :goto_c9d
    const-string v10, "<nothing>"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cad

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v10

    if-eqz v10, :cond_cad

    const-string v4, "<nothing>"

    :cond_cad
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, -0x18

    if-nez v10, :cond_cf6

    const-string v10, "<nothing>"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cca

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    if-nez v10, :cond_cca

    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageSetting;->isArchivedOnAnyUser([I)Z

    move-result v10

    if-eqz v10, :cond_cca

    goto :goto_cf6

    :cond_cca
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shared user changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_cf6
    :goto_cf6
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isLeavingSharedUser()Z

    move-result v1

    if-eqz v1, :cond_d02

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isLeavingSharedUser()Z

    move-result v1

    if-eqz v1, :cond_d04

    :cond_d02
    const/4 v12, 0x1

    goto :goto_d28

    :cond_d04
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempting to rejoin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_d28
    invoke-virtual {v9, v5, v12}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v9, v5, v14}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v4

    if-eqz v18, :cond_d9c

    iget v10, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d6e

    array-length v10, v5

    move v11, v14

    :goto_d3a
    if-ge v11, v10, :cond_d9c

    aget v12, v5, v11

    invoke-virtual {v9, v12}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v15

    if-eqz v15, :cond_d49

    const/16 v25, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_d3a

    :cond_d49
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t replace full app with instant app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    throw v0

    :cond_d6e
    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_d75

    goto :goto_d9c

    :cond_d75
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t replace full app with instant app: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v0}, Lcom/android/server/pm/PrepareFailure;-><init>()V

    throw v0

    :cond_d9c
    :goto_d9c
    monitor-exit v8
    :try_end_d9d
    .catchall {:try_start_c34 .. :try_end_d9d} :catchall_bae

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v3, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v3}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_dc0

    const/4 v5, 0x1

    goto :goto_dc1

    :cond_dc0
    move v5, v14

    :goto_dc1
    iput-boolean v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    const/4 v12, 0x1

    iput-boolean v12, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    iput-object v1, v3, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    new-instance v5, Landroid/util/SparseIntArray;

    array-length v8, v1

    invoke-direct {v5, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    move v5, v14

    :goto_dd1
    array-length v8, v1

    if-ge v5, v8, :cond_de4

    aget v8, v1, v5

    iget-object v10, v3, Lcom/android/server/pm/PackageRemovedInfo;->mInstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/PackageSetting;->getInstallReason(I)I

    move-result v11

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v25, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_dd1

    :cond_de4
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v5, v4

    invoke-direct {v1, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    move v1, v14

    :goto_ded
    array-length v5, v4

    if-ge v1, v5, :cond_e00

    aget v5, v4, v1

    iget-object v8, v3, Lcom/android/server/pm/PackageRemovedInfo;->mUninstallReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageSetting;->getUninstallReason(I)I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v25, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_ded

    :cond_e00
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v1

    iput-boolean v1, v3, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_e63

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v3

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v4

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isVendor()Z

    move-result v5

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOdm()Z

    move-result v10

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isSystemExt()Z

    move-result v11

    or-int v0, v0, v16

    if-eqz v3, :cond_e34

    const/high16 v17, 0x20000

    goto :goto_e36

    :cond_e34
    move/from16 v17, v14

    :goto_e36
    or-int v0, v0, v17

    if-eqz v4, :cond_e3d

    const/high16 v3, 0x40000

    goto :goto_e3e

    :cond_e3d
    move v3, v14

    :goto_e3e
    or-int/2addr v0, v3

    if-eqz v5, :cond_e44

    const/high16 v3, 0x80000

    goto :goto_e45

    :cond_e44
    move v3, v14

    :goto_e45
    or-int/2addr v0, v3

    if-eqz v8, :cond_e4b

    const/high16 v3, 0x100000

    goto :goto_e4c

    :cond_e4b
    move v3, v14

    :goto_e4c
    or-int/2addr v0, v3

    if-eqz v10, :cond_e52

    const/high16 v3, 0x400000

    goto :goto_e53

    :cond_e52
    move v3, v14

    :goto_e53
    or-int/2addr v0, v3

    if-eqz v11, :cond_e58

    move/from16 v14, v35

    :cond_e58
    or-int/2addr v0, v14

    const/4 v12, 0x1

    iput v12, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    :cond_e63
    move-object v5, v7

    move-object v10, v9

    move-object/from16 v11, v33

    move v9, v1

    :goto_e68
    move v3, v0

    goto :goto_e99

    :goto_e6a
    :try_start_e6a
    monitor-exit v8
    :try_end_e6b
    .catchall {:try_start_e6a .. :try_end_e6b} :catchall_bae

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_e6e
    move-exception v0

    :try_start_e6f
    monitor-exit v4
    :try_end_e70
    .catchall {:try_start_e6f .. :try_end_e70} :catchall_e6e

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_e73
    const/4 v14, 0x0

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v5

    :try_start_e7f
    iget-object v4, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_eda

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea7

    monitor-exit v5
    :try_end_e94
    .catchall {:try_start_e7f .. :try_end_e94} :catchall_ea5

    move v9, v14

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_e68

    :goto_e99
    move/from16 v8, v20

    move-object v1, v2

    move v4, v13

    move/from16 v2, v20

    move-object/from16 v7, v32

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/InstallRequest;->setPrepareResult(ZIILcom/android/server/pm/PackageSetting;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    :goto_ea4
    return-void

    :catchall_ea5
    move-exception v0

    goto :goto_f10

    :cond_ea7
    move-object v1, v2

    :try_start_ea8
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to re-install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_eda
    move-object v1, v2

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to re-install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without first uninstalling package running as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_f10
    monitor-exit v5
    :try_end_f11
    .catchall {:try_start_ea8 .. :try_end_f11} :catchall_ea5

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_f14
    :try_start_f14
    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is an optimized app. APK optimized apps are not updateable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :goto_f32
    monitor-exit v4
    :try_end_f33
    .catchall {:try_start_f14 .. :try_end_f33} :catchall_417

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_f36
    move-object v1, v2

    move-object v6, v7

    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v8, 0xcf

    invoke-static {v0, v8, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const-string/jumbo v1, "This SmartSwitch installation is not allowed due to app is running in OOBE"

    const/16 v8, -0x6e

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f58
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Failed collect during installPackageLI"

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    :cond_f64
    const/16 v8, -0x6e

    const-string/jumbo v0, "This app installation is not allowed"

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    invoke-direct {v1, v8, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_f75
    move-object v1, v2

    if-eqz v0, :cond_f89

    const/4 v12, 0x1

    if-eq v0, v12, :cond_f86

    const/4 v14, 0x2

    if-eq v0, v14, :cond_f83

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f8b

    :cond_f83
    const-string v0, "INSTALL_NOT_ALLOWED_UNINSTALL_FOR_GUEST"

    goto :goto_f8b

    :cond_f86
    const-string v0, "INSTALL_NOT_ALLOWED_INSTALL_ONLY_OWNER"

    goto :goto_f8b

    :cond_f89
    const-string v0, "INSTALL_ALLOWD"

    :goto_f8b
    const-string v2, "Install failed. Not allowed to install due to "

    const-string v3, " for User "

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const/16 v8, -0x6e

    invoke-direct {v1, v8, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_faa
    move-exception v0

    goto :goto_fcc

    :catch_fac
    move-exception v0

    goto :goto_fbe

    :goto_fae
    :try_start_fae
    invoke-virtual {v14}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_fb1
    .catchall {:try_start_fae .. :try_end_fb1} :catchall_fb2

    goto :goto_fb6

    :catchall_fb2
    move-exception v0

    :try_start_fb3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_fb6
    throw v1
    :try_end_fb7
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_fb3 .. :try_end_fb7} :catch_fac
    .catchall {:try_start_fb3 .. :try_end_fb7} :catchall_faa

    :catchall_fb7
    move-exception v0

    move-wide/from16 v18, v7

    goto :goto_fcc

    :catch_fbb
    move-exception v0

    move-wide/from16 v18, v7

    :goto_fbe
    :try_start_fbe
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    iget v2, v0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    const-string v3, "Failed parse during installPackageLI"

    invoke-static {v3, v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PrepareFailure;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_fcc
    .catchall {:try_start_fbe .. :try_end_fcc} :catchall_faa

    :goto_fcc
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final reconcileInstallPackages(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_73

    const-wide/32 v3, 0x40000

    :try_start_13
    const-string/jumbo v0, "reconcilePackages"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/pm/InstallPackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v10, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v11
    :try_end_2f
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_13 .. :try_end_2f} :catch_46
    .catchall {:try_start_13 .. :try_end_2f} :catchall_40

    move-object v5, p1

    move-object v7, p2

    :try_start_31
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ReconcilePackageUtils;->reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;

    move-result-object p0
    :try_end_35
    .catch Lcom/android/server/pm/ReconcileFailure; {:try_start_31 .. :try_end_35} :catch_43
    .catchall {:try_start_31 .. :try_end_35} :catchall_40

    :try_start_35
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    return-object p0

    :catchall_3d
    move-exception v0

    move-object p0, v0

    goto :goto_6f

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    :catch_43
    move-exception v0

    :goto_44
    move-object p0, v0

    goto :goto_49

    :catch_46
    move-exception v0

    move-object v5, p1

    goto :goto_44

    :goto_49
    :try_start_49
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    const-string/jumbo v0, "Reconciliation failed..."

    invoke-virtual {p2, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_40

    goto :goto_4d

    :cond_60
    :try_start_60
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_3d

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    const/4 p0, 0x0

    return-object p0

    :goto_6b
    :try_start_6b
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_3d

    :try_start_70
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    move-object p0, v0

    :try_start_75
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7e

    :catchall_79
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7e
    throw p0
.end method

.method public final releaseWakeLock(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_7

    goto :goto_28

    :cond_7
    iget-object p1, p0, Lcom/android/server/pm/InstallPackageHelper;->mInternalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_a
    iget-object p2, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_c} :catch_1e
    .catchall {:try_start_a .. :try_end_c} :catchall_10

    if-nez p2, :cond_12

    :try_start_e
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p0

    goto :goto_29

    :cond_12
    :try_start_12
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_27

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper;->mInstallingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_10

    goto :goto_27

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string/jumbo p2, "PackageManager"

    const-string v0, "Error while releasing installer lock"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    monitor-exit p1

    :goto_28
    return-void

    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_10

    throw p0
.end method

.method public final renameAndUpdatePaths(Ljava/util/List;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    iget-object v3, v2, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mScanFlags:I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_3a

    const/high16 v5, 0x4000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_23

    goto :goto_d

    :cond_23
    :try_start_23
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/server/pm/AsecInstallHelper;->doRenameAsec(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    goto :goto_41

    :catchall_3a
    move-exception p0

    goto :goto_69

    :catch_3c
    move-exception p0

    goto :goto_5b

    :cond_3e
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/InstallPackageHelper;->doRenameLI(Lcom/android/server/pm/InstallRequest;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    :try_end_41
    .catch Lcom/android/server/pm/PrepareFailure; {:try_start_23 .. :try_end_41} :catch_3c
    .catchall {:try_start_23 .. :try_end_41} :catchall_3a

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getNativeLibraryRootDir()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPath:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_d

    :goto_5b
    const/4 p1, 0x0

    invoke-virtual {v2, p1, p0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_3a

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    const/4 p0, 0x0

    return p0

    :cond_64
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    const/4 p0, 0x1

    return p0

    :goto_69
    :try_start_69
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_71
    throw p0
.end method

.method public final restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    iget v4, v2, Lcom/android/server/pm/InstallRequest;->mUserId:I

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    const/4 v5, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz v0, :cond_12

    move v6, v3

    goto :goto_13

    :cond_12
    move v6, v5

    :goto_13
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-eqz v0, :cond_51

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    sget-object v9, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v9, 0x8000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_26

    goto :goto_51

    :cond_26
    if-nez v6, :cond_2a

    move v0, v3

    goto :goto_52

    :cond_2a
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v9

    :try_start_37
    iget-object v8, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v8, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-eqz v8, :cond_49

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v3

    goto :goto_4a

    :cond_49
    move v0, v5

    :goto_4a
    monitor-exit v9

    goto :goto_52

    :catchall_4c
    move-exception v0

    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_4c

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_51
    :goto_51
    move v0, v5

    :goto_52
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v10, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v10, :cond_5a

    iput v3, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    :cond_5a
    iget v10, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v9, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_63
    iget-object v11, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_1be

    iget v9, v2, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    const-wide/32 v11, 0x40000

    if-ne v9, v3, :cond_185

    iget-object v9, v2, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v9, :cond_7a

    const/4 v13, 0x7

    invoke-virtual {v9, v13}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_7a
    const/4 v9, -0x1

    if-eqz v0, :cond_de

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_84
    const-string/jumbo v0, "User "

    iget-object v13, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v13, :cond_8d

    :goto_8b
    move v0, v5

    goto :goto_de

    :cond_8d
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v14, v13, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v15, v13, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14, v15, v13}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/backup/IBackupManager;

    const-string/jumbo v14, "PackageManager"

    if-eqz v13, :cond_d8

    if-ne v4, v9, :cond_a2

    move v15, v5

    goto :goto_a3

    :cond_a2
    move v15, v4

    :goto_a3
    const-string/jumbo v9, "restore"

    invoke-static {v11, v12, v9, v10}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :try_start_a9
    invoke-interface {v13, v15}, Landroid/app/backup/IBackupManager;->isUserReadyForBackup(I)Z

    move-result v9

    if-eqz v9, :cond_bb

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v15, v0, v10}, Landroid/app/backup/IBackupManager;->restoreAtInstallForUser(ILjava/lang/String;I)V

    goto :goto_d6

    :catch_b9
    move-exception v0

    goto :goto_d0

    :cond_bb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not ready. Restore at install didn\'t take place."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_cf} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_cf} :catch_b9

    goto :goto_8b

    :goto_d0
    const-string v9, "Exception trying to enqueue restore"

    invoke-static {v14, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b

    :catch_d6
    :goto_d6
    move v0, v3

    goto :goto_de

    :cond_d8
    const-string v0, "Backup Manager not found!"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    :cond_de
    :goto_de
    if-nez v0, :cond_16a

    if-eqz v6, :cond_16a

    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v0, :cond_eb

    move v0, v5

    move v4, v10

    move-wide v9, v11

    goto/16 :goto_164

    :cond_eb
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v9

    :try_start_fe
    iget-object v13, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v13, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    if-eqz v13, :cond_119

    iget v14, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {v13, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v15

    invoke-virtual {v13, v6, v3}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v4

    goto :goto_11f

    :catchall_117
    move-exception v0

    goto :goto_166

    :cond_119
    new-array v4, v5, [I

    const-wide/16 v14, -0x1

    move-wide v15, v14

    const/4 v14, -0x1

    :goto_11f
    monitor-exit v9
    :try_end_120
    .catchall {:try_start_fe .. :try_end_120} :catchall_117

    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v6

    const/high16 v9, 0x40000

    and-int/2addr v9, v6

    if-nez v9, :cond_130

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_12e

    goto :goto_130

    :cond_12e
    move v6, v5

    goto :goto_131

    :cond_130
    :goto_130
    move v6, v3

    :goto_131
    if-eqz v13, :cond_161

    if-eqz v6, :cond_161

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v17

    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v9, Lcom/android/server/rollback/RollbackManagerInternal;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/rollback/RollbackManagerInternal;

    invoke-static {v4}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    move-result-object v4

    check-cast v6, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    invoke-static {v4}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    move-result-object v13

    move/from16 v18, v10

    move-wide v9, v11

    move-object v12, v0

    move-object v11, v6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    move/from16 v4, v18

    move v0, v3

    goto :goto_164

    :cond_161
    move v4, v10

    move-wide v9, v11

    move v0, v5

    :goto_164
    move-wide v10, v9

    goto :goto_16c

    :goto_166
    :try_start_166
    monitor-exit v9
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_117

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_16a
    move v4, v10

    move-wide v10, v11

    :goto_16c
    if-eqz v0, :cond_187

    iget-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_173

    goto :goto_187

    :cond_173
    if-eqz v8, :cond_17c

    invoke-virtual {v8, v7}, Lcom/android/server/pm/PackageSetting;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_17c

    goto :goto_17d

    :cond_17c
    move v3, v5

    :goto_17d
    new-instance v6, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;

    invoke-direct {v6, v1, v3, v2}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V

    iput-object v6, v2, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    goto :goto_187

    :cond_185
    move v4, v10

    move-wide v10, v11

    :cond_187
    :goto_187
    if-eqz v0, :cond_19f

    if-eqz v8, :cond_1bd

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_192
    invoke-virtual {v8, v7, v5}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    monitor-exit v1

    goto :goto_1bd

    :catchall_19a
    move-exception v0

    monitor-exit v1
    :try_end_19c
    .catchall {:try_start_192 .. :try_end_19c} :catchall_19a

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_19f
    iget-object v0, v2, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz v0, :cond_1a6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_1a6
    const-string/jumbo v0, "postInstall"

    invoke-static {v10, v11, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1bd
    :goto_1bd
    return-void

    :catchall_1be
    move-exception v0

    :try_start_1bf
    monitor-exit v9
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v0
.end method

.method public final scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-nez v0, :cond_9

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_9
    new-instance v2, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v2, v3, v4}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    if-ge v6, v4, :cond_35

    aget-object v7, v0, v6

    new-instance v8, Ljava/io/File;

    iget-object v9, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2, v8, v1}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {v3, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    :goto_3f
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_4f

    invoke-virtual {v2}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_4f
    new-instance v2, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;

    invoke-direct {v2, v3}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_117

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    iget-object v6, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    iget-object v7, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/apex/ApexInfo;

    const/high16 v8, 0x4000000

    or-int v8, p3, v8

    iget-object v9, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/pm/PackageManagerService;->getSystemPackageScanFlags(Ljava/io/File;)I

    move-result v9

    or-int/2addr v8, v9

    iget-boolean v9, v7, Landroid/apex/ApexInfo;->isFactory:Z

    if-nez v9, :cond_90

    and-int/lit8 v9, v1, -0x11

    or-int/lit8 v8, v8, 0x4

    move v12, v9

    :goto_8e
    move v13, v8

    goto :goto_92

    :cond_90
    move v12, v1

    goto :goto_8e

    :goto_92
    if-nez v6, :cond_e2

    move-object v8, v11

    :try_start_95
    iget-object v11, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    new-instance v15, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-direct {v15, v7}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/InstallPackageHelper;->addForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)Lcom/android/server/pm/pkg/AndroidPackage;

    iget-object v4, v4, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    iget-boolean v6, v7, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v6, :cond_ba

    iget-boolean v6, v7, Landroid/apex/ApexInfo;->isActive:Z

    if-nez v6, :cond_ba

    iget-object v6, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;)Z

    goto :goto_ba

    :catch_b8
    move-exception v0

    goto :goto_c9

    :cond_ba
    :goto_ba
    new-instance v6, Lcom/android/server/pm/ApexManager$ScanResult;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v4, v8}, Lcom/android/server/pm/ApexManager$ScanResult;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_95 .. :try_end_c6} :catch_b8

    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    :goto_c9
    invoke-static {v7}, Lcom/android/server/pm/InstallPackageHelper;->tryToRecover(Landroid/apex/ApexInfo;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to scan: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e2
    instance-of v0, v6, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_100

    invoke-static {v7}, Lcom/android/server/pm/InstallPackageHelper;->tryToRecover(Landroid/apex/ApexInfo;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to parse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected exception occurred while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_117
    return-object v2
.end method

.method public final scanInstallPackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 28

    move-object/from16 v0, p0

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v10, Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/pm/InstallRequest;

    iget-object v13, v12, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    const/4 v14, 0x0

    if-nez v13, :cond_2c

    const/16 v0, -0x74

    const-string v1, "Failed to obtain package to scan"

    invoke-virtual {v12, v0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return v14

    :cond_2c
    iput v8, v12, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v1, p4

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    iget-object v2, v12, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_41
    move v3, v1

    goto :goto_47

    :goto_43
    move/from16 p1, v14

    goto/16 :goto_206

    :goto_47
    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-object v4, v2

    iget v2, v12, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    move v5, v3

    iget v3, v12, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    move-object v7, v4

    move v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move/from16 v16, v6

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move/from16 v17, v8

    iget-object v8, v12, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;
    :try_end_5f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3e .. :try_end_5f} :catch_203

    move/from16 p1, v14

    if-nez v8, :cond_65

    const/4 v8, 0x0

    goto :goto_67

    :cond_65
    :try_start_65
    iget-object v8, v8, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_67
    const-string/jumbo v14, "scanPackage"

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_74
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_65 .. :try_end_74} :catch_ad

    move-wide/from16 v21, v8

    move-object v8, v7

    move-object/from16 v7, v19

    move-wide/from16 v19, v21

    move/from16 v14, v16

    :try_start_7d
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object v1
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_1fe

    :try_start_81
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    iput-object v1, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    if-eqz v8, :cond_8b

    invoke-virtual {v8, v14}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_8b
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in multi-package install request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    goto/16 :goto_1f8

    :catch_ad
    move-exception v0

    goto/16 :goto_206

    :cond_b0
    sget-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sIsRduDevice:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_10f

    sget-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    if-nez v1, :cond_c9

    const-string v1, "/system/etc/ldu_blocklist.xml"

    invoke-static {v1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    :cond_c9
    sget-object v1, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    invoke-virtual {v1, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    goto :goto_10f

    :cond_d2
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This package ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] is forbidden to install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is forbidden to install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_10f
    :goto_10f
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v1, v12, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    if-nez v1, :cond_11b

    goto :goto_156

    :cond_11b
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManager$Property;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    if-eqz v1, :cond_144

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v1

    if-nez v1, :cond_13b

    goto :goto_144

    :cond_13b
    if-eqz v2, :cond_14d

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_14d

    goto :goto_156

    :cond_144
    :goto_144
    if-eqz v2, :cond_156

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v1

    if-nez v1, :cond_14d

    goto :goto_156

    :cond_14d
    const-string/jumbo v0, "Update attempted to change value of android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    const/4 v1, -0x7

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    goto/16 :goto_1f8

    :cond_156
    :goto_156
    iget v1, v12, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_160

    move/from16 v1, v17

    goto :goto_162

    :cond_160
    move/from16 v1, p1

    :goto_162
    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isSdkLibrary()Z

    const/4 v2, -0x1

    if-nez v1, :cond_17a

    invoke-virtual {v0, v12}, Lcom/android/server/pm/InstallPackageHelper;->optimisticallyRegisterAppId(Lcom/android/server/pm/InstallRequest;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v3, p2

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_177
    move-object/from16 v1, v18

    goto :goto_182

    :cond_17a
    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setAppId(I)V

    goto :goto_177

    :goto_182
    invoke-virtual {v1, v13}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    move-object/from16 v4, p3

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_81 .. :try_end_18d} :catch_ad

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v3

    sget-object v4, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/high16 v4, 0x8000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f9

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    invoke-static {v5}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iget v8, v12, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const-wide/16 v13, 0x0

    if-eq v8, v2, :cond_1c7

    :try_start_1b7
    invoke-interface {v4, v5, v13, v14, v8}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_1bf

    :catch_1bd
    const/4 v7, 0x0

    goto :goto_1df

    :cond_1bf
    invoke-static {v3, v2, v5, v8}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1df

    :cond_1c7
    move/from16 v2, p1

    :goto_1c9
    array-length v8, v6

    if-ge v2, v8, :cond_1df

    aget v8, v6, v2

    invoke-interface {v4, v5, v13, v14, v8}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-nez v9, :cond_1d5

    goto :goto_1dc

    :cond_1d5
    invoke-static {v3, v9, v5, v8}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerTitle(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b7 .. :try_end_1dc} :catch_1bd

    :goto_1dc
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c9

    :cond_1df
    :goto_1df
    if-eqz v7, :cond_1eb

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1e8

    goto :goto_1eb

    :cond_1e8
    iput-object v7, v12, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    goto :goto_1f9

    :cond_1eb
    :goto_1eb
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Failed to obtain the responsible installer info"

    const/16 v2, -0x27

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    :goto_1f8
    return p1

    :cond_1f9
    :goto_1f9
    move-object v9, v1

    move/from16 v8, v17

    goto/16 :goto_12

    :catchall_1fe
    move-exception v0

    :try_start_1ff
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
    :try_end_203
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1ff .. :try_end_203} :catch_ad

    :catch_203
    move-exception v0

    goto/16 :goto_43

    :goto_206
    const-string/jumbo v1, "Scanning Failed."

    invoke-virtual {v12, v1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return p1

    :cond_20d
    move/from16 v17, v8

    return v17
.end method

.method public final scanPackageForInitLI(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;)Landroid/util/Pair;
    .registers 32

    const-string v6, "Inconsistent package setting of updated system app for "

    and-int/lit8 v0, p2, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_a

    move v7, v15

    goto :goto_b

    :cond_a
    move v7, v14

    :goto_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    move-result-object v5

    iget-object v1, v5, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v5, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_21

    goto :goto_22

    :cond_21
    move-object v1, v2

    :goto_22
    if-eqz v1, :cond_27

    move/from16 v16, v15

    goto :goto_29

    :cond_27
    move/from16 v16, v14

    :goto_29
    if-eqz v16, :cond_2e

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    goto :goto_32

    :cond_2e
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_32
    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_39
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v17

    if-eqz v7, :cond_87

    if-nez v16, :cond_87

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_87

    const-string/jumbo v4, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". To recover it, enable the system app and install it as non-updated system app."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v4, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-eqz v6, :cond_87

    invoke-virtual {v4, v6}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v8

    if-eqz v8, :cond_87

    iget-object v9, v8, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v9, v6}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v8, v14}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    goto :goto_87

    :goto_81
    move-object/from16 v22, v3

    goto/16 :goto_52e

    :catchall_85
    move-exception v0

    goto :goto_81

    :cond_87
    :goto_87
    iget-object v4, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    if-eqz v4, :cond_94

    move/from16 v18, v15

    goto :goto_96

    :cond_94
    move/from16 v18, v14

    :goto_96
    if-eqz v7, :cond_100

    if-eqz v18, :cond_100

    new-instance v2, Lcom/android/server/pm/ScanRequest;

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    iget-object v8, v5, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-boolean v11, v5, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z
    :try_end_a8
    .catchall {:try_start_39 .. :try_end_a8} :catchall_85

    move v9, v7

    const/4 v7, 0x0

    move-object v10, v5

    move-object v5, v8

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v12, v3

    const/4 v3, 0x0

    move-object v0, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object/from16 v14, p0

    move-object/from16 v21, v1

    move/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v22, v12

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    :try_start_c5
    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    move v3, v10

    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-static {v1, v3, v2, v15}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    const-wide/16 v6, -0x1

    invoke-static {v0, v5, v2, v6, v7}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    if-eqz v2, :cond_10d

    iget-object v2, v0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v2, v2, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_10d

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PackageSetting;->copyPackageSetting(Lcom/android/server/pm/PackageSetting;Z)V

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mimeGroups:Ljava/util/Map;

    if-eqz v0, :cond_f5

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f6

    :cond_f5
    const/4 v0, 0x0

    :goto_f6
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)V

    invoke-virtual {v2}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_10d

    :catchall_fd
    move-exception v0

    goto/16 :goto_52e

    :cond_100
    move-object v14, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move-object/from16 v20, v5

    move/from16 v19, v7

    move-object/from16 v1, p1

    move/from16 v3, p3

    :cond_10d
    :goto_10d
    monitor-exit v22
    :try_end_10e
    .catchall {:try_start_c5 .. :try_end_10e} :catchall_fd

    move-object/from16 v2, v21

    if-eqz v16, :cond_120

    iget-object v0, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_120

    move v5, v15

    goto :goto_121

    :cond_120
    const/4 v5, 0x0

    :goto_121
    if-eqz v16, :cond_12f

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_12f

    move v0, v15

    goto :goto_130

    :cond_12f
    const/4 v0, 0x0

    :goto_130
    if-eqz v16, :cond_13e

    move-object/from16 v10, v20

    iget-object v6, v10, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    iget-object v7, v10, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-eq v6, v7, :cond_13e

    move v6, v15

    :goto_13b
    move/from16 v9, v19

    goto :goto_140

    :cond_13e
    const/4 v6, 0x0

    goto :goto_13b

    :goto_140
    if-eqz v9, :cond_14c

    if-eqz v18, :cond_14c

    if-eqz v5, :cond_14c

    if-nez v0, :cond_14a

    if-eqz v6, :cond_14c

    :cond_14a
    move v5, v15

    goto :goto_14d

    :cond_14c
    const/4 v5, 0x0

    :goto_14d
    const/4 v7, 0x5

    if-eqz v5, :cond_1ce

    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v8

    :try_start_155
    iget-object v10, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v11, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_15f
    .catchall {:try_start_155 .. :try_end_15f} :catchall_1c9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "System package updated; name: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " --> "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "; "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " --> "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v10, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v12, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {v8, v11, v10}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v10

    :try_start_1b9
    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    monitor-exit v10

    goto :goto_1ce

    :catchall_1c4
    move-exception v0

    monitor-exit v10
    :try_end_1c6
    .catchall {:try_start_1b9 .. :try_end_1c6} :catchall_1c4

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_1c9
    move-exception v0

    :try_start_1ca
    monitor-exit v8
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c9

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_1ce
    :goto_1ce
    if-eqz v9, :cond_25d

    if-eqz v18, :cond_25d

    if-nez v5, :cond_25d

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_213

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_207

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    goto :goto_213

    :cond_207
    new-instance v1, Lcom/android/server/pm/PrepareFailure;

    const-string v2, "Failed collect during scanPackageForInitLI"

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PrepareFailure;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    :cond_213
    :goto_213
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Package "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignored: updated version "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_23f

    iget-wide v2, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_242

    :cond_23f
    const-string/jumbo v2, "unknown"

    :goto_242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " better than this "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0xc

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_25d
    const/4 v5, 0x0

    if-eqz v9, :cond_261

    goto :goto_27c

    :cond_261
    if-eqz v16, :cond_27a

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemConfig()Lcom/android/server/SystemConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/SystemConfig;->mPreinstallPackagesWithStrictSignatureCheck:Ljava/util/Set;

    check-cast v8, Landroid/util/ArraySet;

    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27a

    move/from16 v17, v15

    goto :goto_27c

    :cond_27a
    move/from16 v17, v5

    :goto_27c
    iget-object v4, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PackageManagerService;->getSettingsVersionForPackage(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v8, v8, Lcom/android/server/pm/PackageManagerService;->mIsPreNMR1Upgrade:Z

    if-eqz v8, :cond_296

    new-instance v8, Ljava/io/File;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    goto :goto_29a

    :cond_296
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J

    move-result-wide v10

    :goto_29a
    const-string/jumbo v8, "PackageManager"

    const/4 v12, 0x2

    if-eqz v2, :cond_2fc

    if-nez v17, :cond_2fc

    iget-object v13, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2fc

    move-object v13, v8

    iget-wide v7, v2, Lcom/android/server/pm/PackageSetting;->mLastModifiedTime:J

    cmp-long v7, v7, v10

    if-nez v7, :cond_2fd

    sget-boolean v7, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    iget v4, v4, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    if-ge v4, v12, :cond_2bc

    goto :goto_2fd

    :cond_2bc
    const/4 v7, 0x3

    if-ge v4, v7, :cond_2c0

    goto :goto_2fd

    :cond_2c0
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    if-eqz v4, :cond_2ec

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_2ec

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v4

    if-eqz v4, :cond_2ec

    new-instance v4, Landroid/content/pm/SigningDetails;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v4, v7}, Landroid/content/pm/SigningDetails;-><init>(Landroid/content/pm/SigningDetails;)V

    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    goto :goto_33b

    :cond_2ec
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "PackageSetting for "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-string v8, " is missing signatures.  Collecting certs again to recover them."

    invoke-static {v4, v7, v8, v13}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_318

    :cond_2fc
    move-object v13, v8

    :cond_2fd
    :goto_2fd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " changed; collecting certs"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_313

    const-string v7, " (forced)"

    goto :goto_315

    :cond_313
    const-string v7, ""

    :goto_315
    invoke-static {v4, v7, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_318
    const-wide/32 v7, 0x40000

    :try_start_31b
    const-string/jumbo v4, "collectCertificates"

    invoke-static {v7, v8, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v4

    invoke-static {v4, v1, v9}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v10

    if-nez v10, :cond_518

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SigningDetails;

    invoke-interface {v1, v4}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_338
    .catchall {:try_start_31b .. :try_end_338} :catchall_516

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    :goto_33b
    if-eqz v2, :cond_359

    iget-object v4, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v4

    if-nez v4, :cond_346

    goto :goto_359

    :cond_346
    iget-wide v7, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v10

    cmp-long v4, v7, v10

    if-nez v4, :cond_351

    goto :goto_359

    :cond_351
    iget-object v4, v14, Lcom/android/server/pm/InstallPackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_359
    :goto_359
    if-eqz v9, :cond_47b

    if-nez v18, :cond_47b

    if-eqz v16, :cond_47b

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_47b

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v4, v7, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-nez v4, :cond_3dd

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v4

    if-nez v4, :cond_3dd

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "System package signature mismatch; name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v22, "scanPackageInternalLI"

    const/16 v24, 0x0

    const/16 v21, -0x1

    const/16 v23, 0xd

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    :try_start_3ad
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    iget-object v4, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v23

    new-instance v25, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v26}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    :try_end_3cd
    .catchall {:try_start_3ad .. :try_end_3cd} :catchall_3d2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto/16 :goto_47b

    :catchall_3d2
    move-exception v0

    move-object v1, v0

    :try_start_3d4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_3d7
    .catchall {:try_start_3d4 .. :try_end_3d7} :catchall_3d8

    goto :goto_3dc

    :catchall_3d8
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3dc
    throw v1

    :cond_3dd
    if-nez v0, :cond_425

    if-eqz v6, :cond_3e2

    goto :goto_425

    :cond_3e2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "System package disabled; name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; old: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v8, v15

    goto :goto_47c

    :cond_425
    :goto_425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "System package enabled; name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getLongVersionCode()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/io/File;Ljava/lang/String;)V

    :cond_47b
    :goto_47b
    const/4 v8, 0x0

    :goto_47c
    const/high16 v0, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_483

    move v5, v15

    goto :goto_484

    :cond_483
    const/4 v5, 0x0

    :goto_484
    iget-object v0, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v0, :cond_4fb

    if-eqz v9, :cond_4fb

    if-nez v16, :cond_4fb

    if-nez v5, :cond_4fb

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->isOverlayIsStatic()Z

    move-result v0

    if-nez v0, :cond_4fb

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4fb

    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4fb

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    :goto_4bd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_4fb

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4f9

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v6

    if-nez v6, :cond_4d6

    goto :goto_4f9

    :cond_4d6
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    :goto_4db
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4f9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    if-eqz v7, :cond_4f7

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4f7

    const/high16 v0, 0x8000000

    or-int/2addr v0, v3

    goto :goto_4fc

    :cond_4f7
    add-int/2addr v6, v15

    goto :goto_4db

    :cond_4f9
    :goto_4f9
    add-int/2addr v5, v15

    goto :goto_4bd

    :cond_4fb
    move v0, v3

    :goto_4fc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    or-int/lit8 v3, v0, 0x2

    const/4 v7, 0x0

    move/from16 v2, p2

    move-object/from16 v6, p4

    move-object v0, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstallPackageHelper;->scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :catchall_516
    move-exception v0

    goto :goto_52a

    :cond_518
    :try_start_518
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v1

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_52a
    .catchall {:try_start_518 .. :try_end_52a} :catchall_516

    :goto_52a
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :goto_52e
    :try_start_52e
    monitor-exit v22
    :try_end_52f
    .catchall {:try_start_52e .. :try_end_52f} :catchall_fd

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final scanPackageNew(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IIJLandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanResult;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->prepareInitialScanRequest(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/pm/ScanRequest;

    move-result-object v6

    move-object v14, v0

    iget-object v4, v6, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v0, v6, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v4, :cond_1e

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    iget-boolean v5, v5, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    goto :goto_23

    :cond_1e
    if-eqz v0, :cond_22

    move v5, v3

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_33

    if-nez v0, :cond_33

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_33

    move-object v7, v4

    goto :goto_34

    :cond_33
    move-object v7, v0

    :goto_34
    const/high16 v8, 0x80000

    const/high16 v9, 0x20000

    if-eqz v7, :cond_6b

    const/high16 v10, 0x10000

    or-int v10, p3, v10

    iget v7, v7, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v11, v7, 0x8

    if-eqz v11, :cond_48

    const/high16 v10, 0x30000

    or-int v10, p3, v10

    :cond_48
    and-int v11, v7, v9

    const/high16 v12, 0x40000

    if-eqz v11, :cond_4f

    or-int/2addr v10, v12

    :cond_4f
    and-int v11, v7, v12

    if-eqz v11, :cond_54

    or-int/2addr v10, v8

    :cond_54
    and-int v11, v7, v8

    if-eqz v11, :cond_5b

    const/high16 v11, 0x100000

    or-int/2addr v10, v11

    :cond_5b
    const/high16 v11, 0x200000

    and-int v12, v7, v11

    if-eqz v12, :cond_62

    or-int/2addr v10, v11

    :cond_62
    const/high16 v11, 0x40000000  # 2.0f

    and-int/2addr v7, v11

    if-eqz v7, :cond_6d

    const/high16 v7, 0x400000

    or-int/2addr v10, v7

    goto :goto_6d

    :cond_6b
    move/from16 v10, p3

    :cond_6d
    :goto_6d
    if-eqz v4, :cond_8d

    if-nez p6, :cond_73

    move v7, v2

    goto :goto_77

    :cond_73
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    :goto_77
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v11

    if-eqz v11, :cond_7f

    or-int/lit16 v10, v10, 0x2000

    :cond_7f
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v7

    if-eqz v7, :cond_8d

    const v7, 0x8000

    or-int/2addr v10, v7

    :cond_8d
    and-int v7, v10, v8

    if-eqz v7, :cond_9b

    invoke-static {}, Lcom/android/server/pm/ScanPackageUtils;->getVendorPartitionVersion()I

    move-result v7

    const/16 v8, 0x1c

    if-ge v7, v8, :cond_9b

    move v7, v3

    goto :goto_9c

    :cond_9b
    move v7, v2

    :goto_9c
    and-int v8, v10, v9

    if-nez v8, :cond_f8

    invoke-static {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v8

    if-nez v8, :cond_f8

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f8

    if-nez v7, :cond_f8

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v7

    if-nez v7, :cond_f8

    iget-object v7, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v7

    :try_start_bb
    iget-object v8, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v2}, Lcom/android/server/pm/Settings;->getSharedUserLPw(Ljava/lang/String;Z)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v8
    :try_end_c7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_bb .. :try_end_c7} :catch_ca
    .catchall {:try_start_bb .. :try_end_c7} :catchall_c8

    goto :goto_cb

    :catchall_c8
    move-exception v0

    goto :goto_f4

    :catch_ca
    const/4 v8, 0x0

    :goto_cb
    if-eqz v8, :cond_f0

    :try_start_cd
    iget v8, v8, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_d4

    move v2, v3

    :cond_d4
    if-eqz v2, :cond_f0

    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v2

    if-eqz v2, :cond_f0

    or-int/2addr v10, v9

    :cond_f0
    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_cd .. :try_end_f1} :catchall_c8

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    goto :goto_f8

    :goto_f4
    :try_start_f4
    monitor-exit v7
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_c8

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_f8
    :goto_f8
    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-static {v1, v10, v2, v5}, Lcom/android/server/pm/ScanPackageUtils;->applyPolicy(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ILcom/android/server/pm/pkg/AndroidPackage;Z)V

    iget-object v2, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v15

    move/from16 v9, p2

    :try_start_108
    invoke-virtual {v14, v1, v9, v10}, Lcom/android/server/pm/InstallPackageHelper;->assertPackageIsValid(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    move-object v2, v0

    new-instance v0, Lcom/android/server/pm/ScanRequest;

    move-object v3, v2

    iget-object v2, v6, Lcom/android/server/pm/ScanRequest;->mOldSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v5, v3

    iget-object v3, v6, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v7, v5

    iget-object v5, v6, Lcom/android/server/pm/ScanRequest;->mSharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    move-object v8, v7

    iget-object v7, v6, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    move-object v10, v8

    iget-object v8, v6, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    iget-boolean v11, v6, Lcom/android/server/pm/ScanRequest;->mIsPlatformPackage:Z

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object v6, v10

    move/from16 v10, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ScanRequest;-><init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, v14, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mFactoryTest:Z

    move-wide/from16 v3, p4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/pm/ScanPackageUtils;->scanPackageOnly(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageManagerServiceInjector;ZJ)Lcom/android/server/pm/ScanResult;

    move-result-object v0

    monitor-exit v15

    return-object v0

    :catchall_137
    move-exception v0

    monitor-exit v15
    :try_end_139
    .catchall {:try_start_108 .. :try_end_139} :catchall_137

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method
