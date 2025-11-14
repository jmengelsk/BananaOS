.class public final Lcom/android/server/wm/CameraStateMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAvailabilityCallback:Lcom/android/server/wm/CameraStateMonitor$1;

.field public final mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mCameraStateListeners:Ljava/util/ArrayList;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRunning:Z

.field public final mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

.field public final mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static -$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x346191b45817c013L    # -1.8654051817180032E56

    invoke-static {v4, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    const-wide/16 v1, 0x7d0

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static -$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x70a1ee89665f30c5L    # 3.5634456542814795E234

    invoke-static {v5, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x3e8

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    invoke-direct {v0}, Lcom/android/server/wm/CameraIdPackageNameBiMapping;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledToBeRemovedCameraIdSet:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mScheduledCompatModeUpdateCameraIdSet:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/CameraStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CameraStateMonitor$1;-><init>(Lcom/android/server/wm/CameraStateMonitor;)V

    iput-object v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Lcom/android/server/wm/CameraStateMonitor$1;

    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method public final findUniqueActivityWithPackageName(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    const-string/jumbo v2, "WindowManager"

    if-eqz p0, :cond_1

    const-string p0, "Cannot find camera activity."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_2
    const-string p0, "Cannot determine which activity opened camera."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    iget-object p0, p0, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    return p0
.end method
