.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

.field public final ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

.field public final ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

.field public final ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field public final ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field public final ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field public final ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field public final AUTO_CURRENT_LIMIT_VERSION:I

.field public BRIGHTNESS_DECREASE_STEP:I

.field public final CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field public final CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field public final DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

.field public final DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public final EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field public final EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field public final EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

.field public final EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

.field public final EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

.field public final EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

.field public final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field public FrontPackageName:Ljava/lang/String;

.field public final GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field public final GALLERY_APP_PACKAGENAME:Ljava/lang/String;

.field public final GET_SYSTEM_SERVICES_MILLIS:I

.field public final IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field public LUX_VALUE:Ljava/lang/String;

.field public final ON_PIXEL_RATIO_PATH:Ljava/lang/String;

.field public final OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

.field public final READING_LUX_PATH:Ljava/lang/String;

.field public final READING_LUX_SUB_PATH:Ljava/lang/String;

.field public final READING_SCENARIO_PATH:Ljava/lang/String;

.field public final SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field public SCENARIO_VALUE:Ljava/lang/String;

.field public SUB_LUX_VALUE:Ljava/lang/String;

.field public final SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field public final SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field public final VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field public final eventListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

.field public isLockScreenOn:Z

.field public final mAclDimmingFunction:Z

.field public mAclOffEnabled:Z

.field public mAclState:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAppLaunchStateInDatabase:I

.field public mAutoBrightnessMode:Z

.field public mBrowserAppLauncher:Z

