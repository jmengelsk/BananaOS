.class public final Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mQueuedCommands:Ljava/util/ArrayList;

.field public mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {p2}, Landroid/service/displayhash/IDisplayHashingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/displayhash/IDisplayHashingService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    iget-object p2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p2, :cond_4a

    iget-object v2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayHashController$Command;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    :try_start_1e
    iget-object v3, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    invoke-interface {v2, v3}, Lcom/android/server/wm/DisplayHashController$Command;->run(Landroid/service/displayhash/IDisplayHashingService;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_26
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    goto :goto_47

    :catchall_24
    move-exception p0

    goto :goto_4f

    :catch_26
    move-exception v2

    :try_start_27
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_27 .. :try_end_50} :catchall_24

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p0
.end method
