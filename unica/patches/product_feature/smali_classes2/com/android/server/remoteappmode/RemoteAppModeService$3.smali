.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iput p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v2, v2, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    iget v5, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    iget v5, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;

    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService$VirtualDisplayInfo;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    const-string/jumbo v4, "RemoteAppModeService"

    invoke-interface {v2, p0, v4}, Landroid/view/IWindowManager;->moveDisplayToTop(ILjava/lang/String;)V

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
