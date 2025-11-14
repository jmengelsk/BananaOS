.class public Lcom/android/server/notification/DefaultDeviceEffectsApplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/service/notification/DeviceEffectsApplier;


# static fields
.field private static final SATURATION_LEVEL_FULL_COLOR:I = 0x64

.field private static final SATURATION_LEVEL_GRAYSCALE:I = 0x0

.field private static final SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final SUPPRESS_AMBIENT_DISPLAY_TOKEN:Ljava/lang/String; = "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

.field private static final TAG:Ljava/lang/String; = "DeviceEffectsApplier"

.field private static final WALLPAPER_DIM_AMOUNT_DIMMED:F = 0.6f

.field private static final WALLPAPER_DIM_AMOUNT_NORMAL:F


# instance fields
.field private final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mContext:Landroid/content/Context;

.field private mIsScreenOffReceiverRegistered:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

.field private final mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

.field private mPendingNightMode:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mRegisterReceiverLock:Ljava/lang/Object;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$4LDHIsj0iI2D9FidhGDL9DsNFGA(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->lambda$apply$0(Landroid/service/notification/ZenDeviceEffects;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GU7KgDI7UqIvmoYhYm62_3u1GIw(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->lambda$updateNightModeImmediately$1(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNightMode(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterScreenOffReceiver(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightModeImmediately(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateNightModeImmediately(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    :goto_58
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private synthetic lambda$apply$0(Landroid/service/notification/ZenDeviceEffects;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeSuppressAmbientDisplay(Z)V

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeDisplayGrayscale(Z)V

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeDimWallpaper(Z)V

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeUseNightMode(ZI)V

    return-void
.end method

.method private synthetic lambda$updateNightModeImmediately$1(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "nightMode"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz p1, :cond_d

    const/16 p1, 0x3e9

    goto :goto_f

    :cond_d
    const/16 p1, 0x3e8

    :goto_f
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change wallpaper override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private registerScreenOffReceiver()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method private unregisterScreenOffReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method private updateNightModeImmediately(Z)V
    .registers 3

    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private updateOrScheduleNightMode(ZI)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_30

    const/4 v0, 0x3

    if-eq p2, v0, :cond_30

    const/4 v0, 0x7

    if-eq p2, v0, :cond_30

    iget-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_30

    sget-object p2, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "nightMode -> "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x17

    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->registerScreenOffReceiver()V

    return-void

    :cond_30
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateNightModeImmediately(Z)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/service/notification/ZenDeviceEffects;I)V
    .registers 4

    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    return-void
.end method

.method public maybeDimWallpaper(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    if-eq v0, p1, :cond_27

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_27

    :try_start_c
    const-string/jumbo v0, "dimWallpaper"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz p1, :cond_1a

    const p1, 0x3f19999a  # 0.6f

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change wallpaper override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    return-void
.end method

.method public maybeDisplayGrayscale(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    if-eq v0, p1, :cond_26

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-eqz v0, :cond_26

    :try_start_c
    const-string/jumbo v0, "displayGrayscale"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    goto :goto_1a

    :cond_18
    const/16 p1, 0x64

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change grayscale override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    return-void
.end method

.method public maybeSuppressAmbientDisplay(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    if-eq v0, p1, :cond_1e

    :try_start_8
    const-string/jumbo v0, "suppressAmbientDisplay"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change AOD override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    return-void
.end method

.method public maybeUseNightMode(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    if-eq v0, p1, :cond_14

    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateOrScheduleNightMode(ZI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string p1, "DeviceEffectsApplier"

    const-string p2, "Could not change dark theme override"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void
.end method
