.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/List;

    iget-object p0, p1, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    if-ge v0, p0, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/print/IPrinterDiscoveryObserver;

    :try_start_0
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "UserState"

    const-string v3, "Error sending removed printers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p0, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object p0, p1, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    check-cast p2, Landroid/print/PrinterId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_4
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState$1;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void

    :pswitch_5
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState$1;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void

    :pswitch_6
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_4
    if-ge p1, p0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    return-void

    :pswitch_7
    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Ljava/util/List;

    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_4

    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_5
    if-ge p1, p0, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/print/UserState$3;

    :try_start_2
    iget-object p2, p2, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    check-cast p2, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {p2}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    const-string/jumbo v1, "UserState"

    const-string v2, "Error notifying for print service recommendations change"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_5
    :goto_7
    return-void

    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :pswitch_8
    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
