.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static final sBinderChecker:Lcom/android/server/vr/VrManagerService$3;


# instance fields
.field public mBootsToVr:Z

.field public mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field public mContext:Landroid/content/Context;

.field public mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field public mCurrentVrModeComponent:Landroid/content/ComponentName;

.field public mCurrentVrModeUser:I

.field public mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field public mDefaultVrService:Landroid/content/ComponentName;

.field public final mEventCallback:Lcom/android/server/vr/VrManagerService$1;

.field public final mHandler:Lcom/android/server/vr/VrManagerService$2;

.field public final mLock:Ljava/lang/Object;

.field public mLogLimitHit:Z

.field public final mLoggingDeque:Ljava/util/ArrayDeque;

.field public final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field public final mOverlayToken:Landroid/os/IBinder;

.field public mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field public mPersistentVrModeEnabled:Z

.field public final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

.field public mRunning2dInVr:Z

.field public mStandby:Z

.field public mSystemSleepFlags:I

.field public mUseStandbyToExitVrMode:Z

.field public mUserUnlocked:Z

.field public mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field public mVrAppProcessId:I

.field public final mVrManager:Lcom/android/server/vr/VrManagerService$4;

.field public mVrModeAllowed:Z

.field public mVrModeEnabled:Z

.field public final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;


# direct methods
.method public static -$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caller does not hold at least one of the permissions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_17

    return-void

    :cond_17
    :try_start_17
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_25} :catch_26

    return-void

    :catch_26
    const-string p0, "Could not revoke coarse location permission, package "

    const-string p2, " was removed."

    const-string/jumbo v0, "VrManagerService"

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 6

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto :goto_12

    :cond_2f
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/server/utils/LazyJniRegistrar;->registerVrManagerService()V

    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    new-instance p1, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/vr/VrManagerService$1;

    new-instance p1, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    new-instance p1, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    return-void
.end method

.method private static native initializeNative()V
.end method

.method private static native setVrModeNative(Z)V
.end method


# virtual methods
.method public final callFocusedActivityChangedLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    new-instance v3, Lcom/android/server/vr/VrManagerService$6;

    invoke-direct {v3, v2, v0, v1}, Lcom/android/server/vr/VrManagerService$6;-><init>(ILandroid/content/ComponentName;Z)V

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_10
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    if-nez v5, :cond_19

    iput-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_2d

    :cond_19
    :goto_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_17

    if-eqz v5, :cond_2c

    :try_start_1c
    check-cast v5, Landroid/service/vr/IVrListener;

    invoke-interface {v5, v0, v1, v2}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_21} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    const-string/jumbo v0, "ManagedApplicationService"

    const-string/jumbo v1, "Received exception from user service: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return-void

    :goto_2d
    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_17

    throw p0
.end method

.method public final consumeAndApplyPendingStateLocked(Z)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v1, :cond_1c

    iget-object v3, v1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget v5, v1, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iget-object v6, v1, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    iget-boolean v2, v1, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    move v4, v2

    iget-boolean v2, v1, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iget v1, v1, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    move v0, v4

    move v4, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    return-void

    :cond_1c
    if-eqz p1, :cond_28

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    :cond_28
    return-void
.end method

.method public final createAndConnectService(ILandroid/content/ComponentName;)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    move v8, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x2

    goto :goto_5

    :goto_9
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService;

    const-string/jumbo v6, "android.settings.VR_LISTENER_SETTINGS"

    sget-object v7, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    const v5, 0x10410a9

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/vr/VrManagerService$1;

    move v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/vr/VrManagerService$3;ILcom/android/server/vr/VrManagerService$2;Lcom/android/server/vr/VrManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Connecting "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VrManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1f

    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_16

    throw p0
.end method

