.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field public final mActiveAgents:Landroid/util/ArraySet;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAlarmLock:Ljava/lang/Object;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mArchive:Lcom/android/server/trust/TrustArchive;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public final mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Lcom/android/server/trust/TrustManagerService$4;

.field public final mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

.field public mIsUnlockedByFP:Z

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockSettingsStateListener:Lcom/android/server/trust/TrustManagerService$1;

.field final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field public final mService:Lcom/android/server/trust/TrustManagerService$3;

.field public mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

.field public final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field public mTrustAgentsCanRun:Z

.field public final mTrustListeners:Ljava/util/ArrayList;

.field public final mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

.field public final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

.field public final mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserTrustState:Landroid/util/SparseArray;

.field public final mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/android/server/trust/TrustArchive;->mEvents:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mLockSettingsStateListener:Lcom/android/server/trust/TrustManagerService$1;

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Lcom/android/server/trust/TrustManagerService$3;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$5;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/server/trust/TrustManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/trust/TrustManagerService$4;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p0, :cond_13

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_13

    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 6

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_27

    goto :goto_16

    :cond_27
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2c

    goto :goto_16

    :cond_2c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Skipping agent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because package does not have permission android.permission.PROVIDE_TRUST_AGENT."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TrustManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_5a
    return-object v0
.end method


