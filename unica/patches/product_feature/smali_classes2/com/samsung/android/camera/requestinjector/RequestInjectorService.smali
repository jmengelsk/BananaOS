.class public final Lcom/samsung/android/camera/requestinjector/RequestInjectorService;
.super Lcom/samsung/android/camera/IRequestInjector$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbackSet:Ljava/util/Set;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mExtraRequestMap:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

.field public final mRequestInjectorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/camera/IRequestInjector$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    new-instance v0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;-><init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V

    iput-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    iput-object p2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final applyRequests([Landroid/os/PersistableBundle;)V
    .registers 14

    const-string v0, "Invalid request, no KEY_I32/KEY_U8"

    const-string v1, "Invalid request, no TAG_NAME"

    const-string v2, "  "

    const-string/jumbo v3, "key.tagName"

    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b9

    sget-object v4, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    if-eqz p1, :cond_ae

    array-length v5, p1

    const/4 v6, 0x1

    if-lt v5, v6, :cond_ae

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "applyRequests requests size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, p1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "RequestInjectorService"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :try_start_46
    array-length v7, p1

    const/4 v8, 0x0

    :goto_48
    if-ge v8, v7, :cond_a3

    aget-object v10, p1, v8

    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9a

    const-string/jumbo v11, "key.i32"

    invoke-virtual {v10, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    if-nez v11, :cond_97

    const-string/jumbo v11, "key.u8"

    invoke-virtual {v10, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    if-eqz v10, :cond_8c

    goto :goto_97

    :cond_8c
    invoke-static {v4, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_95
    move-exception p0

    goto :goto_aa

    :cond_97
    :goto_97
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_9a
    invoke-static {v4, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a3
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    :try_end_a6
    .catchall {:try_start_46 .. :try_end_a6} :catchall_95

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_aa
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_ae
    const-string p0, "Invalid request, null or 0 size"

    invoke-static {v4, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b9
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearRequests()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6d

    :try_start_12
    iget-object v3, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v5

    const-string/jumbo v7, "key.i32"

    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    if-eqz v7, :cond_46

    const-string/jumbo v7, "key.i32"

    new-array v8, v6, [I

    invoke-virtual {v5, v7, v8}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_46

    :catchall_44
    move-exception p0

    goto :goto_6b

    :cond_46
    :goto_46
    const-string/jumbo v7, "key.u8"

    invoke-virtual {v5, v7}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    if-eqz v7, :cond_57

    const-string/jumbo v7, "key.u8"

    new-array v6, v6, [I

    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_57
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_5b
    new-array v3, v6, [Landroid/os/PersistableBundle;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/PersistableBundle;

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_12 .. :try_end_67} :catchall_44

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_6b
    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_44

    :try_start_6c
    throw p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_72
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Requires permission android.permission.CAMERA_SEND_SYSTEM_EVENTS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getICameraService()Landroid/hardware/ICameraService;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-nez v0, :cond_2d

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1e

    const-string/jumbo p0, "RequestInjectorService"

    const-string/jumbo v0, "Native camera service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1e
    const-wide/16 v1, 0x64

    :try_start_20
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_23

    :catch_23
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_7

    :cond_2d
    return-object v0
.end method

.method public final declared-synchronized registerCallback(Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->setRequestInjectorCallback()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final sendAllExtraRequestsToRequestInjector()V
    .registers 4

    const-string/jumbo v0, "RequestInjectorService"

    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v1, "sendAllExtraRequestsToRequestInjector"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/PersistableBundle;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final sendExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    .registers 9

    const-string/jumbo v0, "RequestInjectorService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-static {v1, v2, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendExtraRequestsToRequestInjector updated size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :try_start_24
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_10b

    :try_start_27
    array-length v1, p1

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_a0

    aget-object v3, p1, v2

    const-string/jumbo v4, "RequestInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    const-string/jumbo v4, "key.i32"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_71

    const-string/jumbo v4, "key.i32"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_84

    goto :goto_71

    :catchall_6e
    move-exception p0

    goto/16 :goto_109

    :cond_71
    :goto_71
    const-string/jumbo v4, "key.u8"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_91

    const-string/jumbo v4, "key.u8"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_91

    :cond_84
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    const-string/jumbo v5, "key.tagName"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    :cond_91
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    const-string/jumbo v5, "key.tagName"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->getICameraService()Landroid/hardware/ICameraService;

    move-result-object p0

    if-nez p0, :cond_b9

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_27 .. :try_end_a7} :catchall_6e

    const-string/jumbo p0, "RequestInjectorService"

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :cond_b9
    :try_start_b9
    invoke-interface {p0, p1}, Landroid/hardware/ICameraService;->applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_c0

    goto :goto_f6

    :cond_c0
    const-string/jumbo p0, "RequestInjectorService"

    const-string p1, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string p1, "Fail to apply ExtraRequests to Request Injector, maybe type mismatch"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Fail to apply request. Please check log"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_d7} :catch_d7
    .catchall {:try_start_b9 .. :try_end_d7} :catchall_6e

    :catch_d7
    move-exception p0

    :try_start_d8
    const-string/jumbo p1, "RequestInjectorService"

    const-string v1, "Fail to apply ExtraRequests to Request Injector"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to apply ExtraRequests to Request Injector"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :goto_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_d8 .. :try_end_f7} :catchall_6e

    const-string/jumbo p0, "RequestInjectorService"

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo p1, "sendExtraRequestsToRequestInjector done"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :goto_109
    :try_start_109
    monitor-exit v0
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_6e

    :try_start_10a
    throw p0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_10b

    :catchall_10b
    move-exception p0

    const-string/jumbo p1, "RequestInjectorService"

    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v0, "sendExtraRequestsToRequestInjector done"

    invoke-static {p1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized setRequestInjectorCallback()V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->getICameraService()Landroid/hardware/ICameraService;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_2f

    const/4 v3, 0x0

    :goto_e
    :try_start_e
    iget-object v4, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/requestinjector/RequestInjectorService$RequestInjectorCallbackProxy;

    invoke-interface {v0, v4}, Landroid/hardware/ICameraService;->setRequestInjectorCallback(Lcom/samsung/android/camera/IRequestInjectorCallback;)Z

    move-result v4

    if-nez v4, :cond_53

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x3

    if-lt v3, v5, :cond_35

    const-string/jumbo v0, "RequestInjectorService"

    const-string v3, "Can not register request injector callback. return null"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string v3, "Can not register request injector callback."

    invoke-static {v0, v3}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_33
    .catchall {:try_start_e .. :try_end_2a} :catchall_31

    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    goto :goto_62

    :catchall_31
    move-exception v0

    goto :goto_5e

    :catch_33
    move-exception v0

    goto :goto_58

    :cond_35
    :try_start_35
    const-string/jumbo v3, "RequestInjectorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not register request injector callback. wait 300ms retry count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x12c

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_51} :catch_51
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_51} :catch_33
    .catchall {:try_start_35 .. :try_end_51} :catchall_31

    :catch_51
    move v3, v4

    goto :goto_e

    :cond_53
    :try_start_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_2f

    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_31

    :goto_5e
    :try_start_5e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_2f

    throw v0
.end method

.method public final declared-synchronized unregisterCallback(Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCallbackSet:Ljava/util/Set;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_38

    monitor-enter p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3a

    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->getICameraService()Landroid/hardware/ICameraService;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_27

    if-nez p1, :cond_1b

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_3a

    goto :goto_38

    :cond_1b
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_27

    :try_start_1f
    invoke-interface {p1}, Landroid/hardware/ICameraService;->removeRequestInjectorCallback()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2b
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    :try_start_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_3a

    goto :goto_38

    :catchall_27
    move-exception p1

    goto :goto_36

    :catchall_29
    move-exception p1

    goto :goto_32

    :catch_2b
    move-exception p1

    :try_start_2c
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    :goto_32
    :try_start_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_27

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3a

    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method
