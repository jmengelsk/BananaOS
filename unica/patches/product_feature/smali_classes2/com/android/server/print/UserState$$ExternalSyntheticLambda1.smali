.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_144

    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/List;

    iget-object p0, p1, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p1, Lcom/android/server/print/UserState$1;->mDiscoveryObservers:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    if-ge v0, p0, :cond_2f

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/print/IPrinterDiscoveryObserver;

    :try_start_1a
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_2c

    :catch_23
    move-exception v1

    const-string/jumbo v2, "UserState"

    const-string v3, "Error sending removed printers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2f
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :pswitch_33  #0x8
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_3f
    if-ge p1, p0, :cond_5e

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

    goto :goto_3f

    :cond_5e
    return-void

    :pswitch_5f  #0x7
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_6b
    if-ge v0, p0, :cond_8a

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

    goto :goto_6b

    :cond_8a
    iget-object p0, p1, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    return-void

    :pswitch_90  #0x6
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

    :pswitch_a9  #0x5
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

    :pswitch_c2  #0x4
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState$1;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void

    :pswitch_ca  #0x3
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState$1;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void

    :pswitch_d2  #0x2
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_de
    if-ge p1, p0, :cond_fd

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

    goto :goto_de

    :cond_fd
    return-void

    :pswitch_fe  #0x1
    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Ljava/util/List;

    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_105
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_10d

    monitor-exit p0

    goto :goto_138

    :catchall_10b
    move-exception p1

    goto :goto_139

    :cond_10d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p1, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    monitor-exit p0
    :try_end_117
    .catchall {:try_start_105 .. :try_end_117} :catchall_10b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_11c
    if-ge p1, p0, :cond_138

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/print/UserState$3;

    :try_start_124
    iget-object p2, p2, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    check-cast p2, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {p2}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_12b} :catch_12c

    goto :goto_135

    :catch_12c
    move-exception p2

    const-string/jumbo v1, "UserState"

    const-string v2, "Error notifying for print service recommendations change"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_135
    add-int/lit8 p1, p1, 0x1

    goto :goto_11c

    :cond_138
    :goto_138
    return-void

    :goto_139
    :try_start_139
    monitor-exit p0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_10b

    throw p1

    :pswitch_13b  #0x0
    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void

    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_13b  #00000000
        :pswitch_fe  #00000001
        :pswitch_d2  #00000002
        :pswitch_ca  #00000003
        :pswitch_c2  #00000004
        :pswitch_a9  #00000005
        :pswitch_90  #00000006
        :pswitch_5f  #00000007
        :pswitch_33  #00000008
    .end packed-switch
.end method