.field public final mBrowserBrightnessArray:[I

.field public mBrowserBrightnessDecreaseEnabled:Z

.field public mBrowserBrightnessDefault:I

.field public final mBrowserBrightnessStringArray:[Ljava/lang/String;

.field public mBrowserScenarioEnabled:Z

.field public mCameraScenarioEnabled:Z

.field public mColorBlindEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurAclValue:I

.field public final mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

.field public mDayOfUseSupportAppState:Z

.field public mDexModeState:Z

.field public mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field public mEbookScenarioEnabled:Z

.field public mEmailScenarioEnabled:Z

.field public mEyeComfortScaleAppEnabled:Z

.field public final mFoldStateListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

.field public mGalleryAppState:Z

.field public mGalleryScenarioEnabled:Z

.field public final mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

.field public mHdrEffectEnabled:Z

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeEnabled:Z

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mIsFolded:Z

.field public mKeyGuardManager:Landroid/app/KeyguardManager;

.field public mLastUserInputDuration:J

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mMediaResourceUsed:Z

.field public mMultiWindowOn:Z

.field public final mNaturalGammaScreenModeSupported:Z

.field public final mNaturalModeVersion:I

.field public mOverheatControlSupportAppState:Z

.field public mPrevAclValue:I

.field public mPrevPropertyValue:I

.field public mPrevRenderIntentValue:I

.field public mPrevmDNIeMode:Ljava/lang/String;

.field public final mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

.field public mQuickPanelState:I

.field public mReduceBrightColorsActivatedEnabled:Z

.field public mReduceBrightColorsLevel:I

.field public mSVideoOptionScenarioEnabled:Z

.field public mSVideoScenarioEnabled:Z

.field public mScreenCurtainEnabled:Z

.field public mScreenModeSetting:I

.field public mScreenOffTomeoutAbnormal:Z

.field public mScreenStateOn:Z

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field public final mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field public mSettingCondition:Z

.field public final mSupportAPmDNIe:Z

.field public mUIScenarioEnabled:Z

.field public final mUseEyeComfortSolutionServiceConfig:Z

.field public final mUseMdnieScenarioControlConfig:Z

.field public mUseScaleFactorState:Z

.field public mUserActivityStatus:I

.field public mVideoEnd:Z

.field public mVideoModeCheck:Z

.field public mVideoScenarioEnabled:Z

.field public final mVisionBoosterStringArray:[Ljava/lang/String;

.field public mVividnessIndex:I

.field public mWhiteBalanceIndex:I

.field public mWorkingCondition:Z


# direct methods
.method public static -$$Nest$manti_glare_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "anti_glare_state SUB_LUX_VALUE : "

    const-string/jumbo v1, "anti_glare_state LUX_VALUE : "

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_SUB_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "MdnieScenarioControlService"

    const/16 v5, 0xa

    if-nez v3, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v5, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v5, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetAclModeSettings(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAclModeSettings() ACL mPrevAclValue ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - mCurrentValue ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    :cond_3
    return-void
.end method

.method public static -$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    const-string v0, " mHighDynamicRangeEnabled : "

    const-string/jumbo v1, "mAclOffEnabled : "

    const-string/jumbo v2, "MdnieScenarioControlService"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "hdr_effect_enable : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , app_setting_value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mVideoModeCheck : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    invoke-static {v2, v5, v6}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string/jumbo v5, "setVideoMode from SVideo function"

    const-string/jumbo v6, "VIDEO"

    const-string v7, "1"

    if-eqz p1, :cond_6

    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez p1, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string p2, "14"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo p2, "VIDEO_ENHANCER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo p2, "VIDEO_BRIGHTNESS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    :cond_1
    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mDexModeState : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_1
    invoke-static {v3}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setVideoMode from Video function(VIDEO_ENHANCER)"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-nez p1, :cond_a

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_5

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_7

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    :cond_7
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo p2, "UI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-static {v2, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_9

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    :cond_9
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-static {v4}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setUIMode from SVideo function"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static -$$Nest$mset_wcg_property(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenModeSetting:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDPLUS"

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    add-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    add-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWhiteBalanceIndex:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(II)V

    :cond_6
    return-void
.end method

.method public static -$$Nest$mwriteVideoEnhancerListInDataBase2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppListRegistState(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "packagename"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "settingstate"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "MSCS_APP_LIST"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const-string v0, ""

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {p0, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    const v3, 0x124f80

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    const v3, 0x1d4c0

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    const/16 v3, 0x1388

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    const/16 v4, 0x32

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsLevel:I

    const/4 v4, 0x4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenModeSetting:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWhiteBalanceIndex:I

    const/4 v5, -0x1

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevPropertyValue:I

    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevRenderIntentValue:I

    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalModeVersion:I

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    const-string v6, "/sys/class/mdnie/mdnie/scenario"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel/lux"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel1/lux"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_SUB_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel/adaptive_control"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/sensors/light_sensor/copr_roix"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    const-string/jumbo v6, "com.sec.android.gallery3d"

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevmDNIeMode:Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/String;

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSupportAPmDNIe:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    invoke-direct {v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    invoke-direct {v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    const-string/jumbo v8, "displaysolution_setting.db"

    invoke-direct {v7, v1, v8, v6, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "MdnieScenarioControlServiceThread"

    invoke-static {v7}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v8, v0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x11101fc

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v7, v9, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_0

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "DDI"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSupportAPmDNIe:Z

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070046

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070081

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107004c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107006e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107004b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070085

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070086

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070088

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070066

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070065

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070042

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070041

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070050

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107007f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107006c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1070069

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107006a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x107006b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e0073

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e0025

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e00c9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e0027

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e0028

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e002c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e002e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e002f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e0168

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e002d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e00d0

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e00cf

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    const/16 v7, 0x15

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x10700b3

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    new-array v1, v4, [I

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    move v1, v2

    :goto_0
    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    array-length v8, v7

    if-ge v1, v8, :cond_2

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget-object v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x1070054

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVisionBoosterStringArray:[Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string/jumbo v7, "MdnieScenarioControlService"

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x107008b

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    if-ne v8, v4, :cond_3

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mAclDimmingFunction "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , array lenght : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , AclVersion : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    invoke-static {v4, v1, v7}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_4
    const-string/jumbo v1, "mEnvironmentAdaptiveDisplaySupported false , mGlareReductionSupported : false"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NATURAL_MODE_TYPE"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_5

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalGammaScreenModeSupported:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNaturalModeVersion:I

    :cond_5
    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    new-instance v4, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v4}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string/jumbo v10, "low_power"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v10, "reduce_bright_colors_activated"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "reduce_bright_colors_level"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "screen_mode_setting"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "vividness_intensity"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "screen_brightness"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "screen_auto_brightness_adj"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "screen_brightness_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "lcd_curtain"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "color_blind"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "blue_light_filter"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "blue_light_filter_adaptive_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "blue_light_filter_anti_glare"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "blue_light_filter_type"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "high_brightness_mode_pms_enter"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v10, "sec_display_preset_index"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "registerDisplayStateListener"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    invoke-direct {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mFoldStateListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mFoldStateListener:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    const-string v4, "ACTION_MOVIE_PLAYER_STATE_IN"

    const-string v5, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-static {v13, v1, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    invoke-direct {v11, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v8, v4

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const-string/jumbo v1, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    const-string/jumbo v0, "persist.dm.passive.ambient_brightness"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "500"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "1000"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v2, "1000,1500"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v0, "persist.dm.passive.display_brightness"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "172"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "255"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    :goto_1
    const-string v1, "255,85"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    const-string v0, "File Close error"

    const-string/jumbo v5, "MdnieScenarioControlService"

    if-eqz p0, :cond_1

    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    move-object v1, v4

    goto :goto_3

    :cond_1
    move-object p0, v4

    :goto_1
    if-eqz p0, :cond_4

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v2, :cond_2

    :try_start_2
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v3, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v6

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, p0

    move-object p0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v4

    move-object v4, p0

    move-object p0, v1

    move-object v1, v3

    move v3, v2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v9, v4

    move-object v4, p0

    move-object p0, v1

    move-object v1, v9

    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , in : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , value : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , length : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_4
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0

    :cond_4
    :goto_6
    if-eqz p0, :cond_5

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_7
    move-object v1, v4

    :cond_6
    :goto_8
    return-object v1

    :cond_7
    return-object v4
.end method


# virtual methods
.method public final browser_brightness_decrease_mode(Z)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    const-string/jumbo v3, "MdnieScenarioControlService"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v2, v4}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v6, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v4

    goto :goto_1

    :catch_0
    const-string/jumbo v2, "failed to getMediaResourceInfo"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    goto :goto_0

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, -0x2

    const-string/jumbo v7, "screen_brightness"

    invoke-static {v2, v7, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semGetMotionIdleTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "browser_brightness_decrease_mode(), mBrowserBrightnessDecreaseEnabled : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    const-string v7, " , enabled : "

    const-string v8, " , mScreenStateOn : "

    invoke-static {v2, v6, v7, p1, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mBrowserAppLauncher : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mScreenOffTomeoutAbnormal : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mUserActivityStatus : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mMediaResourceUsed : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mLastUserInputDuration : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , mBrowserBrightnessDefault : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mBrowserBrightnessArray : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v7, v6, v4

    invoke-static {v2, v7, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v7, 0x11

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    const/4 v8, 0x3

    if-ne p1, v8, :cond_7

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    const-wide/32 v8, 0x927c0

    if-nez p1, :cond_5

    iget-wide v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    cmp-long v10, v10, v8

    if-lez v10, :cond_5

    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    aget v0, v6, v4

    if-lt p1, v0, :cond_8

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    aget p1, v6, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v4, :cond_8

    move v4, v5

    :goto_2
    add-int/lit8 v6, p1, 0x1

    if-ge v4, v6, :cond_8

    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    if-ne v6, v4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Enabled Browser Brightness Decrease Mode "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , MAX  : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "browser_brightness_on_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    if-ge v4, p1, :cond_3

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    int-to-long v8, p1

    add-long/2addr v0, v8

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    goto :goto_3

    :cond_3
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    iget-wide v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    cmp-long p1, v3, v8

    if-gtz p1, :cond_8

    :cond_6
    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_3

    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    const-string p1, "Disabled Browser Brightness Decrease Mode"

    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_8

    const-string/jumbo p1, "browser_brightness_off"

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final getAppListRegistState(Ljava/util/List;)Ljava/util/HashMap;
    .locals 11

    const-string/jumbo v0, "packagename IN(\'"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\',\'"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo p1, "packagename"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo p0, "MSCS_APP_LIST"

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public final getAppSettingState(Ljava/lang/String;)I
    .locals 11

    const-string/jumbo v0, "packagename = \'"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo p1, "MSCS_APP_LIST"

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "settingstate"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    return p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public final getScenarioMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSupportAPmDNIe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getContentMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final getting_autocurrentlimit_state()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    return p0
.end method

.method public final getting_knox_mode_enabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public final getting_setting_value()Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "hdr_effect"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    invoke-static {v1, v3, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    const-string/jumbo v0, "Use Current User"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v1, v3, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    const-string/jumbo v0, "Use Owner User"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    return p0
.end method

.method public final insertDataUsage(Ljava/lang/String;)V
    .locals 13

    const-string/jumbo v0, "MSCS_APP_LIST"

    const-string/jumbo v1, "packagename"

    invoke-static {v1, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "settingstate"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "packagename = \'"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    const-string p0, ""

    invoke-virtual {p1, v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    return-void

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public final mdnie_reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    return-void
.end method

.method public final scenario_enable_reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    return-void
.end method

.method public final setAclModeScenario(IZ)V
    .locals 5

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    return-void

    :cond_0
    if-eqz v1, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    const-string v0, ")"

    const-string v1, ") - mCurrentValue ("

    const-string/jumbo v2, "setAclModeScenario() ACL mPrevAclValue ("

    const-string/jumbo v3, "MdnieScenarioControlService"

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    return-void

    :cond_1
    if-nez p2, :cond_3

    iget p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    const/4 v4, 0x3

    if-lt p2, v4, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    move p1, v4

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCurAclValue:I

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    :cond_3
    return-void
.end method

.method public final setBrightnessScaleFactor(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_8

    const-string/jumbo v1, "brightness_scale_off"

    const-string v2, ")"

    const-string v3, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    const-string/jumbo v4, "MdnieScenarioControlService"

    if-nez p1, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string/jumbo p0, "brightness_scale_on_1"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v6, 0x2

    if-ne p1, v6, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_2

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string/jumbo p0, "brightness_scale_on_2"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_3

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string/jumbo p0, "brightness_scale_on_3"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v6, 0x4

    if-ne p1, v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_4

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string/jumbo p0, "brightness_scale_on_4"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v6, 0x5

    if-ne p1, v6, :cond_5

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_5

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string/jumbo p0, "brightness_scale_on_5"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v6, 0x6

    if-ne p1, v6, :cond_7

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_7

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v5, 0xff

    if-ne p0, v5, :cond_6

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo p0, "brightness_scale_on_6"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v1, :cond_8

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string/jumbo p0, "brightness_scale_on_7"

    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public final setCameraAppLaunch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setCameraModeEnable(Z)V

    :cond_1
    return-void
.end method

.method public final setDouAppLaunch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setDouAppModeEnable(Z)V

    :cond_1
    return-void
.end method

.method public final setMdnieScenarioMode(I)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling MdnieManager API(setContentMode("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MdnieScenarioControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0x8

    const/16 v5, 0x11

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    const-string/jumbo p1, "Start Browser Brightness Decrease Timer"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    int-to-long p0, p0

    add-long/2addr v0, p0

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/16 p0, 0x12

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public final setUIMode(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getScenarioMode()V

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAclOffEnabled : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const-string/jumbo v2, "MdnieScenarioControlService"

    invoke-static {v2, p1, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModeScenario(IZ)V

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez p1, :cond_3

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_2

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v1, "UI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-static {v0}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraAppLaunch(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    const-string/jumbo p0, "setUIMode from UI function"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final setVideoAppLaunch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoModeEnable(Z)V

    :cond_1
    return-void
.end method

.method public final setting_is_changed()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    const-string/jumbo v1, "lcd_curtain"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    const-string/jumbo v1, "color_blind"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    const-string/jumbo v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const v5, 0x927c0

    if-le v1, v5, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    const-string/jumbo v1, "blue_light_filter_adaptive_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    const-string/jumbo v1, "blue_light_filter_anti_glare"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    const-string/jumbo v1, "blue_light_filter_type"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    const-string/jumbo v1, "reduce_bright_colors_activated"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    const-string/jumbo v1, "reduce_bright_colors_level"

    const/16 v5, 0x32

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsLevel:I

    const-string/jumbo v1, "screen_mode_setting"

    const/4 v5, 0x4

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenModeSetting:I

    const-string/jumbo v1, "vividness_intensity"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVividnessIndex:I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_preset_index"

    const/4 v5, 0x2

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWhiteBalanceIndex:I

    const-string/jumbo v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "settingDB update"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v1, :cond_7

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "failed to onForegroundActivitiesChanged"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public final wcg_property_changed(II)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevPropertyValue:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevRenderIntentValue:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevPropertyValue:I

    iput p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevRenderIntentValue:I

    const-string p0, "GRAPHIC_PROPERTY("

    const-string v0, "), SurfaceFlinger_RI("

    const-string v1, ")"

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "MdnieScenarioControlService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    const-string/jumbo v1, "android.ui.ISurfaceComposer"

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    const/16 v1, 0x3ff

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v1, p1, v2, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "Failed to set display color_2"

    invoke-static {v0, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
