.class public abstract Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final effect:Landroid/os/VibrationEffect$Composed;

.field public final segmentIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    iput-object p5, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iput p6, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    return-void
.end method


# virtual methods
.method public final nextSteps(I)Ljava/util/List;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-long/2addr v0, v2

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(IJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final nextSteps(IJ)Ljava/util/List;
    .locals 9

    iget v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    if-lt v0, p1, :cond_0

    if-ltz v1, :cond_0

    sub-int v2, p1, v1

    sub-int v3, v0, v1

    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v4, v4, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    div-int/2addr v3, v2

    iget v5, v4, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    sub-int/2addr v0, p1

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    :cond_0
    move v6, v0

    iget-object v1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget-wide v7, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-wide v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
