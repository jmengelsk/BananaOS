.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget p0, p0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_62

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_1c  #0x1
    check-cast p1, Lcom/android/server/print/UserState;

    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw p1

    :pswitch_29  #0x0
    check-cast p1, Lcom/android/server/print/UserState;

    iget-object p0, p1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2e
    iget-object v0, p1, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_36

    monitor-exit p0

    goto :goto_5f

    :catchall_34
    move-exception p1

    goto :goto_60

    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_43
    if-ge p1, p0, :cond_5f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$3;

    :try_start_4b
    iget-object v1, v1, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    check-cast v1, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v1}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_5c

    :catch_53
    move-exception v1

    const-string/jumbo v2, "UserState"

    const-string v3, "Error notifying for print services change"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    :cond_5f
    :goto_5f
    return-void

    :goto_60
    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_34

    throw p1

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_29  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method
