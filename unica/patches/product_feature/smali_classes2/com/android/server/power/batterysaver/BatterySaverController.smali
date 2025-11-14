.class public final Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# instance fields
.field public mAdaptiveEnabledRaw:Z

.field public mAdaptivePreviouslyEnabled:Z

.field public final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public final mContext:Landroid/content/Context;

.field public mFullEnabledRaw:Z

.field public mFullPreviouslyEnabled:Z

.field public final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field public mIsPluggedIn:Z

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

.field public final mReceiver:Lcom/android/server/power/batterysaver/BatterySaverController$1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Lcom/android/server/power/batterysaver/BatterySaverController$1;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p4, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    return-void
.end method


# virtual methods
.method public enableBatterySaver(ZI)V
    .locals 3

    const-string v0, "BatterySaverController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enableBatterySaver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz p1, :cond_3

    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPolicyLocked()Landroid/os/BatterySaverPolicyConfig;
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/BatterySaverPolicyConfig$Builder;

    invoke-direct {v0}, Landroid/os/BatterySaverPolicyConfig$Builder;-><init>()V

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->adjustBrightnessFactor:F

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setAdjustBrightnessFactor(F)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->advertiseIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setAdvertiseIsEnabled(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferFullBackup:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDeferFullBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->deferKeyValueBackup:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDeferKeyValueBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAnimation:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableAnimation(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableAod:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableAod(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableLaunchBoost:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableLaunchBoost(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableOptionalSensors:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableOptionalSensors(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->disableVibration:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setDisableVibration(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableAdjustBrightness:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableAdjustBrightness(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableDataSaver:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableDataSaver(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableFirewall:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableFirewall(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableNightMode:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableNightMode(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->enableQuickDoze:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setEnableQuickDoze(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceAllAppsStandby:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setForceAllAppsStandby(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->forceBackgroundCheck:Z

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setForceBackgroundCheck(Z)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->locationMode:I

    invoke-virtual {v0, v1}, Landroid/os/BatterySaverPolicyConfig$Builder;->setLocationMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->soundTriggerMode:I

    invoke-virtual {v0, p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->setSoundTriggerMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/BatterySaverPolicyConfig$Builder;->build()Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x10403af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPolicyEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string p0, "BatterySaverPolicy"

    const-string/jumbo p1, "setAdaptivePolicy given null policy"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string p0, "BatterySaverPolicy"

    const-string/jumbo p1, "setFullPolicy given null policy"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateBatterySavingStats()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_1

    const-string p0, "BatterySaverController"

    const-string/jumbo v0, "PowerManager not initialized"

    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-boolean v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-eqz v7, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    iget-object v4, v6, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3, v1, v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result p0

    invoke-virtual {v6, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
