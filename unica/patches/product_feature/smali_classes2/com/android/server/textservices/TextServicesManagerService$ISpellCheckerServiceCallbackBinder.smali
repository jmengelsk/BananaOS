.class public final Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;
.super Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBindGroup:Ljava/lang/ref/WeakReference;

.field public final mCallbackLock:Ljava/lang/Object;

.field public mRequest:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw p0
.end method


# virtual methods
.method public final onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_c

    goto :goto_48

    :cond_c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_46

    if-eqz v1, :cond_45

    if-eqz v2, :cond_45

    iget-object p0, v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_29
    iget-boolean v0, v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_31

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    goto :goto_43

    :cond_31
    iget-object v0, v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_2f

    if-eqz v0, :cond_3e

    :try_start_39
    iget-object v0, v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v0, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_2f

    :catch_3e
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    monitor-exit p0

    goto :goto_45

    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_2f

    throw p1

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception p0

    goto :goto_4a

    :cond_48
    :goto_48
    :try_start_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_46

    throw p0
.end method
