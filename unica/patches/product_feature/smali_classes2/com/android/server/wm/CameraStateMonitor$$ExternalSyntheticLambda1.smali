.class public final synthetic Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CameraStateMonitor;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraStateMonitor;

    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CameraStateMonitor;

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_c
    iget-object v2, v0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_80

    :cond_1d
    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    :try_start_1f
    iget-object v4, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4c

    iget-object v4, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;

    invoke-interface {v4, p0}, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;->canCameraBeClosed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    iget-object v2, v0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7b

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_4c
    iget-object v3, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    iget-object v4, v3, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5b

    goto :goto_65

    :cond_5b
    iget-object v5, v3, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-interface {v5, v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mCameraIdToPackageMap:Ljava/util/Map;

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_65
    iget-object p0, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_7b

    iget-object p0, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;

    invoke-interface {p0}, Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;->onCameraClosed()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_7b
    :goto_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_1f .. :try_end_7c} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_80
    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
