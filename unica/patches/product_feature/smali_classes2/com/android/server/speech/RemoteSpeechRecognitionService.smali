.class final Lcom/android/server/speech/RemoteSpeechRecognitionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/speech/IRecognitionService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mCallingUid:I

.field private final mClientListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/speech/IRecognitionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnected:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$XM077MW2pg9W0-weK1UAA4Npj6A(Lcom/android/server/speech/RemoteSpeechRecognitionService;Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    return-void
.end method

.method public constructor <init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V
    .registers 14

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.RecognitionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p5, :cond_13

    const p5, 0x4001001

    :goto_11
    move v5, p5

    goto :goto_15

    :cond_13
    const/4 p5, 0x1

    goto :goto_11

    :goto_15
    new-instance v7, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v2, p0

    move v6, p1

    move-object v3, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-boolean p0, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    iput p2, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mCallingUid:I

    iput-object p3, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static tryRespondWithError(Landroid/speech/IRecognitionListener;I)V
    .registers 3

    if-eqz p0, :cond_1b

    :try_start_2
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to respond with an error %d to the client"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "RemoteSpeechRecognitionService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    return-void
.end method


# virtual methods
.method public final associateClientWithActiveListener(Landroid/os/IBinder;Landroid/speech/IRecognitionListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_1e

    :cond_1c
    :goto_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1a

    throw p0
.end method

.method public final cancel(Landroid/speech/IRecognitionListener;Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_9

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    if-eqz v1, :cond_2a

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    iget-object v1, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Z)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_42

    :cond_2a
    :goto_2a
    if-eqz p2, :cond_40

    invoke-virtual {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->removeClient(Landroid/speech/IRecognitionListener;)V

    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    new-instance p1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    :cond_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_28

    throw p0
.end method

.method public final checkRecognitionSupport(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_17

    const/16 p0, 0xb

    :try_start_6
    invoke-interface {p3, p0}, Landroid/speech/IRecognitionSupportCallback;->onError(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    const-string/jumbo p1, "RemoteSpeechRecognitionService"

    const-string p2, "Failed to report the connection broke to the caller."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_17
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IRecognitionSupportCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final hasActiveSessions()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 8

    check-cast p1, Landroid/speech/IRecognitionService;

    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    iget-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-nez p2, :cond_44

    :try_start_9
    iget-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string/jumbo p0, "RemoteSpeechRecognitionService"

    const-string p2, "Connection to speech recognition service lost, but no #startListening has been invoked yet."

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_46

    :cond_1d
    iget-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    array-length v1, p2

    :goto_2d
    if-ge v0, v1, :cond_44

    aget-object v2, p2, v0

    iget-object v3, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iget-object v3, v3, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    const/16 v4, 0xb

    invoke-static {v3, v4}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    iget-object v2, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iget-object v2, v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->removeClient(Landroid/speech/IRecognitionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_44
    monitor-exit p1

    return-void

    :goto_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_1b

    throw p0
.end method

.method public final removeClient(Landroid/speech/IRecognitionListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    if-eqz v1, :cond_17

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    :cond_17
    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda9;-><init>(Landroid/speech/IRecognitionListener;)V

    invoke-interface {p0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final shutdown(Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClientListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_9

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/speech/IRecognitionListener;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    goto :goto_9

    :catchall_22
    move-exception p0

    goto :goto_26

    :cond_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public final startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 10

    if-nez p2, :cond_b

    const-string/jumbo p0, "RemoteSpeechRecognitionService"

    const-string p1, "#startListening called with no preceding #setListening - ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_15

    const/16 p0, 0xb

    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    const/4 v2, 0x1

    if-nez v1, :cond_69

    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_42

    const/16 p0, 0x8

    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    const-string/jumbo p0, "RemoteSpeechRecognitionService"

    const-string p1, "#startListening received when the recognizer\'s capacity is full - ignoring this call."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    goto :goto_89

    :cond_42
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v3, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;Ljava/lang/Object;I)V

    new-instance v4, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p2, v5}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;Ljava/lang/Object;I)V

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;-><init>(Landroid/speech/IRecognitionListener;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;)V

    iput-object v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iget-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_69
    iget-boolean v3, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    if-eqz v3, :cond_7b

    const-string/jumbo p0, "RemoteSpeechRecognitionService"

    const-string p1, "#startListening called while listening is in progress for this caller."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    invoke-static {p2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    monitor-exit v0

    return-void

    :cond_7b
    iput-boolean v2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    :goto_7d
    iget-object p2, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    monitor-exit v0

    return-void

    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_18 .. :try_end_8a} :catchall_40

    throw p0
.end method

.method public final stopListening(Landroid/speech/IRecognitionListener;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_a

    const/16 p0, 0xb

    invoke-static {p1, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mClients:Ljava/util/Map;

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;

    const/4 v2, 0x5

    if-nez v1, :cond_2b

    const-string/jumbo p0, "RemoteSpeechRecognitionService"

    const-string v1, "#stopListening called with no preceding #startListening - ignoring."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    goto :goto_4c

    :cond_2b
    iget-boolean v3, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    if-nez v3, :cond_3c

    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    const-string/jumbo p0, "RemoteSpeechRecognitionService"

    const-string p1, "#stopListening called while listening isn\'t in progress - ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3c
    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    iget-object p1, v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_29

    throw p0
.end method

.method public final triggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_17

    const/16 p0, 0xb

    :try_start_6
    invoke-interface {p3, p0}, Landroid/speech/IModelDownloadListener;->onError(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    const-string/jumbo p1, "RemoteSpeechRecognitionService"

    const-string p2, "#downloadModel failed due to connection."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_17
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
