.class public final Lcom/android/server/wm/CameraCompatFreeformPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# instance fields
.field public final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public mCameraTask:Lcom/android/server/wm/Task;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iput-object p3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void
.end method


# virtual methods
.method public final canCameraBeClosed(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v3, -0x1faf14ed0744c1d7L    # -9.073470276292075E155

    invoke-static {p1, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public final getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    if-le v1, v2, :cond_6

    const/4 v1, 0x2

    if-ne p0, v0, :cond_3

    iget p0, p1, Landroid/view/DisplayInfo;->rotation:I

    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_3
    if-ne p0, v1, :cond_6

    iget p0, p1, Landroid/view/DisplayInfo;->rotation:I

    if-eqz p0, :cond_5

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x5

    return p0

    :cond_6
    :goto_2
    return v0
.end method

.method public final isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyFreeformTreatmentForCameraCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    return p0
.end method

.method public isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyFreeformTreatmentForCameraCompat()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/16 p2, 0xe

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onCameraClosed()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateAndDispatchCameraConfiguration()V

    iput-object v1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public final onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p1, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->updateAndDispatchCameraConfiguration()V

    return-void
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p2, v0}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p2

    const-wide/16 v1, 0x2

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const-wide/16 v1, 0x80

    and-long/2addr p2, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    if-nez p0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    return v0

    :cond_3
    return p1
.end method

.method public final updateAndDispatchCameraConfiguration()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    iget-object v3, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    invoke-static {p0}, Landroid/app/CameraCompatTaskInfo;->getDisplayRotationFromCameraCompatMode(I)I

    move-result p0

    iput p0, v3, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    :try_start_0
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {p0, v4, v3}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v3, 0x3

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v4, -0x22ee5aa881bfcabbL    # -2.101362514846833E140

    invoke-static {v3, v4, v5, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :goto_2
    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method
