.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/WorkSource;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/Notifier;

    iput-object p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$5:I

    iput-object p7, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$6:Landroid/os/WorkSource;

    iput p8, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$7:I

    iput-object p9, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$9:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$10:I

    iput-boolean p12, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$11:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/Notifier;

    iget-object v2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$1:Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$2:I

    iget-object v4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$5:I

    iget-object v7, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$6:Landroid/os/WorkSource;

    iget v8, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$7:I

    iget-object v9, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$8:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$9:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$10:I

    iget-boolean v12, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda5;->f$11:Z

    sget-object p0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to notify the wakelock changing from source via Notifier."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PowerManagerNotifier"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
