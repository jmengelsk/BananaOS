.class public final Lcom/android/server/pm/PersonaServiceProxy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContainerServiceLock:Ljava/lang/Object;

.field public mContainerServices:Ljava/util/HashMap;

.field public mContext:Landroid/content/Context;

.field public mIsDoEnabled:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPackageBroadcastReceiver:Lcom/android/server/pm/PersonaServiceProxy$2;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserBroadcastReceiver:Lcom/android/server/pm/PersonaServiceProxy$2;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V
    .locals 9

    const-string/jumbo v0, "package:com.samsung.android.knox.containercore not found user:"

    const-string v1, "Finding container service in user - "

    const-string/jumbo v2, "PersonaManagerService::Proxy"

    invoke-static {p1, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_0

    const-string p0, "Cannot find UMS"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo p0, "scanContainerService() user<"

    const-string v0, "> is not running"

    invoke-static {p1, p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "com.samsung.android.knox.containercore"

    const-string/jumbo v3, "findContainerService("

    const-string v4, " appInfo.uid:"

    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x80

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v5, v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-interface {v5, v1, p1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v6, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "containerService.class"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "containerService.category"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x1482

    if-eq v4, v6, :cond_5

    const-string/jumbo p1, "core app does not have core uid"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " category:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/ContainerServiceInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p1, v1, Lcom/android/server/ContainerServiceInfo;->userid:I

    iput-object v4, v1, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    iput-object v0, v1, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    move-object v8, v1

    goto :goto_2

    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_2
    if-eqz v8, :cond_8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaServiceProxy;->maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final isKnoxProfileExist()Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v1, "PersonaManagerService::Proxy"

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Profile id - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Knox Profile exist on device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo p0, "isKnoxProfileExist status - "

    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public final maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)V
    .locals 5

    const-string v0, "Failed to bind "

    const-string v1, "Container service already bound "

    const-string/jumbo v2, "PersonaManagerService::Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "connectContainerService is called for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsDoEnabled - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    invoke-static {v2, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "PersonaManagerService::Proxy"

    const-string/jumbo p1, "Not starting Container service..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const-string/jumbo v2, "PersonaManagerService::Proxy"

    const-string/jumbo v3, "Starting Container service because either Do/Po exist on device..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ContainerServiceWrapper;

    iget-boolean v3, v3, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-eqz v3, :cond_2

    const-string/jumbo p0, "PersonaManagerService::Proxy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "PersonaManagerService::Proxy"

    const-string/jumbo v3, "Service don\'t exist on cache..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Lcom/android/server/ContainerServiceWrapper;

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/ContainerServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V

    invoke-virtual {v1}, Lcom/android/server/ContainerServiceWrapper;->connect()Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo p0, "PersonaManagerService::Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
