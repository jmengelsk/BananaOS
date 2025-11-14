.class public final synthetic Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {p0}, Landroid/os/vibrator/IVibrationSessionCallback;->onFinishing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "VendorVibrationSession"

    const-string v1, "Error notifying vendor session is finishing"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->endSession(JZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
