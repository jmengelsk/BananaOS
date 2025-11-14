.class public final Lcom/android/server/vibrator/VibratorControllerHolder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mVibratorController:Landroid/frameworks/vibrator/IVibratorController;


# virtual methods
.method public final binderDied()V
    .locals 1

    const-string/jumbo p0, "VibratorControllerHolder"

    const-string/jumbo v0, "binderDied() called unexpectedly."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    invoke-virtual {v0}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    :cond_0
    return-void
.end method

.method public final setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    invoke-virtual {v0}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    invoke-virtual {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set IVibratorController: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "VibratorControllerHolder"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
