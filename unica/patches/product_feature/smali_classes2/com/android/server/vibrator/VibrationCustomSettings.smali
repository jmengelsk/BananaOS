.class public final Lcom/android/server/vibrator/VibrationCustomSettings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public LEVEL_TO_MAGNITUDE:[I

.field public LEVEL_TO_TOUCH_MAGNITUDE:[I

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioMode:I

.field public mCallMagnitude:I

.field public final mContext:Landroid/content/Context;

.field public mIsEnableIntensity:Z

.field public mIsHapticSupported:Z

.field public final mLock:Ljava/lang/Object;

.field public mMaxMagnitude:I

.field public mMediaMagnitude:I

.field public mMinMagnitude:I

.field public mMotorType:I

.field public mNotiMagnitude:I

.field public final mOnModeChangedListener:Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;

.field public mOnlyWatchConnected:Z

.field public final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public mTouchMagnitude:I

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    const/16 v1, 0xa

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    const/16 v1, 0x270f

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnlyWatchConnected:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioMode:I

    new-instance v0, Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibrationCustomSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnModeChangedListener:Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    sget-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-nez p1, :cond_44

    new-instance p1, Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-direct {p1}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    sput-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    :cond_44
    sget-object p1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    return-void
.end method


# virtual methods
.method public final loadSystemSetting(ILjava/lang/String;)I
    .registers 4

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
