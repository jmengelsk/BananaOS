.class public Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# static fields
.field public static final BLOCK_KNOX_ANALYTICS:Z = false

.field public static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "China"

.field public static final COUNTRY_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.country_code"

.field public static final ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

.field public static final PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

.field public static final SETTINGS_KEY_KES_STATUS:Ljava/lang/String; = "is_kes_enabled"

.field public static final SETTINGS_KEY_KLM_ON_PREMISE_STATUS:Ljava/lang/String; = "onpremise_activated"

.field public static final SETTINGS_KEY_KLM_STATUS:Ljava/lang/String; = "klm_activated"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] ActivationMonitor"


# instance fields
.field public mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public mB2CListener:Lcom/samsung/android/knox/analytics/activation/B2CListener;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

.field public mIsChinaDevice:Z

.field public mIsOnBootCheckings:Z

.field public mIsOnPremiseActivated:Z

.field public mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

.field public mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mTriggers:Ljava/util/BitSet;

.field public mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.sec.android.app.shealth"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    return-void
.end method

.method public static filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "filterOutBlacklistedElm()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, "filterOutBlacklistedElm(): empty LicenseInfo array"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static isPackageAllowedToRunAnalytics(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPackageAllowedToRunAnalytics("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isPackageAllowedToRunAnalytics(): Not allowed"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isPackageBlacklisted(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPackageBlacklisted("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isPackageBlacklisted(): blacklisted"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final bootChecking()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "bootChecking() - Device country is china, returning ..."

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bootChecking()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkB2C() - package "

    const-string v2, " feature "

    const-string v3, " isActivation? "

    invoke-static {v1, p1, v2, p2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->addOrRemoveB2CFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    sget-object p2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->getB2CActivationStatus(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkB2COnBoot()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkB2ConBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkB2COnlyAndApplyFeatureWhitelist()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkB2COnlyAndApplyFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isOnlyB2CTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->applyWhitelistForB2CFeatures(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method public final checkChina()V
    .locals 3

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkChina(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized checkConditionsToStart()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkConditionsToStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnlyAndApplyFeatureWhitelist()V

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "checkConditionsToStart() - already in the correct state"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$2;->$SwitchMap$com$samsung$android$knox$analytics$activation$model$ActivationInfo$ActivationStatus:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsActivation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final checkDO(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkDO()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkDOOnBoot()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkDOOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkELM(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkELM()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isElmActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkELMOnBoot()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkELMOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkKLM(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkKLM()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkOnPremise()V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKlmActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkKLMOnBoot()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkKLMOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkKes(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkKes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKesActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkKesOnBoot()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkKesOnBoot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkNewStatus() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0
.end method

.method public final checkOnPremise()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "onpremise_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkOnPremise(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-ne v2, v0, :cond_1

    const-string/jumbo p0, "checkOnPremise(): Didn\'t change, returning"

    invoke-static {v1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    return-void
.end method

.method public final checkPOOnBoot()V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkPOOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final getElmLicenseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "getElmLicenseList(): Error getting ELS"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object p0
.end method

.method public final isElmActive()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isElmActive()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getElmLicenseList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isElmActive(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final isKesActive()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "is_kes_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isKesActive(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isKlmActive()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "klm_activated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkKLM(): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isOnlyB2CTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    sget-object p1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->flip(I)V

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method public final notifyKnoxAnalyticsActivation(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsActivation(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyKnoxAnalyticsDeactivation(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsDeactivation(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyStatusChanged(IZLjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyStatusChanged() pkg: "

    const-string v2, " trigger: "

    const-string v3, " status "

    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onStatusChanged(IZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyTriggerChanged(IZLjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyTriggerChanged() pkg: "

    const-string v2, " trigger: "

    const-string v3, " status "

    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onTriggerChanged(IZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBootPhase() - Device country is china, returning ..."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f4

    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x258

    if-eq p1, v0, :cond_2

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkChina()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->bootChecking()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerListenersObservers()V

    return-void

    :cond_3
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBootPhase(PHASE_LOCK_SETTINGS_READY)"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPoAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getPoPackageName(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onPoRemoved(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final bridge synthetic onUpdateContainerLicenseStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final registerListenersObservers()V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListenersObservers()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->register()V

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/KESListener;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/KESListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/KESListener;->register()V

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mB2CListener:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->register()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "registerListenersObservers() - EnterpriseLicenseService is null, can\'t observe license"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setTrigger("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageAllowedToRunAnalytics(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-nez v2, :cond_1

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p4, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyStatusChanged(IZLjava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    :goto_0
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p4, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string/jumbo p0, "setTrigger(): didn\'t change, returning"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez p4, :cond_5

    iget-boolean p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-nez p4, :cond_4

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyTriggerChanged(IZLjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
