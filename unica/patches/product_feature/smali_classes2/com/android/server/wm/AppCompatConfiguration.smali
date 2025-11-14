.class public final Lcom/android/server/wm/AppCompatConfiguration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

.field public mCameraCompatAspectRatio:F

.field public final mContext:Landroid/content/Context;

.field public final mCoverLauncherPresetManager:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;

.field public mDefaultMinAspectRatioForUnresizableApps:F

.field public mDefaultPositionForHorizontalReachability:I

.field public mDefaultPositionForVerticalReachability:I

.field public final mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

.field public mFixedOrientationLetterboxAspectRatio:F

.field public mIsAutomaticReachabilityInBookModeEnabled:Z

.field public mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

.field public mIsCameraCompatRefreshCycleThroughStopEnabled:Z

.field public final mIsCameraCompatSplitScreenAspectRatioEnabled:Z

.field public mIsCameraCompatTreatmentRefreshEnabled:Z

.field public mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

.field public mIsEducationEnabled:Z

.field public mIsHorizontalReachabilityEnabled:Z

.field public final mIsPolicyForIgnoringRequestedOrientationEnabled:Z

.field public mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

.field public mIsVerticalReachabilityEnabled:Z

.field public mLetterboxActivityCornersRadius:I

.field public mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field public mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field public final mLetterboxBackgroundType:I

.field public mLetterboxBackgroundTypeOverride:I

.field public mLetterboxBackgroundWallpaperBlurRadiusPx:I

.field public mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mLetterboxBookModePositionMultiplier:F

.field public mLetterboxHorizontalPositionMultiplier:F

.field public mLetterboxTabletopModePositionMultiplier:F

.field public mLetterboxVerticalPositionMultiplier:F

.field public final mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

.field public final mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public final mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public mTranslucentLetterboxingOverrideEnabled:Z

.field public mUserAppAspectRatioFullscreenOverrideEnabled:Z

.field public mUserAppAspectRatioSettingsOverrideEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCoverLauncherPresetManager:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    :goto_1
    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    const-string/jumbo v3, "mLetterboxHorizontalPositionMultiplier"

    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    const-string/jumbo v3, "mLetterboxVerticalPositionMultiplier"

    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBookModePositionMultiplier(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxTabletopModePositionMultiplier(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    invoke-static {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    invoke-static {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    const v3, 0x105010b

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    const v3, 0x105010a

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object p2, p2, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter p2

    :try_start_0
    iget-object v2, p2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_4
    :goto_2
    monitor-exit p2

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    invoke-direct {v2, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x11101da

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string/jumbo v3, "enable_compat_camera_treatment"

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x11101e6

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string/jumbo v3, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    const-string/jumbo p2, "allow_ignore_orientation_request"

    invoke-virtual {v2, p2, v0, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x11101d3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string/jumbo v3, "enable_compat_fake_focus"

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x11101e8

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string/jumbo v3, "enable_letterbox_translucent_activity"

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x111003a

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const-string/jumbo v3, "enable_app_compat_aspect_ratio_user_settings"

    invoke-virtual {v2, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    const-string/jumbo p2, "enable_letterbox_background_wallpaper"

    invoke-virtual {v2, p2, v1, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110039

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const-string/jumbo p2, "enable_app_compat_user_aspect_ratio_fullscreen"

    invoke-virtual {v2, p2, v0, p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    new-instance p1, Lcom/android/server/wm/SynchedDeviceConfig;

    iget-object p2, v2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, v2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    iget-object v1, v2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mNamespace:Ljava/lang/String;

    invoke-direct {p1, v1, p2, v0}, Lcom/android/server/wm/SynchedDeviceConfig;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/Map;)V

    new-instance v2, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SynchedDeviceConfig;)V

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-static {v1, p2, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    return-void

    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static assertValidMultiplier(FLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trying to set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " out of bounds: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "unknown="

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object p0

    :cond_1
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object p0

    :cond_2
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object p0

    :cond_3
    const-string p0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object p0
.end method

.method public static letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected letterbox position type: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    :cond_2
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT"

    return-object p0
.end method

.method public static letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected letterbox position type: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    :cond_2
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP"

    return-object p0
.end method

.method public static readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x10e00dd

    goto :goto_0

    :cond_0
    const p1, 0x10e00de

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    return p0
.end method

.method public static readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x10e00df

    goto :goto_0

    :cond_0
    const p1, 0x10e00e0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public final getHorizontalMultiplierForReachability(Z)F
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string/jumbo v0, "Unexpected letterbox position type: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x1060213

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public final getLetterboxBackgroundType()I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v1, "enable_letterbox_background_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    return p0
.end method

.method public final getVerticalMultiplierForReachability(Z)F
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string/jumbo v0, "Unexpected letterbox position type: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isTranslucentLetterboxingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v0, "enable_letterbox_translucent_activity"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUserAppAspectRatioFullscreenEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v0, "enable_app_compat_user_aspect_ratio_fullscreen"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserAppAspectRatioSettingsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string/jumbo v0, "enable_app_compat_aspect_ratio_user_settings"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setLetterboxBookModePositionMultiplier(F)V
    .locals 1

    const-string/jumbo v0, "mLetterboxBookModePositionMultiplier"

    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    return-void
.end method

.method public setLetterboxTabletopModePositionMultiplier(F)V
    .locals 1

    const-string/jumbo v0, "mLetterboxTabletopModePositionMultiplier"

    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    return-void
.end method
