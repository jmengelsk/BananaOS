.class public final Lcom/android/server/notification/SmartAlertController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final filter:Landroid/content/IntentFilter;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public final mIntentReceiver:Lcom/android/server/notification/SmartAlertController$4;

.field public mMissedEventExist:Z

.field public mMotionEnabled:Z

.field public mMotionRegistered:Z

.field public final mPickUpVibratePattern:[J

.field public mScreenOn:Z

.field public final mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

.field public mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_7c

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    new-instance v1, Lcom/android/server/notification/SmartAlertController$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$1;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

    new-instance v1, Lcom/android/server/notification/SmartAlertController$4;

    invoke-direct {v1, p0}, Lcom/android/server/notification/SmartAlertController$4;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mIntentReceiver:Lcom/android/server/notification/SmartAlertController$4;

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string/jumbo v4, "SmartAlert"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/SmartAlertController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/SmartAlertController;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;-><init>(Lcom/android/server/notification/SmartAlertController;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "motion_pick_up"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v2, v0}, Lcom/android/server/notification/SmartAlertController$SmartAlertSettingObserver;->onChange(Z)V

    return-void

    :array_7c
    .array-data 8
        0x0
        0x4b
        0x19
        0x4b
        0x12c
    .end array-data
.end method


# virtual methods
.method public final unregisterListener(Z)V
    .registers 5

    if-eqz p1, :cond_5

    const/16 p1, 0x1f4

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
