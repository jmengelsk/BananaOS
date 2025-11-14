.class public Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

.field public final mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mContext:Landroid/content/Context;

.field public final mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

.field public final mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

.field public final mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

.field public final mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public mPackageManager:Lcom/android/server/pm/PackageManagerService;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

.field public final mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

.field public final mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

.field public final mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemPartitions:Ljava/util/List;

.field public final mSystemWrapper:Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

.field public final mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelperImpl;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda33;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;)V
    .registers 41

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p9}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p10}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p11}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p12}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p13}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p14}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p15}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p16

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p17

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p18

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p19

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p20

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p21

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p22

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p23

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p27

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p29

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p30

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p33

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    move-object/from16 p1, p35

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda12;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p31

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p32

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p36

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p37

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p38

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p39

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p40

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    return-void
.end method


# virtual methods
.method public final bootstrap(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public final getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelperImpl;

    return-object p0
.end method

.method public final getBackgroundHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getCompatibility()Lcom/android/server/compat/PlatformCompat;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public final getInstaller()Lcom/android/server/pm/Installer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public final getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/InstantAppResolverConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method public final getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    return-object p0
.end method

.method public final getLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public final getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method public final getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method public final getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public final getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public final getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method public final getSystemConfig()Lcom/android/server/SystemConfig;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemConfig;

    return-object p0
.end method

.method public final getSystemPartitions()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    return-object p0
.end method

.method public final getUserManagerService()Lcom/android/server/pm/UserManagerService;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method
