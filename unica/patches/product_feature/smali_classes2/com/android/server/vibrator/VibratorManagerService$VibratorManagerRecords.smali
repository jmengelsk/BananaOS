.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

.field public final mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    return-void
.end method
