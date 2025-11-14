.class public final Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final token:Landroid/os/IBinder;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    iput p6, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "CoverManager_StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "binderDied : binder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v1, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onCoverAttachStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const-string v1, "CoverManager_StateNotifier"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onCoverAttachStateChanged : token is null"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed onCoverAttachStateChanged callback"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const-string v1, "CoverManager_StateNotifier"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onCoverSwitchStateChanged : token is null"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed onCoverStateChanged coverCallback"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final onCoverSwitchStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const-string v1, "CoverManager_StateNotifier"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onCoverSwitchStateChanged : token is null"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
