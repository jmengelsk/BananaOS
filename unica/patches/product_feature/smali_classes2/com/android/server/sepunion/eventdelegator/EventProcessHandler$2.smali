.class public final Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo p2, "monitor_package_state;"

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageAdded(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz p2, :cond_51

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const-string/jumbo v1, "package_added"

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_53

    :cond_51
    :goto_51
    monitor-exit v0

    return-void

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_4f

    throw p0
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "monitor_package_state;"

    sget-object v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPackageModified(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v0, :cond_51

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const-string/jumbo v2, "package_modified"

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_53

    :cond_51
    :goto_51
    monitor-exit v1

    return-void

    :goto_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_4f

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo p2, "monitor_package_state;"

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageRemoved() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz p2, :cond_51

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const-string/jumbo v1, "package_removed"

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_53

    :cond_51
    :goto_51
    monitor-exit v0

    return-void

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_1e .. :try_end_54} :catchall_4f

    throw p0
.end method
