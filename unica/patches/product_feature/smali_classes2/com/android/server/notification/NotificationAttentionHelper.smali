.class public final Lcom/android/server/notification/NotificationAttentionHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_INTERRUPTIVENESS:Z

.field static final NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field static final NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAttentionLight:Lcom/android/server/lights/LogicalLight;

.field public final mAudioGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mCallNotificationToken:Landroid/os/Binder;

.field public mCallState:I

.field public final mContext:Landroid/content/Context;

.field public mDisableNotificationEffects:Z

.field public mDisableVibration:Z

.field public final mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

.field public final mEnableNotificationAccessibilityEvents:Z

.field public mGoodCatchNotiMutedOn:Z

.field public mGoodCatchSoundPlayedOn:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasLight:Z

.field public final mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field public final mInCallNotificationUri:Landroid/net/Uri;

.field public final mInCallNotificationVolume:F

.field public mInCallStateOffHook:Z

.field public final mIntentReceiver:Lcom/android/server/notification/NotificationAttentionHelper$5;

.field public mIsAutomotive:Z

.field public mIsEnableAlertByCall:Z

.field public mIsMutedByWearableApps:I

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLights:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mNMP:Lcom/android/server/notification/NotificationManagerService$3;

.field public final mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

.field public mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public mNotificationEffectsEnabledForAutomotive:Z

.field public mNotificationLight:Lcom/android/server/lights/LogicalLight;

.field public mNotificationPulseEnabled:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mScreenOn:Z

.field public final mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

.field public mSoundNotificationKey:Ljava/lang/String;

.field public mSystemReady:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field public final mUseAttentionLight:Z

.field public mVibrateNotificationKey:Ljava/lang/String;

