.class public abstract Lcom/android/server/vibrator/Step;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final conductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iput-wide p2, p0, Lcom/android/server/vibrator/Step;->startTime:J

    return-void
.end method


# virtual methods
.method public acceptVibratorCompleteCallback(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public abstract cancel()Ljava/util/List;
.end method

.method public abstract cancelImmediately()V
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/server/vibrator/Step;

    iget-wide v0, p0, Lcom/android/server/vibrator/Step;->startTime:J

    iget-wide p0, p1, Lcom/android/server/vibrator/Step;->startTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public getVibratorOnDuration()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCleanUp()Z
    .registers 1

    instance-of p0, p0, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    return p0
.end method

.method public abstract play()Ljava/util/List;
.end method
