.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;Landroid/hardware/display/VirtualDisplay;Landroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iput-object p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iput-object p3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 4

    sget-boolean v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->DEBUG:Z

    const-string/jumbo v0, "[RAMS]RemoteAppModeService"

    const-string/jumbo v1, "VirtualDisplayInfo - binderDied"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v0, v0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v1, v1, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/RemoteAppModeService;->checkRemoteAppModeEnabled()V

    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw p0
.end method
