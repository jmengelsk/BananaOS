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
    .registers 7

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
    .registers 6

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

    :try_start_24
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-ne v1, p1, :cond_2c

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_58

    :cond_2c
    if-ne v1, p1, :cond_2f

    goto :goto_34

    :cond_2f
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    :goto_34
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v2, 0x1

    if-eqz p1, :cond_41

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p1

    goto :goto_4f

    :cond_41
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz p1, :cond_4a

    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p1

    goto :goto_4f

    :cond_4a
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p1

    :goto_4f
    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    :cond_56
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_24 .. :try_end_59} :catchall_2a

    throw p0
.end method

.method public final getPolicyLocked()Landroid/os/BatterySaverPolicyConfig;
    .registers 3

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
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    if-nez v0, :cond_32

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

    if-eqz v1, :cond_2c

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_30

    :cond_2c
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_30
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    :cond_32
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    return-object p0
.end method

.method public final isEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v1, :cond_16

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :catchall_14
    move-exception p0

    goto :goto_1b

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    monitor-exit v0

    return p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_14

    throw p0
.end method

.method public final isPolicyEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-nez v1, :cond_e

    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 4

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    if-nez p1, :cond_16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string p0, "BatterySaverPolicy"

    const-string/jumbo p1, "setAdaptivePolicy given null policy"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_16
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_31

    :cond_1f
    iput-object p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mAdaptivePolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    return v1

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return p0
.end method

.method public final setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 4

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    if-nez p1, :cond_16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string p0, "BatterySaverPolicy"

    const-string/jumbo p1, "setFullPolicy given null policy"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_16
    iget-object v1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    invoke-virtual {v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_32

    :cond_1f
    iput-object p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mFullPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    iget p1, v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->mPolicyLevel:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->updatePolicyDependenciesLocked()V

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(IZ)V

    return p1

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public final updateBatterySavingStats()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    :cond_13
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_22

    const-string p0, "BatterySaverController"

    const-string/jumbo v0, "PowerManager not initialized"

    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_31

    move v0, v3

    goto :goto_3a

    :cond_31
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v5

    goto :goto_3a

    :cond_39
    move v0, v4

    :goto_3a
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3d
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-boolean v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-eqz v7, :cond_45

    move v3, v5

    goto :goto_4b

    :cond_45
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-eqz v5, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v4

    :goto_4b
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    iget-object v4, v6, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_5a

    :try_start_50
    invoke-static {v3, v1, v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result p0

    invoke-virtual {v6, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5c

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception p0

    goto :goto_5f

    :catchall_5c
    move-exception p0

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw p0

    :goto_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_5a

    throw p0
.end method