.method public final onAwakeStateChanged(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 9

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_ca

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    const-string/jumbo p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "enabled_vr_listeners"

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Lcom/android/server/vr/SettingsObserver;

    invoke-direct {v6, v3, v1, v4}, Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;)V

    new-instance v1, Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/android/server/vr/EnabledComponentsObserver;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Collection;Landroid/os/Looper;)V

    iget-object v0, v6, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_c7

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_65

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    goto :goto_6e

    :cond_65
    const-string/jumbo p1, "VrManagerService"

    const-string/jumbo v0, "No default vr listener service found."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/server/vr/Vr2dDisplay;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/vr/VrManagerService$4;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    iget-object v1, v0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    if-eqz v1, :cond_ac

    :try_start_9d
    iget-object v2, v0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-virtual {v1, v2}, Lcom/android/server/vr/VrManagerService$4;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_a3

    goto :goto_ac

    :catch_a3
    move-exception v1

    const-string/jumbo v2, "Vr2dDisplay"

    const-string v3, "Could not register VR State listener."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ac
    :goto_ac
    iput-boolean p1, v0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-eqz p1, :cond_b3

    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    :cond_b3
    const-string/jumbo p1, "android.intent.action.USER_UNLOCKED"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_ca

    :catchall_c7
    move-exception p0

    :try_start_c8
    monitor-exit p1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw p0

    :cond_ca
    :goto_ca
    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .registers 3

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method public final onStart()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3d

    const-string/jumbo v0, "ro.boot.vr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "persist.vr.use_standby_to_exit_vr_mode"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    move v1, v2

    :cond_24
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    const-class v0, Lcom/android/server/vr/VrManagerService$LocalService;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "vrmanager"

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    invoke-virtual {v1}, Landroid/service/vr/IVrManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPersistentModeAndNotifyListenersLocked(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_b

    const-string/jumbo v0, "enabled"

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "disabled"

    :goto_e
    const-string/jumbo v1, "Persistent VR mode "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setPersistentVrModeEnabled(Z)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    if-nez p1, :cond_15

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_15

    :catchall_12
    move-exception v0

    move-object p0, v0

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit v1

    return-void

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw p0
.end method

.method public final setSystemState(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eqz p2, :cond_d

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    goto :goto_11

    :catchall_b
    move-exception p0

    goto :goto_1a

    :cond_d
    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    :goto_11
    iget p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v1, p1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    :cond_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_b

    throw p0
.end method

.method public final setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 16

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_11

    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v3, :cond_c

    goto :goto_11

    :cond_c
    move v3, v0

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_5e

    :cond_11
    :goto_11
    move v3, v2

    :goto_12
    if-nez p1, :cond_1a

    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz p1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v0

    :goto_1b
    if-eqz v4, :cond_1f

    iget-object p2, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    :cond_1f
    move-object v5, p2

    move v0, v4

    move v4, v3

    new-instance v3, Lcom/android/server/vr/VrManagerService$VrState;

    move v7, p3

    move v8, p4

    move-object v9, p5

    move-object v6, v5

    move v5, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    move v0, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez p1, :cond_39

    iput-object v3, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    monitor-exit v1

    return-void

    :cond_39
    if-nez v4, :cond_4e

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4a
    iput-object v3, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    monitor-exit v1

    return-void

    :cond_4e
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    move-object v2, p0

    move v3, v4

    move v4, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    monitor-exit v1

    return-void

    :goto_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_e

    throw p0
.end method

.method public final updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    const-string/jumbo v1, "VrManagerService"

    if-eqz v0, :cond_2f

    iget-object v2, v0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    if-ne v2, p1, :cond_14

    goto :goto_2f

    :cond_14
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Disconnecting compositor service: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    :cond_2f
    :goto_2f
    if-eqz p2, :cond_64

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Connecting compositor service: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    :goto_4b
    move v8, v0

    goto :goto_4f

    :cond_4d
    const/4 v0, 0x3

    goto :goto_4b

    :goto_4f
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/vr/VrManagerService$1;

    move v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/vr/VrManagerService$3;ILcom/android/server/vr/VrManagerService$2;Lcom/android/server/vr/VrManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    :cond_64
    return-void
.end method

.method public final updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    const-string/jumbo v5, "VR mode component changed to "

    const-string/jumbo v6, "Leaving VR mode, disconnecting "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_14
    iget-object v9, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v9, v3, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(ILandroid/content/ComponentName;)I

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_21

    if-eqz p1, :cond_21

    const/4 v9, 0x1

    goto :goto_22

    :cond_21
    move v9, v10

    :goto_22
    iget-boolean v12, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_37

    if-nez v12, :cond_2c

    if-nez v9, :cond_2c

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2c
    :try_start_2c
    iget-object v12, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v12, :cond_3a

    iget-object v12, v12, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    goto :goto_3b

    :catchall_37
    move-exception v0

    goto/16 :goto_15a

    :cond_3a
    const/4 v12, 0x0

    :goto_3b
    iget v14, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget-boolean v15, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_37

    const-string/jumbo v11, "VrManagerService"

    if-eq v15, v9, :cond_69

    :try_start_44
    iput-boolean v9, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v9, :cond_4c

    const-string/jumbo v15, "enabled"

    goto :goto_4f

    :cond_4c
    const-string/jumbo v15, "disabled"

    :goto_4f
    const-string/jumbo v13, "VR mode "

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v13, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {v13}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    iget-object v13, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    iget-boolean v15, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-virtual {v13, v10, v15, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_69
    .catchall {:try_start_44 .. :try_end_69} :catchall_37

    :cond_69
    const/16 v13, -0x2710

    const-string v15, " for user "

    if-nez v9, :cond_a0

    :try_start_6f
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v2, :cond_9e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    iget v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v2}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    iput-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move v2, v10

    :goto_9c
    const/4 v5, 0x0

    goto :goto_ef

    :cond_9e
    const/4 v2, 0x1

    goto :goto_9c

    :cond_a0
    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v6, :cond_ea

    iget-object v9, v6, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-static {v9, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    iget v9, v6, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    if-ne v9, v3, :cond_b2

    move v6, v10

    goto :goto_b6

    :cond_b2
    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    const/4 v6, 0x1

    :goto_b6
    if-eqz v6, :cond_e7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", disconnecting "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    iget v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v5}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v3, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(ILandroid/content/ComponentName;)V

    :goto_e4
    move v2, v10

    const/4 v10, 0x1

    goto :goto_ef

    :cond_e7
    const/4 v5, 0x0

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ea
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(ILandroid/content/ComponentName;)V

    goto :goto_e4

    :goto_ef
    if-nez v4, :cond_f5

    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v6, :cond_fd

    :cond_f5
    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    :cond_fd
    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    if-eq v6, v1, :cond_102

    :cond_101
    const/4 v10, 0x1

    :cond_102
    iput-object v4, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iput-boolean v1, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    move/from16 v1, p5

    iput v1, v0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    if-eq v1, v3, :cond_112

    iput v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    const/4 v11, 0x1

    goto :goto_113

    :cond_112
    move v11, v10

    :goto_113
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_11e

    iget-object v1, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11f

    :cond_11e
    move-object v1, v5

    :goto_11f
    iget v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    invoke-virtual {v0, v3, v14, v1, v12}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_12d

    if-eqz v11, :cond_12d

    invoke-virtual {v0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    :cond_12d
    if-nez v2, :cond_156

    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v1, :cond_136

    move-object/from16 v17, v5

    goto :goto_13a

    :cond_136
    iget-object v13, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v13

    :goto_13a
    new-instance v14, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v15, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v1, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v3, v0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v4, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    const/16 v21, 0x0

    move/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    invoke-direct/range {v14 .. v21}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;I)V

    invoke-virtual {v0, v14}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    :try_end_156
    .catchall {:try_start_6f .. :try_end_156} :catchall_37

    :cond_156
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_15a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final updateDependentAppOpsLocked(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {p3, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p4

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/app/AppOpsManager;

    if-eq p2, p1, :cond_24

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    :cond_24
    if-eqz p3, :cond_36

    new-instance p2, Landroid/os/PackageTagsList$Builder;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p2

    :goto_34
    move-object v7, p2

    goto :goto_38

    :cond_36
    const/4 p2, 0x0

    goto :goto_34

    :goto_38
    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/16 v4, 0x18

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_46

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_46
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateVrModeAllowedLocked()V
    .registers 16

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v4, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v1

    :goto_18
    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1f

    if-eqz v3, :cond_27

    :cond_1f
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    if-eqz v3, :cond_27

    if-nez v4, :cond_27

    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v4, v3, :cond_70

    iput-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz v3, :cond_48

    if-eqz v0, :cond_35

    invoke-virtual {p0, v2}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    :cond_35
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-nez v0, :cond_70

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void

    :cond_48
    move-object v7, p0

    invoke-virtual {v7, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    iget-boolean v9, v7, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v9, :cond_64

    iget-object p0, v7, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz p0, :cond_64

    new-instance v8, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v10, v7, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v11, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    iget v13, v7, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v14, v7, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget v12, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-direct/range {v8 .. v14}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_65

    :cond_64
    const/4 v8, 0x0

    :goto_65
    iput-object v8, v7, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    :cond_70
    return-void
.end method
