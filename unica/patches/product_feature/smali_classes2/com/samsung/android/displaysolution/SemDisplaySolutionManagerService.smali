.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final BURN_IN_APPLY_COUNT:Ljava/lang/String;

.field public final BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

.field public final DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public final DOU_BRIGHTNESS_SUPPORT_VALUE:I

.field public final DOU_VERSION:I

.field public final IRC_MODE_NODE:Ljava/lang/String;

.field public final IRC_MODE_SUB_NODE:Ljava/lang/String;

.field public final SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field public final adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

.field public final ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

.field public mAdaptiveScreenModeEnabled:Z

.field public final mAfcType:I

.field public mAppBrightnessScale:Z

.field public mAutoBrightnessModeEnabled:Z

.field public mAutoCurrentLimitOffEnable:Z

.field public final mBrightnessBacklightValueStringArray:[Ljava/lang/String;

.field public final mBrightnessCameraAppArray:[F

.field public mBrightnessCompensation:F

.field public final mBrightnessExtraBrightnessArray:[F

.field public final mBrightnessGalleryAppArray:[F

.field public final mBrightnessNitsValueStringArray:[Ljava/lang/String;

.field public final mBrightnessOverHeatAppArray:[F

.field public final mBrightnessSamsungVideoAppArray:[F

.field public final mBrightnessVideoEnhancerArray:[F

.field public mBrowserAppBrightnessControl:Z

.field public mBurnInPrevention:Z

.field public final mBurnInScaleFactorStringArray:[Ljava/lang/String;

.field public final mBurnInScaleFactorValueArray:[F

.field public final mCameraAppBrightnessStringArray:[Ljava/lang/String;

.field public mCameraEnable:Z

.field public mColorBlind:Z

.field public final mContext:Landroid/content/Context;

.field public mDouAppEnable:Z

.field public mExtraBrightness:Z

.field public mExtraBrightnessModeEnabled:Z

.field public final mExtraBrightnessStringArray:[Ljava/lang/String;

.field public final mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

.field public final mGalleryAppBrightnessStringArray:[Ljava/lang/String;

.field public mGalleryEnable:Z

.field public final mGammaArray:[F

.field public final mGammaStringArray:[Ljava/lang/String;

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeScaleFactorValue:F

.field public mIsFolded:Z

.field public mLastScaleFactorValue:F

.field public mMSCSEnable:Z

.field public mName:Ljava/lang/String;

.field public mOnPixelRatioValue:Ljava/lang/String;

.field public final mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mRealHDR:Z

.field public final mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

.field public mScaleFactor:F

.field public final mScaleFactorStringArray:[Ljava/lang/String;

.field public final mScaleFactorValueArray:[F

.field public mSettingValue:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public final mUseEyeComfortSolutionServiceConfig:Z

.field public mVideoEnable:Z

.field public final mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

.field public final mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field public temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

.field public temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_BURNIN_PREVENTION_ON:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    const/high16 v4, 0x3f800000  # 1.0f

    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    const-string v4, "/sys/class/lcd/panel/irc_mode"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const-string v4, "/sys/class/lcd/panel1/irc_mode"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    const-string v4, "/efs/afc/apply_count"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    const-string v4, "/efs/afc1/apply_count"

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    const-string/jumbo v4, "ro.build.scafe.version"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0156

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070051

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070052

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070068

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107006d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107004a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070080

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107007e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070082

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070083

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0074

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0073

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e00aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v9, v10, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-lez v9, :cond_156

    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    :cond_156
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "DDI"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    if-eqz v4, :cond_171

    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    new-instance v9, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v9, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    :cond_171
    if-eqz v5, :cond_17a

    new-instance v9, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {v9, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    :cond_17a
    iget-boolean v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v9, :cond_185

    new-instance v9, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {v9, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    :cond_185
    if-eqz v6, :cond_1dc

    new-instance v6, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "BigDataLoggingServiceThread"

    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v1, "false"

    const-string/jumbo v7, "sys.bigdatalogging.bdlon"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;

    invoke-direct {v9, v6}, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;)V

    invoke-virtual {p1, v9, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v0, :cond_1dc

    const-string/jumbo p1, "true"

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dc
    const/16 p1, 0xff

    if-le v8, p1, :cond_1e2

    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    :cond_1e2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mUseMdnieScenarioControlServiceConfig : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SemDisplaySolutionManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUseAdaptiveDisplaySolutionServiceConfig : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUseEyeComfortSolutionServiceConfig : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUseBigDataLoggingServiceConfig : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mScreenBrightnessExtendedMaximumConfig : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    move p1, v3

    :goto_246
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_258

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_246

    :cond_258
    const/16 p1, 0xa

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    move p1, v3

    :goto_25f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_271

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_25f

    :cond_271
    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    move p1, v3

    :goto_276
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_288

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_276

    :cond_288
    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    move p1, v3

    :goto_28d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_29f

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_28d

    :cond_29f
    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    move p1, v3

    :goto_2a4
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraAppBrightnessStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_2b6

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a4

    :cond_2b6
    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    move p1, v3

    :goto_2bb
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_2cd

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2bb

    :cond_2cd
    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    move p1, v3

    :goto_2d2
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_2e4

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2d2

    :cond_2e4
    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    move p1, v3

    :goto_2ea
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_2fc

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2ea

    :cond_2fc
    new-array p1, v10, [F

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    move p1, v3

    :goto_301
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    array-length v4, v1

    if-ge p1, v4, :cond_313

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_301

    :cond_313
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v4, "high_brightness_mode_pms_enter"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v3, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_extra_brightness"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "blue_light_filter"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "blue_light_filter_night_dim"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo p1, "registerDisplayStateListener"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mFoldStateListener:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$1;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3bf

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAutoBrightnessModeEnabled : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-static {v0, p1, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    if-nez p1, :cond_3b9

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    if-eqz p1, :cond_3b9

    const-string/jumbo p1, "extra_brightness_on"

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_3bf

    :cond_3b9
    const-string/jumbo p1, "extra_brightness_off"

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_3bf
    :goto_3bf
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHighBrightnessModeEnabled : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-static {v0, p1, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_3fb

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-nez p1, :cond_3fb

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v10, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3f5

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {v10, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    :cond_3f5
    const-string p0, "IRC Mode : flat_gamma_mode"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3fb
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_412

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    :cond_412
    const-string p0, "IRC Mode : moderato_mode"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v0, 0x80

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const-string v0, "File Close error"

    const-string/jumbo v3, "SemDisplaySolutionManagerService"

    const/4 v4, 0x0

    if-eqz p0, :cond_26

    :try_start_15
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_23
    .catchall {:try_start_15 .. :try_end_1f} :catchall_20

    goto :goto_27

    :catchall_20
    move-exception p0

    goto/16 :goto_82

    :catch_23
    move-exception p0

    move-object v1, v4

    goto :goto_49

    :cond_26
    move-object v5, v4

    :goto_27
    if-eqz v5, :cond_8c

    :try_start_29
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_47
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3a

    if-lez p0, :cond_43

    :try_start_2f
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, p0, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v6

    goto :goto_43

    :catchall_3a
    move-exception p0

    move-object v4, v5

    goto :goto_82

    :catch_3d
    move-exception v1

    move v2, p0

    move-object p0, v1

    :goto_40
    move-object v1, v4

    move-object v4, v5

    goto :goto_49

    :cond_43
    :goto_43
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_46} :catch_3d
    .catchall {:try_start_2f .. :try_end_46} :catchall_3a

    goto :goto_8c

    :catch_47
    move-exception p0

    goto :goto_40

    :goto_49
    :try_start_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , in : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_49 .. :try_end_78} :catchall_20

    if-eqz v4, :cond_96

    :try_start_7a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_96

    :catch_7e
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :goto_82
    if-eqz v4, :cond_8b

    :try_start_84
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8b

    :catch_88
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    throw p0

    :cond_8c
    :goto_8c
    if-eqz v5, :cond_95

    :try_start_8e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_95

    :catch_92
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    move-object v1, v4

    :cond_96
    :goto_96
    return-object v1
.end method

.method public static sysfsWrite(ILjava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x0

    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_24

    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_21

    const/4 p0, 0x1

    return p0

    :catch_21
    move-exception p0

    move-object p1, v1

    goto :goto_2b

    :catch_24
    move-exception p0

    goto :goto_2b

    :catch_26
    move-exception p0

    :try_start_27
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_24

    goto :goto_36

    :goto_2b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2e
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final controlScaleFactorValue(FLjava/lang/String;)V
    .registers 10

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    const-string/jumbo p1, "application"

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo p2, "NumberFormatException : "

    const-string/jumbo v1, "burn_in_brightness_compensation() sub raw : "

    const-string/jumbo v2, "burn_in_brightness_compensation() raw : "

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const-string/jumbo v4, "SemDisplaySolutionManagerService"

    if-nez v3, :cond_34

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_dd

    :cond_34
    :try_start_34
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    if-nez v3, :cond_51

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :catch_4e
    move-exception p2

    goto/16 :goto_da

    :cond_51
    if-eqz v3, :cond_6a

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_79} :catch_4e

    :try_start_79
    array-length v3, v1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c4

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_96

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v3, 0x3c23d70a  # 0.01f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_dd

    :catch_94
    move-exception v1

    goto :goto_c7

    :cond_96
    const/4 v5, 0x3

    if-lt v3, v5, :cond_ae

    const/4 v5, 0x7

    if-gt v3, v5, :cond_ae

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v3, 0x3ba3d70a  # 0.005f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_dd

    :cond_ae
    const/16 v5, 0x8

    if-lt v3, v5, :cond_dd

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const v3, 0x3be56042  # 0.007f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_dd

    :cond_c4
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_c6} :catch_94
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_c6} :catch_4e

    goto :goto_dd

    :goto_c7
    :try_start_c7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    :cond_d7
    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d9} :catch_4e

    goto :goto_dd

    :goto_da
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dd
    :goto_dd
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13c

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz p1, :cond_13c

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_13c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "where : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " what : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " setScreenBrightnessScaleFactor("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ") , mBrightnessCompensation : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , PMS value : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_13c
    return-void
.end method

.method public final getAlphaMaskLevel(FFF)F
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getAlphaMaskLevel() CurrentPlatformBrightnessValue : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , FingerPrintPlatformValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , br_ctrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , gamma : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const-string/jumbo v5, "SemDisplaySolutionManagerService"

    invoke-static {v0, v3, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    const/high16 v6, -0x40800000  # -1.0f

    if-ltz v3, :cond_3c

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    float-to-int p1, p1

    aget-object p1, v3, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_3d

    :cond_3c
    move p1, v6

    :goto_3d
    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    float-to-int p2, p2

    aget-object p2, v0, p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    :cond_4a
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    aget p0, p0, v4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "calculateAlphaBlendingValue() currentNits : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , targetNits : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float/2addr p1, p3

    div-float/2addr p1, v6

    float-to-double p1, p1

    const/high16 p3, 0x3f800000  # 1.0f

    div-float/2addr p3, p0

    float-to-double v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr p2, p0

    double-to-float p0, p2

    return p0
.end method

.method public final getAutoCurrentLimitOffModeEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    return p0
.end method

.method public final getBlfAdaptiveCurrentIndex()I
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public final getCameraModeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    return p0
.end method

.method public final getDouAppModeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    return p0
.end method

.method public final getFingerPrintBacklightValue(I)F
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_3e

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt p1, v1, :cond_3b

    const-string/jumbo v1, "getFingerPrintBacklightValue() brightnessNits : "

    const-string v2, " , FingerPrintBacklightValue : "

    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , mBrightnessNitsValueStringArray_Size : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    array-length v1, v1

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    invoke-static {p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3e
    const/high16 p0, -0x40800000  # -1.0f

    return p0
.end method

.method public final getGalleryModeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    return p0
.end method

.method public final getOnPixelRatioValueForPMS()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoEnhancerSettingState(Ljava/lang/String;)I
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getVideoModeEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return p0
.end method

.method public final isBlueLightFilterScheduledTime()Z
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBlueLightFilterAdaptiveModeEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mBlueLightFilterScheduledTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    const-string v3, "EyeComfortSolutionService"

    invoke-static {v3, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-nez v1, :cond_28

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v0
.end method

.method public final isMdnieScenarioControlServiceEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return p0
.end method

.method public final onAutoCurrentLimitOffMode(Z)V
    .registers 2

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_15
    return-void
.end method

.method public final onAutoCurrentLimitStateChanged(Z)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    return-void

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    :cond_11
    return-void
.end method

.method public final onAutoCurrentLimitStateChangedInt(I)V
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1f

    add-int/lit8 p1, p1, 0x2

    :cond_1f
    const-string/jumbo v0, "setAutoCurrentLimitStateInt("

    const-string v1, ") , mADSEnableCondition : "

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveDisplaySolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    :cond_39
    return-void
.end method

.method public final onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    return-void

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    :cond_11
    return-void
.end method

.method public final onBurnInPreventionDisabled(Z)V
    .registers 2

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_15
    return-void
.end method

.method public final onDetailVeiwStateChanged(Z)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    return-void

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    :cond_11
    return-void
.end method

.method public final setAutoCurrentLimitOffModeEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    return-void
.end method

.method public final setBlfEnableTimeBySchedule(ZI)V
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_2e

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setBlueLightFilterModeEnabledTime - mBlueLightFilterScheduledTime: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EyeComfortSolutionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2e
    return-void
.end method

.method public final setCameraModeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCameraEnable:Z

    return-void
.end method

.method public final setDouAppModeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    return-void
.end method

.method public final setEadIndexOffset(I)V
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEadIndexOffset("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz p1, :cond_34

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    :cond_34
    return-void
.end method

.method public final setEyeComfortWeightingFactor(F)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    :cond_6
    return-void
.end method

.method public final setGalleryModeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    return-void
.end method

.method public final setHighDynamicRangeMode(Z)V
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_27

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "isHighDynamicRangeModeState : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    const-string/jumbo v1, "MdnieScenarioControlService"

    invoke-static {v1, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_20

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    return-void

    :cond_20
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez p1, :cond_27

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    :cond_27
    return-void
.end method

.method public final setIRCompensationMode(Z)V
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "setIRCompensationMode("

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    if-eqz p1, :cond_23

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : moderato_mode"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : moderato_mode , vivid mode :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-static {v2, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void

    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : flat_gamma_mode , vivid mode :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-static {v2, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final setMdnieScenarioControlServiceEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return-void
.end method

.method public final setMultipleScreenBrightness(Ljava/lang/String;)V
    .registers 16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_brightness"

    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    int-to-float v5, v5

    const-string/jumbo v6, "uid : "

    const-string v7, " , pid : "

    const-string v8, " , name : "

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "SemDisplaySolutionManagerService"

    invoke-static {v1, p1, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_582

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz p1, :cond_582

    const-string/jumbo v0, "color_blind_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v1, "brightness_scale_on_7"

    const-string/jumbo v7, "brightness_scale_on_6"

    const-string/jumbo v8, "brightness_scale_on_5"

    const-string/jumbo v9, "brightness_scale_on_4"

    const-string/jumbo v10, "brightness_scale_on_3"

    const-string/jumbo v11, "brightness_scale_on_2"

    const-string/jumbo v12, "brightness_scale_on_1"

    const-string/jumbo v13, "color_blind_off"

    if-nez p1, :cond_184

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto/16 :goto_184

    :cond_6f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v0, "real_hdr_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v13, "real_hdr_off"

    if-nez p1, :cond_16e

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    goto/16 :goto_16e

    :cond_87
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v0, "extra_brightness_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v13, "extra_brightness_off"

    if-nez p1, :cond_158

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    goto/16 :goto_158

    :cond_9f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "brightness_scale_off"

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e3

    goto :goto_146

    :cond_e3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v0, "browser_brightness_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v13, "browser_brightness_off"

    if-nez p1, :cond_12c

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fa

    goto :goto_12c

    :cond_fa
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v0, "burnin_prevention_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v13, "burnin_prevention_off"

    if-nez p1, :cond_110

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    :cond_110
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_120

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto/16 :goto_199

    :cond_120
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto/16 :goto_199

    :cond_12c
    :goto_12c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13b

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    goto :goto_199

    :cond_13b
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    goto :goto_199

    :cond_146
    :goto_146
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_151

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    goto :goto_199

    :cond_151
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    goto :goto_199

    :cond_158
    :goto_158
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_163

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    goto :goto_199

    :cond_163
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    goto :goto_199

    :cond_16e
    :goto_16e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_179

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_199

    :cond_179
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_199

    :cond_184
    :goto_184
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18f

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    goto :goto_199

    :cond_18f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    :cond_199
    :goto_199
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-eqz p1, :cond_1b6

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v4

    const-string v0, "ColorBlind"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMultipleScreenBrightness , application, ColorBlind, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_1b6
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz p1, :cond_1d0

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    const-string/jumbo v0, "RealHDR"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMultipleScreenBrightness , application, RealHDR, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_1d0
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    if-eqz p1, :cond_1ed

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget p1, p1, v4

    const-string v0, "ExtraBrightness"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMultipleScreenBrightness , application, ExtraBrightness, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_1ed
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    const-string v0, ", "

    const/16 v13, 0xff

    if-eqz p1, :cond_2a3

    :cond_1f5
    :goto_1f5
    const/16 p1, 0x14

    if-ge v4, p1, :cond_582

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "browser_brightness_on_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastScaleFactorValue : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , (Float)((100 - (i+1)) * 0.01f) "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v1, v4, 0x64

    int-to-float v1, v1

    const v2, 0x3c23d70a  # 0.01f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , Float.compare(mLastScaleFactorValue, (Float)((100 - (i+1)) * 0.01f)) : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    const-string v5, "BrowserAppBrightnessControl_"

    if-ne p1, v13, :cond_27b

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_267

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    :cond_267
    invoke-static {v4, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f5

    :cond_27b
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    int-to-float v1, v4

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    sub-float/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f5

    :cond_2a3
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    if-eqz p1, :cond_518

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, " platform_brightness_value : "

    const-string v12, " auto_brightness_enabled : "

    if-eqz p1, :cond_2d8

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v4

    const-string v1, "HDREffect_1"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMultipleScreenBrightness , application, HDREffect_1, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_2d8
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v11, 0x437f0000  # 255.0f

    if-eqz p1, :cond_3b0

    const-string/jumbo p1, "setMultipleScreenBrightness , application, HDREffect_2, "

    const-string v1, "HDREffect_2"

    if-eqz v2, :cond_309

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget v3, v3, v4

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_309
    if-nez v2, :cond_582

    iget v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    if-eq v7, v13, :cond_36a

    iget v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_36a

    iget-boolean v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    if-eqz v8, :cond_36a

    iget-object v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget v3, v8, v3

    int-to-float v9, v7

    div-float/2addr v9, v11

    mul-float/2addr v9, v3

    cmpg-float v3, v5, v9

    if-gez v3, :cond_341

    aget v3, v8, v4

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_341
    int-to-float v3, v7

    div-float/2addr v3, v5

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36a
    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget v3, v7, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_390

    aget v3, v7, v4

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_390
    div-float/2addr v11, v5

    invoke-virtual {p0, v11, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3eb

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    const-string/jumbo v0, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    const-string v1, "GalleryAppScaleUp"

    if-eqz p1, :cond_3d5

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_3d5
    if-nez p1, :cond_582

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_3eb
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_426

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mIsFolded:Z

    const-string/jumbo v0, "setMultipleScreenBrightness , application, CameraAppScaleUp, "

    const-string v1, "CameraAppScaleUp"

    if-eqz p1, :cond_410

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCameraAppArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_410
    if-nez p1, :cond_582

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_426
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47a

    const-string/jumbo p1, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    const-string/jumbo v0, "SamsungVideoAppScaleUp"

    if-eqz v2, :cond_457

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget v1, v1, v4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget p0, p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_457
    if-nez v2, :cond_582

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v1, v1, v4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f6

    if-nez v2, :cond_582

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, p1

    cmpl-float v1, v5, v0

    const-string/jumbo v3, "setMultipleScreenBrightness , application, DouScaleDown, "

    const-string v7, "DouScaleDown"

    if-ltz v1, :cond_4e2

    sub-float v0, v5, v0

    int-to-float p1, p1

    sub-float p1, v11, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p1, p1

    div-float/2addr p1, v11

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float p1, v1, p1

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, p1

    sub-float v0, v5, v0

    int-to-float p1, p1

    sub-float p1, v11, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p1, p1

    div-float/2addr p1, v11

    sub-float p1, v1, p1

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v3, v0

    sub-float v3, v5, v3

    int-to-float v0, v0

    sub-float v0, v11, v0

    div-float/2addr v3, v0

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p0, p0

    div-float/2addr p0, v11

    sub-float p0, v1, p0

    mul-float/2addr p0, v3

    sub-float/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ,platform_brightness_value : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ,auto_brightness_enabled : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, p1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void

    :cond_4e2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v4

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_4f6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_582

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget p1, p1, v4

    const-string/jumbo v0, "OverHeatScaleDown"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMultipleScreenBrightness , application, OverHeatScaleDown, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void

    :cond_518
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    if-eqz p1, :cond_564

    :goto_51c
    const/16 p1, 0xa

    if-ge v4, p1, :cond_582

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "burnin_prevention_on_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_562

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget p1, p1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BurnInPrevention_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget p1, p1, v4

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string/jumbo p1, "setMultipleScreenBrightness , application, BurnInPrevention_"

    invoke-static {v2, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v1, v1, v4

    invoke-static {p1, v1, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_562
    move v4, v2

    goto :goto_51c

    :cond_564
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v4

    const-string v0, "DEFAULT"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v4

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Normal Mode setMultipleScreenBrightness , application, DEFAULT, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v4

    invoke-static {p1, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_582
    return-void
.end method

.method public final setMultipleScreenBrightnessValueForHDR(F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    return-void
.end method

.method public final setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    return-void
.end method

.method public final setRenderIntentValue(I)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz v0, :cond_51

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SurfaceFlinger_RI("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "MdnieScenarioControlService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/16 v2, 0x3ff

    const/4 v3, 0x0

    :try_start_3d
    invoke-interface {p0, v2, v1, v3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_46
    .catchall {:try_start_3d .. :try_end_40} :catchall_44

    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_51

    :catchall_44
    move-exception p0

    goto :goto_4d

    :catch_46
    move-exception p0

    :try_start_47
    const-string p1, "Failed to set display value"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_44

    goto :goto_40

    :goto_4d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_51
    :goto_51
    return-void
.end method

.method public final setScreenBrightnessForPreview(I)V
    .registers 2

    return-void
.end method

.method public final setSleepPatternBLF(Ljava/lang/String;JJF)V
    .registers 14

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_18a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SUNDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " , WakeupTime : "

    const-string v2, ") , BedTime : "

    const-string v3, "EyeComfortSolutionService"

    const/high16 v4, 0x3f000000  # 0.5f

    const/4 v5, -0x1

    const v6, 0xea60

    if-eqz v0, :cond_49

    cmpl-float p1, p6, v4

    if-lez p1, :cond_29

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    goto :goto_2d

    :cond_29
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    :goto_2d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "SUNDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_49
    const-string/jumbo v0, "MONDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    cmpl-float p1, p6, v4

    if-lez p1, :cond_5f

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    goto :goto_63

    :cond_5f
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    :goto_63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "MONDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_7f
    const-string/jumbo v0, "TUESDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    cmpl-float p1, p6, v4

    if-lez p1, :cond_95

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    goto :goto_99

    :cond_95
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    :goto_99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "TUESDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_b5
    const-string/jumbo v0, "WEDNESDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    cmpl-float p1, p6, v4

    if-lez p1, :cond_cb

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    goto :goto_cf

    :cond_cb
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    :goto_cf
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "WEDNESDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_eb
    const-string/jumbo v0, "THURSDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    cmpl-float p1, p6, v4

    if-lez p1, :cond_101

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    goto :goto_105

    :cond_101
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    :goto_105
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "THURSDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_121
    const-string v0, "FRIDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    cmpl-float p1, p6, v4

    if-lez p1, :cond_136

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    goto :goto_13a

    :cond_136
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    :goto_13a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "FRIDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_155
    const-string/jumbo v0, "SATURDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18a

    cmpl-float p1, p6, v4

    if-lez p1, :cond_16b

    long-to-int p1, p2

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    long-to-int p1, p4

    div-int/2addr p1, v6

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    goto :goto_16f

    :cond_16b
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    :goto_16f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "SATURDAY("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    invoke-static {p1, p0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_18a
    return-void
.end method

.method public final setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Update Video Enhancer SubKey state. package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "settingstate"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "packagename = \'"

    const-string v2, "\' "

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    if-nez p2, :cond_47

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    goto :goto_4a

    :cond_47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_4a
    const-string/jumbo p0, "MSCS_APP_LIST"

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public final setVideoModeEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return-void
.end method

.method public final setting_is_changed()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_brightness_mode_pms_enter"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_14

    move v1, v4

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_22

    move v1, v4

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    const-string/jumbo v1, "screen_extra_brightness"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_30

    move v1, v4

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_3d

    move v2, v4

    :cond_3d
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHighBrightnessModeEnabled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAutoBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    invoke-static {v1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final updateAutoBrightnessLux(II)V
    .registers 10

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_71

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_71

    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "getVisionBoosterIndex() mAutoBrightnessMode : "

    const/4 v3, -0x1

    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mReduceBrightColorsActivatedEnabled : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , lux : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_54

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    if-nez v2, :cond_54

    if-eq p2, v3, :cond_54

    move v2, v4

    :goto_3e
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVisionBoosterStringArray:[Ljava/lang/String;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_53

    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt p2, v5, :cond_53

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3e

    :catch_51
    move-exception p0

    goto :goto_6b

    :cond_53
    move v4, v2

    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Vision Booster Index : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_69} :catch_51

    move v3, v4

    goto :goto_6e

    :goto_6b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6e
    invoke-virtual {v0, p1, p2, v3}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setHighBrightnessMode(III)V

    :cond_71
    return-void
.end method

.method public final updateGlutMode(Ljava/lang/String;)V
    .registers 8

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_eb

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    if-eqz v0, :cond_eb

    if-eqz p1, :cond_eb

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevmDNIeMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevmDNIeMode:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalModeVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_eb

    const-string/jumbo v0, "NATURAL_DS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "EyeComfortSolutionService"

    const-string v3, "/sys/class/lcd/panel/night_dim"

    const-string v4, "/sys/class/lcd/panel1/night_dim"

    if-nez v0, :cond_cd

    const-string v0, "HBM_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "EAD_MODE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto/16 :goto_cd

    :cond_3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_af

    const-string v0, "BLF_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_af

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz p1, :cond_91

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_70

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eq p1, v1, :cond_eb

    invoke-static {v1, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-static {v1, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_67
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 1 (E.C Vivid)"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_70
    const/4 v0, 0x3

    if-ne p1, v0, :cond_eb

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eq p1, v0, :cond_eb

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_88

    invoke-static {v0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_88
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 3 (E.C Natural)"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_91
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eqz p1, :cond_eb

    invoke-static {v5, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a6

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_a6
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 0 (CLUT off)"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_af
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eqz p1, :cond_eb

    invoke-static {v5, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c4

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_c4
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 0 (CLUT Off)"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_cd
    :goto_cd
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_eb

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e3

    invoke-static {v0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_e3
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 2 (Natural Gamma On)"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    return-void
.end method

.method public final updateQdcmMode(Ljava/lang/String;)V
    .registers 16

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_c4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    if-eqz v1, :cond_c4

    if-eqz p1, :cond_c4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevmDNIeMode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevmDNIeMode:Ljava/lang/String;

    const-string v1, "COLOR_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    const-string/jumbo v3, "vividness_intensity"

    const/4 v4, 0x1

    const-string v5, "EAD_MODE"

    const/4 v6, 0x2

    const/16 v7, 0x100

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDPLUS"

    const-string/jumbo v9, "screen_mode_setting"

    const/4 v10, -0x2

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-nez v1, :cond_80

    const-string/jumbo v1, "NATURAL_DS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "HBM_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_80

    :cond_4d
    invoke-static {v0, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v11, :cond_74

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v8, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_61

    invoke-virtual {p0, v12, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_61
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v8, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lt p1, v6, :cond_c4

    invoke-static {v0, v3, v12, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {p0, v12, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_74
    invoke-static {v0, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_c4

    const/16 p1, 0x12c

    invoke-virtual {p0, v12, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_80
    :goto_80
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalModeVersion:I

    const/16 v13, 0x12d

    if-ne v1, v6, :cond_c1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bd

    invoke-static {v0, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v11, :cond_b3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v8, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_a0

    invoke-virtual {p0, v12, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_a0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v8, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lt p1, v6, :cond_c4

    invoke-static {v0, v3, v12, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {p0, v12, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_b3
    invoke-static {v0, v9, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_c4

    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_bd
    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    return-void

    :cond_c1
    invoke-virtual {p0, v12, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    :cond_c4
    return-void
.end method
