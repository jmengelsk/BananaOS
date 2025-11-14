.class public final Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

.field public final BOPR_MAX_VALUE:I

.field public BOPR_VALUE_STEP:I

.field public final GET_SYSTEM_SERVICES_MILLIS:I

.field public app_weighting_factor:F

.field public bopr_cumulative_count:I

.field public cal_value_sum:F

.field public defaultBedTime:I

.field public defaultWakeupTime:I

.field public final mAdaptiveBlueLightFilterSupported:Z

.field public mBedtime_friday:I

.field public mBedtime_monday:I

.field public mBedtime_saturday:I

.field public mBedtime_sunday:I

.field public mBedtime_thursday:I

.field public mBedtime_tuesday:I

.field public mBedtime_wednesday:I

.field public mBlfIndexEadOffset:I

.field public mBlueLightFilterAdaptiveModeEnabled:Z

.field public mBlueLightFilterCustomAlwaysOn:Z

.field public mBlueLightFilterEnableTime:Z

.field public mBlueLightFilterModeEnabled:Z

.field public mBlueLightFilterScheduledTime:Z

.field public mBoprSensor:Landroid/hardware/Sensor;

.field public final mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

.field public final mColorOnPixelRatioSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentStateSleep:Z

.field public mCurrentStateWakeup:Z

.field public mDefaultThemeEnabled:Z

.field public mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

.field public final mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

.field public mLastBoprBlueLightFilterIndex:I

.field public mLastDayBlueLightFilterIndex:I

.field public mLastTotalBlueLightFilterIndex:I

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public final mNaturalGammaScreenModeSupported:Z

.field public final mNaturalModeVersion:I

.field public mNightDimFontConfigValue:I

.field public mNightDimFontConfigValuePrev:I

.field public mNightDimModeEnabled:Z

.field public mPrevClutValue:I

.field public mPrevmDNIeMode:Ljava/lang/String;

.field public mScreenModeSetting:I

.field public mScreenOn:Z

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSupportAPmDNIe:Z

.field public mWakeupTime_friday:I

.field public mWakeupTime_monday:I

.field public mWakeupTime_saturday:I

.field public mWakeupTime_sunday:I

.field public mWakeupTime_thursday:I

.field public mWakeupTime_tuesday:I

.field public mWakeupTime_wednesday:I

.field public prevTotalStep:I


# direct methods
.method public static -$$Nest$mgetBoprValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    invoke-virtual {v2}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getCoprValue()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V

    :cond_0
    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    const/16 v3, 0x36

    if-ge v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v3, p0

    add-long/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p0, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    return-void
.end method

