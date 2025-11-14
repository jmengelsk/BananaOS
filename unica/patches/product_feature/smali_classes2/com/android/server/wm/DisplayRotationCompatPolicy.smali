.class public final Lcom/android/server/wm/DisplayRotationCompatPolicy;
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

.field public mLastReportedOrientation:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void
.end method


# virtual methods
.method public final canCameraBeClosed(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    iget-boolean p1, p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, p1

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x471416ad2fffcf8bL    # -1.6798574785979571E-34

    invoke-static {p1, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p0

    return v3

    :cond_4
    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    return p0
.end method

.method public final isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iput-object p1, v3, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mCameraCompatCandidate:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity$1(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iput-object v1, p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mCameraCompatCandidate:Lcom/android/server/wm/ActivityRecord;

    return p0

    :catchall_0
    move-exception p0

    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iput-object v1, p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mCameraCompatCandidate:Lcom/android/server/wm/ActivityRecord;

    throw p0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity$1(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    return p0
.end method

.method public final isTreatmentEnabledForActivity$1(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/16 p2, 0xe

    if-eq p0, p2, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTreatmentEnabledForDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v1, "enable_compat_camera_treatment"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onCameraClosed()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/CameraStateMonitor;->getCameraIdForActivity(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, 0x188f6cf132e4334dL    # 2.204122436059243E-190

    invoke-static {v5, v6, v7, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    if-eq v3, v1, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    return-void
.end method

.method public final onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity$1(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x10404aa

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x154ca637dcf0c023L    # -9.7071995644044E205

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldCameraCompatEnabled(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mIsCameraCompatEnabled:Z

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v3, 0xfd28b98

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v3, 0x13680faa

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v2

    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    return-void
.end method

.method public final shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 4

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object p3, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0xfc0f74b

    invoke-static {p3, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p3

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptOutOverrideAndProperty(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p2, :cond_1

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public showToast(I)V
    .locals 2

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToast(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
