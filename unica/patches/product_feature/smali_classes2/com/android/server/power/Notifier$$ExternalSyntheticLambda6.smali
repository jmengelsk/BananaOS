.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/Notifier;

    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$2:Z

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "charging_vibration_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, v0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v10, Lcom/android/server/power/Notifier;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    const/16 v6, 0x3e8

    const-string v9, "Charging started"

    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string/jumbo p0, "wireless_charging_started_sound"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "charging_started_sound"

    :goto_0
    invoke-static {v1, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    :cond_2
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mIsPlayingChargingStartedFeedback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
