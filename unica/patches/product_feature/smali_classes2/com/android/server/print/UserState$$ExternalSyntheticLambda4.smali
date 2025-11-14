.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_f2

    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Lcom/android/server/print/RemotePrintService;

    check-cast p3, Landroid/print/PrinterId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_23  #0x4
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Landroid/print/IPrinterDiscoveryObserver;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2c
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_34} :catch_35

    goto :goto_3e

    :catch_35
    move-exception p0

    const-string/jumbo p1, "UserState"

    const-string p2, "Error sending added printers"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    return-void

    :pswitch_3f  #0x3
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Ljava/util/ArrayList;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_4d
    if-ge p1, p0, :cond_6c

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v2, v0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_6c
    return-void

    :pswitch_6d  #0x2
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Lcom/android/server/print/RemotePrintService;

    check-cast p3, Landroid/print/PrinterId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_8b  #0x1
    check-cast p1, Lcom/android/server/print/UserState$1;

    check-cast p2, Lcom/android/server/print/RemotePrintService;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_a9  #0x0
    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Landroid/print/PrintJobId;

    check-cast p3, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p3}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    iget-object p3, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_b9
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_c1

    monitor-exit p3

    goto :goto_ef

    :catchall_bf
    move-exception p0

    goto :goto_f0

    :cond_c1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p3
    :try_end_c9
    .catchall {:try_start_b9 .. :try_end_c9} :catchall_bf

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_ce
    if-ge p3, p1, :cond_ef

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$2;

    iget v2, v1, Lcom/android/server/print/UserState$2;->appId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_dd

    if-ne v2, p0, :cond_ec

    :cond_dd
    :try_start_dd
    iget-object v1, v1, Lcom/android/server/print/UserState$2;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v1, p2}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_e2} :catch_e3

    goto :goto_ec

    :catch_e3
    move-exception v1

    const-string/jumbo v2, "UserState"

    const-string v3, "Error notifying for print job state change"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ec
    :goto_ec
    add-int/lit8 p3, p3, 0x1

    goto :goto_ce

    :cond_ef
    :goto_ef
    return-void

    :goto_f0
    :try_start_f0
    monitor-exit p3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_bf

    throw p0

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_a9  #00000000
        :pswitch_8b  #00000001
        :pswitch_6d  #00000002
        :pswitch_3f  #00000003
        :pswitch_23  #00000004
    .end packed-switch
.end method
