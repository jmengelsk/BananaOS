.class public final synthetic Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorController;

    iput-boolean p2, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorController;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorController$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/os/IVibratorStateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9
    invoke-interface {p1, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-string/jumbo p1, "VibratorController"

    const-string/jumbo v0, "Vibrator state listener failed to call"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
