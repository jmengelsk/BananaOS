.class public final Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

.field public mWatcher:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/sepunion/OneHandService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/OneHandService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    new-instance p1, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 5

    sget v0, Lcom/android/server/sepunion/OneHandService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "binderDied() binder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OneHandService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "navigation_bar_gesture_disabled_by_policy"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_28
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    iget-object v2, v0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo v0, "unbindService()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    const-string/jumbo v0, "OneHandService has died unexpectedly"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_49} :catch_8e

    :try_start_49
    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.sidegesturepad"

    invoke-interface {v0, v2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_5b

    goto :goto_70

    :catch_5b
    move-exception v0

    :try_start_5c
    sget v2, Lcom/android/server/sepunion/OneHandService;->$r8$clinit:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exception on addPowerSaveWhitelist() e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8d} :catch_8e

    goto :goto_97

    :catch_8e
    move-exception p0

    sget v0, Lcom/android/server/sepunion/OneHandService;->$r8$clinit:I

    const-string/jumbo v0, "exception on binderDied() e="

    invoke-static {p0, v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void
.end method
