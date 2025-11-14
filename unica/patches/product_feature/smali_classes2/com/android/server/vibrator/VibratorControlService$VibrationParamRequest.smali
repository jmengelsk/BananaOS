.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final future:Ljava/util/concurrent/CompletableFuture;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final uptimeMs:J

.field public final usage:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    iput p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uid:I

    iput p2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->usage:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->uptimeMs:J

    return-void
.end method
