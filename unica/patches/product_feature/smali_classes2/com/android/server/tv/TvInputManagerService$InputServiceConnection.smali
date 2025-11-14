.class public final Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_0
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-static {p2}, Landroid/media/tv/ITvInputService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;

    move-result-object p2

    iput-object p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    const/4 p2, 0x0

    iput-boolean p2, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->needInit:Z

    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    iput-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v4, v3}, Landroid/media/tv/ITvInputService;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    const-string/jumbo v5, "error in registerCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    iget-object v5, v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v6, v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v6

    iget v4, v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6, v4}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget-boolean p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v5, v4}, Landroid/media/tv/ITvInputService;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v6, "error in hardwareDeviceRemovedBuffer"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_3
    if-ge v3, v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v5, v4}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_6
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v6, "error in hdmiDeviceRemovedBuffer"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_a
    const-string/jumbo v3, "TvInputManagerService"

    const-string/jumbo v4, "error in notifyHardwareAdded"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v3, v1}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    :catch_4
    move-exception v1

    :try_start_e
    const-string/jumbo v3, "TvInputManagerService"

    const-string/jumbo v4, "error in notifyHdmiDeviceAdded"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_7
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_6
    if-ge v3, v1, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/hdmi/HdmiDeviceInfo;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v5, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v5, v4}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_6

    :catch_5
    move-exception v4

    :try_start_10
    const-string/jumbo v5, "TvInputManagerService"

    const-string/jumbo v6, "error in hdmiDeviceUpdatedBuffer"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_8
    iget-object p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    :catchall_1
    move-exception p0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_2
    move-exception p0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw p0

    :cond_9
    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, p2

    :cond_a
    :goto_8
    if-ge v4, v3, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v7, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    iget v8, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-static {v6, v7, v5, v8}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_9
    if-ge p2, v1, :cond_c

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v5, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    goto :goto_9

    :cond_c
    iget-boolean p1, v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    :cond_d
    monitor-exit v0

    return-void

    :goto_a
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    iput-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mUserId:I

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Mismatched ComponentName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (expected), "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (actual)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