# virtual methods
.method public final aggregateIsActiveUnlockRunning(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    goto :goto_4e

    :cond_a
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustState;

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v2, v3, :cond_21

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v2, v3, :cond_21

    monitor-exit v0

    return v1

    :catchall_1f
    move-exception p0

    goto :goto_4f

    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_1f

    move v0, v1

    :goto_23
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_4b

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-nez v3, :cond_49

    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v3, :cond_4b

    iget-boolean v2, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v2, :cond_4b

    :cond_49
    const/4 p0, 0x1

    return p0

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_4e
    :goto_4e
    return v1

    :goto_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_1f

    throw p0
.end method

.method public final aggregateIsTrustManaged(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2c
    return v1
.end method

.method public final cancelBothTrustableAlarms(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v2, :cond_1e

    iput-boolean v1, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1e
    if-eqz p1, :cond_2b

    iget-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_2b

    iput-boolean v1, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_2b
    return-void
.end method

.method public final checkNewAgentsForUser(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "known_trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    new-instance v4, Landroid/util/ArraySet;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2a
    if-ge v2, v5, :cond_3c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKnownTrustAgents(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v1

    new-instance v4, Landroid/util/ArraySet;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v5, Landroid/util/ArraySet;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_73
    :goto_73
    if-ge v2, v6, :cond_98

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v2, v2, 0x1

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-static {v7}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    goto :goto_73

    :cond_88
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_73

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_98
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9f

    goto :goto_ce

    :cond_9f
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104034b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c1

    const/4 v0, 0x0

    goto :goto_c5

    :cond_c1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_c5
    if-eqz v0, :cond_c8

    goto :goto_ce

    :cond_c8
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cf

    :goto_ce
    return-void

    :cond_cf
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    return-void
.end method

.method public final getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    :cond_e
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-object p0
.end method

.method public final getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;
    .registers 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final handleDualDARDeviceLockedChangedForUser(IZ)V
    .registers 6

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "handleDualDARDeviceLockedChangedForUser() - userId : "

    const-string v1, ", locked : "

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "TrustManagerService"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2c

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    if-eqz p2, :cond_29

    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v0, p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    return-void

    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateDualDARStateAndUnlockIfNeeded(I)V

    :cond_2c
    return-void
.end method

.method public final handleScheduleTrustableTimeouts(IZZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long v8, v2, v4

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-nez p2, :cond_2a

    iget-boolean v6, v2, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v6, :cond_2a

    goto :goto_47

    :cond_2a
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_2f
    move-object v11, v2

    goto :goto_3c

    :cond_31
    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v2, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2f

    :goto_3c
    iput-boolean v3, v11, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    const-string/jumbo v10, "TrustManagerService.trustTimeoutForUser"

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_47
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v2, :cond_5e

    iget-boolean v4, v2, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v4, :cond_5e

    if-eqz p3, :cond_5d

    goto :goto_5e

    :cond_5d
    return-void

    :cond_5e
    :goto_5e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    if-nez v2, :cond_74

    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v2, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_72
    :goto_72
    move-object v15, v2

    goto :goto_7c

    :cond_74
    if-eqz p3, :cond_72

    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_72

    :goto_7c
    iput-boolean v3, v15, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x2

    const-string/jumbo v14, "TrustManagerService.trustTimeoutForUser"

    move-object/from16 v16, v12

    move-wide v12, v4

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final isDeviceLockedInner(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final isTrustUsuallyManagedInternal(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_3a

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_13

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_31

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_2f
    move-exception p0

    goto :goto_38

    :cond_31
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1

    return v0

    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_2f

    throw p0

    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_13

    throw p0
.end method

.method public final maybeEnableFactoryTrustAgents(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104034b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v3, 0x0

    goto :goto_34

    :cond_30
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_34
    const/4 v4, 0x1

    if-eqz v3, :cond_39

    move v5, v4

    goto :goto_3a

    :cond_39
    move v5, v2

    :goto_3a
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v7, "TrustManagerService"

    if-eqz v5, :cond_5e

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Enabling "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it is a default agent."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_5e
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_64
    if-ge v2, v3, :cond_97

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_7f

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_7f
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Leaving agent "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " disabled because package is not a system package."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_97
    :goto_97
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    goto :goto_b1

    :cond_9e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    :goto_b1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final notifyDeviceLockedListenersForUser(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    const/4 v2, 0x0

    :try_start_a
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/trust/TrustManagerService;IZ)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1f

    :try_start_16
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    goto :goto_26

    :catchall_1f
    move-exception p1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_1d

    throw p0
.end method

.method public final notifyKeystoreOfDeviceLockState(IZ)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_c2

    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result p2

    goto :goto_11

    :cond_10
    move p2, p1

    :goto_11
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricManager;

    const/4 v3, 0x0

    if-nez v2, :cond_23

    new-array v2, v3, [J

    goto :goto_27

    :cond_23
    invoke-virtual {v2, p2}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object v2

    :goto_27
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v4, v3, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result v4

    const/4 v5, 0x1

    const-string/jumbo v6, "TrustManagerService"

    if-eqz v4, :cond_98

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_6b

    and-int/lit8 v7, v0, 0x20

    if-nez v7, :cond_6b

    invoke-virtual {v4, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/SensorProperties;

    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v7

    if-eq v7, v5, :cond_63

    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v4

    if-nez v4, :cond_6b

    :cond_63
    const-string/jumbo p0, "User is unlockable by non-strong fingerprint auth"

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    move v3, v5

    goto :goto_be

    :cond_6b
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_98

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_98

    invoke-virtual {v4, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v4

    if-eq v4, v5, :cond_91

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    if-nez v0, :cond_98

    :cond_91
    const-string/jumbo p0, "User is unlockable by non-strong face auth"

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_98
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v0

    sget-object v4, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v0, v4, :cond_b7

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v4, "android.hardware.type.automotive"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result p0

    if-eqz p0, :cond_be

    :cond_b7
    const-string/jumbo p0, "User is unlockable by trust agent"

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_be
    :goto_be
    invoke-virtual {v1, p1, v2, v3}, Landroid/security/KeyStoreAuthorization;->onDeviceLocked(I[JZ)I

    return-void

    :cond_c2
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_b2

    :cond_8
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_81

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    goto :goto_17

    :cond_29
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v5, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.USER_STARTED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void

    :cond_81
    const/16 v0, 0x258

    if-ne p1, v0, :cond_aa

    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.android.trust.provider.SignificantPlaceProvider.BIND"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    new-instance v1, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    const-string/jumbo v2, "TrustManagerService"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    return-void

    :cond_aa
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_b2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(I)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method public final onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "onPassword2Auth()"

    const-string/jumbo v3, "TrustManagerService"

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo p0, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_21
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result p0

    if-nez p0, :cond_38

    const-string p0, "Authentication Failure by dual dar client"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_38
    const-string/jumbo p0, "onPassword2Auth completed successfully"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {p1, p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public final onStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Lcom/android/server/trust/TrustManagerService$3;

    const-string/jumbo v1, "trust"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x7

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xc

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x9

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xb

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final refreshAgentList(I)V
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-boolean v2, v1, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_a

    goto/16 :goto_364

    :cond_a
    const-string/jumbo v2, "TrustManagerService"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_28

    if-gez v0, :cond_28

    const-string/jumbo v4, "refreshAgentList(userId="

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-static {v0, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v0

    :goto_29
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-ne v4, v3, :cond_38

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    goto :goto_46

    :cond_38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_46
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iget-object v8, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_56
    :goto_56
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_56

    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v0, :cond_56

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v0, :cond_74

    goto :goto_56

    :cond_74
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_56

    :cond_7b
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v12, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_56

    :cond_86
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_56

    :cond_8f
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v12

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a0

    const/4 v14, 0x1

    goto :goto_a1

    :cond_a0
    const/4 v14, 0x0

    :goto_a1
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    goto :goto_56

    :cond_ae
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v0}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    :goto_bc
    if-ge v0, v10, :cond_329

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v0, 0x1

    move-object/from16 v9, v16

    check-cast v9, Landroid/content/pm/ResolveInfo;

    invoke-static {v9}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    move/from16 v0, v17

    :goto_d4
    const/4 v13, 0x0

    goto :goto_bc

    :cond_d6
    if-eqz v14, :cond_ef

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v13, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_e9
    move-object v13, v3

    move/from16 v0, v17

    move-object/from16 v3, v18

    goto :goto_bc

    :cond_ef
    move-object/from16 v18, v3

    :cond_f1
    new-instance v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v13, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    iput v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a0

    invoke-virtual {v9, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, "android.service.trust.trustagent"

    move-object/from16 v19, v6

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v8

    if-eqz v6, :cond_131

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_11d

    goto :goto_131

    :cond_11d
    :try_start_11d
    invoke-virtual {v6, v5, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_121
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11d .. :try_end_121} :catch_25a
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_121} :catch_24d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11d .. :try_end_121} :catch_23b
    .catchall {:try_start_11d .. :try_end_121} :catchall_233

    if-nez v6, :cond_15d

    :try_start_123
    const-string v8, "Can\'t find %s meta-data"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_123 .. :try_end_12c} :catch_152
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_12c} :catch_147
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_123 .. :try_end_12c} :catch_13c
    .catchall {:try_start_123 .. :try_end_12c} :catchall_138

    if-eqz v6, :cond_131

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_131
    :goto_131
    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_135
    const/4 v0, 0x0

    goto/16 :goto_29d

    :catchall_138
    move-exception v0

    move-object v13, v6

    goto/16 :goto_235

    :catch_13c
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_141
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_143
    const/16 v24, 0x0

    goto/16 :goto_245

    :catch_147
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_14c
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_14e
    const/16 v24, 0x0

    goto/16 :goto_257

    :catch_152
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_157
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_159
    const/16 v24, 0x0

    goto/16 :goto_264

    :cond_15d
    :try_start_15d
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8
    :try_end_169
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15d .. :try_end_169} :catch_22f
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_169} :catch_22b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15d .. :try_end_169} :catch_227
    .catchall {:try_start_15d .. :try_end_169} :catchall_208

    move-object/from16 v21, v5

    :goto_16b
    :try_start_16b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5
    :try_end_16f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16b .. :try_end_16f} :catch_21e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16f} :catch_215
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16b .. :try_end_16f} :catch_20c
    .catchall {:try_start_16b .. :try_end_16f} :catchall_208

    move-object/from16 v22, v6

    const/4 v6, 0x2

    move/from16 v23, v10

    const/4 v10, 0x1

    if-eq v5, v10, :cond_17e

    if-eq v5, v6, :cond_17e

    move-object/from16 v6, v22

    move/from16 v10, v23

    goto :goto_16b

    :cond_17e
    :try_start_17e
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "trust-agent"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_189
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17e .. :try_end_189} :catch_201
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_189} :catch_1fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17e .. :try_end_189} :catch_1f3
    .catchall {:try_start_17e .. :try_end_189} :catchall_195

    if-nez v5, :cond_1a6

    :try_start_18b
    const-string/jumbo v0, "Meta-data does not start with trust-agent tag"

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18b .. :try_end_191} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_191} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18b .. :try_end_191} :catch_19a
    .catchall {:try_start_18b .. :try_end_191} :catchall_195

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_135

    :catchall_195
    move-exception v0

    :goto_196
    move-object/from16 v13, v22

    goto/16 :goto_235

    :catch_19a
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_141

    :catch_19e
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_14c

    :catch_1a2
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_157

    :cond_1a6
    :try_start_1a6
    sget-object v5, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a6 .. :try_end_1b0} :catch_201
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b0} :catch_1fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a6 .. :try_end_1b0} :catch_1f3
    .catchall {:try_start_1a6 .. :try_end_1b0} :catchall_195

    :try_start_1b0
    const-string/jumbo v6, "http://schemas.android.com/apk/prv/res/android"

    const-string/jumbo v10, "unlockProfile"
    :try_end_1b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b0 .. :try_end_1b6} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1b6} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b0 .. :try_end_1b6} :catch_1e4
    .catchall {:try_start_1b0 .. :try_end_1b6} :catchall_195

    move-object/from16 v24, v5

    const/4 v5, 0x0

    :try_start_1b9
    invoke-interface {v8, v6, v10, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6
    :try_end_1bd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b9 .. :try_end_1bd} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bd} :catch_1de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b9 .. :try_end_1bd} :catch_1db
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_195

    :try_start_1bd
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bd .. :try_end_1c0} :catch_1d5
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c0} :catch_1cf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1bd .. :try_end_1c0} :catch_1c9
    .catchall {:try_start_1bd .. :try_end_1c0} :catchall_195

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    move v8, v6

    move-object/from16 v6, v24

    const/4 v0, 0x0

    goto/16 :goto_267

    :catch_1c9
    move-exception v0

    move v8, v6

    :goto_1cb
    move-object/from16 v6, v22

    goto/16 :goto_245

    :catch_1cf
    move-exception v0

    move v8, v6

    :goto_1d1
    move-object/from16 v6, v22

    goto/16 :goto_257

    :catch_1d5
    move-exception v0

    move v8, v6

    :goto_1d7
    move-object/from16 v6, v22

    goto/16 :goto_264

    :catch_1db
    move-exception v0

    :goto_1dc
    move v8, v5

    goto :goto_1cb

    :catch_1de
    move-exception v0

    :goto_1df
    move v8, v5

    goto :goto_1d1

    :catch_1e1
    move-exception v0

    :goto_1e2
    move v8, v5

    goto :goto_1d7

    :catch_1e4
    move-exception v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    goto :goto_1dc

    :catch_1e9
    move-exception v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    goto :goto_1df

    :catch_1ee
    move-exception v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    goto :goto_1e2

    :catch_1f3
    move-exception v0

    const/4 v5, 0x0

    move v8, v5

    move-object/from16 v6, v22

    goto/16 :goto_143

    :catch_1fa
    move-exception v0

    const/4 v5, 0x0

    move v8, v5

    move-object/from16 v6, v22

    goto/16 :goto_14e

    :catch_201
    move-exception v0

    const/4 v5, 0x0

    move v8, v5

    move-object/from16 v6, v22

    goto/16 :goto_159

    :catchall_208
    move-exception v0

    move-object/from16 v22, v6

    goto :goto_196

    :catch_20c
    move-exception v0

    :goto_20d
    move-object/from16 v22, v6

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_143

    :catch_215
    move-exception v0

    :goto_216
    move-object/from16 v22, v6

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_14e

    :catch_21e
    move-exception v0

    :goto_21f
    move-object/from16 v22, v6

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_159

    :catch_227
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_20d

    :catch_22b
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_216

    :catch_22f
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_21f

    :catchall_233
    move-exception v0

    const/4 v13, 0x0

    :goto_235
    if-eqz v13, :cond_23a

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_23a
    throw v0

    :catch_23b
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    const/4 v6, 0x0

    goto/16 :goto_143

    :goto_245
    if-eqz v6, :cond_24a

    :goto_247
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_24a
    move-object/from16 v6, v24

    goto :goto_267

    :catch_24d
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    const/4 v6, 0x0

    goto/16 :goto_14e

    :goto_257
    if-eqz v6, :cond_24a

    goto :goto_247

    :catch_25a
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    const/4 v6, 0x0

    goto/16 :goto_159

    :goto_264
    if-eqz v6, :cond_24a

    goto :goto_247

    :goto_267
    if-eqz v0, :cond_278

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Error parsing : %s"

    invoke-static {v2, v0, v8, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_135

    :cond_278
    if-nez v6, :cond_27c

    goto/16 :goto_135

    :cond_27c
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_293

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "/"

    invoke-static {v0, v10, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_293
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    :goto_29d
    iput-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_2b7

    :cond_2a0
    move-object/from16 v21, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move/from16 v23, v10

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    :goto_2b7
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    if-eqz v0, :cond_2c7

    iget-object v5, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v5, :cond_2c7

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v0, :cond_2c7

    const/4 v10, 0x1

    goto :goto_2c8

    :cond_2c7
    const/4 v10, 0x0

    :goto_2c8
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v5, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2e2

    if-nez v10, :cond_2e2

    :cond_2d4
    :goto_2d4
    move/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v5, v21

    move/from16 v10, v23

    goto/16 :goto_d4

    :cond_2e2
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v5, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v0

    if-nez v0, :cond_2fc

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2fc

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d4

    if-nez v10, :cond_2fd

    goto :goto_2d4

    :cond_2fc
    const/4 v5, 0x1

    :cond_2fd
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v0, :cond_317

    new-instance v0, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {v0, v6, v1, v8, v9}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    :cond_317
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_325

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2d4

    :cond_325
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2d4

    :cond_329
    const/4 v3, -0x1

    goto/16 :goto_56

    :cond_32c
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_32f
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v10, v2, :cond_358

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v3, -0x1

    if-eq v4, v3, :cond_342

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v3, :cond_355

    :cond_342
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_34b

    move v0, v5

    :cond_34b
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_355
    add-int/lit8 v10, v10, 0x1

    goto :goto_32f

    :cond_358
    if-eqz v0, :cond_364

    const/4 v3, -0x1

    if-ne v4, v3, :cond_361

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_364

    :cond_361
    invoke-virtual {v1, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_364
    :goto_364
    return-void
.end method

.method public final refreshDeviceLockedForUser(I)V
    .registers 3

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void
.end method

.method public final refreshDeviceLockedForUser(II)V
    .registers 14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    if-gez p1, :cond_1d

    const-string/jumbo v1, "TrustManagerService"

    const-string/jumbo v2, "refreshDeviceLockedForUser(userId="

    const-string v3, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-static {p1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v0

    :cond_1d
    if-ne p1, v0, :cond_26

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    goto :goto_35

    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :goto_35
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_107

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_107

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_107

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v4, :cond_59

    goto/16 :goto_107

    :cond_59
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_7c

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_107

    if-nez v5, :cond_107

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result v3

    if-nez v3, :cond_107

    invoke-virtual {p0, v4, v1}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_107

    :cond_7c
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v3

    sget-object v6, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    const/4 v7, 0x1

    if-ne v3, v6, :cond_87

    move v3, v7

    goto :goto_88

    :cond_87
    move v3, v1

    :goto_88
    iget v6, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v6, v4, :cond_af

    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v6

    :try_start_8f
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    monitor-exit v6
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_ac

    :try_start_96
    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v6
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9a} :catch_9b

    goto :goto_a6

    :catch_9b
    move-exception v6

    const-string/jumbo v9, "TrustManagerService"

    const-string/jumbo v10, "Unable to check keyguard lock state"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    :goto_a6
    if-ne p2, v4, :cond_aa

    move v9, v7

    goto :goto_dc

    :cond_aa
    move v9, v1

    goto :goto_dc

    :catchall_ac
    move-exception p0

    :try_start_ad
    monitor-exit v6
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0

    :cond_af
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v6

    if-nez v6, :cond_b9

    move v6, v1

    goto :goto_cd

    :cond_b9
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v6, :cond_c7

    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    iput-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_c7
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v6

    :goto_cd
    if-eqz v6, :cond_d9

    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    xor-int/2addr v6, v7

    move v8, v1

    move v9, v8

    goto :goto_dc

    :cond_d9
    move v8, v1

    move v9, v8

    move v6, v7

    :goto_dc
    if-eqz v5, :cond_e5

    if-eqz v6, :cond_e5

    if-nez v3, :cond_e5

    if-nez v8, :cond_e5

    goto :goto_e6

    :cond_e5
    move v7, v1

    :goto_e6
    if-eqz v7, :cond_eb

    if-eqz v9, :cond_eb

    goto :goto_107

    :cond_eb
    invoke-virtual {p0, v4, v7}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    if-eqz v7, :cond_107

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_fe

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/PersonaManagerInternal;->onDeviceLockedChanged(I)V

    goto :goto_107

    :cond_fe
    const-string/jumbo v3, "TrustManagerService"

    const-string/jumbo v4, "onDeviceLockedChanged() - Service is not yet ready..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    :goto_107
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3b

    :cond_10b
    return-void
.end method

.method public final resolveProfileParent(I)I
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    goto :goto_1e

    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDeviceLockedForUser(IZ)V
    .registers 9

    const-string/jumbo v0, "User "

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v2, :cond_35

    const-string/jumbo v4, "TrustManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", setDeviceLockedForUser "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :catchall_32
    move-exception p0

    goto/16 :goto_af

    :cond_35
    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_32

    if-nez v2, :cond_4a

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "TrustManagerService"

    const-string/jumbo v1, "setDeviceLockedForUser - locked state is not changed though"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleDualDARDeviceLockedChangedForUser(IZ)V

    :cond_4a
    if-nez v2, :cond_50

    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    if-eqz v0, :cond_ae

    :cond_50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleDualDARDeviceLockedChangedForUser(IZ)V

    move v0, v3

    :goto_54
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_8f

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_8c

    if-eqz p2, :cond_7b

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    :try_start_6e
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_76

    goto :goto_8c

    :catch_76
    move-exception v1

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_8c

    :cond_7b
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_80
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_8c

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v1

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_8c
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_8f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyDeviceLockedListenersForUser(IZ)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    array-length v0, p1

    :goto_9c
    if-ge v3, v0, :cond_ae

    aget v1, p1, v3

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-virtual {p0, v1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    :cond_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    :cond_ae
    return-void

    :goto_af
    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_32

    throw p0
.end method

.method public final updateDualDARStateAndUnlockIfNeeded(I)V
    .registers 9

    const-string/jumbo v0, "fetch outer layer key and unlock DualDAR user "

    const-string/jumbo v1, "updateDualDARStateAndUnlockIfNeeded() - userId : "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "TrustManagerService"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v1

    if-eqz v1, :cond_126

    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemServiceManager;

    iget v1, v1, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2d

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_2d
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_126

    const-string/jumbo v1, "Update dualdar state early for DO"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    if-nez p1, :cond_126

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_126

    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v1, v3}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Trying to unlock DualDAR user (TMS), isSecure? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v5

    if-eqz v5, :cond_b3

    const-string v0, "DualDAR on DO is enabled"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_126

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerLayerUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncrypted(I)Z

    move-result v0

    if-eqz v0, :cond_126

    :cond_91
    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne p0, v0, :cond_a7

    const-string p0, "Inner layer for user "

    const-string v0, " authenticated"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_a7
    const-string p0, "Failed in inner layer authentication for user "

    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b3
    invoke-virtual {v3, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-nez p1, :cond_126

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_126

    invoke-virtual {v3, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-nez p1, :cond_126

    const-string/jumbo p1, "Trying to unlock DualDAR user "

    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne p1, v3, :cond_11f

    :try_start_db
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "fetchOuterLayerKey()"

    invoke-static {v4, v0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p0, v0}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_106} :catch_107

    return-void

    :catch_107
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to unlock DualDAR user !"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_126

    :cond_11f
    const-string p0, "Default Authentication Failure by DualDAR client"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_126
    :goto_126
    return-void
.end method

.method public final updateTrust(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public final updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V
    .registers 21

    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v2

    const-string/jumbo v3, "TrustManagerService"

    const/4 v9, 0x0

    move v4, v9

    :goto_f
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ge v4, v0, :cond_3a

    :try_start_18
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0, v2, v5}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_23
    .catch Landroid/os/DeadObjectException; {:try_start_18 .. :try_end_23} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_24

    goto :goto_38

    :catch_24
    move-exception v0

    const-string v6, "Exception while notifying TrustListener."

    invoke-static {v3, v6, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :catch_2b
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :goto_38
    add-int/2addr v4, v10

    goto :goto_f

    :cond_3a
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    if-eq v0, v2, :cond_68

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    :try_start_4b
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_65

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_68

    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0

    :cond_68
    :goto_68
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_72

    :cond_70
    move v0, v9

    goto :goto_94

    :cond_72
    move v0, v9

    :goto_73
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_70

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, v5, :cond_91

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_91

    move v0, v10

    goto :goto_94

    :cond_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :goto_94
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    if-nez v2, :cond_9e

    :cond_9c
    move v2, v9

    goto :goto_c6

    :cond_9e
    move v2, v9

    :goto_9f
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_9c

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v5, :cond_c3

    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v4, :cond_c3

    iget-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v4, :cond_c3

    iget-boolean v3, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v3, :cond_c3

    move v2, v10

    goto :goto_c6

    :cond_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :goto_c6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    :try_start_ca
    invoke-interface {v3}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v3
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_ce} :catch_d0

    xor-int/2addr v3, v10

    goto :goto_d1

    :catch_d0
    move v3, v9

    :goto_d1
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_d4
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v6, v7, :cond_e0

    move v11, v10

    goto :goto_e1

    :cond_e0
    move v11, v9

    :goto_e1
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v6, v12, :cond_ed

    move v13, v10

    goto :goto_ee

    :cond_ed
    move v13, v9

    :goto_ee
    if-eqz v13, :cond_f6

    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_f6

    move v6, v10

    goto :goto_f7

    :cond_f6
    move v6, v9

    :goto_f7
    if-nez v3, :cond_111

    if-nez p3, :cond_111

    if-nez v6, :cond_111

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v14, "android.hardware.type.automotive"

    invoke-virtual {v6, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10f

    goto :goto_111

    :cond_10f
    move v6, v9

    goto :goto_112

    :cond_111
    :goto_111
    move v6, v10

    :goto_112
    iget v14, v1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v5, v14, :cond_118

    move v14, v10

    goto :goto_119

    :cond_118
    move v14, v9

    :goto_119
    if-eqz v0, :cond_123

    if-eqz v11, :cond_123

    monitor-exit v4

    goto/16 :goto_22d

    :catchall_120
    move-exception v0

    goto/16 :goto_22e

    :cond_123
    if-eqz v0, :cond_12b

    if-eqz v6, :cond_12b

    if-eqz v14, :cond_12b

    move-object v12, v7

    goto :goto_136

    :cond_12b
    if-eqz v2, :cond_134

    if-nez v11, :cond_131

    if-eqz v13, :cond_134

    :cond_131
    if-eqz v14, :cond_134

    goto :goto_136

    :cond_134
    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    :goto_136
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4
    :try_end_13c
    .catchall {:try_start_d4 .. :try_end_13c} :catchall_120

    move v0, v3

    if-ne v12, v7, :cond_141

    move v3, v10

    goto :goto_142

    :cond_141
    move v3, v9

    :goto_142
    if-nez v0, :cond_148

    if-eqz v3, :cond_148

    move v4, v10

    goto :goto_149

    :cond_148
    move v4, v9

    :goto_149
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v2

    if-ne v0, v2, :cond_156

    goto :goto_183

    :cond_156
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v6, v9

    :goto_15c
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_183

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    const-string/jumbo v7, "TrustManagerService"

    :try_start_16f
    invoke-interface {v0, v2, v5}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_172
    .catch Landroid/os/DeadObjectException; {:try_start_16f .. :try_end_172} :catch_17a
    .catch Landroid/os/RemoteException; {:try_start_16f .. :try_end_172} :catch_173

    goto :goto_180

    :catch_173
    move-exception v0

    const-string v14, "Exception while notifying TrustListener."

    invoke-static {v7, v14, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_180

    :catch_17a
    const-string/jumbo v0, "TrustListener dead while trying to notify Active Unlock running state"

    invoke-static {v7, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_180
    add-int/lit8 v6, v6, 0x1

    goto :goto_15c

    :cond_183
    :goto_183
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_192

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_190
    move-object v7, v0

    goto :goto_1c8

    :cond_192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v9

    :goto_198
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v2, v6, :cond_190

    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v7, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v7, v5, :cond_1c5

    iget-object v7, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v7}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v7

    if-eqz v7, :cond_1c5

    iget-object v6, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v7, v6, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    if-eqz v7, :cond_1c5

    iget-object v6, v6, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1c5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_198

    :goto_1c8
    const-string/jumbo v14, "TrustManagerService"

    if-nez v3, :cond_1cf

    move v6, v9

    goto :goto_1d1

    :cond_1cf
    move/from16 v6, p2

    :goto_1d1
    move v15, v9

    :goto_1d2
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_1ff

    :try_start_1da
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface/range {v2 .. v7}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZZIILjava/util/List;)V
    :try_end_1e6
    .catch Landroid/os/DeadObjectException; {:try_start_1da .. :try_end_1e6} :catch_1ee
    .catch Landroid/os/RemoteException; {:try_start_1da .. :try_end_1e6} :catch_1e7

    goto :goto_1fb

    :catch_1e7
    move-exception v0

    const-string v2, "Exception while notifying TrustListener."

    invoke-static {v14, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1fb

    :catch_1ee
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v14, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    :goto_1fb
    add-int/2addr v15, v10

    move/from16 v5, p1

    goto :goto_1d2

    :cond_1ff
    if-eq v3, v11, :cond_216

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    if-eqz v3, :cond_216

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_20b

    move v9, v10

    :cond_20b
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_216
    if-eqz v4, :cond_222

    if-eqz v8, :cond_222

    new-instance v0, Landroid/service/trust/GrantTrustResult;

    invoke-direct {v0, v10}, Landroid/service/trust/GrantTrustResult;-><init>(I)V

    invoke-virtual {v8, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_222
    if-nez v11, :cond_226

    if-eqz v13, :cond_22d

    :cond_226
    sget-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v12, v0, :cond_22d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    :cond_22d
    :goto_22d
    return-void

    :goto_22e
    :try_start_22e
    monitor-exit v4
    :try_end_22f
    .catchall {:try_start_22e .. :try_end_22f} :catchall_120

    throw v0
.end method

.method public final updateTrustAll()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public waitForIdle()V
    .registers 4

    new-instance v0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    const-wide/16 v1, 0x0

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method