.field public mVibrationIndex:I

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string/jumbo v0, "NotifAttentionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    const-string/jumbo v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_INTENTS:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "state"

    invoke-direct {v1, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string/jumbo v5, "android.intent.extra.QUIET_MODE"

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v3, v4}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper;->NOTIFICATION_AVALANCHE_TRIGGER_EXTRAS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/lights/LightsManager;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/server/notification/NotificationUsageStats;Lcom/android/server/notification/NotificationManagerService$3;Lcom/android/server/notification/ZenModeHelper;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/PreferencesHelper;Landroid/os/Handler;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 p10, 0x1

    iput-boolean p10, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    iput p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    const v1, 0xc372

    iput v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationIndex:I

    iput-boolean p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    iput-boolean p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchSoundPlayedOn:Z

    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {v1, p0, p6}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;I)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    iput-boolean p6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchNotiMutedOn:Z

    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$1;

    invoke-direct {v1, p0, p10}, Lcom/android/server/notification/NotificationAttentionHelper$1;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;I)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiGoodCatchStateListener:Lcom/android/server/notification/NotificationAttentionHelper$1;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/notification/NotificationAttentionHelper$5;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$5;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIntentReceiver:Lcom/android/server/notification/NotificationAttentionHelper$5;

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    iput-object p7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    iput-object p9, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance p2, Lcom/android/server/notification/VibratorHelper;

    invoke-direct {p2, p1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    const/4 p2, 0x4

    invoke-virtual {p3, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    const/4 p4, 0x5

    invoke-virtual {p3, p4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1110297

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    iput-object p11, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iput-object p12, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHandler:Landroid/os/Handler;

    new-instance p4, Ljava/io/File;

    const-string p5, "/sys/class/sec/led/led_pattern"

    invoke-direct {p4, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->isFile()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    const p4, 0x111018c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    new-instance p4, Lcom/android/server/notification/EasyMuteController;

    const-string p5, "EasyMuteController"

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object v0, p4, Lcom/android/server/notification/EasyMuteController;->mEasyMuteMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance p7, Lcom/android/server/notification/EasyMuteController$1;

    invoke-direct {p7, p4}, Lcom/android/server/notification/EasyMuteController$1;-><init>(Lcom/android/server/notification/EasyMuteController;)V

    iput-object p7, p4, Lcom/android/server/notification/EasyMuteController;->mMotionListener:Lcom/android/server/notification/EasyMuteController$1;

    iput-object p1, p4, Lcom/android/server/notification/EasyMuteController;->mContext:Landroid/content/Context;

    new-instance p7, Landroid/os/Handler;

    invoke-direct {p7}, Landroid/os/Handler;-><init>()V

    const-string/jumbo p8, "audio"

    invoke-virtual {p1, p8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/media/AudioManager;

    iput-object p8, p4, Lcom/android/server/notification/EasyMuteController;->mAudioManager:Landroid/media/AudioManager;

    new-instance p8, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;

    invoke-direct {p8, p4, p7}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;-><init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p7

    const-string/jumbo p9, "master_motion"

    invoke-static {p9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p9

    invoke-virtual {p7, p9, p6, p8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p7

    const-string/jumbo p9, "motion_overturn"

    invoke-static {p9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p9

    invoke-virtual {p7, p9, p6, p8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p8, p6}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->onChange(Z)V

    :try_start_d4
    const-string/jumbo p7, "android.media.IRingtonePlayer"

    invoke-static {p7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p7

    new-array p8, p10, [Ljava/lang/Class;

    const-class p9, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object p9, p8, p6

    const-string/jumbo p9, "setOnCompletionListener"

    invoke-virtual {p7, p9, p8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p7

    iput-object p7, p4, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_ea
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d4 .. :try_end_ea} :catch_f4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d4 .. :try_end_ea} :catch_eb

    goto :goto_fb

    :catch_eb
    const-string/jumbo p7, "NoSuchMethodException"

    invoke-static {p5, p7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p4, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_fb

    :catch_f4
    const-string p7, "ClassNotFoundException"

    invoke-static {p5, p7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p4, Lcom/android/server/notification/EasyMuteController;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    :goto_fb
    iput-object p4, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p4, "device_provisioned"

    invoke-static {p1, p4, p6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_10c

    iput-boolean p10, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    :cond_10c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "file://"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const p4, 0x1040381

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    const p1, 0x1050102

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    new-instance p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSettingsObserver:Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->loadUserSettings()V

    return-void
.end method

.method public static callStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const-string v0, "CALL_STATE_UNKNOWN_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "CALL_STATE_OFFHOOK"

    return-object p0

    :cond_12
    const-string p0, "CALL_STATE_RINGING"

    return-object p0

    :cond_15
    const-string p0, "CALL_STATE_IDLE"

    return-object p0
.end method

.method public static isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_25

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p0

    if-eq p0, v2, :cond_23

    iget-boolean p0, p1, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->isCurrentProfile:Z

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I
    .registers 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x1

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v0, :cond_15

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    if-nez v0, :cond_15

    return v5

    :cond_15
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string/jumbo v7, "NotifAttentionHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "buzzBeepBlinkLocked "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget-boolean v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    const/4 v8, 0x3

    if-eqz v7, :cond_41

    iget v7, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-le v7, v8, :cond_3f

    :goto_3d
    move v7, v4

    goto :goto_46

    :cond_3f
    move v7, v5

    goto :goto_46

    :cond_41
    iget v7, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-lt v7, v8, :cond_3f

    goto :goto_3d

    :goto_46
    if-eqz v6, :cond_52

    iget-object v9, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    move v9, v4

    goto :goto_53

    :cond_52
    move v9, v5

    :goto_53
    if-eqz v6, :cond_5f

    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    move v11, v4

    goto :goto_60

    :cond_5f
    move v11, v5

    :goto_60
    iget-boolean v12, v2, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    const/16 v13, 0x20

    if-eqz v12, :cond_6d

    iget v12, v2, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_6d

    move v12, v4

    goto :goto_6e

    :cond_6d
    move v12, v5

    :goto_6e
    iget-boolean v14, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v14, :cond_83

    iget v14, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-le v14, v4, :cond_83

    if-nez v12, :cond_83

    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v12

    if-eqz v12, :cond_83

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    move v12, v4

    goto :goto_84

    :cond_83
    move v12, v5

    :goto_84
    iput-boolean v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    move/from16 v16, v13

    const/16 v17, 0x8

    const/16 v18, 0x4

    if-eqz v7, :cond_5b0

    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v19

    if-eqz v19, :cond_5b0

    move/from16 v19, v8

    iget-boolean v8, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    if-eqz v8, :cond_5b0

    iget-object v8, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v8, :cond_5b0

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    if-eqz v8, :cond_ac

    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v15, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ac

    move v15, v4

    goto :goto_ad

    :cond_ac
    move v15, v5

    :goto_ad
    iget-object v14, v2, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x4

    if-eqz v20, :cond_b8

    move v5, v4

    :cond_b8
    if-nez v14, :cond_f0

    if-eqz v15, :cond_f0

    iget-object v13, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v13

    if-ne v13, v4, :cond_f0

    iget-object v13, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    move/from16 v28, v4

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_f2

    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iget-object v13, v4, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v13

    if-eqz v13, :cond_e8

    iget-object v13, v4, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    invoke-static {v13, v5}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v13

    if-eqz v13, :cond_e8

    move-object v14, v13

    goto :goto_f2

    :cond_e8
    iget-object v4, v4, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-static {v4, v5}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v4

    move-object v14, v4

    goto :goto_f2

    :cond_f0
    move/from16 v28, v4

    :cond_f2
    :goto_f2
    if-eqz v14, :cond_f7

    move/from16 v4, v28

    goto :goto_f8

    :cond_f7
    const/4 v4, 0x0

    :goto_f8
    if-nez v15, :cond_10e

    if-eqz v4, :cond_fd

    goto :goto_10e

    :cond_fd
    move/from16 v20, v0

    move/from16 v29, v4

    move/from16 v27, v5

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v31, v10

    move/from16 v4, v16

    :goto_10b
    const/4 v7, 0x6

    goto/16 :goto_2e3

    :cond_10e
    :goto_10e
    iget-object v13, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    move/from16 v20, v0

    iget-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_130

    iget v0, v13, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_130

    const/16 v0, 0x40

    :goto_122
    move/from16 v29, v4

    move/from16 v27, v5

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v31, v10

    const/4 v7, 0x6

    :goto_12d
    move v4, v0

    goto/16 :goto_2e3

    :cond_130
    iget-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->mPostSilently:Z

    if-eqz v0, :cond_137

    const/16 v0, 0x80

    goto :goto_122

    :cond_137
    iget v0, v3, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16e

    sget-object v13, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v4

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xd

    invoke-static {v4, v0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    const/16 v0, 0x100

    :goto_164
    move v4, v0

    move/from16 v27, v5

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v31, v10

    goto :goto_10b

    :cond_16e
    move/from16 v29, v4

    const/16 v4, 0xd

    iget-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    if-eqz v0, :cond_181

    move/from16 v27, v5

    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v31, v10

    const/16 v4, 0x200

    goto :goto_10b

    :cond_181
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_192

    invoke-virtual {v13}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    if-eqz v0, :cond_192

    const/16 v0, 0x400

    goto :goto_164

    :cond_192
    invoke-virtual {v13}, Landroid/app/Notification;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_19b

    const/16 v0, 0x800

    goto :goto_164

    :cond_19b
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    monitor-enter v13

    :try_start_1a4
    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    move/from16 v27, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v30, v7

    iget-object v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    move/from16 v32, v9

    move-object/from16 v31, v10

    iget-wide v9, v7, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    sub-long v9, v4, v9

    const-wide/16 v21, 0x0

    cmp-long v21, v9, v21

    if-ltz v21, :cond_1cb

    const-wide/16 v21, 0x3e8

    cmp-long v9, v9, v21

    if-gez v9, :cond_1c7

    goto :goto_1cb

    :cond_1c7
    iput-wide v4, v7, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    const/4 v4, 0x0

    goto :goto_1cd

    :cond_1cb
    :goto_1cb
    move/from16 v4, v28

    :goto_1cd
    if-eqz v4, :cond_1d5

    iget v5, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I
    :try_end_1d5
    .catchall {:try_start_1a4 .. :try_end_1d5} :catchall_5ad

    :cond_1d5
    monitor-exit v13

    if-eqz v4, :cond_1fc

    const-string/jumbo v0, "NotifAttentionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Muting recently noisy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v28

    iput-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    const/16 v0, 0x1000

    move v4, v0

    goto/16 :goto_10b

    :cond_1fc
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v4, v0}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_220

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_220

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_220

    const/4 v7, 0x6

    goto :goto_23d

    :cond_220
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_247

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const/4 v7, 0x6

    if-ne v4, v7, :cond_248

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_248

    :goto_23d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_248

    const/16 v0, 0x2000

    goto/16 :goto_12d

    :cond_247
    const/4 v7, 0x6

    :cond_248
    iget-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-eqz v0, :cond_25e

    iget-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    if-nez v0, :cond_25c

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0

    if-eqz v0, :cond_25e

    :cond_25c
    const/4 v0, 0x1

    goto :goto_25f

    :cond_25e
    const/4 v0, 0x0

    :goto_25f
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v4, :cond_289

    iget-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    if-nez v4, :cond_289

    if-eqz v0, :cond_289

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_289

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_289

    const/16 v0, 0x4000

    goto/16 :goto_12d

    :cond_289
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2a0

    :goto_29d
    move/from16 v4, v16

    goto :goto_2e3

    :cond_2a0
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    iget v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_2b4

    const/4 v10, 0x2

    if-ne v5, v10, :cond_2e2

    :cond_2b4
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    move-result v5

    if-ne v5, v9, :cond_2e2

    const-string/jumbo v5, "NotifAttentionHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "NMS : muted by wearable app condition : ByListenerHint="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", ByWearableAppList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v10, v4, v0}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29d

    :cond_2e2
    const/4 v4, 0x0

    :goto_2e3
    if-nez v4, :cond_599

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_2ef

    const/4 v5, 0x1

    goto :goto_2f0

    :cond_2ef
    const/4 v5, 0x0

    :goto_2f0
    if-eqz v29, :cond_2f6

    if-nez v5, :cond_2f6

    const/4 v0, 0x1

    goto :goto_2f7

    :cond_2f6
    const/4 v0, 0x0

    :goto_2f7
    if-nez v12, :cond_2fc

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V

    :cond_2fc
    if-eqz v20, :cond_306

    const-string/jumbo v9, "NotifAttentionHelper"

    const-string v10, "Interrupting!"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_306
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-eqz v15, :cond_4c1

    if-eqz v9, :cond_313

    move/from16 v39, v4

    const/4 v0, 0x1

    goto/16 :goto_4c4

    :cond_313
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v10

    if-eqz v10, :cond_34c

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    if-eqz v0, :cond_347

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_342

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v8

    const-string/jumbo v10, "in_call_notification_enabled"

    const/4 v12, 0x1

    invoke-static {v0, v10, v12, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_342

    new-instance v0, Lcom/android/server/notification/NotificationAttentionHelper$4;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationAttentionHelper$4;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_342
    move/from16 v39, v4

    :goto_344
    const/4 v0, 0x1

    goto/16 :goto_475

    :cond_347
    move/from16 v39, v4

    :cond_349
    :goto_349
    const/4 v0, 0x0

    goto/16 :goto_475

    :cond_34c
    const-string/jumbo v10, "NotifAttentionHelper"

    const-string/jumbo v12, "Playing sound with new AudioAttributes - "

    const-string/jumbo v13, "Playing sound "

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_364

    const/16 v36, 0x1

    goto :goto_366

    :cond_364
    const/16 v36, 0x0

    :goto_366
    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    move/from16 v39, v4

    const/4 v4, 0x2

    if-ne v7, v4, :cond_373

    const/4 v4, 0x1

    goto :goto_374

    :cond_373
    const/4 v4, 0x0

    :goto_374
    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    move/from16 v21, v0

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    move/from16 v22, v4

    const/4 v4, 0x1

    if-eq v7, v4, :cond_394

    if-nez v0, :cond_392

    if-eqz v22, :cond_392

    goto :goto_394

    :cond_392
    const/4 v4, 0x0

    goto :goto_395

    :cond_394
    :goto_394
    const/4 v4, 0x1

    :goto_395
    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v7

    if-nez v7, :cond_349

    sget-boolean v7, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    if-eqz v7, :cond_3a3

    if-nez v4, :cond_3a7

    :cond_3a3
    if-eqz v0, :cond_349

    if-eqz v22, :cond_349

    :cond_3a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v40

    :try_start_3ab
    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v33

    if-eqz v33, :cond_461

    if-eqz v20, :cond_3d5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " with attributes "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d5

    :catchall_3cf
    move-exception v0

    goto/16 :goto_471

    :catch_3d2
    move-exception v0

    goto/16 :goto_46b

    :cond_3d5
    :goto_3d5
    if-eqz v7, :cond_45c

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-static {v0, v8, v7}, Landroid/media/RingtoneManager;->getActualAchRingtoneUriIfAvailable(Landroid/content/Context;Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v21, :cond_430

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v7

    if-nez v7, :cond_430

    if-eqz v0, :cond_430

    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_430

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v7, v8}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    const-string/jumbo v8, "RINGTONE_HAPTIC"

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v35

    const/high16 v38, 0x3f800000  # 1.0f

    move-object/from16 v34, v0

    move-object/from16 v37, v7

    invoke-interface/range {v33 .. v38}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    goto :goto_447

    :cond_430
    if-nez v4, :cond_447

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v22

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    const/high16 v25, 0x3f800000  # 1.0f

    move-object/from16 v24, v0

    move-object/from16 v21, v8

    move-object/from16 v20, v33

    move/from16 v23, v36

    invoke-interface/range {v20 .. v25}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    :cond_447
    :goto_447
    if-nez v4, :cond_45c

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    if-eqz v0, :cond_45c

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    const-string v0, "Easymute controller is registered."

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45c
    .catch Landroid/os/RemoteException; {:try_start_3ab .. :try_end_45c} :catch_3d2
    .catchall {:try_start_3ab .. :try_end_45c} :catchall_3cf

    :cond_45c
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_344

    :cond_461
    :try_start_461
    const-string v0, "Couldn\'t get a ringtone player!!"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_466
    .catch Landroid/os/RemoteException; {:try_start_461 .. :try_end_466} :catch_3d2
    .catchall {:try_start_461 .. :try_end_466} :catchall_3cf

    :goto_466
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_349

    :goto_46b
    :try_start_46b
    const-string v4, "Couldn\'t play notification sound!! : "

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_470
    .catchall {:try_start_46b .. :try_end_470} :catchall_3cf

    goto :goto_466

    :goto_471
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_475
    if-eqz v0, :cond_4c4

    iput-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    sget-object v20, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-eqz v20, :cond_4c4

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchSoundPlayedOn:Z

    if-eqz v4, :cond_4c4

    const-string/jumbo v21, "playback"

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v22

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v23

    const-string v24, ""

    const-string v25, ""

    invoke-virtual/range {v20 .. v25}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "NotifAttentionHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Playing sound : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c4

    :cond_4c1
    move/from16 v39, v4

    const/4 v0, 0x0

    :cond_4c4
    :goto_4c4
    sget-boolean v4, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    const/4 v7, -0x1

    if-eqz v4, :cond_4de

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v4

    if-nez v4, :cond_4de

    iget v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationIndex:I

    if-eqz v27, :cond_4d7

    const/4 v8, 0x0

    goto :goto_4d8

    :cond_4d7
    move v8, v7

    :goto_4d8
    sget-object v10, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v4, v8, v10}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v14

    :cond_4de
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v4

    if-nez v4, :cond_546

    if-eqz v29, :cond_546

    if-nez v5, :cond_546

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    if-nez v4, :cond_546

    if-eqz v9, :cond_4f0

    :goto_4ee
    const/4 v4, 0x1

    goto :goto_547

    :cond_4f0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_4f4
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    if-eqz v4, :cond_513

    iget-object v10, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_513

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iget-object v4, v4, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/16 v10, -0xf

    invoke-virtual {v4, v10}, Landroid/os/Vibrator;->cancel(I)V

    goto :goto_513

    :catchall_511
    move-exception v0

    goto :goto_542

    :cond_513
    :goto_513
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_527

    iget-object v10, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iget v10, v10, Lcom/android/server/notification/VibratorHelper;->mDefaultVibrationAmplitude:I

    invoke-virtual {v14, v10}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    move-result-object v14

    :cond_527
    if-eqz v15, :cond_538

    new-instance v4, Ljava/lang/Thread;

    new-instance v10, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v10, v1, v2, v14, v12}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;I)V

    invoke-direct {v4, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_53c

    :cond_538
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v14, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_53c
    .catchall {:try_start_4f4 .. :try_end_53c} :catchall_511

    :goto_53c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    goto :goto_4ee

    :goto_542
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_546
    const/4 v4, 0x0

    :goto_547
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v8

    if-eqz v8, :cond_585

    if-eqz v29, :cond_585

    if-nez v5, :cond_585

    iget-boolean v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    if-eqz v5, :cond_585

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_559
    invoke-static/range {v19 .. v19}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v8

    sget-object v9, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v8, v7, v9}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v7

    if-eqz v15, :cond_576

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v2, v7, v10}, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;I)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_57a

    :catchall_574
    move-exception v0

    goto :goto_581

    :cond_576
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    :try_end_57a
    .catchall {:try_start_559 .. :try_end_57a} :catchall_574

    :goto_57a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_585

    :goto_581
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_585
    :goto_585
    iget-object v5, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move/from16 v9, v19

    invoke-virtual {v5, v7, v9, v8}, Landroid/view/accessibility/AccessibilityManager;->startFlashNotificationEvent(Landroid/content/Context;ILjava/lang/String;)Z

    move v5, v0

    move v0, v4

    move/from16 v4, v29

    goto :goto_5bc

    :cond_599
    move/from16 v39, v4

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5a8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    goto :goto_5bc

    :cond_5a8
    move/from16 v4, v29

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_5bc

    :catchall_5ad
    move-exception v0

    :try_start_5ae
    monitor-exit v13
    :try_end_5af
    .catchall {:try_start_5ae .. :try_end_5af} :catchall_5ad

    throw v0

    :cond_5b0
    move/from16 v30, v7

    move/from16 v32, v9

    move-object/from16 v31, v10

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v39, 0x0

    :goto_5bc
    if-eqz v32, :cond_5c3

    if-nez v15, :cond_5c3

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    :cond_5c3
    if-eqz v11, :cond_5ca

    if-nez v4, :cond_5ca

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    :cond_5ca
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    iget-boolean v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    const/4 v8, 0x7

    if-nez v7, :cond_5d6

    goto :goto_61b

    :cond_5d6
    iget-boolean v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    if-nez v7, :cond_5db

    goto :goto_61b

    :cond_5db
    iget-boolean v7, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-nez v7, :cond_5e0

    goto :goto_61b

    :cond_5e0
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    if-nez v7, :cond_5e5

    goto :goto_61b

    :cond_5e5
    if-nez v30, :cond_5e8

    goto :goto_61b

    :cond_5e8
    iget v7, v2, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5ef

    goto :goto_61b

    :cond_5ef
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-boolean v9, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v9, :cond_600

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_600

    goto :goto_61b

    :cond_600
    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_615

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v7

    if-eqz v7, :cond_615

    goto :goto_61b

    :cond_615
    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v7

    if-nez v7, :cond_624

    :goto_61b
    if-eqz v4, :cond_620

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_620
    const/4 v4, 0x0

    const/4 v10, 0x0

    goto/16 :goto_6a0

    :cond_624
    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mUseAttentionLight:Z

    if-eqz v4, :cond_69e

    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    if-eqz v4, :cond_69e

    check-cast v4, Lcom/android/server/lights/LightsService$LightImpl;

    const-string/jumbo v6, "LightsService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[api] pulse : lightType: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v9, v9, Landroid/hardware/light/HwLight;->type:B

    invoke-static {v9}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", color: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0xffffff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", onMS: 7"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v4

    :try_start_66f
    iget-boolean v6, v4, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v6, :cond_680

    const-string/jumbo v6, "LightsService"

    const-string/jumbo v7, "[SvcLED] pulse : Not Support"

    invoke-static {v6, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67c
    const/4 v10, 0x0

    goto :goto_69a

    :catchall_67e
    move-exception v0

    goto :goto_69c

    :cond_680
    iget v6, v4, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v6, :cond_67c

    const/16 v6, 0x3e8

    const/4 v10, 0x2

    invoke-virtual {v4, v9, v10, v8, v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    const/4 v10, 0x0

    iput v10, v4, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iget-object v6, v4, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v6, v6, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v11, v8

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_69a
    monitor-exit v4

    goto :goto_69f

    :goto_69c
    monitor-exit v4
    :try_end_69d
    .catchall {:try_start_66f .. :try_end_69d} :catchall_67e

    throw v0

    :cond_69e
    const/4 v10, 0x0

    :goto_69f
    const/4 v4, 0x1

    :goto_6a0
    if-eqz v5, :cond_6a4

    const/4 v6, 0x2

    goto :goto_6a5

    :cond_6a4
    move v6, v10

    :goto_6a5
    or-int/2addr v6, v0

    if-eqz v4, :cond_6ab

    move/from16 v7, v18

    goto :goto_6ac

    :cond_6ab
    move v7, v10

    :goto_6ac
    or-int/2addr v6, v7

    or-int v12, v6, v39

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_6c5

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_6c5

    const/4 v7, 0x1

    goto :goto_6c6

    :cond_6c5
    move v7, v10

    :goto_6c6
    if-eqz v6, :cond_6d2

    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v9, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d2

    const/4 v6, 0x1

    goto :goto_6d3

    :cond_6d2
    move v6, v10

    :goto_6d3
    iget-object v9, v2, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    if-nez v9, :cond_715

    if-eqz v6, :cond_715

    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_715

    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v13, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v13}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    if-nez v11, :cond_715

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_6fa

    const/4 v9, 0x1

    goto :goto_6fb

    :cond_6fa
    move v9, v10

    :goto_6fb
    iget-object v11, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iget-object v13, v11, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    move-result v13

    if-eqz v13, :cond_70f

    iget-object v13, v11, Lcom/android/server/notification/VibratorHelper;->mFallbackPwlePattern:[F

    invoke-static {v13, v9}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    move-result-object v13

    if-eqz v13, :cond_70f

    move-object v9, v13

    goto :goto_715

    :cond_70f
    iget-object v11, v11, Lcom/android/server/notification/VibratorHelper;->mFallbackPattern:[J

    invoke-static {v11, v9}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    move-result-object v9

    :cond_715
    :goto_715
    iget-object v11, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v11

    const/16 v13, 0x10

    and-int/2addr v11, v13

    if-eqz v11, :cond_72a

    iget-object v11, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v11

    if-nez v11, :cond_72a

    const/4 v11, 0x1

    goto :goto_72b

    :cond_72a
    move v11, v10

    :goto_72b
    if-eqz v9, :cond_72f

    const/4 v9, 0x1

    goto :goto_730

    :cond_72f
    move v9, v10

    :goto_730
    if-nez v6, :cond_734

    if-eqz v7, :cond_736

    :cond_734
    if-eqz v5, :cond_73f

    :cond_736
    if-nez v9, :cond_73a

    if-eqz v11, :cond_73d

    :cond_73a
    if-nez v0, :cond_73d

    goto :goto_73f

    :cond_73d
    move v14, v10

    goto :goto_740

    :cond_73f
    :goto_73f
    const/4 v14, 0x1

    :goto_740
    if-eqz v14, :cond_847

    iget-object v15, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget-object v8, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v10

    iget v13, v2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    move/from16 v21, v0

    iget-object v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/16 v22, 0xe

    move/from16 v23, v4

    const/4 v4, 0x3

    if-ge v13, v4, :cond_77e

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_76f

    move v8, v4

    :goto_76c
    move v4, v14

    goto/16 :goto_7e6

    :cond_76f
    invoke-virtual {v0, v8, v10}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_77a

    :goto_775
    move v4, v14

    move/from16 v8, v22

    goto/16 :goto_7e6

    :cond_77a
    const/4 v4, 0x0

    :goto_77b
    const/4 v8, 0x0

    goto/16 :goto_7e6

    :cond_77e
    iget v4, v3, Lcom/android/server/notification/NotificationAttentionHelper$Signals;->listenerHints:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/notification/NotificationAttentionHelper;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_78a

    move v4, v14

    const/4 v8, 0x2

    goto/16 :goto_7e6

    :cond_78a
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    if-eqz v4, :cond_792

    move v4, v14

    move/from16 v8, v18

    goto :goto_7e6

    :cond_792
    invoke-virtual {v0, v8, v10}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_799

    goto :goto_775

    :cond_799
    iget-boolean v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    if-eqz v4, :cond_7e4

    iget-object v4, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_7a2

    goto :goto_7e4

    :cond_7a2
    invoke-static/range {p1 .. p2}, Lcom/android/server/notification/NotificationAttentionHelper;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)Z

    move-result v3

    if-nez v3, :cond_7ab

    const/16 v8, 0xc

    goto :goto_76c

    :cond_7ab
    iget-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v3, :cond_7b8

    iget v3, v15, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7b8

    move v4, v14

    const/4 v8, 0x6

    goto :goto_7e6

    :cond_7b8
    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_7c9

    invoke-virtual {v15}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_7c9

    move v4, v14

    const/4 v8, 0x7

    goto :goto_7e6

    :cond_7c9
    iget-boolean v3, v2, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    if-eqz v3, :cond_7d1

    move v4, v14

    const/16 v8, 0xd

    goto :goto_7e6

    :cond_7d1
    iget v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mIsMutedByWearableApps:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7d9

    const/4 v13, 0x2

    if-ne v3, v13, :cond_7e2

    :cond_7d9
    invoke-virtual {v0, v10, v8}, Lcom/android/server/notification/PreferencesHelper;->getWearableAppMuted(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7e2

    const/16 v8, 0x12

    goto :goto_76c

    :cond_7e2
    move v4, v14

    goto :goto_77b

    :cond_7e4
    :goto_7e4
    const/4 v8, 0x5

    goto :goto_76c

    :goto_7e6
    const/16 v0, 0xb

    if-nez v6, :cond_7ef

    if-eqz v7, :cond_7ed

    goto :goto_7ef

    :cond_7ed
    const/4 v10, 0x2

    goto :goto_823

    :cond_7ef
    :goto_7ef
    if-nez v5, :cond_7ed

    if-nez v8, :cond_7ed

    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v3

    if-eqz v3, :cond_7ff

    move/from16 v3, v17

    const/4 v10, 0x2

    goto :goto_824

    :cond_7ff
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    const/4 v10, 0x2

    if-eq v3, v10, :cond_80a

    move v3, v0

    goto :goto_824

    :cond_80a
    iget-object v3, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v6}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-gtz v3, :cond_81b

    const/16 v3, 0x9

    goto :goto_824

    :cond_81b
    if-eqz v7, :cond_820

    const/16 v3, 0x11

    goto :goto_824

    :cond_820
    const/16 v3, 0xa

    goto :goto_824

    :goto_823
    move v3, v8

    :goto_824
    if-nez v9, :cond_828

    if-eqz v11, :cond_844

    :cond_828
    if-nez v21, :cond_844

    if-nez v8, :cond_844

    iget-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    if-nez v6, :cond_837

    :goto_834
    move v14, v4

    move v4, v0

    goto :goto_84e

    :cond_837
    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableVibration:Z

    if-eqz v0, :cond_83e

    const/16 v0, 0xf

    goto :goto_834

    :cond_83e
    if-eqz v11, :cond_844

    move v14, v4

    const/16 v4, 0x10

    goto :goto_84e

    :cond_844
    move v14, v4

    move v4, v8

    goto :goto_84e

    :cond_847
    move/from16 v21, v0

    move/from16 v23, v4

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_84e
    if-eqz v5, :cond_852

    move v15, v10

    goto :goto_853

    :cond_852
    const/4 v15, 0x0

    :goto_853
    or-int v0, v21, v15

    if-eqz v23, :cond_85a

    move/from16 v26, v18

    goto :goto_85c

    :cond_85a
    const/16 v26, 0x0

    :goto_85c
    or-int v0, v0, v26

    if-gtz v0, :cond_862

    if-eqz v14, :cond_91b

    :cond_862
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    const-string v7, "INTERRUPTIVENESS: "

    const-string/jumbo v8, "NotifAttentionHelper"

    sget-boolean v9, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v6, :cond_89a

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_89a

    if-eqz v9, :cond_8dd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: summary"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8dd

    :cond_89a
    iget-boolean v6, v2, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    if-eqz v6, :cond_8bb

    if-eqz v9, :cond_8dd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: bubble"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8dd

    :cond_8bb
    if-lez v0, :cond_8dd

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    if-eqz v9, :cond_8dd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is interruptive: alerted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8dd
    :goto_8dd
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0xc7

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v6

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v21, :cond_8fd

    move v0, v13

    goto :goto_8fe

    :cond_8fd
    move v0, v4

    :goto_8fe
    if-eqz v5, :cond_901

    goto :goto_902

    :cond_901
    move v13, v3

    :goto_902
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v11, v31

    move-object/from16 v10, v31

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v6, 0x6b8c

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_91b
    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-boolean v6, v2, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v6, :cond_92b

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_951

    :cond_92b
    iget v0, v0, Landroid/app/Notification;->flags:I

    const/16 v6, 0x200

    and-int/2addr v0, v6

    if-nez v0, :cond_951

    if-eqz v5, :cond_936

    if-nez v21, :cond_951

    :cond_936
    if-eqz v5, :cond_93a

    move v9, v4

    goto :goto_93b

    :cond_93a
    move v9, v3

    :goto_93b
    iget-object v6, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mNotiSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-eqz v6, :cond_951

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationAttentionHelper;->mGoodCatchNotiMutedOn:Z

    if-eqz v0, :cond_951

    iget-object v0, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "noti_muted"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_951
    if-nez v21, :cond_959

    if-eqz v5, :cond_956

    goto :goto_959

    :cond_956
    const-wide/16 v0, -0x1

    goto :goto_95d

    :cond_959
    :goto_959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_95d
    iput-wide v0, v2, Lcom/android/server/notification/NotificationRecord;->mLastAudiblyAlertedMs:J

    return v12
.end method

.method public final clearEffectsLocked(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    :cond_16
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    :cond_21
    return-void
.end method

.method public final clearSoundLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEasyMuteController:Lcom/android/server/notification/EasyMuteController;

    const-string v1, "Failed clearSoundLocked: "

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_b
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_19
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p0

    goto :goto_3f

    :catch_19
    move-exception p0

    goto :goto_24

    :cond_1b
    :goto_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    return-void

    :goto_24
    :try_start_24
    const-string/jumbo v4, "NotifAttentionHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_3e
    return-void

    :goto_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_47
    throw p0
.end method

.method public final clearVibrateLocked()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iget-object p0, p0, Lcom/android/server/notification/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    const/16 v2, -0xf

    invoke-virtual {p0, v2}, Landroid/os/Vibrator;->cancel(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;I)Ljava/lang/String;
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_8

    const-string/jumbo p0, "booleanState"

    return-object p0

    :cond_8
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_10

    const-string/jumbo p0, "listenerHints"

    return-object p0

    :cond_10
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_33

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x6

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v2, :cond_23

    const-string/jumbo p0, "listenerNoti"

    return-object p0

    :cond_23
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_33

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p2

    if-ne p2, v2, :cond_33

    const-string/jumbo p0, "listenerCall"

    return-object p0

    :cond_33
    iget p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    if-eqz p2, :cond_45

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-nez p0, :cond_45

    const-string/jumbo p0, "callState"

    return-object p0

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "\n  Notification attention state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSoundNotificationKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mVibrateNotificationKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mDisableNotificationEffects="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mDisableNotificationEffects:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCallState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    invoke-static {v2}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSystemReady="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mNotificationPulseEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    invoke-static {v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_bb

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Lights List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_99
    if-ge v2, v1, :cond_b6

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_a5

    const-string v3, "  > "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a8

    :cond_a5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_a8
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_b6
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bb
    return-void
.end method

.method public getPolitenessStrategy()Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVibratorHelper()Lcom/android/server/notification/VibratorHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-object p0
.end method

.method public final isInCall()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    return v1
.end method

.method public final isInsistentUpdate(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    :cond_1c
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSoundNotificationKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p1

    const/4 v1, 0x6

    if-eqz p1, :cond_3c

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-ne v2, v1, :cond_3c

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3c

    goto :goto_58

    :cond_3c
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    if-eqz p0, :cond_5a

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    if-ne p1, v1, :cond_5a

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5a

    :goto_58
    const/4 p0, 0x1

    return p0

    :cond_5a
    const/4 p0, 0x0

    return p0
.end method

.method public final loadUserSettings()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eq v1, v3, :cond_21

    iput-boolean v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_23

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_1f

    throw p0
.end method

.method public final sendAccessibilityEvent(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mEnableNotificationAccessibilityEvents:Z

    if-nez v0, :cond_d

    goto :goto_67

    :cond_d
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget v1, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    const/16 v3, -0x3e8

    if-ne v1, v3, :cond_33

    iget v1, v0, Landroid/app/Notification;->visibility:I

    :cond_33
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-ltz p1, :cond_50

    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    if-eq v1, p1, :cond_50

    iget-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto :goto_53

    :cond_50
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :goto_53
    iget-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public setInCallStateOffHook(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallStateOffHook:Z

    return-void
.end method

.method public setIsAutomotive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mIsAutomotive:Z

    return-void
.end method

.method public setKeyguardManager(Landroid/app/KeyguardManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public setLights(Lcom/android/server/lights/LogicalLight;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mAttentionLight:Lcom/android/server/lights/LogicalLight;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mHasLight:Z

    return-void
.end method

.method public setNotificationEffectsEnabledForAutomotive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationEffectsEnabledForAutomotive:Z

    return-void
.end method

.method public setScreenOn(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSystemReady(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mSystemReady:Z

    return-void
.end method

.method public setUserPresent(Z)V
    .registers 2

    return-void
.end method

.method public setVibratorHelper(Lcom/android/server/notification/VibratorHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    return-void
.end method

.method public final updateLightsLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_5

    goto :goto_61

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x1

    if-nez v0, :cond_41

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-nez v1, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LED Notification does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotifAttentionHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3f
    move-object v0, v1

    goto :goto_6

    :cond_41
    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->isInCall()Z

    move-result v2

    if-nez v2, :cond_62

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mScreenOn:Z

    if-eqz v2, :cond_4e

    goto :goto_62

    :cond_4e
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    if-eqz v0, :cond_61

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eqz v2, :cond_61

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    iget v2, v0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v3, v0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget v0, v0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    :cond_61
    :goto_61
    return-void

    :cond_62
    :goto_62
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    return-void
.end method

.method public final vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Notification ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_29

    const-string p3, "(Delayed)"

    goto :goto_2b

    :cond_29
    const-string p3, ""

    :goto_2b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V

    return-void
.end method
