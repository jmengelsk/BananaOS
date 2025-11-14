.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mService:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    if-eqz p0, :cond_1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/RemoteAppModeService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    const-string/jumbo v1, "remoteappmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onStartUser(), userId="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onCleanupUser(), userId="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "onStopUser(), userId="

    const-string v0, ", CurrentUser="

    invoke-static {p1, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[RAMS]RemoteAppModeService"

    invoke-static {p1, p0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    sget-boolean p2, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onSwitchUser(), userId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "[RAMS]RemoteAppModeService"

    invoke-static {v0, p2}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserChanged(I)V

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$Lifecycle;->mService:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUnlockUser(), userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CurrentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[RAMS]RemoteAppModeService"

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mIsBootComplete:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->onUserChanged(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mProximityManager:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "target_package_name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->registerBroadcastReceiver()V

    :cond_2
    return-void
.end method
