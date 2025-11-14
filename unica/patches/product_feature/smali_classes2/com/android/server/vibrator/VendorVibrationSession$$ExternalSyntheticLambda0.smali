.class public final synthetic Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VendorVibrationSession;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VendorVibrationSession;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VendorVibrationSession;

    iput-boolean p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VendorVibrationSession;

    iget-boolean p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    iget-wide v2, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;->endSession(JZ)V

    return-void
.end method
