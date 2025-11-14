.class public final Lcom/android/server/wm/ActivityTaskManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

.field public mAppLockIsInMultiWindowMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mCoreStateController:Lcom/android/server/wm/CoreStateController;

.field public mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

.field public final mForceOptOutEdgeToEdge:Ljava/util/List;

.field public final mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mKeepAliveActivities:Ljava/util/WeakHashMap;

.field public final mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

.field public final mStartedUserIds:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_EDGE_TO_EDGE_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p1, Lcom/android/server/wm/CoreStateController;

    invoke-direct {p1, p2}, Lcom/android/server/wm/CoreStateController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    return-void
.end method

.method public static isSystemUid(I)Z
    .locals 2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZI)V
    .locals 9

    const-string v1, "ActivityTaskManagerServiceExt"

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Z

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p3}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v4

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v3, p3}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    aget-boolean v3, v2, v4

    if-eqz v3, :cond_3

    aget-boolean v2, v2, v5

    const-string v4, "AppLock checkAppLockState locked:"

    const-string v7, " verifying:"

    const-string v8, " pkgName = "

    invoke-static {v4, v3, v7, v2, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isInMultiWindowMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " showWhenLocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    invoke-virtual {p0, p3, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v8, p1

    move v7, p2

    move-object v5, p3

    move v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;ILjava/lang/String;IZLandroid/content/Intent;)V

    if-eqz p4, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda0;->run()V

    return-void

    :cond_2
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Exception while checking App Lock locked / verifying state : "

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getAppLockLaunchingState(Landroid/os/IBinder;)[Z
    .locals 7

    const-string v0, "AppLockLaunchingFromActivity: No activity record matching token="

    const/4 v1, 0x3

    new-array v1, v1, [Z

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-boolean p1, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    aput-boolean v0, v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iput-boolean v0, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z

    aput-boolean v5, v1, v5

    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result p1

    const/4 v6, 0x2

    if-eqz p1, :cond_1

    aput-boolean v5, v1, v6

    goto :goto_1

    :cond_1
    aput-boolean v0, v1, v6

    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    aput-boolean p1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final getStartedUserIdsLocked()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final installSystemProvidersLocked()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CoreStateController"

    const-string/jumbo v4, "initializeLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v4, v0, v3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;-><init>(Landroid/content/Context;Lcom/android/server/wm/CoreStateController;Landroid/os/Handler;)V

    iput-object v5, v0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    iget-object v3, v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    iget-object v3, v2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v1

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    iget-object v9, v2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v1, v3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    iget-object p0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateDeviceSupportsMultiWindow: support="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    const-string/jumbo v4, "MultiWindowEnableController"

    invoke-static {v4, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    if-eqz p0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v2

    :goto_2
    const-string v5, "Initialize"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V

    :cond_3
    return-void
.end method

.method public final keepAliveActivityLocked(Lcom/android/server/wm/Task;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const-string p2, "ActivityTaskManagerServiceExt"

    invoke-static {p0, p1, p2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_2
    return-void
.end method

.method public final onSystemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    monitor-enter v1

    :try_start_0
    iput-object v0, v1, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityEmbeddedController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeTaskByCmpName()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "ActivityTaskManagerServiceExt"

    const-string/jumbo v1, "Pid "

    const-string v2, " cannot clear task!"

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "ActivityTaskManagerServiceExt"

    const-string/jumbo v2, "removeTaskByCmpName:com.android.settings/.password.ChooseLockGeneric$InternalActivity user:0 callerPid:"

    const-string v3, " reason:Managed profile unavailable"

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final removeTaskWithFlagsLocked(II)Z
    .locals 13

    and-int/lit8 v0, p2, 0x8

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x1

    if-nez v0, :cond_5

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_1

    move v9, v2

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz v0, :cond_2

    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_2

    move v10, v2

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v7, "remove-task-with-flags"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v8, 0x1

    move v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    :cond_3
    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    :cond_4
    throw p1

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_3
    if-ltz v0, :cond_b

    if-nez v0, :cond_6

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v5, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq v4, v5, :cond_8

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v5, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v5, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v6, v3, Lcom/android/server/wm/Task;->mTaskId:I

    and-int/lit8 v3, p2, 0x10

    if-nez v3, :cond_9

    move v11, v2

    goto :goto_4

    :cond_9
    move v11, v1

    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const-string/jumbo v9, "remove-task-by-id"

    const/4 v12, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_b
    return v2
.end method

.method public final setAppLockedVerifying(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Exception - isCallerSetSelf:"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p0, "ActivityTaskManagerServiceExt"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, " is not system uid or the packageNmae is not itself\'s"

    invoke-static {v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedVerifying(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v4, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v8}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v11

    :goto_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v12, :cond_2

    invoke-virtual {v12, v8}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v11

    :goto_1
    const/4 v12, 0x1

    if-eqz v6, :cond_3

    iget-object v13, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    iget-object v14, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v11

    goto :goto_2

    :cond_3
    move v13, v12

    :goto_2
    if-eqz v3, :cond_c

    if-nez v8, :cond_c

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    if-ne v3, v12, :cond_c

    :cond_4
    if-eqz v13, :cond_c

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v13

    iget-object v14, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v14, v14, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    iget-object v14, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v14, v14, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    new-instance v15, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;

    invoke-direct {v15, v1, v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-nez v14, :cond_c

    iget-object v14, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    invoke-virtual {v14, v5}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v14

    if-nez v14, :cond_c

    :cond_6
    if-eqz v13, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    const-string v13, "ActivityTaskManagerServiceExt"

    if-nez v8, :cond_8

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move-object v5, v13

    goto/16 :goto_5

    :cond_9
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v12}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    new-instance v3, Landroid/content/Intent;

    iget-object v8, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x20000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v14, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "LAUNCH_FROM_RESUME"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "LOCKED_PACKAGE_NAME"

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.applock"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_b

    move v14, v11

    goto :goto_4

    :cond_b
    move v14, v5

    :goto_4
    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move v5, v11

    move-object v11, v2

    move v2, v5

    move v5, v12

    move-object v12, v3

    move v3, v5

    move/from16 v16, v7

    move-object v5, v13

    move-object v13, v6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    move-object v11, v12

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v6, v3, v2}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    :try_start_0
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v8

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v16

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v18

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while launching AppLock Confirm Activity for"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Exception is : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    const-string/jumbo v3, "Start AppLock Service"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v5, v2

    move v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;ZI)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final updateForceOptOutEdgeToEdgePackage(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
