.class public final synthetic Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_66

    check-cast p0, Lcom/android/server/notification/SmartAlertController$1;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-boolean v0, v0, Lcom/android/server/notification/SmartAlertController;->mInCall:Z

    const-string/jumbo v1, "SmartAlertController"

    if-eqz v0, :cond_19

    const-string/jumbo p0, "SmartAlert - inCall, vibration will be returned"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_19
    const-string/jumbo v0, "SmartAlert - vibrate"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$1;->this$0:Lcom/android/server/notification/SmartAlertController;

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, -0x1

    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController;->mPickUpVibratePattern:[J

    invoke-static {p0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v3

    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v5

    const-string/jumbo v4, "SmartAlertController"

    const/16 v1, 0x3e8

    const-string/jumbo v2, "android"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :goto_49
    return-void

    :pswitch_4a  #0x0
    check-cast p0, Lcom/android/server/notification/SmartAlertController;

    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-eqz v0, :cond_65

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController;->mSmartAlertMotionListener:Lcom/android/server/notification/SmartAlertController$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMotionRegistered:Z

    const-string/jumbo p0, "SmartAlertController"

    const-string/jumbo v0, "SmartAlert - unregisterListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4a  #00000000
    .end packed-switch
.end method
