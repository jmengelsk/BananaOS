.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;
.super Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-direct {p0}, Lcom/samsung/android/remoteappmode/RemoteAppModeManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[RAMS]RemoteAppModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSecuredAppLaunched, taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    :try_start_1
    iget-object v2, v2, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->onSecuredAppLaunched(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSecuredAppRemoved(ILjava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$LocalService;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[RAMS]RemoteAppModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSecureAppRemoved, taskId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mSecureAppNotifier:Lcom/android/server/remoteappmode/SecureAppNotifier;

    iget-object v0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/remoteappmode/SecureAppNotifier;->mSecureAppChangedListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;

    :try_start_1
    iget-object v2, v2, Lcom/android/server/remoteappmode/SecureAppNotifier$SecureAppChangedListenerInfo;->listener:Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;->onSecuredAppRemoved(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
