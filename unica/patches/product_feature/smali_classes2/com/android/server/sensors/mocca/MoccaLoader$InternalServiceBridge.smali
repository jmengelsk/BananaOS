.class public final Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;
.super Lcom/samsung/android/mocca/IInternalServiceBridge$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final SUPPORTED_TYPES:[Ljava/lang/String;

.field public final mListeners:Ljava/util/Map;

.field public mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/mocca/IInternalServiceBridge$Stub;-><init>()V

    const-string/jumbo v0, "touch"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->SUPPORTED_TYPES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final clearAllListeners()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getValue(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable(Ljava/lang/String;)Z
    .registers 6

    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->SUPPORTED_TYPES:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_9
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    const-string/jumbo v1, "touch"

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mocca/IInternalServiceBridgeListener;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_35

    if-eqz p0, :cond_37

    :try_start_18
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "touch"

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/mocca/IInternalServiceBridgeListener;->onUpdated(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2a

    goto :goto_37

    :catchall_2a
    move-exception p0

    :try_start_2b
    const-string/jumbo p1, "MoccaLoader"

    const-string/jumbo v1, "PointerEvent : Failed to invoke method"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :catchall_35
    move-exception p0

    goto :goto_39

    :cond_37
    :goto_37
    monitor-exit v0

    goto :goto_3b

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_35

    throw p0

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final setListener(Ljava/lang/String;Lcom/samsung/android/mocca/IInternalServiceBridgeListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mListeners:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final start()V
    .registers 3

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_15
    return-void
.end method

.method public final stop()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/sensors/mocca/MoccaLoader$InternalServiceBridge;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :cond_8
    return-void
.end method
