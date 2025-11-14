.class public final Lcom/android/server/profcollect/ProfcollectForwardingService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BG_PROCESS_INTERVAL:J

.field public static sAdbActive:Z

.field public static sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

.field public static sIsBatteryLow:Z

.field public static sIsInteractive:Z

.field public static sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

.field public static sVerityEnforced:Z


# instance fields
.field public final mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

.field public final mBroadcastReceiver:Lcom/android/server/profcollect/ProfcollectForwardingService$2;

.field public final mHandler:Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

.field public final mProviderStatusCallback:Lcom/android/server/profcollect/ProfcollectForwardingService$1;

.field public final mUploadEnabled:Z

.field public final mUsageSetting:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->BG_PROCESS_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const-string/jumbo v0, "ProfcollectForwardingService"

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mHandler:Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    invoke-direct {v1, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$1;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mBroadcastReceiver:Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    new-instance v1, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    if-nez v1, :cond_a1

    sput-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sSelfService:Lcom/android/server/profcollect/ProfcollectForwardingService;

    :try_start_30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_cb"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I
    :try_end_3d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_30 .. :try_end_3d} :catch_3e

    goto :goto_58

    :catch_3e
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Usage setting not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I

    :goto_58
    const-string/jumbo v1, "ro.boot.veritymode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "enforcing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-nez v2, :cond_74

    const-string/jumbo v2, "verity is not enforced: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUploadEnabled:Z

    const-string/jumbo v0, "android.intent.action.BATTERY_LOW"

    const-string/jumbo v1, "android.intent.action.BATTERY_OKAY"

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v4, "com.android.server.profcollect.UPLOAD_PROFILES"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mBroadcastReceiver:Lcom/android/server/profcollect/ProfcollectForwardingService$2;

    const/4 v1, 0x4

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_a1
    new-instance p0, Ljava/lang/AssertionError;

    const-string/jumbo p1, "only one service instance allowed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static enabled()Z
    .registers 3

    const-string/jumbo v0, "profcollect_native_boot"

    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "persist.profcollectd.enabled_override"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    return v2

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final connectNativeService()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "profcollectd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/profcollect/IProfCollectd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    iget-object v2, v2, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    new-instance v3, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sput-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;
    :try_end_1b
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    const-string/jumbo p0, "ProfcollectForwardingService"

    const-string v1, "Failed to connect profcollectd binder service."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final onBootPhase(I)V
    .registers 11

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_79

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const-string v1, " on system startup"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "ProfcollectForwardingService"

    if-nez v0, :cond_22

    sput-boolean v3, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    const-string/jumbo v0, "USBManager is not ready"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_22
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_2e

    move v3, v2

    :cond_2e
    sput-boolean v3, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ADB is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_5d

    sput-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    const-string/jumbo v0, "PowerManager is not ready"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_5d
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Device is interactive "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_93

    sget-object p1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez p1, :cond_82

    goto :goto_93

    :cond_82
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_93
    :goto_93
    return-void
.end method

.method public final onStart()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->connectNativeService()Z

    return-void
.end method
