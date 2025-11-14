.class public final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

.field public static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field final mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

.field public mBatterySaverMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field public final mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

.field public final mFallbackEffects:Landroid/util/SparseArray;

.field public mHapticFeedbackEnabled:Z

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field final mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

.field public final mNotificationManager:Landroid/app/INotificationManager;

.field public mOnWirelessCharger:Z

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRingerMode:I

.field final mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

.field final mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

.field public mVibrateInputDevices:Z

.field public mVibrateOn:Z

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    filled-new-array {v2, v3, v5, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    new-instance p3, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {p3, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-direct {p2}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;-><init>()V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    new-instance p2, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10701dd

    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700f6

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070121

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700bd

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v2

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x2

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x15

    invoke-static {p2, v4}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-direct {p2, p1, p3}, Lcom/android/server/vibrator/VibrationCustomSettings;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public static createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    array-length v1, p0

    new-array v1, v1, [J

    move v2, p1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget v3, p0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    array-length p0, v1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    array-length p0, v1

    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p0, v0, :cond_3

    aget-wide p0, v1, p1

    invoke-static {p0, p1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "UNKNOWN INTENSITY "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "HIGH"

    return-object p0

    :cond_1
    const-string/jumbo p0, "MEDIUM"

    return-object p0

    :cond_2
    const-string p0, "LOW"

    return-object p0

    :cond_3
    const-string/jumbo p0, "OFF"

    return-object p0
.end method

.method public static toIntensity(II)I
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public final addListener(Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 8

    const-string/jumbo v0, "processStateCache size = "

    const-string/jumbo v1, "onWirelessCharger = "

    const-string/jumbo v2, "ringerMode = "

    const-string/jumbo v3, "batterySaverMode = "

    const-string/jumbo v4, "vibrateInputDevices = "

    const-string/jumbo v5, "vibrateOn = "

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v7, "VibrationSettings:"

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "normal"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "vibrate"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "silent"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "VibrationIntensities:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", default: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v6

    return-void

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-wide v2, 0x10800000018L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000013L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000017L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000014L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000015L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v2, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-wide v2, 0x1050000000aL

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x1050000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, v1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p0

    const-wide v1, 0x1050000000cL

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentIntensity(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentMagnitude(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    const/16 v0, 0x32

    if-eq p1, v0, :cond_2

    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    return p0

    :cond_1
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    return p0

    :cond_2
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    return p0

    :cond_3
    iget p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    return p0
.end method

.method public final loadSystemSetting(IILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final notifyListeners()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 7

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioManager;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V

    return-void
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v4, 0x2

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    iput v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    iput-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x3

    :try_start_1
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface {v2, v5, v3, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    const-string/jumbo v6, "VibrationSettings"

    invoke-interface {v2, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "vibrate_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "alarm_vibration_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "haptic_feedback_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "hardware_haptic_feedback_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "media_vibration_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "notification_vibration_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "ring_vibration_intensity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v1, "keyboard_vibration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v6, "plugged"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v6

    if-ne v1, v8, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    :try_start_3
    iput-boolean v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget-object v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iget-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    iput-object v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_3

    iget-object v7, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mOnModeChangedListener:Lcom/android/server/vibrator/VibrationCustomSettings$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v7, v1}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_3
    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v6, "hardware_haptic_feedback_intensity"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v6, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    const-string/jumbo v6, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationCustomSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    iput v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    iget-object v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070189

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107018a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107018b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107018c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x107018e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070188

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getRingAmplitudes mRingAmplitudes="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget-object v14, v13, Lcom/samsung/android/server/vibrator/VibratorHelper;->mRingAmplitudes:[I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "VibratorHelper"

    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v13, Lcom/samsung/android/server/vibrator/VibratorHelper;->mRingAmplitudes:[I

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getSystemAmplitudes mSystemAmplitudes="

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSystemAmplitudes:[I

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v13, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSystemAmplitudes:[I

    sget-boolean v13, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    const-string/jumbo v14, "VibrationCustomSettings"

    if-eqz v13, :cond_4

    iget v15, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    if-ne v15, v2, :cond_4

    if-eqz v5, :cond_5

    array-length v15, v5

    array-length v3, v11

    if-ne v15, v3, :cond_5

    const-string v3, "HAL DC touch amplitude list is used!!"

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_4
    if-eqz v12, :cond_5

    if-eqz v5, :cond_5

    const-string v3, "HAL amplitude list is used!!"

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iget v14, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    if-ne v14, v2, :cond_8

    if-eqz v13, :cond_17

    if-eqz v3, :cond_6

    move-object v6, v12

    :cond_6
    iput-object v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    if-eqz v3, :cond_7

    move-object v11, v5

    :cond_7
    iput-object v11, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto/16 :goto_8

    :cond_8
    if-ne v14, v4, :cond_a

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    if-eqz v3, :cond_9

    move-object v6, v12

    :cond_9
    iput-object v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    iput-object v5, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    goto :goto_8

    :cond_a
    const/4 v4, 0x3

    if-ne v14, v4, :cond_d

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    move-object v12, v10

    :goto_6
    iput-object v12, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    if-eqz v3, :cond_c

    move-object v10, v5

    :cond_c
    iput-object v10, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    goto :goto_8

    :cond_d
    const/4 v4, 0x5

    if-ne v14, v4, :cond_10

    if-eqz v3, :cond_e

    move-object v7, v12

    :cond_e
    iput-object v7, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    if-eqz v3, :cond_f

    move-object v9, v5

    :cond_f
    iput-object v9, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    invoke-static {v2}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    goto :goto_8

    :cond_10
    const/4 v4, 0x6

    if-eq v14, v4, :cond_15

    const/4 v4, 0x7

    if-ne v14, v4, :cond_11

    goto :goto_7

    :cond_11
    const/16 v4, 0x8

    if-eq v14, v4, :cond_12

    const/16 v4, 0x9

    if-ne v14, v4, :cond_17

    :cond_12
    if-eqz v3, :cond_13

    move-object v6, v12

    :cond_13
    iput-object v6, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    if-eqz v3, :cond_14

    move-object v8, v5

    :cond_14
    iput-object v8, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    invoke-static {v2}, Lcom/samsung/android/vibrator/VibRune;->SET_CIRRUS_HAPTIC(Z)V

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    goto :goto_8

    :cond_15
    :goto_7
    if-eqz v3, :cond_16

    move-object v7, v12

    :cond_16
    iput-object v7, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    iput-object v5, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    iput-boolean v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    :cond_17
    :goto_8
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget-object v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ringtone_vibration_sep_index_2"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e01a5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void

    :goto_9
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",default:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v4, v3}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mRingerMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "normal"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "vibrate"

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "silent"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOnWirelessCharger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcStatesCache="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final update()V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public final updateAmplitudeLevel()V
    .locals 8

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    const-string/jumbo v1, "VibrationCustomSettings"

    const-string/jumbo v2, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v4, v0

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v6, v5

    sub-int/2addr v6, v3

    const/4 v7, 0x2

    if-lt v4, v7, :cond_5

    if-ge v6, v7, :cond_0

    goto :goto_4

    :cond_0
    aget v1, v5, v6

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    aget v1, v0, v4

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    invoke-virtual {p0, v6, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v1, v0

    :goto_0
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    const-string/jumbo v0, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {p0, v4, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v1, v0

    :goto_1
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    const-string/jumbo v0, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-virtual {p0, v4, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v1, v0

    :goto_2
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    const-string/jumbo v0, "media_vibration_intensity"

    invoke-virtual {p0, v4, v0}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v0, v1, v0

    :goto_3
    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    return-void

    :cond_5
    :goto_4
    const-string/jumbo p0, "magnitudeMaxLevel : "

    const-string v0, ", touchMagnitudeMaxLevel : "

    invoke-static {v4, v6, p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMotorType:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v0, v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v2, v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v0, "failed to set DcHapticFeedbackMagnitude"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    :cond_7
    return-void
.end method

.method public final updateCustomSettings()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    if-ge v1, v2, :cond_0

    goto :goto_4

    :cond_0
    const-string/jumbo v2, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    aget v2, v1, v2

    :goto_0
    iput v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    const-string/jumbo v1, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v2, v1

    :goto_1
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    const-string/jumbo v1, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v2, v1

    :goto_2
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    const-string/jumbo v1, "media_vibration_intensity"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationCustomSettings;->loadSystemSetting(ILjava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    aget v1, v0, v1

    :goto_3
    iput v1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    return-void

    :cond_5
    :goto_4
    const-string/jumbo p0, "magnitudeMaxLevel : "

    const-string v2, ", touchMagnitudeMaxLevel : "

    const-string/jumbo v3, "VibrationCustomSettings"

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateRingerMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSettings(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, "vibrate_input_devices"

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    const-string/jumbo v3, "vibrate_on"

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-string/jumbo v3, "haptic_feedback_enabled"

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackEnabled:Z

    const-string/jumbo v3, "keyboard_vibration_enabled"

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    const/16 v6, 0x52

    invoke-virtual {v3, v6}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v3

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    const-string/jumbo v5, "alarm_vibration_intensity"

    const/4 v7, -0x1

    invoke-virtual {v0, v7, v1, v5}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v5

    iget-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v5

    iget-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    const/16 v10, 0x12

    invoke-virtual {v8, v10}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v8

    sget-object v11, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    const-string/jumbo v11, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {v0, v7, v1, v11}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v11

    invoke-static {v11, v8}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v11, v8}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v8

    :goto_5
    const-string/jumbo v12, "hardware_haptic_feedback_intensity"

    invoke-virtual {v0, v7, v1, v12}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v12

    invoke-static {v12, v8}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v12

    const-string/jumbo v13, "media_vibration_intensity"

    invoke-virtual {v0, v7, v1, v13}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    const/16 v15, 0x13

    invoke-virtual {v14, v15}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    const/16 v6, 0x31

    invoke-virtual {v14, v6}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v14

    const-string/jumbo v10, "SEM_VIBRATION_NOTIFICATION_INTENSITY"

    invoke-virtual {v0, v7, v1, v10}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v10

    invoke-static {v10, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v10

    if-nez v10, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v10, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v14

    :goto_6
    const-string/jumbo v4, "VIB_RECVCALL_MAGNITUDE"

    invoke-virtual {v0, v7, v1, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(IILjava/lang/String;)I

    move-result v1

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    const/16 v7, 0x21

    invoke-virtual {v4, v7}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v1

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v15, v13}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x41

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x32

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x22

    invoke-virtual {v1, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->isKeyboardVibrationSettingsSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x52

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_7
    const/16 v4, 0x52

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    :goto_7
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x42

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->updateAmplitudeLevel()V

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->updateCustomSettings()V

    monitor-exit v2

    return-void

    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
