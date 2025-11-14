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
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

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
    .locals 2

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 4

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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

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

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final aggregateIsActiveUnlockRunning(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustState;

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v2, v3, :cond_1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_3

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v3, :cond_3

    iget-boolean v2, v2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v2, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final aggregateIsTrustManaged(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final cancelBothTrustableAlarms(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v2, :cond_0

    iput-boolean v1, v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1
    return-void
.end method

.method public final checkNewAgentsForUser(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "known_trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

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

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->setKnownTrustAgents(Ljava/util/Collection;I)V

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
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

    :cond_2
    :goto_1
    if-ge v2, v6, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v2, v2, 0x1

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-static {v7}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_2

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
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

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    return-void

    :cond_8
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
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-object p0
.end method

.method public final getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleDualDARDeviceLockedChangedForUser(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "handleDualDARDeviceLockedChangedForUser() - userId : "

    const-string v1, ", locked : "

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "TrustManagerService"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {v0, p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateDualDARStateAndUnlockIfNeeded(I)V

    :cond_1
    return-void
.end method

.method public final handleScheduleTrustableTimeouts(IZZ)V
    .locals 17

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

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    iget-boolean v6, v2, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v2, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :goto_1
    iput-boolean v3, v11, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    const-string/jumbo v10, "TrustManagerService.trustTimeoutForUser"

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_2
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_3

    :cond_2
    return-void

    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    invoke-direct {v2, v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_4
    move-object v15, v2

    goto :goto_5

    :cond_5
    if-eqz p3, :cond_4

    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_4

    :goto_5
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
    .locals 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isTrustUsuallyManagedInternal(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1

    return v0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final maybeEnableFactoryTrustAgents(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
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

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v7, "TrustManagerService"

    if-eqz v5, :cond_3

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

    goto :goto_3

    :cond_3
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_5

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

    if-eqz v5, :cond_4

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Leaving agent "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " disabled because package is not a system package."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    :goto_4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final notifyDeviceLockedListenersForUser(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/trust/TrustManagerService;IZ)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final notifyKeystoreOfDeviceLockState(IZ)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricManager;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-array v2, v3, [J

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p2}, Landroid/hardware/biometrics/BiometricManager;->getAuthenticatorIds(I)[J

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v4, v3, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result v4

    const/4 v5, 0x1

    const-string/jumbo v6, "TrustManagerService"

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_3

    and-int/lit8 v7, v0, 0x20

    if-nez v7, :cond_3

    invoke-virtual {v4, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorProperties()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/SensorProperties;

    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v7

    if-eq v7, v5, :cond_2

    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string/jumbo p0, "User is unlockable by non-strong fingerprint auth"

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v3, v5

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_5

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_5

    invoke-virtual {v4, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties;

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v4

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo p0, "User is unlockable by non-strong face auth"

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v0

    sget-object v4, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-eq v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v4, "android.hardware.type.automotive"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const-string/jumbo p0, "User is unlockable by trust agent"

    invoke-static {v6, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v1, p1, v2, v3}, Landroid/security/KeyStoreAuthorization;->onDeviceLocked(I[JZ)I

    return-void

    :cond_8
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->checkNewAgentsForUser(I)V

    goto :goto_0

    :cond_1
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

    :cond_2
    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

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

    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "onPassword2Auth()"

    const-string/jumbo v3, "TrustManagerService"

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Authentication Failure by dual dar client"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_1
    const-string/jumbo p0, "onPassword2Auth completed successfully"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {p1, p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Lcom/android/server/trust/TrustManagerService$3;

    const-string/jumbo v1, "trust"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

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
    .locals 3

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
    .locals 3

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
    .locals 2

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
    .locals 3

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
    .locals 25

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-boolean v2, v1, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_0

    goto/16 :goto_24

    :cond_0
    const-string/jumbo v2, "TrustManagerService"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-gez v0, :cond_1

    const-string/jumbo v4, "refreshAgentList(userId="

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-static {v0, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-ne v4, v3, :cond_2

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iget-object v8, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_3

    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v0, :cond_3

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v12, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v12

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v14, 0x1

    goto :goto_3

    :cond_8
    const/4 v14, 0x0

    :goto_3
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v0}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v0, 0x1

    move-object/from16 v9, v16

    check-cast v9, Landroid/content/pm/ResolveInfo;

    invoke-static {v9}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move/from16 v0, v17

    :goto_5
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    if-eqz v14, :cond_c

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v13, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    move-object v13, v3

    move/from16 v0, v17

    move-object/from16 v3, v18

    goto :goto_4

    :cond_c
    move-object/from16 v18, v3

    :cond_d
    new-instance v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v13, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    iput v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v9, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, "android.service.trust.trustagent"

    move-object/from16 v19, v6

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v8

    if-eqz v6, :cond_f

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_e

    goto :goto_6

    :cond_e
    :try_start_0
    invoke-virtual {v6, v5, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v6, :cond_10

    :try_start_1
    const-string v8, "Can\'t find %s meta-data"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v8, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f
    :goto_6
    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_1f

    :catchall_0
    move-exception v0

    move-object v13, v6

    goto/16 :goto_19

    :catch_0
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_8
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_9
    const/16 v24, 0x0

    goto/16 :goto_1a

    :catch_1
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_a
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_b
    const/16 v24, 0x0

    goto/16 :goto_1c

    :catch_2
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    :goto_c
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_d
    const/16 v24, 0x0

    goto/16 :goto_1d

    :cond_10
    :try_start_2
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v21, v5

    :goto_e
    :try_start_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v22, v6

    const/4 v6, 0x2

    move/from16 v23, v10

    const/4 v10, 0x1

    if-eq v5, v10, :cond_11

    if-eq v5, v6, :cond_11

    move-object/from16 v6, v22

    move/from16 v10, v23

    goto :goto_e

    :cond_11
    :try_start_4
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "trust-agent"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v5, :cond_12

    :try_start_5
    const-string/jumbo v0, "Meta-data does not start with trust-agent tag"

    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_f
    move-object/from16 v13, v22

    goto/16 :goto_19

    :catch_3
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_c

    :cond_12
    :try_start_6
    sget-object v5, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string/jumbo v6, "http://schemas.android.com/apk/prv/res/android"

    const-string/jumbo v10, "unlockProfile"
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v24, v5

    const/4 v5, 0x0

    :try_start_8
    invoke-interface {v8, v6, v10, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    move v8, v6

    move-object/from16 v6, v24

    const/4 v0, 0x0

    goto/16 :goto_1e

    :catch_6
    move-exception v0

    move v8, v6

    :goto_10
    move-object/from16 v6, v22

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    move v8, v6

    :goto_11
    move-object/from16 v6, v22

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    move v8, v6

    :goto_12
    move-object/from16 v6, v22

    goto/16 :goto_1d

    :catch_9
    move-exception v0

    :goto_13
    move v8, v5

    goto :goto_10

    :catch_a
    move-exception v0

    :goto_14
    move v8, v5

    goto :goto_11

    :catch_b
    move-exception v0

    :goto_15
    move v8, v5

    goto :goto_12

    :catch_c
    move-exception v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    goto :goto_13

    :catch_d
    move-exception v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    goto :goto_14

    :catch_e
    move-exception v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    goto :goto_15

    :catch_f
    move-exception v0

    const/4 v5, 0x0

    move v8, v5

    move-object/from16 v6, v22

    goto/16 :goto_9

    :catch_10
    move-exception v0

    const/4 v5, 0x0

    move v8, v5

    move-object/from16 v6, v22

    goto/16 :goto_b

    :catch_11
    move-exception v0

    const/4 v5, 0x0

    move v8, v5

    move-object/from16 v6, v22

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v22, v6

    goto :goto_f

    :catch_12
    move-exception v0

    :goto_16
    move-object/from16 v22, v6

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_9

    :catch_13
    move-exception v0

    :goto_17
    move-object/from16 v22, v6

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_b

    :catch_14
    move-exception v0

    :goto_18
    move-object/from16 v22, v6

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_d

    :catch_15
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_16

    :catch_16
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_17

    :catch_17
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_18

    :catchall_3
    move-exception v0

    const/4 v13, 0x0

    :goto_19
    if-eqz v13, :cond_13

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_13
    throw v0

    :catch_18
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    const/4 v6, 0x0

    goto/16 :goto_9

    :goto_1a
    if-eqz v6, :cond_14

    :goto_1b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    move-object/from16 v6, v24

    goto :goto_1e

    :catch_19
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    const/4 v6, 0x0

    goto/16 :goto_b

    :goto_1c
    if-eqz v6, :cond_14

    goto :goto_1b

    :catch_1a
    move-exception v0

    move-object/from16 v21, v5

    move/from16 v23, v10

    const/4 v5, 0x0

    move v8, v5

    const/4 v6, 0x0

    goto/16 :goto_d

    :goto_1d
    if-eqz v6, :cond_14

    goto :goto_1b

    :goto_1e
    if-eqz v0, :cond_15

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Error parsing : %s"

    invoke-static {v2, v0, v8, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_15
    if-nez v6, :cond_16

    goto/16 :goto_7

    :cond_16
    const/16 v0, 0x2f

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "/"

    invoke-static {v0, v10, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_17
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    :goto_1f
    iput-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_20

    :cond_18
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

    :goto_20
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    if-eqz v0, :cond_19

    iget-object v5, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v5, :cond_19

    iget-boolean v0, v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v0, :cond_19

    const/4 v10, 0x1

    goto :goto_21

    :cond_19
    const/4 v10, 0x0

    :goto_21
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v5, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1b

    if-nez v10, :cond_1b

    :cond_1a
    :goto_22
    move/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v5, v21

    move/from16 v10, v23

    goto/16 :goto_5

    :cond_1b
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v5, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_1c

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1a

    if-nez v10, :cond_1d

    goto :goto_22

    :cond_1c
    const/4 v5, 0x1

    :cond_1d
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v0, :cond_1e

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

    :cond_1e
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_1f
    invoke-virtual {v7, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_20
    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_21
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_23
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v10, v2, :cond_25

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v3, -0x1

    if-eq v4, v3, :cond_22

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v3, :cond_24

    :cond_22
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_23

    move v0, v5

    :cond_23
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_25
    if-eqz v0, :cond_27

    const/4 v3, -0x1

    if-ne v4, v3, :cond_26

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_24

    :cond_26
    invoke-virtual {v1, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_27
    :goto_24
    return-void
.end method

.method public final refreshDeviceLockedForUser(I)V
    .locals 1

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    return-void
.end method

.method public final refreshDeviceLockedForUser(II)V
    .locals 11

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

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

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz v3, :cond_d

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_d

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v4, :cond_2

    goto/16 :goto_7

    :cond_2
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v5, :cond_d

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isProfileWithUnifiedChallenge(I)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v4, v1}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/trust/TrustManagerService;->getUserTrustStateInner(I)Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v3

    sget-object v6, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    const/4 v7, 0x1

    if-ne v3, v6, :cond_4

    move v3, v7

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iget v6, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v6, v4, :cond_6

    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v6

    :try_start_0
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    const-string/jumbo v9, "TrustManagerService"

    const-string/jumbo v10, "Unable to check keyguard lock state"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    :goto_3
    if-ne p2, v4, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move v9, v1

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v1

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v6, :cond_8

    const-class v6, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerInternal;

    iput-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_8
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v6

    :goto_4
    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    xor-int/2addr v6, v7

    move v8, v1

    move v9, v8

    goto :goto_5

    :cond_9
    move v8, v1

    move v9, v8

    move v6, v7

    :goto_5
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    if-nez v3, :cond_a

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    move v7, v1

    :goto_6
    if-eqz v7, :cond_b

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v4, v7}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/PersonaManagerInternal;->onDeviceLockedChanged(I)V

    goto :goto_7

    :cond_c
    const-string/jumbo v3, "TrustManagerService"

    const-string/jumbo v4, "onDeviceLockedChanged() - Service is not yet ready..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public final resolveProfileParent(I)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDeviceLockedForUser(IZ)V
    .locals 6

    const-string/jumbo v0, "User "

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v2, :cond_1

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

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "TrustManagerService"

    const-string/jumbo v1, "setDeviceLockedForUser - locked state is not changed though"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleDualDARDeviceLockedChangedForUser(IZ)V

    :cond_2
    if-nez v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    if-eqz v0, :cond_8

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleDualDARDeviceLockedChangedForUser(IZ)V

    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_5

    if-eqz p2, :cond_4

    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iput-boolean v3, v1, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    :try_start_1
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceLocked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v1, v1, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentService;->onDeviceUnlocked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyDeviceLockedListenersForUser(IZ)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    array-length v0, p1

    :goto_4
    if-ge v3, v0, :cond_8

    aget v1, p1, v3

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    return-void

    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final updateDualDARStateAndUnlockIfNeeded(I)V
    .locals 7

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

    if-eqz v1, :cond_6

    const-class v1, Lcom/android/server/SystemServiceManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemServiceManager;

    iget v1, v1, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_0

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "Update dualdar state early for DO"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

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

    if-eqz v5, :cond_4

    const-string v0, "DualDAR on DO is enabled"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerLayerUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncrypted(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne p0, v0, :cond_3

    const-string p0, "Inner layer for user "

    const-string v0, " authenticated"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p0, "Failed in inner layer authentication for user "

    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {v3, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v3, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-nez p1, :cond_6

    const-string/jumbo p1, "Trying to unlock DualDAR user "

    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne p1, v3, :cond_5

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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

    goto :goto_0

    :cond_5
    const-string p0, "Default Authentication Failure by DualDAR client"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final updateTrust(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public final updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v2

    const-string/jumbo v3, "TrustManagerService"

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ge v4, v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    invoke-interface {v0, v2, v5}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "Exception while notifying TrustListener."

    invoke-static {v3, v6, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :goto_1
    add-int/2addr v4, v10

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    :try_start_1
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v9

    goto :goto_4

    :cond_3
    move v0, v9

    :goto_3
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, v5, :cond_4

    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_4
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move v2, v9

    goto :goto_6

    :cond_6
    move v2, v9

    :goto_5
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v4, v5, :cond_7

    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v4, :cond_7

    iget-boolean v3, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez v3, :cond_7

    move v2, v10

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :goto_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    :try_start_3
    invoke-interface {v3}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    xor-int/2addr v3, v10

    goto :goto_7

    :catch_2
    move v3, v9

    :goto_7
    iget-object v4, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_4
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v6, v7, :cond_8

    move v11, v10

    goto :goto_8

    :cond_8
    move v11, v9

    :goto_8
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v6, v12, :cond_9

    move v13, v10

    goto :goto_9

    :cond_9
    move v13, v9

    :goto_9
    if-eqz v13, :cond_a

    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_a

    move v6, v10

    goto :goto_a

    :cond_a
    move v6, v9

    :goto_a
    if-nez v3, :cond_c

    if-nez p3, :cond_c

    if-nez v6, :cond_c

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v14, "android.hardware.type.automotive"

    invoke-virtual {v6, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_b

    :cond_b
    move v6, v9

    goto :goto_c

    :cond_c
    :goto_b
    move v6, v10

    :goto_c
    iget v14, v1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v5, v14, :cond_d

    move v14, v10

    goto :goto_d

    :cond_d
    move v14, v9

    :goto_d
    if-eqz v0, :cond_e

    if-eqz v11, :cond_e

    monitor-exit v4

    goto/16 :goto_19

    :catchall_1
    move-exception v0

    goto/16 :goto_1a

    :cond_e
    if-eqz v0, :cond_f

    if-eqz v6, :cond_f

    if-eqz v14, :cond_f

    move-object v12, v7

    goto :goto_e

    :cond_f
    if-eqz v2, :cond_11

    if-nez v11, :cond_10

    if-eqz v13, :cond_11

    :cond_10
    if-eqz v14, :cond_11

    goto :goto_e

    :cond_11
    sget-object v12, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    :goto_e
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mUserTrustState:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v3

    if-ne v12, v7, :cond_12

    move v3, v10

    goto :goto_f

    :cond_12
    move v3, v9

    :goto_f
    if-nez v0, :cond_13

    if-eqz v3, :cond_13

    move v4, v10

    goto :goto_10

    :cond_13
    move v4, v9

    :goto_10
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    move-result v2

    if-ne v0, v2, :cond_14

    goto :goto_13

    :cond_14
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v6, v9

    :goto_11
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_15

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    const-string/jumbo v7, "TrustManagerService"

    :try_start_5
    invoke-interface {v0, v2, v5}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    const-string v14, "Exception while notifying TrustListener."

    invoke-static {v7, v14, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :catch_4
    const-string/jumbo v0, "TrustListener dead while trying to notify Active Unlock running state"

    invoke-static {v7, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_15
    :goto_13
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    move-object v7, v0

    goto :goto_15

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v9

    :goto_14
    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v2, v6, :cond_16

    iget-object v6, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v7, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v7, v5, :cond_18

    iget-object v7, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v7}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v6, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    iget-boolean v7, v6, Lcom/android/server/trust/TrustAgentWrapper;->mDisplayTrustGrantedMessage:Z

    if-eqz v7, :cond_18

    iget-object v6, v6, Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_18

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :goto_15
    const-string/jumbo v14, "TrustManagerService"

    if-nez v3, :cond_19

    move v6, v9

    goto :goto_16

    :cond_19
    move/from16 v6, p2

    :goto_16
    move v15, v9

    :goto_17
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_1a

    :try_start_6
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface/range {v2 .. v7}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZZIILjava/util/List;)V
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_18

    :catch_5
    move-exception v0

    const-string v2, "Exception while notifying TrustListener."

    invoke-static {v14, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    :catch_6
    const-string/jumbo v0, "Removing dead TrustListener."

    invoke-static {v14, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v15, v15, -0x1

    :goto_18
    add-int/2addr v15, v10

    move/from16 v5, p1

    goto :goto_17

    :cond_1a
    if-eq v3, v11, :cond_1c

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    if-eqz v3, :cond_1c

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1b

    move v9, v10

    :cond_1b
    iget-object v0, v1, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1c
    if-eqz v4, :cond_1d

    if-eqz v8, :cond_1d

    new-instance v0, Landroid/service/trust/GrantTrustResult;

    invoke-direct {v0, v10}, Landroid/service/trust/GrantTrustResult;-><init>(I)V

    invoke-virtual {v8, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :cond_1d
    if-nez v11, :cond_1e

    if-eqz v13, :cond_1f

    :cond_1e
    sget-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    if-ne v12, v0, :cond_1f

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/trust/TrustManagerService;->cancelBothTrustableAlarms(I)V

    :cond_1f
    :goto_19
    return-void

    :goto_1a
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public final updateTrustAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public waitForIdle()V
    .locals 3

    new-instance v0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    const-wide/16 v1, 0x0

    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$4;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method
