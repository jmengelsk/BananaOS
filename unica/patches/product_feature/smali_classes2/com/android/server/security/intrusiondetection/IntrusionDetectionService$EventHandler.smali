.class public final Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string/jumbo v2, "RemoteException"

    const-string v3, "IntrusionDetectionService"

    if-eqz v0, :cond_99

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown message: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_24
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mIntrusionDetectionEventTransportConnection:Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    :try_start_34
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->mService:Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;

    invoke-interface {p0, p1, v0}, Landroid/security/intrusiondetection/IIntrusionDetectionEventTransport;->addData(Ljava/util/List;Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_41

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    goto/16 :goto_cc

    :catch_41
    move-exception p0

    const-string p1, "IntrusionDetectionEventTransportConnection"

    const-string/jumbo v0, "Remote Exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cc

    :cond_4c
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mdisable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception p0

    invoke-static {v3, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cc

    :cond_5c
    :try_start_5c
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$menable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception p0

    invoke-static {v3, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_6b
    :try_start_6b
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    :goto_71
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_cc

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-interface {v0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v0, v4, :cond_91

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_90} :catch_94

    return-void

    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :catch_94
    move-exception p0

    invoke-static {v3, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cc

    :cond_99
    :try_start_99
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    :goto_9f
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_bd

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-interface {v0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v0, v4, :cond_ba

    goto :goto_cc

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_bd
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mState:I

    invoke-interface {p1, p0}, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;->onStateChange(I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_c7} :catch_c8

    return-void

    :catch_c8
    move-exception p0

    invoke-static {v3, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cc
    :goto_cc
    return-void
.end method
