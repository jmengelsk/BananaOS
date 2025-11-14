.class public Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mPmService:Lcom/android/server/pm/PackageManagerService;

.field public final mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mSafeModeAllowListHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mSharedUidAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mSignaturePermissionAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

.field public final mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSafeModeAllowListHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSignaturePermissionAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSharedUidAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-direct {p1, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-direct {p1, p4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    const-string v4, "CTC"

    const-string v5, "CHC"

    const-string v0, "CHZ"

    const-string v1, "CHN"

    const-string v2, "CHM"

    const-string v3, "CHU"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string/jumbo p2, "ro.csc.sales_code"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPrePackageInstaller:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    :goto_0
    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUserManagerHandlerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSafeModeAllowListHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSignaturePermissionAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSharedUidAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    new-instance p2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;I)V

    invoke-direct {p1, p2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    return-void
.end method


# virtual methods
.method public final getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAsecInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/AsecInstallHelper;

    return-object p0
.end method

.method public final getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMaintenanceModeManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    return-object p0
.end method

.method public final getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mUnknownSourceAppManagerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    return-object p0
.end method
