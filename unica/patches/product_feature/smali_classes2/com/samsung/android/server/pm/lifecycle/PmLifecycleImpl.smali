.class public Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

.field public final mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

.field public mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

.field public final mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

.field public mEnabled:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mIsUserTrial:Z

.field public mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

.field public mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    new-instance v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mIsUserTrial:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    new-instance v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mIsUserTrial:Z

    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p3, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    return-void
.end method


# virtual methods
.method public final onInitPreparing()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v3, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v4, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPackageManagerBackupControllerProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSkippingApksProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/install/SkippingApks;

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mOmcInstallHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "mdc.singlesku"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v1, "mdc.singlesku.activated"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v1, "wait to read AID before system scan"

    const-string/jumbo v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v1, 0xfa

    :goto_0
    if-ltz v1, :cond_3

    const-string/jumbo v6, "mdc.singlesku.activated"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x14

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "waitToReadAID took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    iget-object v3, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v3, "mdc.sys.omc_etcpath"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "/data/omc/etc/enforceskippingpackages.txt"

    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "ro.boot.activatedid"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/enforceskippingpackages_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".txt"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_5
    const-string/jumbo v6, "ro.csc.countryiso_code"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v5, "/enforceskippingpackages.txt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_3

    :cond_7
    const-string v5, "/system/csc_contents/enforceskippingpackages.txt"

    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    const-string v5, "/system/etc/enforceskippingpackages.txt"

    :goto_3
    invoke-static {v5}, Lcom/samsung/android/server/pm/install/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "persist.sys.omcnw_path"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "/etc/enforceinstallpackages_omcnw.txt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v3}, Lcom/samsung/android/server/pm/install/SkippingApks;->getApkNamesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_9
    :goto_4
    if-ge v6, v5, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;

    invoke-direct {v3}, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;-><init>()V

    iget-object v5, v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getAdditionalSkippingApkList: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SkippingApksExceptions"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_5
    if-ge v6, v5, :cond_b

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/pm/install/SkippingApks;->addSkippingPackage(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "persist.sys.prev_salescode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Sales code, current: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", prev: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v0

    goto :goto_7

    :cond_e
    :goto_6
    move v3, v2

    :goto_7
    iput-boolean v3, v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    const-string/jumbo v3, "mdc.singlesku"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "mdc.singlesku.activated"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_8

    :cond_f
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "samsung_pm_settings.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v5, "pref_tss_initialized"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v0

    goto :goto_9

    :cond_10
    :goto_8
    move v3, v2

    :goto_9
    iput-boolean v3, v1, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v5, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mChinaGmsToggleUtilsProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v5, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mAppCategoryFilterProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    iput-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    iput-boolean v0, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    iget-object v3, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean v5, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    if-eqz v5, :cond_12

    invoke-virtual {v1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->clearItemsLocked()V

    invoke-virtual {v1, v4}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->loadItemsInternalLocked(Ljava/lang/String;)V

    goto :goto_a

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_12
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->clearItemsLocked()V

    :goto_a
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeature;->appcategory:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iget-object v1, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mAppCategoryCallback:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v4, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSafeModeAllowListHelperProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;

    iget-object v3, v1, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->PAKCAGE_FEAUTRE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iget-object v4, v1, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->mCallBack:Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v2, v1, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->parse(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_13
    iget-object v3, v1, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->DEFAULT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;->parse(Ljava/lang/String;Z)V

    :goto_b
    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSignaturePermissionAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/pm/scpm/SignaturePermissionAllowListHelper;

    iget-object v2, v1, Lcom/samsung/android/server/pm/scpm/SignaturePermissionAllowListHelper;->PAKCAGE_FEAUTRE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iget-object v3, v1, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->mCallBack:Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/pm/scpm/SignaturePermissionAllowListHelper;->parse(Ljava/lang/String;Z)V

    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v2, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mSharedUidAllowListHelper:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/pm/scpm/SharedUidAllowListHelper;

    iget-object v1, p0, Lcom/samsung/android/server/pm/scpm/SharedUidAllowListHelper;->PAKCAGE_FEAUTRE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    iget-object v2, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->mCallBack:Lcom/samsung/android/server/pm/scpm/ScpmHelper$1;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/server/pm/scpm/ScpmHelper;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/scpm/SharedUidAllowListHelper;->parse(Ljava/lang/String;Z)V

    :cond_15
    return-void

    :goto_c
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onInitStarting()V
    .locals 12

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p0, v3

    const/4 v5, 0x3

    :try_start_0
    const-string/jumbo v6, "com.android.role.persistence.RolesPersistenceImpl"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const-string/jumbo v9, "readForUser"

    new-array v10, v0, [Ljava/lang/Class;

    const-class v11, Landroid/os/UserHandle;

    aput-object v11, v10, v2

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v6, "!@Failed to use RolesPersistence class."

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v6, "!@Failed to read roles.xml. Initiate the files."

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const-string/jumbo v5, "com.android.permission"

    invoke-static {v5}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v6

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "runtime-permissions.xml"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-static {v5}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v5

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "roles.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method public final onInstalldStarting()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->enableAndConfigure(Z)V

    new-instance v0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;)V

    const-string p0, "Installd connected. Took "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x186

    invoke-interface {v0, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    const/4 p0, 0x5

    const-string/jumbo v2, "Timeout. Installd connection failed."

    invoke-static {p0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_0
    return-void
.end method

.method public final onPackageInstalled(Ljava/lang/String;Z[I)V
    .locals 6

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    sget-boolean v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isToggleSupported:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "google_core_control"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    move v1, v0

    :goto_1
    array-length v3, p3

    :goto_2
    if-ge v2, v3, :cond_3

    aget v4, p3, v2

    :try_start_0
    invoke-virtual {p2, p1, v1, v4}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fail to enable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/app/job/JobScheduler;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/job/JobScheduler;

    const p3, 0x91a0b3

    invoke-virtual {p2, p3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    const-string/jumbo v2, "SystemFileBackupManager"

    if-nez v1, :cond_4

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, p3, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    const-string/jumbo p2, "Scheduled onetime backup job"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    const-string p2, "Already scheduled"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p2, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter p2

    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v0, p3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v1, p3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    iget-object v0, p3, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    iget-object v0, v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v1}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;)I

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    :goto_5
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_6

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    const-string/jumbo p3, "android"

    invoke-interface {p2, p1, p0, p3}, Landroid/content/pm/IPackageManager;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_6
    :goto_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final onSystemReady()V
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-boolean v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    iget-object v4, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v5, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mPmService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->mMultiUserInstallPolicyProducer:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->getSubUserIdsAndGuestUserId(Ljava/util/List;)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;

    iget-object v6, v6, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, v7, v4, v5}, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;->applyInstallPolicyPackageInternalLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_ENABLE_GMS:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V

    sget-boolean v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->isToggleSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mChinaGmsToggleUtils:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    iget-object v4, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "google_core_control"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;

    invoke-direct {v7, v0, v4}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;-><init>(Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->setPackageScanStarted(Landroid/content/Context;Z)V

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    iget-boolean v6, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    if-nez v6, :cond_6

    iget-boolean v0, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    if-nez v5, :cond_8

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v16, v2

    goto/16 :goto_12

    :cond_8
    :goto_5
    new-instance v6, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;

    iget-object v7, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v7, v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;-><init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Set up omc permissions (firstBootOrUpgrade: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", needsOmcOrTssInit: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x5

    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v7

    const-string/jumbo v9, "OmcPermissionPolicy"

    if-eqz v7, :cond_9

    array-length v0, v7

    if-gtz v0, :cond_a

    :cond_9
    move/from16 v16, v2

    goto/16 :goto_d

    :cond_a
    iget-object v0, v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v10, 0x2800b000

    invoke-virtual {v0, v10, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v12, v4

    :goto_6
    if-ge v12, v11, :cond_9

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/PackageInfo;

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v14, :cond_c

    :cond_b
    move/from16 v16, v2

    move-object/from16 v19, v8

    goto :goto_c

    :cond_c
    array-length v15, v14

    move v3, v4

    :goto_7
    if-ge v3, v15, :cond_b

    move/from16 v16, v2

    aget-object v2, v14, v3

    :try_start_1
    iget-object v0, v8, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    const-string/jumbo v0, "Permission not found: "

    invoke-static {v0, v2, v9}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_f

    :cond_d
    move/from16 v17, v3

    :cond_e
    move-object/from16 v19, v8

    goto :goto_b

    :cond_f
    array-length v4, v7

    move/from16 v17, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_e

    aget v0, v7, v3

    move/from16 v18, v3

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v19, "permissionmgr"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    move/from16 v20, v4

    invoke-static/range {v19 .. v19}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v4

    move-object/from16 v19, v8

    const/4 v8, 0x4

    :try_start_2
    invoke-interface {v4, v3, v2, v8, v0}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v8, v19

    move/from16 v4, v20

    goto :goto_9

    :goto_b
    add-int/lit8 v3, v17, 0x1

    move/from16 v2, v16

    move-object/from16 v8, v19

    const/4 v4, 0x0

    goto :goto_7

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move-object/from16 v8, v19

    const/4 v3, -0x1

    const/4 v4, 0x0

    goto :goto_6

    :goto_d
    iget-object v2, v6, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_14

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v8, v0, 0x1

    check-cast v4, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "grantDefaultPermissionsInternal : "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", firstBootOrUpgrade: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_11

    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v10, v4

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v10, :cond_13

    aget-object v0, v4, v11

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_10

    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_10

    :cond_12
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v5, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->grantOrRevokePermissions(Ljava/lang/String;Z[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_13
    :goto_11
    move v0, v8

    goto :goto_e

    :cond_14
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    iget-boolean v2, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    if-nez v2, :cond_15

    goto :goto_12

    :cond_15
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "samsung_pm_settings.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pref_tss_initialized"

    iget-boolean v0, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_12
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v2

    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    move-result-object v0

    const-string v3, "/data/system/UnknownSourceAppList.xml"

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->loadListFromFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V

    iget-object v4, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    new-instance v6, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda3;

    invoke-direct {v6, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_16

    :try_start_6
    const-string v3, "/data/system/UnknownSourceAppList.xml"

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->writeUnknownPackageXmlSync(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_13

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    :cond_16
    :goto_13
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    move/from16 v3, v16

    iput-boolean v3, v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    iget-object v4, v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    iget-object v0, v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    new-instance v5, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x80fb54

    sget-object v4, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v3, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->DEFAULT_BACKUP_PERIOD:J

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    new-instance v0, Lcom/samsung/android/server/pm/role/RoleLogger;

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_17

    const-string/jumbo v0, "RoleLogger"

    const-string v2, "Failed to get JobScheduler"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_17
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    sget-object v3, Lcom/samsung/android/server/pm/role/RoleLogger;->sRoleLoggingServiceName:Landroid/content/ComponentName;

    const v4, 0x6ec3dd

    invoke-direct {v2, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-wide v3, Lcom/samsung/android/server/pm/role/RoleLogger;->LOGGING_PERIOD:J

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :goto_14
    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sLduBlocklist:Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy;->sIsRduDevice:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v4, "shopdemo"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    const/4 v6, 0x1

    goto :goto_15

    :cond_18
    move v6, v5

    :goto_15
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/server/pm/install/PackageBlockListPolicy$1;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mATCommandReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;

    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v4, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver;->mReceiver:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$ATCommandReceiver$1;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.intent.action.BCS_REQUEST"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    const/4 v3, 0x1

    goto :goto_16

    :cond_1a
    const-string/jumbo v2, "sys.maintenance_mode.boot_attempt_count"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bootAttemptCount: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "MaintenanceMode"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-le v3, v2, :cond_19

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mIsRescueSessionDuringBoot:Z

    const-string v2, "Fallback to normal mode, reason: -2"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->logDebugInfoAsync(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, v3}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda5;-><init>(I)V

    iget-object v0, v0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_16
    const-string/jumbo v0, "com.salab.issuetracker"

    :try_start_a
    iget-object v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const v4, 0xe0200

    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    if-eqz v6, :cond_1b

    if-eqz v0, :cond_1b

    move v2, v3

    goto :goto_18

    :catch_3
    :cond_1b
    :goto_17
    move v2, v5

    goto :goto_18

    :catch_4
    const/4 v5, 0x0

    goto :goto_17

    :goto_18
    iput-boolean v2, v1, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mIsUserTrial:Z

    return-void

    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0
.end method

.method public final onSystemScanning(Ljava/io/File;)V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "persist.sys.clear_package_cache_needed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    const-string v0, "Clear pkg caches due to BR allowlist updated"

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_1
    const-string/jumbo v0, "persist.sys.clear_package_cache_needed"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mOmcInstallHelper:Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    if-eqz p1, :cond_4

    iget-boolean v3, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    if-nez v3, :cond_3

    iget-boolean v0, v0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x5

    const-string v3, "Clear package cache by omcboot or tssboot"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "key_scan_started"

    const-class v4, Lcom/samsung/android/server/pm/PmSharedPreferences;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "samsung_pm_settings.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const-string v0, "Delete package caches due to corruption"

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/scan/CacheCorruptionChecker;->setPackageScanStarted(Landroid/content/Context;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
