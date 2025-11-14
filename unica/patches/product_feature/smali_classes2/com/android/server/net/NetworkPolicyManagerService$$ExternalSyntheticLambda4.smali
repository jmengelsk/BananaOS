.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "systemReady"

    const-wide/32 v5, 0x200000

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v7

    const/4 v0, -0x2

    :try_start_1f
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_4c

    :try_start_26
    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_35
    .catchall {:try_start_26 .. :try_end_2c} :catchall_30

    :try_start_2c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :catchall_30
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_35
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v1

    :goto_39
    if-nez v0, :cond_4f

    const-string/jumbo v0, "NetworkPolicy"

    const-string/jumbo v1, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_4c

    :cond_44
    :goto_44
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_3be

    :catchall_4c
    move-exception v0

    goto/16 :goto_3cb

    :cond_4f
    :try_start_4f
    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->buildFirewall()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_55
    .catchall {:try_start_4f .. :try_end_54} :catchall_4c

    goto :goto_5f

    :catch_55
    move-exception v0

    :try_start_56
    const-string/jumbo v8, "NetworkPolicy"

    const-string/jumbo v9, "buildFirewall exception"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    iget-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$20;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3, v8, v2}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;I)V

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mOffPeakContentObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    :cond_6c
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-boolean v2, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUseMeteredFirewallChains:Z

    iput-boolean v2, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNeverApplyRulesToCoreUids:Z

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_a5

    const-string/jumbo v0, "NetworkPolicy"

    const-string/jumbo v8, "registerProcessListener activityManager is null"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :cond_a5
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$23;

    invoke-direct {v8, v3}, Lcom/android/server/net/NetworkPolicyManagerService$23;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    :goto_ad
    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_b0
    .catchall {:try_start_56 .. :try_end_b0} :catchall_4c

    :try_start_b0
    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_3c5

    :try_start_b3
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveAllowlistUL()V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v10, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    invoke-virtual {v0, v10}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    iget-object v11, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v12, v3}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-direct {v0, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;)V

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v11, "restricted_networking_mode"

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f0

    move v0, v2

    goto :goto_f1

    :cond_f0
    move v0, v1

    :goto_f1
    iput-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    iput-boolean v2, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v11, "Wait for admin data"

    const-wide/16 v12, 0x2710

    invoke-static {v0, v12, v13, v11}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_10e
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    iget-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v11, 0xa

    invoke-virtual {v0, v11}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v0, :cond_12d

    iget-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v0, :cond_12d

    iput-boolean v2, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    goto :goto_12d

    :catchall_12a
    move-exception v0

    goto/16 :goto_3c7

    :cond_12d
    :goto_12d
    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v11, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    invoke-virtual {v0, v11}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    if-eqz v0, :cond_13d

    move v13, v1

    goto :goto_161

    :cond_13d
    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    move v12, v1

    move v13, v12

    :goto_149
    if-ge v12, v11, :cond_161

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    move-result v14

    if-nez v14, :cond_15e

    if-eqz v13, :cond_15c

    goto :goto_15e

    :cond_15c
    move v13, v1

    goto :goto_15f

    :cond_15e
    :goto_15e
    move v13, v2

    :goto_15f
    add-int/2addr v12, v2

    goto :goto_149

    :cond_161
    :goto_161
    if-eqz v13, :cond_166

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    :cond_166
    invoke-virtual {v3, v10, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    iget-boolean v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    const-string/jumbo v10, "init_service"

    invoke-virtual {v3, v10, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Ljava/lang/String;Z)V

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    monitor-exit v9
    :try_end_178
    .catchall {:try_start_b3 .. :try_end_178} :catchall_12a

    :try_start_178
    monitor-exit v8
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_3c5

    :try_start_179
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_4c

    :try_start_17c
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->readFirewallPolicyAL()V

    monitor-exit v8
    :try_end_180
    .catchall {:try_start_17c .. :try_end_180} :catchall_3c2

    :try_start_180
    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Lcom/android/server/net/NetworkPolicyManagerService$4;

    const-string/jumbo v9, "android"

    const/16 v10, 0x23

    const/4 v11, -0x1

    invoke-virtual {v0, v8, v10, v11, v9}, Landroid/app/ActivityManagerInternal;->registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-interface {v0, v8}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_180 .. :try_end_194} :catch_194
    .catchall {:try_start_180 .. :try_end_194} :catchall_4c

    :catch_194
    :try_start_194
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveAllowlistReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    const-string/jumbo v10, "android.permission.NETWORK_STACK"

    iget-object v12, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "package"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0, v11, v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.UID_REMOVED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v9, v11, v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "com.samsung.intent.action.OMC_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mDisabledDataSaverReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v12, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    new-instance v8, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v8, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v8}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v13

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    const-wide/16 v14, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    invoke-virtual/range {v12 .. v17}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    iget-object v12, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v8, 0x4

    invoke-direct {v0, v8}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v13

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    const-wide/16 v14, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    move-object/from16 v0, v16

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v12, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v12, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v13, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v12, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v12, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    new-instance v9, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v9}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v9}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-virtual {v8, v9, v10}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    invoke-direct {v9, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-interface {v8, v9}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2ae
    .catchall {:try_start_194 .. :try_end_2ae} :catchall_4c

    :try_start_2ae
    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    monitor-exit v8
    :try_end_2b2
    .catchall {:try_start_2ae .. :try_end_2b2} :catchall_3bf

    :try_start_2b2
    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionManager;

    new-instance v9, Landroid/os/HandlerExecutor;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, v10}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v10, v3}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v8, v9, v10}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveDataSubIdListener:Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

    invoke-virtual {v8, v0, v9}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.os.action.CHARGING"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-virtual {v4, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_319

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    invoke-virtual {v0, v4, v8}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_319
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J
    :try_end_31d
    .catchall {:try_start_2b2 .. :try_end_31d} :catchall_4c

    :try_start_31d
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "NetworkPolicy"

    const-string/jumbo v4, "initTetheringWarningObserver"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$20;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;I)V

    iput-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "tethering_data_warning_sim_slot_0"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-virtual {v0, v4, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "tethering_data_warning_sim_slot_1"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-virtual {v0, v4, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mDdsChangedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    iget-object v13, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "tethering_data_warning_sim_slot_0"

    invoke-virtual {v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tethering_data_warning_sim_slot_1"

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$6;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v12, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-wide/16 v0, -0x1

    iput-wide v0, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_3ad} :catch_3af
    .catchall {:try_start_31d .. :try_end_3ad} :catchall_4c

    goto/16 :goto_44

    :catch_3af
    move-exception v0

    :try_start_3b0
    const-string/jumbo v1, "NetworkPolicy"

    const-string/jumbo v2, "problem tethering usage noti"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3bc
    .catchall {:try_start_3b0 .. :try_end_3bc} :catchall_4c

    goto/16 :goto_44

    :goto_3be
    return-void

    :catchall_3bf
    move-exception v0

    :try_start_3c0
    monitor-exit v8
    :try_end_3c1
    .catchall {:try_start_3c0 .. :try_end_3c1} :catchall_3bf

    :try_start_3c1
    throw v0
    :try_end_3c2
    .catchall {:try_start_3c1 .. :try_end_3c2} :catchall_4c

    :catchall_3c2
    move-exception v0

    :try_start_3c3
    monitor-exit v8
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3c2

    :try_start_3c4
    throw v0
    :try_end_3c5
    .catchall {:try_start_3c4 .. :try_end_3c5} :catchall_4c

    :catchall_3c5
    move-exception v0

    goto :goto_3c9

    :goto_3c7
    :try_start_3c7
    monitor-exit v9
    :try_end_3c8
    .catchall {:try_start_3c7 .. :try_end_3c8} :catchall_12a

    :try_start_3c8
    throw v0

    :goto_3c9
    monitor-exit v8
    :try_end_3ca
    .catchall {:try_start_3c8 .. :try_end_3ca} :catchall_3c5

    :try_start_3ca
    throw v0
    :try_end_3cb
    .catchall {:try_start_3ca .. :try_end_3cb} :catchall_4c

    :goto_3cb
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
