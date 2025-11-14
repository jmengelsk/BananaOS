.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/dex/ArtManagerService;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/ArtManagerService;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_0
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Lcom/android/server/pm/Installer;)V

    return-object p0

    :pswitch_1
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/resolution/ComponentResolver;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/resolution/ComponentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    return-object p0

    :pswitch_2
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    new-instance p1, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/Settings;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-direct {v1, v3, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    invoke-direct {p2, v3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;-><init>(I)V

    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    invoke-direct {v3, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;-><init>(I)V

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;-><init>(I)V

    invoke-direct {p1, v1, p2, v3, v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;-><init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda69;)V

    new-instance p2, Lcom/samsung/android/server/pm/MetaDataHelper;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;-><init>(Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;Lcom/samsung/android/server/pm/MetaDataHelper;Lcom/android/server/pm/UserManagerService;)V

    return-object p0

    :pswitch_3
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/dex/DexManager;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/pm/dex/DexManager;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/dex/DynamicCodeLogger;Landroid/content/pm/IPackageManager;)V

    return-object p0

    :pswitch_4
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/PackageDexOptimizer;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string v1, "*dexopt*"

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string/jumbo p0, "platform_compat"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0

    :pswitch_7
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    new-instance v5, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    invoke-direct {v5, p0, p2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    if-eqz v7, :cond_1

    new-array p0, v3, [Ljava/lang/String;

    :cond_0
    move-object v6, p0

    goto :goto_1

    :cond_1
    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x107010a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length p1, p0

    if-ge v3, p1, :cond_0

    aget-object p1, p0, v3

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    add-int/2addr v3, v2

    goto :goto_0

    :goto_1
    new-instance v4, Lcom/android/server/pm/AppsFilterImpl;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterImpl;-><init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V

    iput-object v4, v5, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    return-object v4

    :pswitch_8
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-direct {p0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;-><init>()V

    return-object p0

    :pswitch_9
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-direct {p0}, Lcom/android/server/pm/UpdateOwnershipHelper;-><init>()V

    return-object p0

    :pswitch_a
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-class p0, Landroid/app/AppOpsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManagerInternal;

    return-object p0

    :pswitch_b
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-object p0

    :pswitch_c
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string/jumbo p0, "backup"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/ServiceThread;

    const-string/jumbo p2, "PackageManager"

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/android/server/pm/PackageHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/PackageManagerService;)V

    return-object p2

    :pswitch_e
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->$r8$clinit:I

    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V

    new-instance p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)V

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo p0, "legacy_permission"

    invoke-static {p0, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    :cond_2
    return-object p2

    :pswitch_f
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/ModuleInfoProvider;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/pm/ModuleInfoProvider;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_10
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-direct {v2, v0, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/pm/PackageInstallerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;)V

    return-object p0

    :pswitch_11
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object p0

    :pswitch_12
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object p0

    :pswitch_13
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSeparateProcesses:[Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/DisplayMetrics;

    new-instance v1, Lcom/android/server/pm/parsing/PackageCacher;

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackageParserCallback:Lcom/android/server/pm/PackageManagerService$3;

    invoke-direct {v1, v2, p1}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$3;)V

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/android/internal/pm/parsing/PackageParser2;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    return-object p0

    :pswitch_14
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object p0

    :pswitch_15
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    iget-object p0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "incremental"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0

    :pswitch_16
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
