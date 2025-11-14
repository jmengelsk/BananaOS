.class public final Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    :try_start_0
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p1, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    :cond_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean v1, p2, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v1, :cond_3

    iget-object p2, p2, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz p2, :cond_3

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v3, v2, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    invoke-virtual {v2, v3}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez p2, :cond_5

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    :cond_5
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return-void

    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "RemotePrintService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error setting client for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    goto :goto_3

    :catch_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    :goto_3
    return-void

    :cond_6
    :goto_4
    iget-object p0, p1, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return-void
.end method
