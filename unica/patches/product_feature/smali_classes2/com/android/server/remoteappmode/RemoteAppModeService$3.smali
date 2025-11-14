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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iput p2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v2, v2, Lcom/android/server/remoteappmode/RemoteAppModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v3, v3, Lcom/android/server/remoteappmode/RemoteAppModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_66
    .catchall {:try_start_4 .. :try_end_16} :catchall_64

    :try_start_16
    iget-object v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object v4, v4, Lcom/android/server/remoteappmode/RemoteAppModeService;->mVirtualDisplayMap:Ljava/util/HashMap;

    iget v5, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

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

    if-nez v4, :cond_51

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_62

    :cond_45
    :goto_45
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v4, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    if-ne v2, v4, :cond_5d

    :cond_51
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$3;->val$displayId:I

    const-string/jumbo v4, "RemoteAppModeService"

    invoke-interface {v2, p0, v4}, Landroid/view/IWindowManager;->moveDisplayToTop(ILjava/lang/String;)V

    :cond_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_16 .. :try_end_5e} :catchall_43

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_62
    :try_start_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_43

    :try_start_63
    throw p0
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_64} :catch_66
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p0

    goto :goto_6e

    :catch_66
    move-exception p0

    :try_start_67
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_64

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
