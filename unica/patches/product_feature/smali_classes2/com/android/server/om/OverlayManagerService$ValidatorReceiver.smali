.class public final Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final context:Landroid/content/Context;

.field public final id:I

.field public isValidated:Z

.field public final validationLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated:Z

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->id:I

    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.android.shortcutbackupservice.colorthemevalidator.action.VALIDATOR_IS_DONE"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "SWT_OverlayManager"

    const-string v0, "Failed at register validator receiver, e:"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final isValidated()Z
    .locals 6

    sget-boolean v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start validation service, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SWT_OverlayManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated:Z

    if-eqz p0, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "await for validator service has been interrupted, e:"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_2
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    throw v0

    :cond_3
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :goto_4
    return v1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo p1, "UNIQUE_ID"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->id:I

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "VALIDATE_SUCCESS"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated:Z

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
