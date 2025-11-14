.class public final Lcom/android/server/wm/AppCompatCameraPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

.field final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public final mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v1, "enable_compat_camera_treatment"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    const/4 v2, 0x0

    if-nez v0, :cond_30

    if-eqz v1, :cond_27

    goto :goto_30

    :cond_27
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void

    :cond_30
    :goto_30
    new-instance v3, Lcom/android/server/wm/CameraStateMonitor;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, p2, v4}, Lcom/android/server/wm/CameraStateMonitor;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    new-instance v4, Lcom/android/server/wm/ActivityRefresher;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v4, p1, v5}, Lcom/android/server/wm/ActivityRefresher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_4a

    new-instance p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;

    invoke-direct {p1, p2, v3, v4}, Lcom/android/server/wm/DisplayRotationCompatPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    goto :goto_4b

    :cond_4a
    move-object p1, v2

    :goto_4b
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v1, :cond_54

    new-instance v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;

    invoke-direct {v2, p2, v3, v4}, Lcom/android/server/wm/CameraCompatFreeformPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/ActivityRefresher;)V

    :cond_54
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    return-void
.end method

.method public static getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_34

    :cond_7
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v2, :cond_12

    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_12
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p0}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0x13680faa

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    if-eqz p0, :cond_34

    return v1

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return p0
.end method
