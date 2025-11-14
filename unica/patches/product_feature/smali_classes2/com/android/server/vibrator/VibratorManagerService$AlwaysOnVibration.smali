.class public final Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final alwaysOnId:I

.field public final callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final effects:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(ILcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/util/SparseArray;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iput-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    return-void
.end method
