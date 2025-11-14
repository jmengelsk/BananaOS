.class public final Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    if-nez v0, :cond_bb

    iget-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-nez v0, :cond_c

    goto/16 :goto_bb

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    :try_start_15
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_b5

    :try_start_1a
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v1, p1, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_9a

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz p2, :cond_30

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz p2, :cond_30

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    :cond_30
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz p2, :cond_3d

    iget-object p2, p1, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz p2, :cond_3d

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    :cond_3d
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_42
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean v1, p2, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v1, :cond_69

    iget-object p2, p2, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz p2, :cond_69

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v1, v0

    :goto_53
    if-ge v1, p2, :cond_69

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object v3, v2, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    invoke-virtual {v2, v3}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :catchall_67
    move-exception p0

    goto :goto_98

    :cond_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_42 .. :try_end_6a} :catchall_67

    :goto_6a
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_6a

    :cond_86
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez p2, :cond_93

    iget-boolean p2, p1, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez p2, :cond_93

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    :cond_93
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return-void

    :goto_98
    :try_start_98
    monitor-exit p1
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_67

    throw p0

    :catch_9a
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

    goto :goto_ba

    :catch_b5
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    :goto_ba
    return-void

    :cond_bb
    :goto_bb
    iget-object p0, p1, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return-void
.end method
