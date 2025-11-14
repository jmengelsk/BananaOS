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
    .registers 10

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

    :try_start_16
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
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "SWT_OverlayManager"

    const-string v0, "Failed at register validator receiver, e:"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final isValidated()Z
    .registers 7

    sget-boolean v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsBackgroundAllowed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_51

    sget-boolean v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sIsValidatorAvailable:Z

    if-nez v0, :cond_a

    goto :goto_51

    :cond_a
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

    :try_start_23
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2d} :catch_41
    .catchall {:try_start_23 .. :try_end_2d} :catchall_3f

    if-nez v0, :cond_35

    :goto_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_34} :catch_49

    goto :goto_49

    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3a} :catch_3a

    :catch_3a
    iget-boolean p0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated:Z

    if-eqz p0, :cond_49

    goto :goto_56

    :catchall_3f
    move-exception v0

    goto :goto_4b

    :catch_41
    move-exception v0

    :try_start_42
    const-string/jumbo v1, "await for validator service has been interrupted, e:"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_3f

    goto :goto_2f

    :catch_49
    :cond_49
    :goto_49
    const/4 p0, 0x0

    return p0

    :goto_4b
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_50} :catch_50

    :catch_50
    throw v0

    :cond_51
    :goto_51
    :try_start_51
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_56} :catch_56

    :catch_56
    :goto_56
    return v1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string/jumbo p1, "UNIQUE_ID"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget v1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->id:I

    if-ne p1, v1, :cond_1a

    const-string/jumbo p1, "VALIDATE_SUCCESS"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->isValidated:Z

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$ValidatorReceiver;->validationLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1a
    return-void
.end method