.method public static -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const-string/jumbo v3, "blue_light_filter_night_dim"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    const-string/jumbo v3, "blue_light_filter_adaptive_mode"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string/jumbo v3, "current_sec_active_themepackage"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v6

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    const-string/jumbo v3, "blue_light_filter_type"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_mode_setting"

    const/4 v7, 0x4

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mBlueLightFilterModeEnabled : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mNightDimModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBlueLightFilterAdaptiveModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mDefaultThemeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBlueLightFilterCustomAlwaysOn : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    const-string v5, "EyeComfortSolutionService"

    invoke-static {v5, v0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v7, 0x2

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v0, :cond_5

    const-string v0, "All"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz v0, :cond_6

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v4, v0

    add-long/2addr v1, v4

    invoke-virtual {v3, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "reset blue_light_filter_data_reset"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    :cond_6
    :goto_5
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevmDNIeMode:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/16 v1, 0xfa0

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    const/16 v2, 0x2710

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    const/16 v4, 0x168

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalModeVersion:I

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    new-instance v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string v0, "EyeComfortSolutionServiceThread"

    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v10, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x11101b0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    const-string v11, "EyeComfortSolutionService"

    const-string/jumbo v5, "mEnvironmentAdaptiveDisplaySupported false"

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-direct {v5, p0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-string/jumbo v7, "blue_light_filter"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v7, "blue_light_filter_night_dim"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v7, "blue_light_filter_adaptive_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v7, "current_sec_active_themepackage"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v7, "blue_light_filter_type"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "screen_mode_setting"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, -0x2

    invoke-virtual {v6, v3, v2, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    const-string/jumbo v5, "android.intent.action.USER_SWITCHED"

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-static {v7, v3, v5, v6, v8}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    const-string/jumbo v6, "android.intent.action.TIME_SET"

    const-string/jumbo v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-static {v7, v3, v5, v6, v8}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;

    invoke-direct {v5, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v4, v1

    add-long/2addr v12, v4

    invoke-virtual {v10, v3, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_CONFIG_NATURAL_MODE_TYPE"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalModeVersion:I

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_HW_MDNIE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DDI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSupportAPmDNIe:Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A_BLF : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , COPR_IP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "sys.eyecomfortsolution.ecson"

    const-string/jumbo v1, "false"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p0, "EyeComfortSolutionService Enabled"

    invoke-static {v11, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sysfsWrite(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final blue_light_filter_setting_bopr(II)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    const/high16 v1, 0x43800000    # 256.0f

    div-float v1, p1, v1

    float-to-double v3, v1

    const-wide v5, 0x40019999a0000000L    # 2.200000047683716

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    mul-float/2addr v1, v0

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-float v1, v3

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "count : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , bopr_value : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", platform_value : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , app_weighting : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , cal_value : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , sum_value : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , BOPR_MAX_VALUE : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    const-string p2, "EyeComfortSolutionService"

    invoke-static {v3, p1, p2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    const/16 v1, 0x36

    if-ge v0, v1, :cond_1

    :goto_0
    if-ge v2, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    div-int/lit8 v3, p1, 0x36

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/lit8 v5, v4, 0x1

    mul-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    if-ne v4, v2, :cond_0

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Change BLF step by B-opr, BLF dayIndex : ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "] , boprIndex : ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    const-string/jumbo v4, "]"

    invoke-static {v3, v4, p2, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final blue_light_filter_setting_day(Z)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EE"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    const-string v8, "EyeComfortSolutionService"

    const/4 v9, 0x0

    if-eqz p1, :cond_21

    iget v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    const/4 v12, 0x1

    if-lt v10, v11, :cond_1

    if-le v7, v11, :cond_0

    if-gt v7, v10, :cond_0

    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_0

    :cond_0
    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_0

    :cond_1
    if-le v7, v10, :cond_2

    if-gt v7, v11, :cond_2

    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_0

    :cond_2
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    iput-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    :goto_0
    iget-boolean v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v13, " , TimeValue : "

    const-string v14, " , Minute : "

    const-string v15, " , Hour : "

    const-string/jumbo v6, "Week : "

    if-eqz v10, :cond_c

    invoke-static {v6, v3, v15, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v9, " , wakeup state, defaultBedTime : "

    invoke-static {v7, v5, v13, v9, v10}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , start sleep : "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v9, v9, -0x168

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v10, v9, -0x168

    iget v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_VALUE_DEBOUNCE_MILLIS:I

    iget-object v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    if-gez v10, :cond_8

    add-int/lit16 v10, v9, 0x438

    if-lt v7, v10, :cond_4

    move-wide/from16 v17, v1

    const/16 v1, 0x5a0

    if-ge v7, v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-ne v7, v10, :cond_3

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v9, v12

    add-long v9, v17, v9

    invoke-virtual {v11, v1, v9, v10}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v1, v1, 0x438

    sub-int v1, v7, v1

    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    if-ltz v7, :cond_5

    if-ge v7, v9, :cond_5

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v9, v7

    rsub-int v1, v9, 0x168

    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_5
    if-ne v7, v9, :cond_6

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    const-string/jumbo v2, "WakeupTime"

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    :goto_2
    const/16 v1, 0x24

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    :cond_7
    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    move-wide/from16 v17, v1

    if-ltz v10, :cond_7

    if-lt v7, v10, :cond_a

    if-ge v7, v9, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-ne v7, v10, :cond_9

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Landroid/os/Handler;->removeMessages(I)V

    int-to-long v9, v12

    add-long v9, v17, v9

    invoke-virtual {v11, v1, v9, v10}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_9
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v1, v1, -0x168

    sub-int v1, v7, v1

    div-int/lit8 v1, v1, 0xa

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    if-ne v7, v9, :cond_b

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    const-string/jumbo v2, "NextWakeupTime"

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto :goto_3

    :goto_4
    const-string/jumbo v2, "currentWakeupStep : "

    invoke-static {v1, v2, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v9, " , start wakeup : "

    const-string v10, " , sleep state, defaultWakeupTime : "

    const-string v11, "BedTime"

    if-eqz v2, :cond_13

    invoke-static {v6, v3, v15, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7, v5, v13, v10, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v2, -0xb4

    const/4 v4, 0x0

    const-string/jumbo v5, "reset blue_light_filter_data_reset"

    if-gez v3, :cond_10

    add-int/lit16 v3, v2, 0x4ec

    if-lt v7, v3, :cond_d

    const/16 v6, 0x5a0

    if-ge v7, v6, :cond_d

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v7, v3

    const/4 v3, 0x2

    div-int/2addr v7, v3

    :goto_6
    rsub-int/lit8 v9, v7, 0x59

    goto/16 :goto_a

    :cond_d
    const/4 v3, 0x2

    const/4 v6, 0x0

    if-ltz v7, :cond_e

    if-ge v7, v2, :cond_e

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v2, v7

    rsub-int v2, v2, 0xb4

    div-int/2addr v2, v3

    rsub-int/lit8 v9, v2, 0x59

    goto/16 :goto_a

    :cond_e
    if-ne v7, v2, :cond_f

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    :goto_7
    move v9, v6

    goto/16 :goto_a

    :cond_f
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v2, 0x24

    if-ge v9, v2, :cond_1b

    :goto_8
    const/16 v9, 0x24

    goto/16 :goto_a

    :cond_10
    const/4 v6, 0x0

    if-ltz v3, :cond_1a

    if-lt v7, v3, :cond_11

    if-ge v7, v2, :cond_11

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v7, v3

    const/4 v3, 0x2

    div-int/2addr v7, v3

    goto :goto_6

    :cond_11
    if-ne v7, v2, :cond_12

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    iput v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    iput v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v2, 0x24

    if-ge v9, v2, :cond_1b

    goto :goto_8

    :cond_13
    if-nez v2, :cond_1a

    invoke-static {v6, v3, v15, v4, v14}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7, v5, v13, v10, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v2, -0xb4

    if-gez v3, :cond_17

    add-int/lit16 v3, v2, 0x4ec

    if-lt v7, v3, :cond_14

    const/16 v6, 0x5a0

    if-ge v7, v6, :cond_14

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x5

    :goto_9
    rsub-int/lit8 v9, v7, 0x23

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    if-ltz v7, :cond_15

    if-ge v7, v2, :cond_15

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v2, v7

    rsub-int v2, v2, 0xb4

    div-int/lit8 v2, v2, 0x5

    rsub-int/lit8 v9, v2, 0x23

    goto :goto_a

    :cond_15
    if-ne v7, v2, :cond_16

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto/16 :goto_8

    :cond_17
    const/4 v6, 0x0

    if-ltz v3, :cond_1a

    if-lt v7, v3, :cond_18

    if-ge v7, v2, :cond_18

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x5

    goto :goto_9

    :cond_18
    if-ne v7, v2, :cond_19

    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    invoke-virtual {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_19
    iput-boolean v6, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto/16 :goto_8

    :cond_1a
    const/4 v9, 0x0

    :cond_1b
    :goto_a
    const-string/jumbo v2, "currentSleepStep : "

    invoke-static {v9, v2, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1c
    const/4 v9, 0x0

    :goto_b
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string/jumbo v3, "] , boprIndex : ["

    const-string v4, "Change BLF step by mCurrentStateWakeup, BLF dayIndex : ["

    const-string/jumbo v5, "]"

    if-eqz v2, :cond_1d

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v2, v1, :cond_22

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-static {v2, v5, v8, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    return-void

    :cond_1d
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v1, :cond_22

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_20

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    const/16 v2, 0x24

    if-le v9, v2, :cond_1e

    move v9, v2

    :cond_1e
    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change BLF step by mCurrentStateSleep_1, BLF totalIndex : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-static {v2, v5, v8, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    :cond_1f
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v9, :cond_22

    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    if-ge v9, v1, :cond_22

    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change BLF step by mCurrentStateSleep_2, BLF totalIndex : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-static {v2, v5, v8, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    return-void

    :cond_20
    if-nez v1, :cond_22

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v9, :cond_22

    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    iput v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-static {v2, v5, v8, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    return-void

    :cond_21
    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    const-string/jumbo v2, "set ead offset to 0"

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-nez v2, :cond_22

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v2, :cond_22

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(IZ)V

    :cond_22
    return-void
.end method

.method public final setBlueLightFilterMode(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v4, " , ead offset : "

    const-string v5, " + 11] = "

    const-string v6, " , targetIndex : ["

    const-string v7, "BLF Adaptive Mode Enable : "

    const-wide v8, 0x403638e38e38e38eL    # 22.22222222222222

    const-string v10, "EyeComfortSolutionService"

    const-wide v11, 0x40b7700000000000L    # 6000.0

    if-eqz v3, :cond_1

    int-to-double v13, v1

    mul-double/2addr v13, v8

    sub-double v13, v11, v13

    invoke-static {v1, v7, v6, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    invoke-static {v3, v4, v10}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    move-wide v15, v8

    goto :goto_0

    :cond_1
    if-nez v3, :cond_0

    const-wide v13, 0x404bc71c71c71c72L    # 55.55555555555556

    move-wide v15, v8

    int-to-double v8, v1

    mul-double/2addr v8, v13

    sub-double v8, v11, v8

    invoke-static {v1, v7, v6, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlfIndexEadOffset:I

    invoke-static {v3, v4, v10}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    iget-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "mDNIe"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mMdnieManager : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v3, :cond_2

    add-int/lit8 v4, v1, 0xb

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeStep(I)Z

    iget-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    int-to-double v5, v1

    mul-double/2addr v5, v15

    sub-double/2addr v11, v5

    double-to-int v5, v11

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeCct(I)Z

    iget-object v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    :cond_3
    return-void
.end method

.method public final updateNightDimSettings(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const/16 v3, 0x4b

    const/16 v4, 0x20

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    if-eqz v1, :cond_7

    if-nez p1, :cond_0

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0xb

    if-lez p1, :cond_1

    if-gt p1, v1, :cond_1

    const/16 v1, 0x26

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_1
    const/16 v4, 0x16

    if-le p1, v1, :cond_2

    if-gt p1, v4, :cond_2

    const/16 v1, 0x2c

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    if-le p1, v4, :cond_3

    if-gt p1, v1, :cond_3

    const/16 v1, 0x32

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_3
    const/16 v4, 0x2d

    const/16 v5, 0x38

    if-le p1, v1, :cond_4

    if-gt p1, v4, :cond_4

    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_4
    if-le p1, v4, :cond_5

    if-gt p1, v5, :cond_5

    const/16 v1, 0x3e

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x44

    if-le p1, v5, :cond_6

    if-gt p1, v1, :cond_6

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_6
    if-le p1, v1, :cond_d

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_7
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_a
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    if-eqz v1, :cond_b

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_b
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_1

    :cond_c
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    :cond_d
    :goto_1
    const-string/jumbo v1, "updateNightDimSettings index : "

    const-string v3, " , mNightDimFontConfigValue : "

    invoke-static {p1, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    const-string v4, "EyeComfortSolutionService"

    invoke-static {v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    if-eq v1, v3, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateConfiguration ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") -> ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    const-string v5, ")"

    invoke-static {v3, v5, v4, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    const-string/jumbo v3, "enhanced_comfort_font_value"

    const/4 v5, -0x2

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalGammaScreenModeSupported:Z

    const-string v1, "/sys/class/lcd/panel/night_dim"

    const-string v3, "/sys/class/lcd/panel1/night_dim"

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const-string/jumbo v5, "NIGHT_DIM Mode : 0 (CLUT Off setting)"

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string/jumbo v6, "NIGHT_DIM Mode : 1 (CLUT On)"

    const/4 v7, 0x1

    if-eqz v0, :cond_12

    if-nez p1, :cond_10

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eqz p0, :cond_1d

    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_f
    const-string/jumbo p0, "NIGHT_DIM Mode : 0 (CLUT Off index)"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eq p0, v7, :cond_1d

    invoke-static {v7, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-static {v7, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_11
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz p1, :cond_13

    goto :goto_2

    :cond_13
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eqz p0, :cond_1d

    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_14
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    :goto_2
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eq p0, v7, :cond_1d

    invoke-static {v7, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {v7, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_16
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eqz p0, :cond_1d

    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_18
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    if-eqz v0, :cond_1d

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNaturalModeVersion:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenModeSetting:I

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1b

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eqz p1, :cond_1d

    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {v2, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_1a
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 0 (Vivid)"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1d

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    if-eq p1, v0, :cond_1d

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(ILjava/lang/String;)V

    :cond_1c
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPrevClutValue:I

    const-string/jumbo p0, "NIGHT_DIM_Mode : 2 (Natural)"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public final updateSleepWakeupTime(Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v0, "currentRubinState"

    const-string/jumbo v1, "isDeviceRubinSupported"

    const-string v2, "EyeComfortSolutionService"

    const-string/jumbo v3, "mRubinDataValid : "

    const-string/jumbo v4, "O-Runestone currentRubinState : "

    const-string v5, "D-Runestone isDeviceRubinSupported : "

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "content://com.samsung.android.rubin.state"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "getRubinState"

    const-string/jumbo v10, "com.samsung.android.bluelightfilter"

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    :try_start_2
    const-string/jumbo v1, "OK"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string/jumbo v5, "isEnabledInSupportedApps"

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isEnabledInSupportedApps : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_0
    :cond_2
    move v9, v6

    :catch_1
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "EE"

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "Sun"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x168

    const-string/jumbo v5, "NextWakeupTime"

    const-string/jumbo v7, "WakeupTime"

    const-string v8, "BedTime"

    const/4 v10, -0x1

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    if-eq v0, v10, :cond_6

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    if-eq v0, v10, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_5
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_6
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "Mon"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    if-eq v0, v10, :cond_b

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    if-eq v0, v10, :cond_b

    if-eqz v9, :cond_b

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_a
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_b
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_c
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "Tue"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    if-eq v0, v10, :cond_10

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    if-eq v0, v10, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_f
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_10
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "Wed"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    if-eq v0, v10, :cond_15

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    if-eq v0, v10, :cond_15

    if-eqz v9, :cond_15

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_14
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_15
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "Thu"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    if-eq v0, v10, :cond_1a

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    if-eq v0, v10, :cond_1a

    if-eqz v9, :cond_1a

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    :cond_17
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_18
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_19
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_1a
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_1b
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Fri"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    if-eq v0, v10, :cond_1f

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    if-eq v0, v10, :cond_1f

    if-eqz v9, :cond_1f

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_3

    :cond_1c
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_3

    :cond_1d
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    :cond_1e
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    :cond_1f
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    :cond_20
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    if-eq v0, v10, :cond_24

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    if-eq v0, v10, :cond_24

    if-eqz v9, :cond_24

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto :goto_3

    :cond_21
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    :cond_22
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    :cond_23
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_3

    :cond_24
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    :cond_25
    :goto_3
    const-string/jumbo v0, "updateSleepWakeupTime. type : "

    const-string v1, " , defaultBedTime : "

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , defaultWakeupTime : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-static {p1, p0, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
