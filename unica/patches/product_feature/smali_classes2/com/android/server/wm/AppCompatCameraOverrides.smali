.class public final Lcom/android/server/wm/AppCompatCameraOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatAllowOrientationTreatmentOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    new-instance p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    const-string/jumbo p1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    new-instance p2, Lcom/android/server/wm/AppCompatUtils$1;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    const-string/jumbo p1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH"

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    const-string/jumbo p1, "android.window.PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE"

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    const-string/jumbo p1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION"

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    const-string/jumbo p1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_SIMULATE_REQUESTED_ORIENTATION"

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowOrientationTreatmentOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public final isCameraCompatSplitScreenAspectRatioAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldApplyFreeformTreatmentForCameraCompat()Z
    .locals 3

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowOrientationTreatmentOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    if-eqz p0, :cond_0

    const-wide/32 v1, 0x17bbfc67

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptOutOverrideAndProperty(Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x12c5ed24

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldForceRotateForCameraCompat()Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CAMERA_POLICY:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldApplyPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v3, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object v1, v0, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v3, v1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mCameraCompatDisabledList:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    return v5

    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v1

    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xfbbb1dc

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptOutOverrideAndProperty(Z)Z

    move-result p0

    return p0
.end method
