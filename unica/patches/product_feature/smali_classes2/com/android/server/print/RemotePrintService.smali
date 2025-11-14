.class public final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBinding:Z

.field public final mCallbacks:Lcom/android/server/print/UserState;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public mDiscoveryPriorityList:Ljava/util/List;

.field public mHasActivePrintJobs:Z

.field public mHasPrinterDiscoverySession:Z

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingCommands:Ljava/util/List;

.field public mPrintService:Landroid/printservice/IPrintService;

.field public final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field public final mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

.field public mServiceDied:Z

.field public final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field public mTrackedPrinterList:Ljava/util/List;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/UserState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/UserState;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    new-instance p1, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 7

    const-string/jumbo v0, "component_name"

    const-wide v1, 0x10b00000001L

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    const-string/jumbo v0, "is_destroyed"

    const-wide v1, 0x10800000002L

    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "is_bound"

    const-wide v1, 0x10800000003L

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "has_discovery_session"

    const-wide v1, 0x10800000004L

    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "has_active_print_jobs"

    const-wide v1, 0x10800000005L

    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v0, "is_discovering_printers"

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    const-string/jumbo v3, "tracked_printers"

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    const-wide v5, 0x20b00000007L

    invoke-static {p1, v3, v5, v6, v4}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final ensureBound()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const v4, 0x4401001

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureUnbound()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v2, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v2}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleBinderDied()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/UserState;

    iget-object v1, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    iget-object v2, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v4, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    :goto_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    if-nez v0, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    iget-object v0, v0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    invoke-virtual {v0, p0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleCreatePrinterDiscoverySession()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "RemotePrintService"

    const-string v1, "Error creating printer discovery session."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleDestroyPrinterDiscoverySession()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemotePrintService"

    const-string v2, "Error destroying printer dicovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    :cond_2
    return-void
.end method

.method public final handleOnAllPrintJobsHandled()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    :cond_2
    return-void
.end method

.method public final handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemotePrintService"

    const-string v0, "Error announcing queued pring job."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemotePrintService"

    const-string v0, "Error canceling a pring job."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error requesting icon for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "RemotePrintService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleStartPrinterDiscovery(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemotePrintService"

    const-string v0, "Error starting printer dicovery."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemotePrintService"

    const-string v0, "Error requesting start printer tracking."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleStopPrinterDiscovery()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "RemotePrintService"

    const-string v1, "Error stopping printer discovery."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$9;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemotePrintService"

    const-string v0, "Error requesting stop printer tracking."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleValidatePrinters(Ljava/util/List;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemotePrintService"

    const-string v0, "Error requesting printers validation."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final isBound()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final stopTrackingAllPrinters()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
