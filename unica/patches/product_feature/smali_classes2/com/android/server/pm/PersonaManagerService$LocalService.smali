.class public final Lcom/android/server/pm/PersonaManagerService$LocalService;
.super Lcom/samsung/android/knox/PersonaManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Lcom/samsung/android/knox/PersonaManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final doKeyguardTimeout()V
    .registers 4

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "doKeyguardTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getECName(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isKnoxId(I)Z
    .registers 2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public final onDeviceLockedChanged(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo v1, "onDeviceLockedChanged"

    sget-boolean v2, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-nez v0, :cond_17

    const-string/jumbo p0, "PersonaManagerService"

    const-string p1, "Knox not supported - onDeviceLockedChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_8f

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eq v0, v1, :cond_8e

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "container lock state changed prevLock["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] lockState["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    goto :goto_7d

    :cond_5f
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {v1, p1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    goto :goto_7d

    :cond_74
    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "container is unlocked when user is not running. ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_82
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_82 .. :try_end_8d} :catchall_8b

    throw p0

    :cond_8e
    return-void

    :catchall_8f
    move-exception p0

    :try_start_90
    monitor-exit v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p0
.end method

.method public final shouldConfirmCredentials(I)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    goto :goto_79

    :cond_14
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v1

    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dedicated_biometrics"

    invoke-static {v4, v5, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_30

    move v4, v5

    goto :goto_31

    :cond_30
    move v4, v2

    :goto_31
    const-string/jumbo v6, "PersonaManagerService"

    if-nez v1, :cond_a7

    if-nez v3, :cond_a7

    if-eqz v4, :cond_3b

    goto :goto_a7

    :cond_3b
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceLocked : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DeviceSecure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_79

    if-eqz p0, :cond_79

    goto :goto_93

    :cond_79
    :goto_79
    return v2

    :cond_7a
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v1, :cond_8a

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    :cond_8a
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p1

    if-eqz p1, :cond_94

    :goto_93
    return v5

    :cond_94
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "enable_one_lock_ongoing"

    invoke-static {p0, p1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_a6

    return v5

    :cond_a6
    return v2

    :cond_a7
    :goto_a7
    const-string/jumbo p0, "needSetupCredential : "

    const-string p1, ", isPwdChangeRequested : "

    const-string v0, ", isBiometricsEnabledAfterFota : "

    invoke-static {p0, v1, p1, v3, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v6, p0, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return v5
.end method
