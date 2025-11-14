.class public final Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

.field public mWatcher:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/sepunion/GalaxyRegistryService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    new-instance p1, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;)V

    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 5

    sget v0, Lcom/android/server/sepunion/GalaxyRegistryService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "binderDied() binder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalaxyRegistryService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_18
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    if-eqz v0, :cond_46

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    const-string v0, "GalaxyRegistryService has died unexpectedly"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    iget-object v0, v0, Lcom/android/server/sepunion/GalaxyRegistryService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    iget-object v0, v0, Lcom/android/server/sepunion/GalaxyRegistryService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p0

    sget v0, Lcom/android/server/sepunion/GalaxyRegistryService;->$r8$clinit:I

    const-string/jumbo v0, "exception on binderDied() e="

    invoke-static {p0, v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method
